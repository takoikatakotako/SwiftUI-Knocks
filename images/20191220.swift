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
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("Title"),
                message: Text("Message"),
                primaryButton: .default(Text("Button1")) {
                    print("Button1 Tapped")
                },
                secondaryButton: .destructive(Text("Button2")) {
                    print("Button2 Tapped")
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
