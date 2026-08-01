import SwiftUI
import AVKit

/// Seamless infinite video loop using AVPlayerLooper.
/// Plays a single bundled video file full-screen, forever.
struct VideoLooperView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.videoGravity = .resizeAspectFill
        controller.showsPlaybackControls = false

        // Load bundled video — update filename to match your video
        guard let url = Bundle.main.url(forResource: "loop", withExtension: "mp4") else {
            fatalError("Video file 'loop.mp4' not found in bundle. Add it to LoopLooper/video/ and add to Xcode project resources.")
        }

        let player = AVQueuePlayer()
        let looper = AVPlayerLooper(player: player, templateItem: AVPlayerItem(asset: AVAsset(url: url)))

        // Keep looper alive — AVPlayerLooper must be retained
        let proxy = LooperProxy(looper: looper)
        controller.player = player
        objc_setAssociatedObject(controller, &LooperProxy.associatedKey, proxy, .OBJC_ASSOCIATION_RETAIN)

        player.play()
        return controller
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {}
}

/// Wrapper to keep AVPlayerLooper alive for the lifetime of the controller.
/// AVPlayerLooper must be retained or looping stops.
private class LooperProxy {
    let looper: AVPlayerLooper
    init(looper: AVPlayerLooper) { self.looper = looper }

    nonisolated(unsafe) static var associatedKey: UInt8 = 0
}