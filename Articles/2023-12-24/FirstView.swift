import SwiftUI

struct FirstView: View {
    @Binding var selection: Int
    var body: some View {
        VStack {
            Text("FirstView")
            Button {
                selection = 1
            } label: {
                Text("Go to SecondView")
            }
        }
    }
}
