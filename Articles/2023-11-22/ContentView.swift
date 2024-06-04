import SwiftUI

struct ContentView: View {
    var body: some View {
        let pokemons = ["pikachu", "slowpoke", "bellsprout", "ditto", "snorlax", "eevee", "magikarp"]

        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 12) {
                ForEach(pokemons, id: \.self) { pokemon in
                    Image(pokemon)
                        .resizable()
                        .frame(width: 80, height: 80)
                        .background(Color(UIColor.lightGray))
                }
            }
            .padding(.horizontal, 12)
        }
        .frame(height: 80)
    }
}

#Preview {
    ContentView()
}
