import SwiftUI

struct ContentView: View {
    @State var pokemon: Pokemon?
    var body: some View {
        NavigationStack {
            List (Pokemon.allCases) { pokemon in
                Button {
                    self.pokemon = pokemon
                } label: {
                    Text(pokemon.description)
                }
            }
            .navigationDestination(item: $pokemon) { pokemon in
                switch pokemon {
                case .snorlax:
                    Image(.snorlax)
                        .resizable()
                        .scaledToFit()
                case .slowpoke:
                    VStack {
                        Image(.slowpoke)
                            .resizable()
                            .scaledToFit()
                        Text("Snorlax")
                    }
                case .ditto:
                    HStack {
                        Image(.ditto)
                            .resizable()
                            .scaledToFit()
                        Text("Ditto")
                    }
                case .eevee:
                    Text("Eevee")
                }
            }
        }
    }
}
