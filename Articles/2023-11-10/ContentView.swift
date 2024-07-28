import SwiftUI

struct ContentView: View {
    @State var repositories: [Repository] = []
    @State var showingErrorAlert = false

    let gitHubAPIRepository = GitHubAPIRepository()

    var body: some View {
            List(repositories) { repository in
                VStack(alignment: .leading) {
                    Text(repository.name)
                        .font(Font.system(size: 24).bold())
                    Text(repository.description ?? "")
                    Text("Star: \(repository.stargazersCount)")
                }
            }.onAppear {
                fetchRepositories()
            }
            .alert("Error", isPresented: $showingErrorAlert) {
                Button("Close", action: {})
            } message: {
                Text("Failed to Fetch repositories.")
            }

    }

    @MainActor
    func fetchRepositories() {
        Task {
            do {
                repositories = try await gitHubAPIRepository.searchRepos(page: 1, perPage: 20)
            } catch {
                showingErrorAlert = true
            }
        }
    }
}

#Preview {
    ContentView()
}
