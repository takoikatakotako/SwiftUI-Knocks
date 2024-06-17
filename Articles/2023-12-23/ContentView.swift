import SwiftUI

struct ContentView: View {
    @State var pokemon: Pokemon?
    
    var body: some View {
        NavigationStack {
            List {
                Button {
                    pokemon = .snorlax
                } label: {
                    Text("Snorlax")
                }
                Button {
                    pokemon = .slowpoke
                } label: {
                    Text("Slowpoke")
                }
                Button {
                    pokemon = .eevee
                } label: {
                    Text("Eevee")
                }
            }
            .navigationDestination(item: $pokemon) { pokemon in
                switch pokemon {
                case .snorlax:
                    VStack {
                        Image(.snorlax)
                        Text("Snorlax")
                    }
                case .slowpoke:
                    Text("Slowpoke")
                case .eevee:
                    Image(.eevee)
                }
            }
        }
    }
}
