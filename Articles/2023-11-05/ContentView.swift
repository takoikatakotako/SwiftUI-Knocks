import SwiftUI

struct ContentView: View {
    @State var viewType: ViewType = .launch
    
    var body: some View {
        ZStack {
            switch viewType {
            case .launch:
                Text("Launch")
            case .home:
                Text("Home")
            }
        }
        .onAppear {
            Task {
                try? await sleep()
                withAnimation(.linear(duration: 0.5)) {
                    viewType = .home
                }
            }
        }
    }
    
    func sleep() async throws {
        // sleep 2sec
        _ = try await Task.sleep(nanoseconds: 2_000_000_000)
    }
}

#Preview {
    ContentView()
}
