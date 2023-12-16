import Foundation

enum ResourceType: Decodable {
    case image
    case movie
}

struct Resource: Decodable {
    let type: String
    let name: String
    let width: Int
}

