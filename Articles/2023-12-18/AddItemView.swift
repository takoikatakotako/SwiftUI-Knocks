import SwiftUI

struct AddItemView: View {
    @StateObject var viewState: AddItemViewState

    init(items: Binding<[String]>) {
        self._viewState = StateObject(wrappedValue: AddItemViewState(items: items))
    }

    var body: some View {
        VStack {
            Text("Count: \(viewState.items.count)")

            Button {
                viewState.addItem()
            } label: {
                Text("Add Item")
            }
        }
    }
}
