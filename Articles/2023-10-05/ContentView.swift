import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(.icon)
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image(.icon)
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image(.icon)
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image(.icon)
                .resizable()
                .frame(width: 42, height: 42)
            Spacer()
            Image(.icon)
                .resizable()
                .frame(width: 42, height: 42)
        }
        .padding(16)
    }
}

#Preview {
    ContentView()
}
