import SwiftUI

struct ContentView: View {
    @State var showingSheet = false
    var body: some View {

        Button(action: {
            showingSheet = true
        }, label: {
            Text("Show Modal!")
        })
        .sheet(isPresented: $showingSheet) {
            Text("Half Modal")
                .presentationDetents([.medium])

        }
    }
}

#Preview {
    ContentView()
}
