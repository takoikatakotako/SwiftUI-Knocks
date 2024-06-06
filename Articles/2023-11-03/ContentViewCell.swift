import SwiftUI

struct ContentViewCell: View {
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .frame(width: 240, height: 240)
            .background(Color.white)
    }
}
