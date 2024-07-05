import SwiftUI

class AddItemViewState: ObservableObject {
    @Binding var bindingItems: [String]
    @Published var items: [String] {
        didSet {
            bindingItems = items
        }
    }

    init(items: Binding<[String]>) {
        self.items = items.wrappedValue
        self._bindingItems = items
    }

    func addItem() {
        items.append("Mac Book Pro")
    }
}
