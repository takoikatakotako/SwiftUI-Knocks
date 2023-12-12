import SwiftUI

struct SecondView: View {
    let fruit: String

    var body: some View {
        Text(fruit)
            .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    SecondView(fruit: "Apple")
}
