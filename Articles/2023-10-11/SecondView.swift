import SwiftUI

struct SecondView: View {
    let fruit: String

    var body: some View {
        Text(fruit)
    }
}

#Preview {
    SecondView(fruit: "Apple")
}
