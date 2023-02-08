import SwiftUI

struct ScheduleText20230208: View {
    let text: String
    var body: some View {
        HStack(spacing: 0) {
            Text(text)
                .lineLimit(1)
                .font(.system(size: 8).bold())
                .padding(.horizontal, 4)
                .frame(width: 38)
                .background(Color(uiColor: .systemGray4))
        }
        .frame(width: 46, alignment: .center)
    }
}

struct ScheduleText20230208_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleText20230208(text: "美容院")
    }
}
