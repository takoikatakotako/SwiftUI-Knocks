import SwiftUI

struct SecondView: View {
    @Binding var selection: Int
    var body: some View {
        VStack {
            Text("SecondView")
            Button {
                selection = 0
            } label: {
                Text("Go to FirstView")
            }
        }
    }
}
