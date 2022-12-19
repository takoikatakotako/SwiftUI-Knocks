import SwiftUI

struct ContentView: View {
    @State var showingSheet = false
    
    var body: some View {
        Button("Tap Me!!") {
            showingSheet = true
        }
        .sheet(isPresented: $showingSheet) {
            Text("Sheet!!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
