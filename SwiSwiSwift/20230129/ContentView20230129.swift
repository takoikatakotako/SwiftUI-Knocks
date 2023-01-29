import SwiftUI

struct ContentView20230129: View {
    @State var text = ""

    var body: some View {
        VStack {
            TextField("Pokemon Name", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button {
                UserDefaults.standard.set(text, forKey: "pokemon")
            } label: {
                Text("Save")
            }
        }
        .onAppear {
            if let pokemonName = UserDefaults.standard.string(forKey: "pokemon") {
                text = pokemonName
            }
        }
    }
}

struct ContentView20230129_Previews: PreviewProvider {
    static var previews: some View {
        ContentView20230129()
    }
}
