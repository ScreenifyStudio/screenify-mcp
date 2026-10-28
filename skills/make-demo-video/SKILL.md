---
name: make-demo-video
description: Make a finished, studio-styled video with Screenify. Use when the user asks to record their screen, a window, an app, an iOS Simulator or a web page; to make a product demo, tutorial, walkthrough or bug-repro video; to style an existing video or screenshot with a wallpaper, device mockup or photo mockup; or to add zooms, spotlights or camera moves to a recording.
---

# Make a demo video with Screenify

Screenify's tools come from the `screenify` MCP server in this plugin. They record and export on
the user's Mac; every output is a local file.

## Pick the flow

- **Fixed-length capture** ("record 10 seconds of my screen"): `check_readiness` → `list_targets` →
  `record_clip`. Pass the styling **and** the effects to `record_clip` itself — it is one job with one
  output file. Do not follow it with `apply_effects`; that leaves a second, redundant video.
- **Open-ended capture** ("start recording, I'll tell you when"): `start_recording` →
  `stop_recording` → `export_video`.
- **A website or web app by URL**: `record_web_demo`. It drives a real browser and adds a smooth
  cursor and auto-zoom.
- **A video or image the user already has**: `export_video` with that file path to style it;
  `apply_effects` with the file path to add effects or a photo mockup with a camera move.
- **A project that already existed before this conversation**: `apply_effects`. Effects are
  non-destructive — do not re-export afterwards, it would drop them.

Long jobs return a `jobId`. Poll `get_job_status` until it reports `completed`, and give the user
short progress updates from its phase and percent so the work never looks stuck.

## Styling rules

- **Real-scene photo** (a desk, a café, an airplane, a hand holding a phone): set `style.realistic`
  to a short name or mood such as `home desk` or `coffee`. These photos are built into Screenify — never
  ask the user for a photo file. Add the `photomotion` effect when they want the camera to move.
- **Background**: when the wording implies an image ("orange wallpaper"), use `style.wallpaper` with a
  colour category. Use `style.background` with a hex value only for a plain, solid colour.
- Apply only what the user asked for. Do not add or remove styling on your own, the watermark included.
- `get_schemas` lists every advanced styling option and effect.

## Reporting back

- Say a style or effect was applied only if the tool call that applies it succeeded.
- Link only the output of the last successful step.
- Finish with the output path, one sentence on what else they could ask for (another wallpaper,
  vertical export for social, a GIF, zoom or spotlight effects), and offer to open the video — or the
  project in the Screenify Studio editor — with `open_result`.

## If Screenify is missing

If the server reports that Screenify Studio is not found, tell the user to install it from
https://www.screenify.studio/download (version 2.2.0 or newer). If `check_readiness` says Screen
Recording permission is missing, relay its `action` text as is.
