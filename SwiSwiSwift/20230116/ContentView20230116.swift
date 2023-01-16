import SwiftUI

struct ContentView20230116: View {
    @State var alertMessage: String = ""
    @State var showingAlert: Bool = false
    
    var body: some View {
        HStack(spacing: 20) {
            Button {
                alertMessage = "This is Ditto!!!"
                showingAlert = true
            } label: {
                Image("ditto")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .border(Color.black, width: 2)
            }
            
            Button {
                alertMessage = "This is Snorlax!!!"
                showingAlert = true
            } label: {
                Image("snorlax")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .border(Color.black, width: 2)
            }
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text(alertMessage), dismissButton: .default(Text("Close")))
        }
    }
}

struct ContentView20230116_Previews: PreviewProvider {
    static var previews: some View {
        ContentView20230116()
    }
}
