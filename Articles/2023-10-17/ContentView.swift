import SwiftUI

struct ContentView: View {
    @State var numberString: String = ""
    @State var showingAlert: Bool = false
    @State var showingSheet: Bool = false

    var body: some View {
        VStack {
            TextField("Input Number", text: $numberString)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                // Can numberString convert to Double?
                guard Double(numberString) != nil else {
                    showingAlert = true
                    return
                }
                showingSheet = true
            }) {
                Text("Show Sheet")
            }
        }
        .alert(Text("Error"), isPresented: $showingAlert, actions: {
            Button("Close", role: .none) {
                print("Close")
            }
        }, message: {
            Text("Please Input Number")
        })
        .sheet(isPresented: $showingSheet) {
            Text("\(numberString) can convert to Double")
        }
    }
}

#Preview {
    ContentView()
}
