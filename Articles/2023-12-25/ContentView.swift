import SwiftUI

struct ContentView: View {
    let pokemons: [Pokemon] = [
        Pokemon(name: "snorlax", type: "normal"),
        Pokemon(name: "ditto", type: "normal"),
        Pokemon(name: "psyduck", type: "water"),
        Pokemon(name: "pikachu", type: "electric"),
    ]
    
    var body: some View {
        List(pokemons, id: \.name) { pokemon in
            Text("\(pokemon.name)")
        }
    }
}
