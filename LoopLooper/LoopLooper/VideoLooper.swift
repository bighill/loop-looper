import SwiftUI
import AVKit

/// Seamless infinite video loop using AVPlayerLooper.
/// Plays a single bundled video file full-screen, forever.
struct VideoLooperView: UIViewControllerRepresentable {
    /// Active clip — change this to try a different video.
    /// Options: "boreal", "snow", "path", "river", "aerial"
    private let videoName = "boreal"

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        controller.videoGravity = .resizeAspectFill
        controller.showsPlaybackControls = false

        guard let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") else {
            fatalError("Video file '\(videoName).mp4' not found in bundle. Add it to LoopLooper/video/.")
        }

        let player = AVQueuePlayer()
        let looper = AVPlayerLooper(player: player, templateItem: AVPlayerItem(asset: AVURLAsset(url: url)))

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
