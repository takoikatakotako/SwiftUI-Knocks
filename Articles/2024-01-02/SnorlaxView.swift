import SwiftUI

struct SnorlaxView: View {
    var body: some View {
        Image(.snorlax)
            .resizable()
            .frame(width: 150, height: 150)
            .scaledToFit()
    }
}
