import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContentViewCell(image: Image(.snorlax))
            ContentViewCell(image: Image(.magnemite))
            ContentViewCell(image: Image(.psyduck))
            ContentViewCell(image: Image(.quagsire))
            ContentViewCell(image: Image(.slowpoke))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray)
        .tabViewStyle(.page)
        .menuIndicator(.visible)
    }
}