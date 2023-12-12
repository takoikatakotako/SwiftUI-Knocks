import SwiftUI

struct ShowMoreView: View {
    @State var text: String
    @State var isFirst = true
    @State var isFold = false
    @State var needFoldButton = true
    @State var textHeight: CGFloat?

    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text(text)
                    .frame(height: textHeight)
                    .background(GeometryReader { geometory in
                        Color.clear.preference(key: SizePreference.self, value: geometory.size)
                    })
                    .padding()
                    .onPreferenceChange(SizePreference.self) { textSize in
                        if self.isFirst == true {
                            if textSize.height > 80 {
                                textHeight = 80
                                isFold = true
                                isFirst = false
                            } else {
                                needFoldButton = false
                            }
                        }
                    }
                Spacer()
            }

            if needFoldButton {
                Button(action: {
                    self.isFold.toggle()
                    if isFold == true {
                        textHeight = 80
                    } else {
                        textHeight = nil
                    }
                }) {
                    Text(isFold ? "More" : "Fold")
                }.padding(.trailing, 8)
            }
        }
    }
}

private struct SizePreference: PreferenceKey {
    static let defaultValue: CGSize = .zero
    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
