import SwiftUI

struct ContentView: View {
    @State var showingAlert = false
    var body: some View {
        VStack {
            Button {
                showingAlert = true
            } label: {
                Text("Show Alert")
            }
        }
        .alert("Alert Title", isPresented: $showingAlert) {
            Button("Done", role: .none) {
                print("Done")
            }
            Button("Cancel", role: .cancel) {
                print("Cancel")
            }
        } message: {
            Text("Message")
        }
    }
}

#Preview {
    ContentView()
}
