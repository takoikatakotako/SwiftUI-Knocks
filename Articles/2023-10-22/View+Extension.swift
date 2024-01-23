import SwiftUI

extension View {
    func card(
        color: Color = Color.gray.opacity(0.4),
        radius: CGFloat = 8) -> some View {
            self.modifier(CardViewModifier(color: color, radius: radius))
        }
}
