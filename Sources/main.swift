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
            if resource.type == "image" {
                let outputImageName = "\(article.directory)-\(resourceIndex).png"
                try convertImage(sourceImageURL: sourceResourceURL, outputImageName: outputImageName)
                output += "<img src=\"\(outputImageName)\" width=\"\(resource.width)px\" alt=\"\(article.title)\">\n"
            } else if resource.type == "movie" {
                let outputMovieName = "\(article.directory)-\(resourceIndex).gif"
                try convertMovie(sourceMovieURL: sourceResourceURL, outputMovieName: outputMovieName)
                output += "<img src=\"\(outputMovieName)\" width=\"\(resource.width)px\" alt=\"\(article.title)\">\n"
            }
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

func convertImage(sourceImageURL: URL, outputImageName: String) throws {
    // 角を丸くする
    let assertsMaskImageURL = assetsDirectoryURL.appending(path: "mask.png")
    let maskedImageFileURL = tempsDirectoryURL.appending(path: "masked-\(outputImageName)")
    try maskImage(maskImageURL: assertsMaskImageURL, sourceImageURL: sourceImageURL, outputImageURL: maskedImageFileURL)
        
    // 枠を設定する
    let phoneFrameImageURL = assetsDirectoryURL.appending(path: "phoneFrameForImage.png")
    let outputImageURL = outputsDirectoryURL.appending(path: outputImageName)
    try addPhoneFrameForImage(phoneImageURL: phoneFrameImageURL, sourceImageURL: maskedImageFileURL, outputImageURL: outputImageURL)
}

// 画像に角丸をつける
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

// 画像にiPhoneの枠をつける
func addPhoneFrameForImage(phoneImageURL: URL, sourceImageURL: URL, outputImageURL: URL) throws {
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


func convertMovie(sourceMovieURL: URL, outputMovieName: String) throws {
    let movieName = (outputMovieName as NSString).deletingPathExtension
    
    // 余白をつける
    let paddingMovieURL = tempsDirectoryURL.appending(path: "padding-\(movieName).mp4")
    try addPaddingMovie(sourceMovieURL: sourceMovieURL, outputMovieURL: paddingMovieURL)
    
    // 枠をつける
    let phoneFrameImageURL = assetsDirectoryURL.appending(path: "phoneFrameForMovie.png")
    let frameMovieURL = tempsDirectoryURL.appending(path: "frame-\(movieName).mp4")
    try addPhoneFrameForMovie(phoneImageURL: phoneFrameImageURL, sourceMovieURL: paddingMovieURL, outputMovieURL: frameMovieURL)
    
    // gifに変換をする
    let outputMovieURL = outputsDirectoryURL.appending(path: outputMovieName)
    try convertMovieToGif(sourceMovieURL: frameMovieURL, outputMovieURL: outputMovieURL)
}

// 動画に余白つける
func addPaddingMovie(sourceMovieURL: URL, outputMovieURL: URL) throws {
    let command = "/opt/homebrew/bin/ffmpeg -y -i \(sourceMovieURL.path()) -vf pad=w=iw+148:h=ih+120:x=72:y=60:color=white \(outputMovieURL.path())"
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

// 動画に枠をつける
func addPhoneFrameForMovie(phoneImageURL: URL, sourceMovieURL: URL, outputMovieURL: URL) throws {
    let command = "/opt/homebrew/bin/ffmpeg -y -i \(sourceMovieURL.path()) -i \(phoneImageURL.path()) -filter_complex overlay=10:10 \(outputMovieURL.path())"
    let task = Process()
    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe
    task.arguments = ["-c", command]
    task.executableURL = URL(fileURLWithPath: "/bin/zsh") // <--updated
    task.standardInput = nil
    try task.run()

     let data = pipe.fileHandleForReading.readDataToEndOfFile()
     let output = String(data: data, encoding: .utf8)!
     print(output)
}

// gifに変換する
func convertMovieToGif(sourceMovieURL: URL, outputMovieURL: URL) throws {
    let command = "/opt/homebrew/bin/ffmpeg -y -i \(sourceMovieURL.path()) -r 10 \(outputMovieURL.path())"
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
