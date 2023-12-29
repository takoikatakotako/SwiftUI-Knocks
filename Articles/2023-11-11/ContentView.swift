import SwiftUI

struct ContentView: View {
    @State var repositories: [Repository] = []
    @State var page = 1
    @State var isFetching = false
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
                .onAppear {
                    if repositories.last == repository {
                        fetchRepositories()
                    }
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
        if isFetching {
            return
        }
        isFetching = true
        
        Task {
            do {
                repositories += try await gitHubAPIRepository.searchRepos(page: page, perPage: 20)
                page += 1
                isFetching = false
            } catch {
                isFetching = false
                showingErrorAlert = true
            }
        }
    }
}

#Preview {
    ContentView()
}
