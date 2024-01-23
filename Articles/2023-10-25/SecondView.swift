import SwiftUI

struct SecondView: View {
    var delegate: MyProtocol
    var body: some View {
        Button(action: {
            delegate.myFunc()
        }) {
            Text("ChangeText")
        }
    }
}
