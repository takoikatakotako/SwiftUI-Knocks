import SwiftUI

struct ContentView: View {
    var body: some View {
        (
            Text("I")
                .font(Font.system(size: 24).bold())
            + Text(" ❤️ ")
                .foregroundColor(Color.red)
            + Text("Snorlax!\n")
                .foregroundColor(Color.black)
                .font(Font.system(size: 24).bold())
            + Text("Snorlax ")
                .foregroundColor(Color.red)
                .font(Font.system(size: 24).bold())
            + Text("is most ")
                .foregroundColor(Color.blue)
                .font(Font.system(size: 24).bold())
            + Text("cute & cool & powerful ")
                .foregroundColor(Color.green)
                .font(Font.system(size: 24).bold())
            + Text("Pokemon.")
                .foregroundColor(Color.yellow)
                .font(Font.system(size: 24).bold())
        )
        .lineSpacing(4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
