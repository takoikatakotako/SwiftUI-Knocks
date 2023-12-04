import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.icon)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .cornerRadius(75)
            .overlay(
                RoundedRectangle(cornerRadius: 75).stroke(Color.black, lineWidth: 4)
            )
    }
}

#Preview {
    ContentView()
}
