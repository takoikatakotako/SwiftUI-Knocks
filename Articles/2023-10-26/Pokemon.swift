import Foundation

enum Pokemon: Identifiable, CaseIterable, CustomStringConvertible {
    var id: Int {
        self.hashValue
    }
    case snorlax
    case slowpoke
    case ditto
    case eevee
    
    var description : String {
      switch self {
      case .snorlax:
          "Snorlax"
      case .slowpoke:
          "Slowpoke"
      case .ditto:
          "Ditto"
      case .eevee:
          "Eevee"
      }
    }
}
