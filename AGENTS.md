# AGENTS.md

Apple TV ambient video looper. Personal project — sideloaded to Apple TV via Xcode, no App Store.

## Project

A minimal tvOS app that bundles a single video file and loops it seamlessly full-screen on Apple TV. No controls, no menus — just play on launch.

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
        ├── ContentView.swift     # main view (full-screen video)
        ├── VideoLooper.swift     # AVPlayerLooper wrapper
        ├── Assets.xcassets/      # app icon, top shelf, accent
        └── video/                # bundled video files go here
            └── README.md         # local *.mp4 clips (gitignored)
```

## Conventions

- File names in PascalCase to match Swift/Xcode conventions.
- Keep the app minimal. No features beyond looping unless explicitly asked.
- Video files in `LoopLooper/LoopLooper/video/` — folder sync bundles them as resources.
- Active clip is `videoName` in `VideoLooper.swift` (`snow`, `path`, `aerial`). Don't commit large video files; `.gitignore` covers `*.mp4`, `*.mov`, etc.

## Git & Commits

Agents own git for this repo: after every change, stage, commit, and push to `origin` without waiting to be asked. Use a `moss:` prefix for session-driven commit messages. Never force-push or rewrite history unless explicitly requested.

After every successful commit+push, report it in this exact style (short SHA + subject in backticks):

```
Committed `851a094 — moss: refresh markdown docs and require auto commit/push`
```

## Agent-Friendly Notes

- Repo root: `/Users/lex/github/loop-looper`.
- Xcode projects are folder bundles — `LoopLooper.xcodeproj` is a directory, not a single file. Don't try to edit it as text.
- Open in Xcode with `open LoopLooper/LoopLooper.xcodeproj`.
- For sideloading: connect Apple TV to the same network, select it as a run destination in Xcode, build and run.

## Xcode MCP

Cursor is configured with two MCP servers in `.cursor/mcp.json`:

1. **`xcode`** — Apple’s `mcpbridge` (IDE context, build/test via open Xcode). Requires Xcode running with this project open, and **Xcode → Settings → Intelligence → Model Context Protocol → Allow external agents to use Xcode tools**.
2. **`XcodeBuildMCP`** — build/run/device/simulator tooling. Defaults live in `.xcodebuildmcp/config.yaml` (scheme `LoopLooper`, platform `tvOS`, bundle id `com.lex.LoopLooper`). Prefer its tools over raw `xcodebuild`/`devicectl`. Read `.cursor/skills/xcodebuildmcp/SKILL.md` before calling them.

After adding or changing MCP servers, reload MCP in Cursor (Settings → MCP) or restart the agent session.
