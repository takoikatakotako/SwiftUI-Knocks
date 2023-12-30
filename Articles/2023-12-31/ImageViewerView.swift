import SwiftUI

struct ImageViewerView: UIViewRepresentable {
    let imageName: String
    func makeUIView(context: Context) -> UIImageViewerView {
        let view = UIImageViewerView(imageName: imageName)
        return view
    }

    func updateUIView(_ uiView: UIImageViewerView, context: Context) {}
}
