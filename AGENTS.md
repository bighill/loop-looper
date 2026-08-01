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
foo-apple-tv-app/
├── AGENTS.md          # this file
├── README.md          # human overview
├── LoopLooper/        # Xcode project + source
│   ├── LoopLooper.xcodeproj/   # Xcode project (generated)
│   ├── LoopLooper/
│   │   ├── LoopLooperApp.swift   # app entry point
│   │   ├── ContentView.swift     # main view (full-screen video)
│   │   ├── VideoLooper.swift     # AVPlayerLooper wrapper
│   │   ├── Assets.xcassets/      # app icon etc.
│   │   └── video/                # bundled video files go here
│   └── LoopLooperTests/
│       └── LoopLooperTests.swift
```

## Conventions

- File names in PascalCase to match Swift/Xcode conventions (this is an Xcode project, not the garden).
- Keep the app minimal. No features beyond looping unless explicitly asked.
- Video files in `LoopLooper/LoopLooper/video/` — add to Xcode project as bundled resources.
- Don't commit large video files to git. Use `.gitignore` for `*.mp4`, `*.mov`, etc.

## Git & Commits

Same rules as the garden. Stage, commit, push after every change. Use `moss:` prefix for session-driven changes.

## Agent-Friendly Notes

- This is a **sandbox directory** at `/Users/lex/tmp/foo-apple-tv-app`, separate from the garden workspace.
- Xcode projects are folder bundles — `LoopLooper.xcodeproj` is a directory, not a single file. Don't try to edit it as text.
- The project can be opened in Xcode with `open LoopLooper/LoopLooper.xcodeproj`.
- For sideloading: connect Apple TV to the same network, select it as a run destination in Xcode, build and run.