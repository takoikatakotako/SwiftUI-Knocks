import SwiftUI

struct ContentView: View {
    @State var isActive = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    isActive = true
                }) {
                    Text("Tap Me!!")
                }
                
                NavigationLink(destination: Text("SecondView"), isActive: $isActive) {
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
