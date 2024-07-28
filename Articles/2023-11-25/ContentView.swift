import SwiftUI

struct ContentView: View {
    @State var showingSheet: Bool = false

    var body: some View {
        Button(action: {
            showingSheet = true
        }, label: {
            Text("ShowSheet")
        })
        .sheet(isPresented: $showingSheet) {
            FirstSheet(showingSheet: $showingSheet)
        }
    }
}

#Preview {
    ContentView()
}
