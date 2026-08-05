# LoopLooper

A minimal Apple TV app that loops a single ambient video on loop, full-screen, forever. No controls, no menus — just video.

## Why

Existing Apple TV apps charge for more than a couple free video loops. This one is ours — bundle whatever video we want and play it.

## What it does

1. Launches
2. Plays one video
3. Loops it seamlessly
4. That's it

## Requirements

- Xcode (latest)
- Apple TV 4K on the same Wi-Fi network (or USB-C cable)
- Free Apple ID (for personal sideloading)

## Build and run

```bash
open LoopLooper/LoopLooper.xcodeproj
```

In Xcode:
1. Select your Apple TV as the run destination
2. Select your Apple ID in Settings > Accounts (free tier is fine)
3. Set the signing team in project settings
4. Press ⌘R to build and install

> **Note:** Free Apple ID signing expires after 7 days. Re-deploy from Xcode to refresh. A paid developer account ($99/year) extends this to 1 year.

## Choose / add a video

Test clips live in `LoopLooper/LoopLooper/video/` (gitignored). Switch the active one by changing `videoName` in `VideoLooper.swift`:

`snow` · `path` · `aerial`

Drop any other `*.mp4` there and point `videoName` at its basename.

## Tech

- tvOS + SwiftUI
- AVPlayerLooper + AVQueuePlayer for seamless looping
- ~60 lines of Swift