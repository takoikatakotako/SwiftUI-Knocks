import SwiftUI

struct ContentView: View {
    @State var percent: Double = 0
    let text = """
        Fly me to the moon
        Let me sing among those stars
        Let me see what spring is like
        On jupiter and mars
        
        In other words, hold my hand
        In other words, baby kiss me
        
        Fill my heart with song
        And let me sing for ever more
        You are all I long for
        All I worship and adore
        
        In other words, please be true
        In other words, I love you
        """
    
    var body: some View {
        VStack {
            TextScrollView(text: text + text + text + text + text + text + text, percent: $percent)
            Slider(value: $percent, in: 0...100)
                .padding(.horizontal)
        }
    }
}
