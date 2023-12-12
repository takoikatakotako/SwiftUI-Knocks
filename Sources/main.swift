import Foundation
import SwiftShims

do {
    try main()
} catch {
    print(error)
    exit(EXIT_FAILURE)
}

func main() throws {
    // Path
    let mainFileURL = URL(fileURLWithPath: #file, isDirectory: false)
    let projectURL = mainFileURL.deletingLastPathComponent().deletingLastPathComponent()
    let configFileURL = projectURL.appending(path: "config.json")
    let assetsDirectoryURL = projectURL.appending(path: "Assets")
    let assertsMaskImageURL = assetsDirectoryURL.appending(path: "mask.png")
    let assertsPhoneImageURL = assetsDirectoryURL.appending(path: "phone.png")
    let articlesDirectoryURL = projectURL.appending(path: "Articles")
    let outputsDirectoryURL = projectURL.appending(path: "Outputs")

    // Load Config File
    let configData = try Data(contentsOf: configFileURL)
    let config = try JSONDecoder().decode(Config.self, from: configData)

    try FileManager.default.createDirectory(at: outputsDirectoryURL, withIntermediateDirectories: true)

    var output = ""
    for (index, article) in config.articles.enumerated() {
        output += "### \(index + 1). \(article.title)\n"
        output += "\(article.description)\n\n"

        let articleDirectoryURL = articlesDirectoryURL.appending(path: article.directory)
        for (imageIndex, image) in article.images.enumerated() {
            let sourceImageURL = articleDirectoryURL.appending(path: image.name)
            let outputImageName = "\(index)-\(imageIndex).png"
            let outputImageURL = outputsDirectoryURL.appending(path: outputImageName)
            try maskImage(maskImageURL: assertsMaskImageURL, sourceImageURL: sourceImageURL, outputImageURL: outputImageURL)
            try addPhoneFrame(phoneImageURL: assertsPhoneImageURL, sourceImageURL: outputImageURL, outputImageURL: outputImageURL)
            output += "<img src=\"\(outputImageName)\" width=\"\(image.width)px\" alt=\"\(article.title)\">\n"
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

func maskImage(maskImageURL: URL, sourceImageURL: URL, outputImageURL: URL) throws {
    let command = "/opt/homebrew/bin/convert convert \(sourceImageURL.path()) -matte \(maskImageURL.path()) -compose DstIn -composite \(outputImageURL.path())"

    let task = Process()
    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.executableURL = URL(fileURLWithPath: "/bin/zsh") // <--updated
    task.standardInput = nil
    try task.run()

    // let data = pipe.fileHandleForReading.readDataToEndOfFile()
    // let output = String(data: data, encoding: .utf8)!
    // print(output)
}

func addPhoneFrame(phoneImageURL: URL, sourceImageURL: URL, outputImageURL: URL) throws {
    let command = "/opt/homebrew/bin/convert convert -size 1326x2676 xc:none \(sourceImageURL.path()) -geometry +72+60 -composite \(phoneImageURL.path()) -geometry +0+0 -composite \(outputImageURL.path())"
    let task = Process()
    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.executableURL = URL(fileURLWithPath: "/bin/zsh") // <--updated
    task.standardInput = nil
    try task.run()

    // let data = pipe.fileHandleForReading.readDataToEndOfFile()
    // let output = String(data: data, encoding: .utf8)!
    // print(output)
}
