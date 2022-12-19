import SwiftUI

struct ContentView: View {
    @State var pokemons: [Pokemon] = [
        Pokemon(id: 143, type: .normal, name: "Snorlax"),
        Pokemon(id: 132, type: .normal, name: "Ditto"),
        Pokemon(id: 4, type: .fire, name: "Charmander"),
        Pokemon(id: 7, type: .water, name: "Squirtle"),
    ]
    
    var body: some View {
        NavigationView {
            List (pokemons) { pokemon in
                NavigationLink(destination: containedView(pokemon: pokemon)) {
                    Text(pokemon.name)
                }
            }
        }
    }
    
    func containedView(pokemon: Pokemon) -> AnyView {
        switch pokemon.type {
        case .normal:
            return AnyView(NormalView())
        case .water:
            return AnyView(WaterView())
        case .fire:
            return AnyView(FireView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





struct Pokemon: Identifiable {
    var id: Int
    var type: PokemonType
    var name: String
}

enum PokemonType {
    case normal
    case water
    case fire
}


import SwiftUI

struct NormalView: View {
    var body: some View {
        Text("Normal")
    }
}



import SwiftUI

struct FireView: View {
    var body: some View {
        Text("Fire")
    }
}


import SwiftUI

struct WaterView: View {
    var body: some View {
        Text("Water")
    }
}
