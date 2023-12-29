import SwiftUI

struct ContentView: View, InputViewDelegate {
    @State var todos: [String] = []
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                List {
                    ForEach(todos, id: \.self) { user in
                        Text(user)
                    }
                    .onDelete(perform: delete)
                }
                .listStyle(.plain)
                
                NavigationLink(destination: InputView(delegate: self, text: "")) {
                    Text("Add")
                        .foregroundColor(Color.white)
                        .font(Font.system(size: 20))
                }
                .frame(width: 60, height: 60)
                .background(Color.orange)
                .cornerRadius(30)
                .padding()
                
            }
            .onAppear {
                if let todos = UserDefaults.standard.array(forKey: "TODO") as? [String] {
                    self.todos = todos
                }
            }
            .navigationTitle("TODO")
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func delete(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
        UserDefaults.standard.setValue(todos, forKey: "TODO")
    }
    
    func addTodo(text: String) {
        todos.append(text)
        UserDefaults.standard.setValue(todos, forKey: "TODO")
    }
}

#Preview {
    ContentView()
}
