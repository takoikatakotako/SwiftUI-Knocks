import SwiftUI

struct ContentView: View {
    @State var isActive: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    isActive = true
                }) {
                    Text("Tap Me!!")
                }
            }
            .navigationDestination(isPresented: $isActive) {
                Text("SecondView")
            }
        }
    }
}

#Preview {
    ContentView()
}
