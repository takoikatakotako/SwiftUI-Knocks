import SwiftUI

struct ContentView: View {
    let pokemons = [Pokemon(name: "Snorlax", type: "Normal"), Pokemon(name: "Eevee", type: "Normal")]
    var body: some View {
        List(pokemons, id: \.name) { pokemon in
            Text(pokemon.name)
        }
    }
}
