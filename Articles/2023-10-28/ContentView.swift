import SwiftUI

struct ContentView: View {
    @State var showingfullScreenCover = false
    var body: some View {
        VStack {
            Button(action: {
                showingfullScreenCover = true
            }) {
                Text("Tap me!")
            }
        }
        .fullScreenCover(isPresented: $showingfullScreenCover) {
            SecondView()
        }
    }
}

#Preview {
    ContentView()
}
