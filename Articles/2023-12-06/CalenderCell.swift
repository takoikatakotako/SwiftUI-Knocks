import SwiftUI

struct CalenderCell<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            content
        }
        .frame(width: 46, height: 46, alignment: .top)
        .border(Color.black, width: 0.5)
    }
}
