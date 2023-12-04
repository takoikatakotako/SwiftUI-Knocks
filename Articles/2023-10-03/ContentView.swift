import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(.icon)
            .resizable()
            .frame(width: 150, height: 150)
            .clipShape(Circle())
    }
}

#Preview {
    ContentView()
}
