struct ContentView: View {
    @State var text = "Snorlax"
    
    var body: some View {
        VStack {
            Text(text)
            Button(action: {
                self.text = "Forever"
            }) {
                Text("Tap Me!!")
            }
        }
    }
}
