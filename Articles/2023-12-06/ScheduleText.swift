import SwiftUI

struct ScheduleText: View {
    let text: String
    var body: some View {
        HStack(spacing: 0) {
            Text(text)
                .lineLimit(1)
                .font(.system(size: 8).bold())
                .padding(.horizontal, 4)
                .frame(width: 38)
                .background(Color.gray.opacity(0.3))
        }
        .frame(width: 46, alignment: .center)
    }
}
