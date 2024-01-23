import SwiftUI

struct ResultView: View {
    @Binding var bmi: Double
    var body: some View {
        VStack {
            Text("BMI: \(bmi)")
            
            if bmi < 18.5 {
                Text("You are thin")
                Image(.bellsprout)
                    .resizable()
                    .frame(width: 200, height: 200)
            } else if bmi > 25 {
                Text("You are fat")
                Image(.snorlax)
                    .resizable()
                    .frame(width: 200, height: 200)
            } else {
                Text("You are healthy")
                Image(.pikachu)
                    .resizable()
                    .frame(width: 200, height: 200)
            }
        }
    }
}
