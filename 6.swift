import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("snorlax")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("Snorlax is the most popular Pokemon")
            }
            .navigationTitle("Snorlax")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
