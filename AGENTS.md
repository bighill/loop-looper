# AGENTS.md

Apple TV ambient video looper. Personal project — sideloaded to Apple TV via Xcode, no App Store.

## Project

A minimal tvOS app that lists bundled video files on a home screen, then loops the chosen clip seamlessly full-screen on Apple TV. Menu / back returns to the list.

## Tech

- **Platform:** tvOS (Apple TV 4K)
- **Language:** Swift
- **UI:** SwiftUI
- **Video:** AVPlayerLooper + AVQueuePlayer for seamless infinite looping
- **IDE:** Xcode (latest, on m3)
- **Deployment:** Sideload via Xcode with free Apple ID (7-day signing cycle)

## Structure

```
loop-looper/
├── AGENTS.md          # this file
├── README.md          # human overview
├── .gitignore         # ignores video media + Xcode user data
├── .cursor/
│   ├── mcp.json       # Xcode mcpbridge + XcodeBuildMCP
│   └── skills/        # agent skills (incl. XcodeBuildMCP)
├── .xcodebuildmcp/
│   └── config.yaml    # scheme/platform/workflow defaults
└── LoopLooper/        # Xcode project + source
    ├── LoopLooper.xcodeproj/   # Xcode project (folder bundle)
    └── LoopLooper/
        ├── LoopLooperApp.swift   # app entry point
        ├── ContentView.swift     # home list + navigation to looper
        ├── VideoLooper.swift     # AVPlayerLooper wrapper
        ├── Assets.xcassets/      # app icon, top shelf, accent
        └── video/                # bundled video files go here
            └── README.md         # local *.mp4 clips (gitignored)
```

## Conventions

- File names in PascalCase to match Swift/Xcode conventions.
- Keep the app minimal. No features beyond looping unless explicitly asked.
- Video files in `LoopLooper/LoopLooper/video/` — folder sync bundles them as resources.
- Home list discovers bundled `*.mp4` at runtime; selection passes `videoName` into `VideoLooperView`. Don't commit large video files; `.gitignore` covers `*.mp4`, `*.mov`, etc.

## Git & Commits

Agents own git for this repo: after every change, stage, commit, and push to `origin` without waiting to be asked. Use a `moss:` prefix for session-driven commit messages. Never force-push or rewrite history unless explicitly requested.

After every successful commit+push, report it in this exact style (short SHA + subject in backticks):

```
Committed `851a094 — moss: refresh markdown docs and require auto commit/push`
```

## Deploy

After any app code change (Swift/assets that affect the running app), rebuild and install on the Living Room Apple TV via XcodeBuildMCP `build_run_device` (platform `tvOS`). Do this without waiting to be asked. Docs-only changes do not need a device deploy. If the device is offline or signing fails, say so and stop — don't fall back to simulator unless asked.

## Agent-Friendly Notes

- Repo root: `/Users/lex/github/loop-looper`.
- Xcode projects are folder bundles — `LoopLooper.xcodeproj` is a directory, not a single file. Don't try to edit it as text.
- Open in Xcode with `open LoopLooper/LoopLooper.xcodeproj`.
- For sideloading: Apple TV on the same network; prefer XcodeBuildMCP `build_run_device` over manual Xcode runs.

## Xcode MCP

Cursor is configured with two MCP servers in `.cursor/mcp.json`:

1. **`xcode`** — Apple’s `mcpbridge` (IDE context, build/test via open Xcode). Requires Xcode running with this project open, and **Xcode → Settings → Intelligence → Model Context Protocol → Allow external agents to use Xcode tools**.
2. **`XcodeBuildMCP`** — build/run/device/simulator tooling. Defaults live in `.xcodebuildmcp/config.yaml` (scheme `LoopLooper`, platform `tvOS`, bundle id `com.lex.LoopLooper`). Prefer its tools over raw `xcodebuild`/`devicectl`. Read `.cursor/skills/xcodebuildmcp/SKILL.md` before calling them.

After adding or changing MCP servers, reload MCP in Cursor (Settings → MCP) or restart the agent session.
