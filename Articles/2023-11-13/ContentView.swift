import SwiftUI

struct ContentView: View {
    @State var userName: String = ""
    @State var onEditing: Bool = false

    var body: some View {
        VStack {
            Text(onEditing ? "On Editing" : "Not On Editing")

            TextField("Placeholder", text: $userName, onEditingChanged: { onEditing in
                print("onEditingChanged: \(onEditing)")
                self.onEditing = onEditing
            }, onCommit: {
                print("onCommit")
            })
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
