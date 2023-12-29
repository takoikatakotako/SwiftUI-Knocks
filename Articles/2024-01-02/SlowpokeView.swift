import SwiftUI

struct SlowpokeView: View {
    var body: some View {
        Image(.slowpoke)
            .resizable()
            .frame(width: 150, height: 150)
            .scaledToFit()
    }
}
