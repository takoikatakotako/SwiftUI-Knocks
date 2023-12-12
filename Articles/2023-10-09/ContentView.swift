import SwiftUI

struct ContentView: View {
    @State var text = "Snorlax"

    var body: some View {
        VStack {
            Text(text)
            Button(action: {
                text = "Forever"
            }) {
                Text("Tap Me!!")
            }
        }
    }
}
