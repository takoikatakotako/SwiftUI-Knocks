import SwiftUI

struct DayOfWeekText: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.system(size: 10).bold())
            .frame(width: 46, height: 46)
            .border(Color.black, width: 0.5)
    }
}
