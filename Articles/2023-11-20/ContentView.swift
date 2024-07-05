import SwiftUI

struct ContentView: View {
    @State var height: String = ""
    @State var weight: String = ""
    @State var bmi: Double = 0
    @State var showingSheet = false

    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("Height")
                TextField("Input Your Height", text: $height)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(Color.black, width: 1)
            }
            .padding()

            VStack(alignment: .leading) {
                Text("Height")
                TextField("Input Your Weight", text: $weight)
                    .keyboardType(.numberPad)
                    .padding()
                    .border(Color.black, width: 1)
            }
            .padding()

            Button(action: {
                guard let height = Double(self.height),
                      let weight = Double(self.weight) else {
                    print("Fail to Calc BMI")
                    return
                }

                // Calc BMI
                bmi = weight / (height / 100) / (height / 100)

                // Show Sheet
                showingSheet = true
            }, label: {
                Text("Calc BMI")
                    .font(.title)
                    .foregroundColor(Color.black)
                    .padding()
                    .background(Color(UIColor.lightGray))
                    .cornerRadius(16)
            })
        }
        .sheet(isPresented: $showingSheet) {
            ResultView(bmi: $bmi)
        }
    }
}

#Preview {
    ContentView()
}
