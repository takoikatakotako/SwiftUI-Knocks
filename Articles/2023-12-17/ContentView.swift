import SwiftUI

struct ContentView: View {
    @State var pokemons: [Pokemon] = []
    
    var body: some View {
        VStack {
            ForEach(pokemons) { pokemon in
                HStack {
                    Image(uiImage: pokemon.image)
                        .resizable()
                        .frame(width: 100, height: 100)
                    VStack(alignment: .leading) {
                        Text("No: \(pokemon.id)")
                        Text(pokemon.name)
                        Text(pokemon.name)
                    }
                    Spacer()
                }
                Divider()
            }
        }
        .task {
            guard let pokemons = try? await fetchPokemons() else {
                return
            }
            await MainActor.run {
                self.pokemons = pokemons
            }
        }
    }
    
    private func fetchPokemons() async throws -> [Pokemon]{
        let host = "https://swiswiswift.com/2022-06-16"
        let url = URL(string: "\(host)/pokemons.json")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let pokemonResponses = try JSONDecoder().decode([PokemonResponse].self, from: data)
        
        var pokemons: [Pokemon] = []
        for pokemonResponse in pokemonResponses {
            let imageUrl = URL(string: "\(host)/\(pokemonResponse.imageName)")!
            let (data, _) = try await URLSession.shared.data(from: imageUrl)
            let image = UIImage(data: data)!
            let pokemon = Pokemon(
                id: pokemonResponse.id,
                name: pokemonResponse.name,
                imageName: pokemonResponse.name,
                image: image)
            pokemons.append(pokemon)
        }
        return pokemons
    }
}
