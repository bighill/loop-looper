import SwiftUI
import AVKit

/// Seamless infinite video loop using AVPlayerLooper.
/// Plays a single bundled video file full-screen, forever.
struct VideoLooperView: UIViewControllerRepresentable {
    /// Active clip — change this to try a different video.
    /// Options: "snow", "path", "aerial"
    private let videoName = "snow"

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = PlayerViewController()
        controller.view.backgroundColor = .black

        guard let url = Bundle.main.url(forResource: videoName, withExtension: "mp4") else {
            fatalError("Video file '\(videoName).mp4' not found in bundle. Add it to LoopLooper/video/.")
        }

        let player = AVQueuePlayer()
        let looper = AVPlayerLooper(
            player: player,
            templateItem: AVPlayerItem(asset: AVURLAsset(url: url))
        )

        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        controller.playerLayer = playerLayer
        controller.view.layer.addSublayer(playerLayer)

        // Keep player + looper alive via the coordinator (not locals / associated objects).
        context.coordinator.attach(player: player, looper: looper, layer: playerLayer)

        player.isMuted = true
        player.play()

        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        if let controller = uiViewController as? PlayerViewController {
            controller.playerLayer?.frame = controller.view.bounds
        }
    }

    static func dismantleUIViewController(_ uiViewController: UIViewController, coordinator: Coordinator) {
        coordinator.teardown()
    }

    /// Hosts the player layer and keeps it sized to the view.
    private final class PlayerViewController: UIViewController {
        var playerLayer: AVPlayerLayer?

        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            playerLayer?.frame = view.bounds
        }
    }

    @MainActor
    final class Coordinator {
        private var player: AVQueuePlayer?
        private var looper: AVPlayerLooper?
        private var playerLayer: AVPlayerLayer?

        func attach(player: AVQueuePlayer, looper: AVPlayerLooper, layer: AVPlayerLayer) {
            self.player = player
            self.looper = looper
            self.playerLayer = layer
        }

        func teardown() {
            player?.pause()
            playerLayer?.player = nil
            playerLayer = nil
            looper = nil
            player = nil
        }
    }
}
