import SwiftUI

struct ThirdView: View {
    @Binding var path: [ViewPath]
    var body: some View {
        VStack {
            Text("ThirdView")
                .font(.title)

            NavigationLink(value: ViewPath.firstView) {
                Text("Go to FirstView")
            }

            NavigationLink(value: ViewPath.secondView) {
                Text("Go to SecondView")
            }

            NavigationLink(value: ViewPath.thirdView) {
                Text("Go to ThirdView")
            }

            NavigationLink(value: ViewPath.fourthView) {
                Text("Go to FourthView")
            }

            NavigationLink(value: ViewPath.fifthView) {
                Text("Go to FifthView")
            }

            Button {
                path.removeLast()
            } label: {
                Text("Go to Previous View")
            }

            Button {
                path.removeAll()
            } label: {
                Text("Go to Root View")
            }
        }
    }
}
