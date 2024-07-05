import SwiftUI

struct FirstSheet: View {
    @Binding var showingSheet: Bool

    var body: some View {
        NavigationStack {
            NavigationLink(
                destination: SecondSheet(showingSheet: $showingSheet),
                label: {
                    Text("Go to SecondSheet")
                }
            )
            .navigationTitle("FirstSheet")
        }
    }
}
