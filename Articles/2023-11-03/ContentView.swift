import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContentViewCell(imageName: "snorlax")
            ContentViewCell(imageName: "magnemite")
            ContentViewCell(imageName: "psyduck")
            ContentViewCell(imageName: "quagsire")
            ContentViewCell(imageName: "slowpoke")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
        .tabViewStyle(.page)
        .menuIndicator(.visible)
    }
}

#Preview {
    ContentView()
}
