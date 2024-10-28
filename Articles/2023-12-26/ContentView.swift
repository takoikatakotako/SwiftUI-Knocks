import SwiftUI

struct ContentView: View {
    @State var images: [UIImage] = []
    @State var showingSheet = false
    
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<images.count, id: \.self) { index in
                        Image(uiImage: images[index])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 160)
                            .clipped()
                    }
                }
            }
            
            Button {
                showingSheet = true
            } label: {
                Text("Take Photo!")
            }
        }
        .sheet(isPresented: $showingSheet) {
            CameraView(images: $images)
        }
    }
}
