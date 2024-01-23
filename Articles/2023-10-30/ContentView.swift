import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Text("No Navigation Bar")
                .navigationBarTitle("Not Showing Title")
                .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
