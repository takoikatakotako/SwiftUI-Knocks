import SwiftUI

struct ContentView20200905: View {
    var body: some View {
        Image("icon")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150, height: 200)
            .background(Color.red)
    }
}

struct ContentView20200905_Previews: PreviewProvider {
    static var previews: some View {
        ContentView20200905()
    }
}
