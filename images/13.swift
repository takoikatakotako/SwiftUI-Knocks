import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Section {
                Text("Snorlax")
                Text("Meowth")
                Text("Ditto")
            } header: {
                Text("Normal")
            }
            
            Section {
                Text("Vulpix")
                Text("Arcanine")
                Text("Charmander")
            } header: {
                Text("Fire")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
