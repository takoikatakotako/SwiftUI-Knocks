import Foundation


do {
    try main()
} catch {
    print(error)
}


func main() throws {
    let mainFileURL = URL(fileURLWithPath: #file, isDirectory: false)
    let projectURL = mainFileURL.deletingLastPathComponent().deletingLastPathComponent()
    let configFileURL = projectURL.appending(path: "config.json")
    let articlesDirectoryURL = projectURL.appending(path: "Articles")
    let outputsDirectoryURL = projectURL.appending(path: "Outputs")

    let configData = try Data(contentsOf: configFileURL)
    let config = try JSONDecoder().decode(Config.self, from: configData)
    
    try FileManager.default.createDirectory(at: outputsDirectoryURL, withIntermediateDirectories: true)

    var output = ""
    for (index, article) in config.articles.enumerated() {
        output += "### \(index + 1). \(article.title)\n"
        output += "\(article.description)\n\n"

        let articleDirectoryURL = articlesDirectoryURL.appending(path: article.directory)
        for (imageIndex, image) in article.images.enumerated() {
            let outputImageName = "\(index)-\(imageIndex).png"
            let at = articleDirectoryURL.appending(path: image.name)
            let to = outputsDirectoryURL.appending(path: outputImageName)
            try? FileManager.default.removeItem(at: to)
            try FileManager.default.copyItem(at: at, to: to)
            output += "<img src=\"\(outputImageName)\" width=\"\(image.width)px\" alt=\"画像をリサイズして表示（fit）\">\n"
        }
        output += "\n"
        
        //
        output += "<details><summary>解答例</summary>\n"
        output += "<div>\n\n"
        
        for code in article.codes {
            let sourceURL = articleDirectoryURL.appending(path: code)
            let source = try String(contentsOf: sourceURL, encoding: .utf8)
            output += "```swift\n"
            output += source

            
            output += "```\n\n"
        }
        
        output += "</div>\n"
        output += "</details>\n"
        output += "\n\n"
    }
    
    
    
    //
    try output.write(to: outputsDirectoryURL.appending(path: "README.md"), atomically: false, encoding: .utf8)
}
