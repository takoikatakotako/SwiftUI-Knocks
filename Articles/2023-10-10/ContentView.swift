import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section("Normal") {
                Text("Meowth")
                Text("Ditto")
            }
            
            Section("Fire") {
                Text("Vulpix")
                Text("Arcanine")
                Text("Charmander")
            }
        }
        .listStyle(.grouped)
    }
}

#Preview {
    ContentView()
}
