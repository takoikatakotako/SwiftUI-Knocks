import SwiftUI

struct ContentView: View {
    @State var showingCover = false
    var body: some View {
        VStack {
            Button(action: {
                showingCover = true
            }) {
                Text("Tap me!")
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
        .fullScreenCover(isPresented: $showingCover) {
            SecondView()
        }
    }
}

#Preview {
    ContentView()
}
