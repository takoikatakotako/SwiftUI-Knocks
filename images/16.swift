import SwiftUI

struct ContentView: View {
    @State var showingAlert1 = false
    @State var showingAlert2 = false
    var body: some View {
        VStack {
            Button(
                action: {
                    showingAlert1 = true
                }, label: {
                    Text("Button1")
                }
            )
            
            Button(
                action: {
                    showingAlert2 = true
                }, label: {
                    Text("Button2")
                }
            )
        }
        .alert("Alert1", isPresented: $showingAlert1){
            Button("Close", role: .cancel){
                print("Alert1 Close")
            }
        } message: {
            Text("Message")
        }
        .alert("Alert2", isPresented: $showingAlert2){
            Button("Close", role: .cancel){
                print("Alert2 Close")
            }
        } message: {
            Text("Message")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
