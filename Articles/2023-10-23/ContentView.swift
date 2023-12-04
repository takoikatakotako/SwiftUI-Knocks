import SwiftUI

struct ContentView: View {
    @State private var users = ["Paul", "Taylor", "Adele"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users, id: \.self) { user in
                    Text(user)
                }
                .onDelete(perform: delete)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
