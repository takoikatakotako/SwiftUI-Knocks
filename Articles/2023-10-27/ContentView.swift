import SwiftUI

struct ContentView: View {
    @State var showingSheet = false
    var body: some View {
        VStack {
            Button(action: {
                showingSheet = true
            }) {
                Text("Tap me!")
            }
        }
        .sheet(isPresented: $showingSheet) {
            Text("Sheet!!")
        }
    }
}

#Preview {
    ContentView()
}
