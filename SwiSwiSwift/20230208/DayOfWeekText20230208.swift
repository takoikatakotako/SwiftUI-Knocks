import SwiftUI

struct DayOfWeekText20230208: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.system(size: 10).bold())
            .frame(width: 46, height: 46)
            .border(Color.black, width: 0.5)
    }
}

struct DayOfWeekText20230208_Previews: PreviewProvider {
    static var previews: some View {
        DayOfWeekText20230208(text: "Sun")
    }
}
