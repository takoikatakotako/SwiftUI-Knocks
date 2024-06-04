import SwiftUI

struct SecondSheet: View {
    @Binding var showingSheet: Bool

    var body: some View {
        VStack {
            Button(action: {
                showingSheet = false
            }) {
                Text("Close Sheet")
            }
        }
        .navigationBarTitle("SecondSheet")
    }
}
