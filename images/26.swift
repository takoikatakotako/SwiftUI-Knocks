import SwiftUI

struct ContentView: View {
    @State var pokemons: [String] = ["Snorlax", "Pikachu", "Psyduck", "Blastoise", "Slowpoke"]
    @State var alertMessage: String = ""
    @State var showingAlert = false
    
    var body: some View {
        List {
            ForEach(pokemons, id: \.self) { pokemon in
                Button(action: {
                    showAlert(pokemon: pokemon)
                }, label: {
                    Text(pokemon)
                        .foregroundColor(Color.black)
                })
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Name"), message: Text(alertMessage), dismissButton: .default(Text("Close")))
            }
        }
    }
    
    func showAlert(pokemon: String) {
        alertMessage = pokemon
        showingAlert = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
