import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(.icon)
                    .resizable()
                    .frame(width: 150, height: 150)
                
                Text("Snorlax is the most plpular Pokemon")
            }
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Snorlax")
        }
    }
}

#Preview {
    ContentView()
}
