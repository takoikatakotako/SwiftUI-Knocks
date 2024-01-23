import SwiftUI

struct ContentView: View {
    @State var name = ""
    @State var showingSheet = false
    
    var body: some View {
        VStack(spacing: 16) {
            TextField("Input Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Name: \(name)")

            Button {
                showingSheet = true
            } label: {
                Text("Show Modal")
                    .font(Font.system(size: 20))
                    .foregroundColor(Color.white)
                    .padding(16)
                    .background(Color.gray)
                    .cornerRadius(16)
            }
            .sheet(isPresented: $showingSheet) {
                PokemonView(pokemonName: name)
            }
        }
    }
}

#Preview {
    ContentView()
}
