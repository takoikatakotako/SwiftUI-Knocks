import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Snorlax")
                .card()
            
            Image("icon")
                .resizable()
                .frame(width: 60, height: 60)
                .card()
            
            Text("RedShadow")
                .card(color: Color.red.opacity(0.4))
            
            Text("BigShadow")
                .card(
                    color: Color.green.opacity(0.4),
                    radius: 24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



// CardView.swift
import SwiftUI

struct CardViewModifier: ViewModifier {
    let color: Color
    let radius: CGFloat
    func body(content: Content) -> some View {
        content
            .padding(16)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: color, radius: radius, x: 4, y: 4)
            .padding(radius + 8)
    }
}

extension View {
    func card(
        color: Color = Color.gray.opacity(0.4),
        radius: CGFloat = 8) -> some View {
            self.modifier(CardViewModifier(color: color, radius: radius))
        }
}

struct CardViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        Text("Snorlax")
            .card()
            .previewLayout(.sizeThatFits)
    }
}
