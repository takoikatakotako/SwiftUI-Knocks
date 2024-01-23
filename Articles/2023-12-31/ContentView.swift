import SwiftUI

struct ContentView: View {
    var body: some View {
        ImageViewerView(imageName: "icon")
            .ignoresSafeArea(.all, edges: .all)
    }
}

#Preview {
    ContentView()
}
