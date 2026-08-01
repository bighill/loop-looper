import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        VideoLooperView()
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}