import SwiftUI

struct NumberText: View {
    let number: Int
    var body: some View {
        Text(String(number))
            .font(.system(size: 12).bold())
            .padding(.top, 4)
            .padding(.leading, 4)
            .frame(width: 46, alignment: .leading)
    }
}
