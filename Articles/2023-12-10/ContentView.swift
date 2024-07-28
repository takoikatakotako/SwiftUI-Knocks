import SwiftUI

struct ContentView: View {
    @State var pokemon = ""
    var body: some View {
        VStack {
            Text("Pokemon Name is \(pokemon)")
            
            Button {
                UserDefaults().setValue("Pikachu", forKey: "POKEMON")
                getPokemon()
            } label: {
                Text("Set Pikachu")
            }
            
            Button {
                UserDefaults().setValue("Ditto", forKey: "POKEMON")
                getPokemon()
            } label: {
                Text("Set Ditto")
            }
            
            Button {
                UserDefaults().setValue("Slowpoke", forKey: "POKEMON")
                getPokemon()
            } label: {
                Text("Set Slowpoke")
            }
        }
        .onAppear {
            getPokemon()
        }
    }
    
    func getPokemon() {
        if let pokemon = UserDefaults().value(forKey: "POKEMON") as? String {
            self.pokemon = pokemon
        }
    }
}
