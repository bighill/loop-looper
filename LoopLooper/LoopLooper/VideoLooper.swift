import SwiftUI
import AVKit

/// Seamless infinite video loop using AVPlayerLooper.
/// Plays a single bundled video file full-screen, forever.
struct VideoLooperView: UIViewControllerRepresentable {
    /// Active clip — change this to try a different video.
    /// Options: "boreal", "snow", "path", "river", "aerial"
    private let videoName = "path"

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = PlayerViewController()
        controller.view.backgroundColor = .black

        guard let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") else {
            fatalError("Video file '\(videoName).mp4' not found in bundle. Add it to LoopLooper/video/.")
        }

        let asset = AVURLAsset(url: url)
        let item = AVPlayerItem(asset: asset)
        let player = AVQueuePlayer()
        let looper = AVPlayerLooper(player: player, templateItem: item)

        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        controller.playerLayer = playerLayer
        controller.view.layer.addSublayer(playerLayer)

        context.coordinator.player = player
        context.coordinator.looper = looper
        context.coordinator.playerLayer = playerLayer

        // Local file — no need to stall for buffering
        player.automaticallyWaitsToMinimizeStalling = false
        player.isMuted = true
        player.playImmediately(atRate: 1.0)

        // Looper inserts copies of the template; retry play when the queued item is ready
        context.coordinator.observeCurrentItem(on: player)

        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if let controller = uiViewController as? PlayerViewController {
            controller.playerLayer?.frame = controller.view.bounds
        }
    }

    /// Hosts the player layer and keeps it sized to the view.
    private final class PlayerViewController: UIViewController {
        var playerLayer: AVPlayerLayer?

        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            playerLayer?.frame = view.bounds
        }
    }

    final class Coordinator {
        var player: AVQueuePlayer?
        var looper: AVPlayerLooper?
        var playerLayer: AVPlayerLayer?
        private var itemObservation: NSKeyValueObservation?
        private var statusObservation: NSKeyValueObservation?

        func observeCurrentItem(on player: AVQueuePlayer) {
            itemObservation = player.observe(\.currentItem, options: [.initial, .new]) { [weak self] player, _ in
                self?.statusObservation?.invalidate()
                guard let item = player.currentItem else { return }
                self?.statusObservation = item.observe(\.status, options: [.initial, .new]) { item, _ in
                    guard item.status == .readyToPlay else { return }
                    player.playImmediately(atRate: 1.0)
                }
            }
        }

        deinit {
            itemObservation?.invalidate()
            statusObservation?.invalidate()
            player?.pause()
        }
    }
}
