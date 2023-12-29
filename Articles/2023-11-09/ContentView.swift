import SwiftUI

struct ContentView: View {
    let markdownText: String = "**Snorlax** is the **most** cute pokemon!\n[About Snorlax](https://en.wikipedia.org/wiki/Snorlax)"
    
    var body: some View {
        Text(LocalizedStringKey(markdownText))
            .tint(Color.red)
    }
}

#Preview {
    ContentView()
}
