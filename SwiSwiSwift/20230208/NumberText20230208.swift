import SwiftUI

struct NumberText20230208: View {
    let number: Int
    var body: some View {
        Text(String(number))
            .font(.system(size: 12).bold())
            .padding(.top, 4)
            .padding(.leading, 4)
            .frame(width: 46, alignment: .leading)
    }
}

struct NumberText20230208_Previews: PreviewProvider {
    static var previews: some View {
        NumberText20230208(number: 1)
    }
}
