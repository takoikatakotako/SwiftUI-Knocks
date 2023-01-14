import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("No Title")
                .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
