import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.icon)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 200)
            .clipped()
            .background(Color.red)
    }
}

#Preview {
    ContentView()
}
