import SwiftUI

struct ContentView: View {
    @State var showingAlert = false
    var body: some View {
        Button(
            action: {
                showingAlert = true
            }, label: {
                Text("Tap Me!")
            }
        )
        .alert("Title", isPresented: $showingAlert){
            Button("Button1", role: .destructive){
                print("Button1 Tapped")
            }
        } message: {
            Text("Message")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
