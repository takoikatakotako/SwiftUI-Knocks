import SwiftUI

struct Pokemon: Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let image: UIImage
}

struct PokemonResponse: Decodable {
    let id: Int
    let name: String
    let imageName: String
}
