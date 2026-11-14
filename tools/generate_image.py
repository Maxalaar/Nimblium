#!/usr/bin/env python3
"""Generate images with the local Stable Diffusion Forge server (txt2img API).

Images land in art/tmp/ by default (not versioned); move the keepers into the
art/ tree, which mirrors the project (art/creatures/goblin/, art/class/mage/...).
Each image gets a .json sidecar with the exact prompt, settings and seed, so
any result can be reproduced or tweaked later.

With --style, only describe the subject: the preset from art/styles.json adds
the prompt prefix/suffix, the negative prompt, the model and all settings
(see nimblium_documents/art.txt). Any option given on the command line overrides the style.

Forge must be running with --api (launch it with lancer_forge.sh).

Examples:
    ./tools/generate_image.py -s engraving -c goblin -n 3 --name bugbear "large bugbear with a cleaver"
    ./tools/generate_image.py -s engraving "goblin archer" --seed 200      # reproduce a seed
    ./tools/generate_image.py "a fire mage, ink line art"                  # no style preset
    ./tools/generate_image.py --models                                     # list checkpoints

ControlNet (keep the composition of an existing image or sketch):
    ./tools/generate_image.py -s engraving -n 4 --control art/tmp/goblin/rider_xxx.png "goblin riding a cyber wolf"
    ./tools/generate_image.py -s engraving --control my_sketch.png --control-type sketch "goblin riding a cyber wolf"
"""

import argparse
import base64
import json
import sys
import urllib.error
import urllib.request
from datetime import datetime
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
DEFAULT_OUT = ROOT / "art" / "tmp"
URL = "http://127.0.0.1:7860"

# Style presets of the graphic charter (see nimblium_documents/art.txt).
STYLES_FILE = ROOT / "art" / "styles.json"
STYLES = json.loads(STYLES_FILE.read_text()) if STYLES_FILE.exists() else {}

# Used when neither the command line nor the style sets a value.
# Tuned for DreamShaper XL Lightning (few steps, low CFG).
# For sd_xl_base_1.0 use: --steps 25 --cfg 6 --sampler "DPM++ 2M"
FALLBACK = {
    "model": "DreamShaperXL_Lightning",
    "negative": "photo, blurry, text, watermark, signature, lowres, jpeg artifacts",
    "steps": 6,
    "cfg": 2.0,
    "sampler": "DPM++ SDE",
    "scheduler": "Karras",
    "width": 1024,
    "height": 1024,
}


# ControlNet: --control-type -> Forge preprocessor. The preprocessor turns the
# control image into a guide map (lines, depth, pose...) that the model follows.
CONTROL_TYPES = {
    "lineart": "lineart_realistic",    # outlines of an image: keeps shapes closely
    "canny": "canny",                  # hard edges: very strict
    "softedge": "softedge_pidinet",    # soft contours: keeps composition, freer details
    "scribble": "scribble_pidinet",    # rough strokes: loosest, only big shapes
    "depth": "depth_midas",            # depth map: keeps volumes and placement
    "pose": "openpose_full",           # skeleton of humanoids: keeps the pose only
    "sketch": "invert (from white bg & black line)",  # your own drawing, black on white
}
CONTROL_MODEL = "controlnet-union-promax-sdxl"


def call(path, payload=None, timeout=600):
    data = json.dumps(payload).encode() if payload is not None else None
    req = urllib.request.Request(URL + path, data=data,
                                 headers={"Content-Type": "application/json"})
    try:
        with urllib.request.urlopen(req, timeout=timeout) as resp:
            return json.load(resp)
    except urllib.error.HTTPError as e:
        sys.exit(f"Forge returned {e.code} on {path}: {e.read().decode(errors='replace')[:300]}\n"
                 "(404 right after startup: wait a few seconds and retry.)")
    except urllib.error.URLError as e:
        sys.exit(f"Cannot reach Forge at {URL} ({e.reason}). Start it with lancer_forge.sh.")
    except (ConnectionError, OSError) as e:
        sys.exit(f"Connection to Forge lost ({e}). Did Forge stop?")


def slug(text, max_len=40):
    s = "".join(c if c.isalnum() else "_" for c in text.lower())
    return "_".join(filter(None, s.split("_")))[:max_len] or "image"


def main():
    p = argparse.ArgumentParser(description=__doc__,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("prompt", nargs="?", help="subject (with --style) or full prompt")
    p.add_argument("-s", "--style", choices=STYLES, help="style preset from art/styles.json")
    p.add_argument("--negative", help="negative prompt")
    p.add_argument("-n", "--count", type=int, default=1, help="number of images")
    p.add_argument("--seed", type=int, default=-1, help="-1 = random")
    p.add_argument("--steps", type=int)
    p.add_argument("--cfg", type=float)
    p.add_argument("-W", "--width", type=int)
    p.add_argument("-H", "--height", type=int)
    p.add_argument("--sampler")
    p.add_argument("--scheduler")
    p.add_argument("--model", help="checkpoint name (see --models)")
    p.add_argument("--name", help="file name prefix (default: slug of the prompt)")
    p.add_argument("-c", "--category", help="subfolder of the output folder (e.g. goblin)")
    p.add_argument("-o", "--out", type=Path, default=DEFAULT_OUT, help="output folder")
    p.add_argument("--models", action="store_true", help="list checkpoints and exit")
    cn = p.add_argument_group("ControlNet")
    cn.add_argument("--control", type=Path, help="guide image (generated image, sketch...)")
    cn.add_argument("--control-type", choices=CONTROL_TYPES, default="scribble",
                    help="what to keep from the guide image (default: scribble)")
    cn.add_argument("--control-weight", type=float, default=0.6,
                    help="how strongly to follow the guide, 0-2 (default: 0.6)")
    cn.add_argument("--control-end", type=float, default=0.5,
                    help="stop guiding after this fraction of the steps, 0-1 (default: 0.5)")
    args = p.parse_args()

    if args.models:
        for m in call("/sdapi/v1/sd-models", timeout=10):
            print(m["model_name"])
        return
    if not args.prompt:
        p.error("prompt required")

    style = STYLES.get(args.style, {})

    def opt(name):
        value = getattr(args, name)
        return value if value is not None else style.get(name, FALLBACK[name])

    prompt = ", ".join(filter(None, [style.get("prefix"), args.prompt, style.get("suffix")]))
    out = args.out / args.category if args.category else args.out

    payload = {
        "prompt": prompt,
        "negative_prompt": opt("negative"),
        "seed": args.seed,
        "steps": opt("steps"),
        "cfg_scale": opt("cfg"),
        "width": opt("width"),
        "height": opt("height"),
        "sampler_name": opt("sampler"),
        "scheduler": opt("scheduler"),
        "batch_size": 1,
        "n_iter": args.count,
        "override_settings": {"sd_model_checkpoint": opt("model")},
    }

    control = None
    if args.control:
        if not args.control.is_file():
            p.error(f"control image not found: {args.control}")
        models = call("/controlnet/model_list", timeout=10)["model_list"]
        model = next((m for m in models if m.startswith(CONTROL_MODEL)), None)
        if model is None:
            sys.exit(f"ControlNet model {CONTROL_MODEL} not found in Forge ({models}).")
        control = {
            "enabled": True,
            "image": base64.b64encode(args.control.read_bytes()).decode(),
            "module": CONTROL_TYPES[args.control_type],
            "model": model,
            "weight": args.control_weight,
            "guidance_start": 0.0,
            "guidance_end": args.control_end,
            "resize_mode": "Crop and Resize",
            "pixel_perfect": True,
            "control_mode": "Balanced",
        }
        payload["alwayson_scripts"] = {"ControlNet": {"args": [control]}}

    print(f"Generating {args.count} image(s)...", flush=True)
    result = call("/sdapi/v1/txt2img", payload)
    info = json.loads(result.get("info", "{}"))
    seeds = info.get("all_seeds", [])
    infotexts = info.get("infotexts", [])

    out.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    prefix = args.name or slug(args.prompt)
    # With ControlNet, Forge appends the guide maps after the images: skip them.
    for i, img in enumerate(result["images"][: args.count]):
        seed = seeds[i] if i < len(seeds) else args.seed
        path = out / f"{prefix}_{stamp}_{seed}.png"
        path.write_bytes(base64.b64decode(img))
        meta = {"style": args.style, "subject": args.prompt,
                **{k: v for k, v in payload.items() if k != "alwayson_scripts"},
                "seed": seed, "n_iter": 1, "model": info.get("sd_model_name"),
                "infotext": infotexts[i] if i < len(infotexts) else None}
        if control:
            meta["control"] = {"image": str(args.control), "type": args.control_type,
                               "weight": args.control_weight, "end": args.control_end}
        path.with_suffix(".json").write_text(json.dumps(meta, indent=2, ensure_ascii=False))
        print(path.relative_to(ROOT) if path.is_relative_to(ROOT) else path)


if __name__ == "__main__":
    main()
