import SwiftUI

struct ModalView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Text("Close")
        })
        .interactiveDismissDisabled(true)
    }
}
