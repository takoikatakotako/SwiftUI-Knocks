import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: .large)
    }
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        uiView.color = UIColor.white
        uiView.style = .large
        uiView.startAnimating()
    }
}

struct CustomActivityIndicator: View {
    var body: some View {
        ActivityIndicator()
            .padding(12)
            .background(Color.gray.opacity(0.8))
            .cornerRadius(12)
    }
}
