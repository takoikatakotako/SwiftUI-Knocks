import Foundation
import SwiftShims

// Paths
let mainFileURL = URL(fileURLWithPath: #file, isDirectory: false)
let projectURL = mainFileURL.deletingLastPathComponent().deletingLastPathComponent()
let configFileURL = projectURL.appending(path: "config.json")
let assetsDirectoryURL = projectURL.appending(path: "Assets")
let articlesDirectoryURL = projectURL.appending(path: "Articles")
let outputsDirectoryURL = projectURL.appending(path: "Outputs")
let tempsDirectoryURL = projectURL.appending(path: "Temps")

do {
    try main()
} catch {
    print(error)
    exit(EXIT_FAILURE)
}


func main() throws {
    // Path


    // Load Config File
    let configData = try Data(contentsOf: configFileURL)
    let config = try JSONDecoder().decode(Config.self, from: configData)

    try FileManager.default.createDirectory(at: outputsDirectoryURL, withIntermediateDirectories: true)

    var output = ""
    for (index, article) in config.articles.enumerated() {
        output += "### \(index + 1). \(article.title)\n"
        output += "\(article.description)\n\n"

        let articleDirectoryURL = articlesDirectoryURL.appending(path: article.directory)
        for (resourceIndex, resource) in article.resources.enumerated() {
            let sourceResourceURL = articleDirectoryURL.appending(path: resource.name)
            print(sourceResourceURL.absoluteString)
            
            
            output += "<img src=\"\(article.directory)/\(resource.name)\" width=\"\(resource.width)px\" alt=\"\(article.title)\">\n"
            
//            if resource.type == "image" {
//                let outputImageName = "\(article.directory)-\(resourceIndex).png"
//                try convertImage(sourceImageURL: sourceResourceURL, outputImageName: outputImageName)
//                output += "<img src=\"\(outputImageName)\" width=\"\(resource.width)px\" alt=\"\(article.title)\">\n"
//            } else if resource.type == "image-raw" {
//                let outputImageName = "\(article.directory)-\(resourceIndex).png"
//                try copyImage(sourceImageURL: sourceResourceURL, outputImageName: outputImageName)
//                output += "<img src=\"\(outputImageName)\" width=\"\(resource.width)px\" alt=\"\(article.title)\">\n"
//            } else if resource.type == "movie" {
//                let outputMovieName = "\(article.directory)-\(resourceIndex).gif"
//                try convertMovie(sourceMovieURL: sourceResourceURL, outputMovieName: outputMovieName)
//                output += "<img src=\"\(outputMovieName)\" width=\"\(resource.width)px\" alt=\"\(article.title)\">\n"
//            }
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
    try output.write(to: articlesDirectoryURL.appending(path: "README.md"), atomically: false, encoding: .utf8)
}
