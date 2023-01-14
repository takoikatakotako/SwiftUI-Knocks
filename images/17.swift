import SwiftUI

struct ContentView: View {
    @State var alert: AlertItem?
    
    var body: some View {
        VStack {
            Button(
                action: {
                    alert = .alert1
                }, label: {
                    Text("Show Alert1")
                }
            )
            
            Button(
                action: {
                    alert = .alert2
                }, label: {
                    Text("Show Alert2")
                }
            )
        }
        .alert(item: $alert) { item in
            switch item {
            case .alert1:
                return Alert(
                    title: Text("Alert1"),
                    message: Text("Message"),
                    primaryButton: .default(Text("OK")),
                    secondaryButton: .default(Text("Close")))
            case .alert2:
                return Alert(
                    title: Text("Alert2"),
                    message: Text("Message"),
                    primaryButton: .default(Text("OK")),
                    secondaryButton: .default(Text("Close")))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



// AlertItem.swift
enum AlertItem: Identifiable, Hashable {
    var id: Self {
        return self
    }
    case alert1
    case alert2
}
