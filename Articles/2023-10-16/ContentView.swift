import SwiftUI

struct ContentView: View {
    @State var bool = true

    var body: some View {
        VStack {
            Text(bool ? "Snorlax" : "Forever")
            Button(action: {
                bool.toggle()
            }) {
                HStack {
                    Image(.icon)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                    Text("Tap Me!!")
                }
                .padding()
                .border(Color.gray, width: 2)
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}
