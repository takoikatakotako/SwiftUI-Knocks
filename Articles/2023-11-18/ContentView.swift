import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewState()
    var body: some View {
        VStack {
            Button("Play") {
                viewModel.playAudio()
            }
        }
    }
}

#Preview {
    ContentView()
}
