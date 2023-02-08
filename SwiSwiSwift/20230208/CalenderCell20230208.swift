import SwiftUI

struct CalenderCell20230208<Content: View>: View {
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

struct CalenderCell20230208_Previews: PreviewProvider {
    static var previews: some View {
        CalenderCell20230208 {
            NumberText20230208(number: 12)
            ScheduleText20230208(text: "歯医者")
        }
        .previewLayout(.sizeThatFits)
    }
}
