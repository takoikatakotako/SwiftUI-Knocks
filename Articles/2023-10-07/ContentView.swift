import SwiftUI

struct ContentView: View {
    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    @State var selectedPokemon = 0
    
    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon) {
            ForEach(pokemons, id: \.self) { pokemon in
                Text(pokemon)
            }
        }
        .pickerStyle(WheelPickerStyle())
        .onReceive([selectedPokemon].publisher.first()) { value in
            print("selectedPokemon: \(value)")
            print(pokemons[value])
        }
    }
}

#Preview {
    ContentView()
}
