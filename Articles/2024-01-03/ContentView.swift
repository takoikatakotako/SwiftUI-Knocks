import SwiftUI

struct ContentView: View {
    @State var views = [
        TutorialView(image: Image(.snorlax), text: "First"),
        TutorialView(image: Image(.pikachu), text: "Second"),
        TutorialView(image: Image(.slowpoke), text: "Third"),
        TutorialView(image: Image(.magikarp), text: "Fourth"),
    ]

    var body: some View {
        PageView(views)
            .background(Color.gray)
            .edgesIgnoringSafeArea(.all)
    }
}
