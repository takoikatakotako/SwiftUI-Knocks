import SwiftUI

struct ContentView: View {
    let pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    @State var selection = 0
    
    var body: some View {
        Picker("Pokemon", selection: $selection) {
            ForEach(pokemons, id: \.self) { pokemon in
                Text(pokemon)
            }
        }
        .pickerStyle(WheelPickerStyle())
        .onReceive([selection].publisher.first()) { value in
            print(pokemons[value])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
