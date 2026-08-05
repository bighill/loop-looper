import SwiftUI

struct ContentView: View {
    private var videoNames: [String] {
        (Bundle.main.urls(forResourcesWithExtension: "mp4", subdirectory: nil) ?? [])
            .map { $0.deletingPathExtension().lastPathComponent }
            .sorted()
    }

    var body: some View {
        NavigationStack {
            Group {
                if videoNames.isEmpty {
                    ContentUnavailableView(
                        "No videos found",
                        systemImage: "film",
                        description: Text("Add .mp4 files to LoopLooper/video/ and rebuild.")
                    )
                } else {
                    List(videoNames, id: \.self) { name in
                        NavigationLink(name.capitalized) {
                            VideoLooperView(videoName: name)
                                .ignoresSafeArea()
                        }
                    }
                }
            }
            .navigationTitle("Loop Looper")
        }
    }
}

#Preview {
    ContentView()
}
