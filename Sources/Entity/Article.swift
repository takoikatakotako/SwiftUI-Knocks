import Foundation

struct Article: Decodable {
    let title: String
    let description: String
    let directory: String
    let resources: [Resource]
    let codes: [String]
}
