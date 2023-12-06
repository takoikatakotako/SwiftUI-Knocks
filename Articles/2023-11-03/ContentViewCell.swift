import SwiftUI

struct ContentViewCell: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 240, height: 240)
            .background(Color.white)
    }
}
