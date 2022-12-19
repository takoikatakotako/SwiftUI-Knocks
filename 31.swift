import SwiftUI

struct ContentView: View {
    @State var showingSheet = false
    
    var body: some View {
        Button("Tap Me!!") {
            showingSheet = true
        }
        .fullScreenCover(isPresented: $showingSheet) {
            FullScreenView(showingSheet: $showingSheet)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


import SwiftUI

struct FullScreenView: View {
    @Binding var showingSheet: Bool

    var body: some View {
        VStack {
            Text("Full Screen Sheet!")
            Button("Close") {
                showingSheet = false
            }
        }
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenView(showingSheet: .constant(true))
    }
}
