import SwiftUI

struct TutorialView: View {
    let image: Image
    let text: String
    var body: some View {
        VStack {
            Text(text)
                .font(.title.bold())
                .foregroundStyle(Color.white)
            
            image
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .background(Color.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}
