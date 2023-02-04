import SwiftUI

struct ContentView: View {
    @State var pokemons = ["Snorlax", "Ditto", "Charmander", "Diglett"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(pokemons, id: \.self) { pokemon in
                    Text(pokemon)
                }
                .onDelete(perform: delete)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        pokemons.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
