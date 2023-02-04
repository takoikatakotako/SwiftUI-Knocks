import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("XXXXXX")
//
//            Button("Allow") {
//                let content = UNMutableNotificationContent()
//                content.title = "通知のタイトルです"
//                content.body = "通知の内容です"
//
//                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
//                let request = UNNotificationRequest(identifier: "通知No.1", content: content, trigger: trigger)
//                UNUserNotificationCenter.current().add(request)
//            }
//
//
//
//            Button {
//                UNUserNotificationCenter.current().requestAuthorization(
//                options: [.alert, .sound, .badge]){
//                    (granted, _) in
//    //                if granted{
//    //                    UNUserNotificationCenter.current().delegate = self
//    //                }
//                }
//            } label: {
//                Text("Request Authorization")
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//import SwiftUI
//
//struct Pokemon: Identifiable {
//    let id = UUID()
//    let name: String
//    let imageName: String
//}
//
//struct PokemonCell: View {
//    let pokemon: Pokemon
//    var body: some View {
//        ZStack {
//            Image(pokemon.imageName)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//            VStack {
//                Spacer()
//                Text(pokemon.name)
//                    .font(Font.system(size: 20.0).bold())
//                    .frame(maxWidth: .infinity, maxHeight: 32)
//                    .background(Color.gray)
//                    .foregroundColor(Color.white)
//                    .opacity(0.8)
//            }
//        }
//    }
//}
//
//struct ContentView: View {
//
//    let columns: Int = 3
//    let pokemons = [
//        Pokemon(name: "カビゴン", imageName: "snorlax"),
//        Pokemon(name: "ゲンガー", imageName: "gengar"),
//        Pokemon(name: "ヌオー", imageName: "quagsire"),
//        Pokemon(name: "コイル", imageName: "magnemite"),
//        Pokemon(name: "ミニリュウ", imageName: "dratini"),
//        Pokemon(name: "ヤドン", imageName: "slowpoke"),
//        Pokemon(name: "コダック", imageName: "psyduck"),
//    ]
//    var body: some View {
//        GeometryReader { geometry in
//            ScrollView(showsIndicators: false) {
//                ForEach(0..<self.pokemons.count/self.columns) { rowIndex in
//                    HStack {
//                        ForEach(0..<self.columns) { columnIndex in
//                            self.getPokemonCell(
//                                pokemon: self.getPokemon(rowIndex: rowIndex, columnIndex: columnIndex),
//                                width: self.cellWidth(width: geometry.size.width),
//                                height: self.cellHeight(width: geometry.size.width))
//                        }
//                    }
//                }
//
//                if (self.pokemons.count % self.columns > 0) {
//                    HStack {
//                        ForEach(0..<self.pokemons.count % self.columns) { lastColumnIndex in
//                            self.getPokemonCell(
//                                pokemon: self.getPokemon(lastColumnIndex: lastColumnIndex),
//                                width: self.cellWidth(width: geometry.size.width),
//                                height: self.cellHeight(width: geometry.size.width))
//                        }
//                        Spacer()
//                    }
//                }
//            }
//        }.padding()
//    }
//
//
//    private func getPokemon(rowIndex: Int, columnIndex: Int) -> Pokemon {
//        return pokemons[columns * rowIndex + columnIndex]
//    }
//
//    private func getPokemon(lastColumnIndex: Int) -> Pokemon {
//        return self.pokemons[self.columns * (self.pokemons.count / self.columns) + lastColumnIndex]
//    }
//
//
//    private func cellWidth(width: CGFloat) -> CGFloat {
//        return width / CGFloat(columns)
//    }
//
//    private func cellHeight(width: CGFloat) -> CGFloat {
//        return cellWidth(width: width) * 1.5
//    }
//
//    private func getPokemonCell(pokemon: Pokemon, width: CGFloat, height: CGFloat) -> AnyView {
//        return AnyView(PokemonCell(pokemon: pokemon)
//            .frame(width: width,
//                   height: height)
//            .border(Color.black, width: 2)
//            .clipped())
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//import SwiftUI
//
//struct ContentView: View {
//    @State var message = "Shake Me"
//
//    var body: some View {
//        Text(message)
//            .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
//                message = "Device Did Shake"
//        }
//    }
//}
//
//extension NSNotification.Name {
//    static let deviceDidShakeNotification = NSNotification.Name("DeviceDidShakeNotification")
//}
//
//extension UIWindow {
//    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
//        super.motionEnded(motion, with: event)
//        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


//import SwiftUI
//
//struct Pokemon: Identifiable {
//    let id: Int
//    let name: String
//    let imageName: String
//    let image: UIImage
//}
//
//struct PokemonResponse: Decodable {
//    let id: Int
//    let name: String
//    let imageName: String
//}
//
//struct ContentView: View {
//    @State var pokemons: [Pokemon] = []
//
//    var body: some View {
//        VStack {
//            ForEach(pokemons) { pokemon in
//                HStack {
//                    Image(uiImage: pokemon.image)
//                        .resizable()
//                        .frame(width: 100, height: 100)
//                    VStack(alignment: .leading) {
//                        Text("No: \(pokemon.id)")
//                        Text(pokemon.name)
//                        Text(pokemon.name)
//                    }
//                    Spacer()
//                }
//                Divider()
//            }
//        }
//        .task {
//            guard let pokemons = try? await fetchPokemons() else {
//                return
//            }
//            await MainActor.run {
//                self.pokemons = pokemons
//            }
//        }
//    }
//
//    private func fetchPokemons() async throws -> [Pokemon]{
//        let host = "https://swiswiswift.com/2022-06-16"
//        let url = URL(string: "\(host)/pokemons.json")!
//        print(url)
//        let (data, _) = try await URLSession.shared.data(from: url)
//        let pokemonResponses = try JSONDecoder().decode([PokemonResponse].self, from: data)
//
//        var pokemons: [Pokemon] = []
//        for pokemonResponse in pokemonResponses {
//            let imageUrl = URL(string: "\(host)/\(pokemonResponse.imageName)")!
//            let (data, _) = try await URLSession.shared.data(from: imageUrl)
//            let image = UIImage(data: data)!
//            let pokemon = Pokemon(
//                id: pokemonResponse.id,
//                name: pokemonResponse.name,
//                imageName: pokemonResponse.name,
//                image: image)
//            pokemons.append(pokemon)
//        }
//        return pokemons
//    }
//}

//try await wait()
//
//
//private func wait() async {
//    let seconds = 3
//    let duration = UInt64(seconds * 1_000_000_000)
//    try! await Task.sleep(nanoseconds: duration)
//}





//import SwiftUI
//import MapKit
//
//struct ContentView: View {
//
//    // 入力中の文字列を保持する状態変数
//    @State var inputText: String = ""
//    // 検索キーワードを保持する状態変数
//    @State var dispSearchKey: String = ""
//    // マップ種類の最初は標準から
//    @State var dispMapType: MKMapType = .standard
//
//    var body: some View {
//
//        // 垂直にレイアウト
//        VStack {
//
//            // テキストフィールド（文字入力）
//            TextField("キーワード", text: $inputText, prompt: Text("キーワードを入力してください"))
//            // 入力が完了したとき
//                .onSubmit {
//                    // 入力が完了したので検索キーワードに設定する
//                    dispSearchKey = inputText
//                }
//            // 余白を追加
//                .padding()
//
//            // 奥から手前方向にレイアウト（右下基準で配置する）
//            ZStack(alignment: .bottomTrailing) {
//
//                // マップを表示
//                MapView(searchKey: dispSearchKey)
//
//
//                // マップ種類切り替えボタン
//                Button(action: {
//                    // mapTypeプロパティ値をトグル
//                    // 標準　⇨ 航空写真　⇨ 航空写真＋標準
//                    // 3D Flyover　⇨ 3D Flyover＋標準
//                    // ⇨ 交通機関
//                    if dispMapType == .standard {
//                        dispMapType = .satellite
//                    } else if dispMapType == .satellite {
//                        dispMapType = .hybrid
//                    } else if dispMapType == .satelliteFlyover {
//                        dispMapType = .hybridFlyover
//                    } else if dispMapType == .hybridFlyover {
//                        dispMapType = .mutedStandard
//                    } else {
//                        dispMapType = .standard
//                    }
//                }) {
//                    // マップアイコン表示
//                    Image(systemName: "map")
//                        .resizable()
//                        .frame(width: 35.0, height: 35.0, alignment: .leading)
//                } // Button ここまで
//
//                // 右の余白を20空ける
//                .padding(.trailing, 20.0)
//                // 下の余白を30空ける
//                .padding(.bottom, 30.0)
//
//
//            } // ZStack　ここまで
//
//        } // VStack　ここまで
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//



//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Text("Hello")
//        }
//    }
//}




















//import SwiftUI
//
//struct ContentView: View {
//    @State var showingSheet = false
//    @State var fileUrl: URL?
//
//    var body: some View {
//        VStack {
//
//            if let fileUrl = fileUrl, let document = PDFDocument(url: fileUrl) {
//                Text(fileUrl.description)
//                PDFThumbnailRepresentedView(document: document)
//            } else {
//                Text("No Image")
//            }
//
//            Button {
//                showingSheet = true
//            } label: {
//                Text("Show Picker")
//            }
//        }
//        .sheet(isPresented: $showingSheet) {
//            PDFPickerView(fileUrl: $fileUrl)
//        }
//    }
//}
//



//import SwiftUI
//
//struct ContentView: View {
//    @State var showingSheet = false
//    @State var fileUrl: URL?
//
//    var body: some View {
//        VStack {
//
//            if let fileUrl = fileUrl, let document = PDFDocument(url: fileUrl) {
//                Text(fileUrl.description)
//                PDFThumbnailRepresentedView(document: document)
//            } else {
//                Text("No Image")
//            }
//
//            Button {
//                showingSheet = true
//            } label: {
//                Text("Show Picker")
//            }
//        }
//        .sheet(isPresented: $showingSheet) {
//            PDFPickerView(fileUrl: $fileUrl)
//        }
//    }
//}
//
//
//
//import PDFKit
//import SwiftUI
//
//struct PDFThumbnailRepresentedView : UIViewRepresentable {
//    var document : PDFDocument
//
//    func makeUIView(context: Context) -> PDFThumbnailView {
//        let pdfView = PDFView()
//        pdfView.document = document
//
//        let thumbnail = PDFThumbnailView()
//        thumbnail.pdfView = pdfView
//        thumbnail.thumbnailSize = CGSize(width: 100, height: 100)
//        thumbnail.layoutMode = .horizontal
//        return thumbnail
//    }
//
//    func updateUIView(_ uiView: PDFThumbnailView, context: Context) {
//        //do any updates you need
//        //you could update the thumbnailSize to the size of the view here if you want, for example
//        //uiView.thumbnailSize = uiView.bounds.size
//    }
//}
//
//
//import SwiftUI
//import UniformTypeIdentifiers
//
//struct PDFPickerView : UIViewControllerRepresentable {
//    @Binding var fileUrl: URL?
//
//    class Coordinator: NSObject, UIDocumentPickerDelegate {
//        var parent: PDFPickerView
//
//        init(_ parent: PDFPickerView) {
//            self.parent = parent
//        }
//
//        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
//            print(url)
//
//            // url をコピーしていろいろやる
//
//            self.parent.fileUrl = url
//        }
//    }
//
//    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
//        let documentPickerViewController =  UIDocumentPickerViewController(forOpeningContentTypes: [UTType.pdf])
//        documentPickerViewController.delegate = context.coordinator
//        return documentPickerViewController
//    }
//
//    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//}
//
//
//
//
//
//// https://stackoverflow.com/questions/65733269/is-it-possible-to-display-pdf-thumbnails-in-swiftui-app
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}



//import SwiftUI
//import UniformTypeIdentifiers
//
//struct ContentView: View {
//    @State private var fileUrl: URL?
//    @State private var showingPicker = false
//
//    var body: some View {
//        VStack {
//            Button {
//                let documentDirectoryUrl = FileManager.default.urls( for: .documentDirectory, in: .userDomainMask ).first!
//                let fileUrl = documentDirectoryUrl.appendingPathComponent("snorlax.txt")
//                try! "I Love Snorlax!".data(using: .utf8)!.write(to: fileUrl, options: .atomic)
//            } label: {
//                Text("Save File to Document")
//            }
//
//            Button {
//                showingPicker = true
//            } label: {
//                Text("Show File Picker")
//            }
//
//            Text("FileUrl: \(fileUrl?.description ?? "nil")")
//        }
//        .sheet(isPresented: $showingPicker) {
//            DocumentPickerView(fileUrl: $fileUrl)
//        }
//    }
//}
//
//struct DocumentPickerView : UIViewControllerRepresentable {
//    @Binding var fileUrl: URL?
//
//    class Coordinator: NSObject, UIDocumentPickerDelegate {
//        var parent: DocumentPickerView
//
//        init(_ parent: DocumentPickerView) {
//            self.parent = parent
//        }
//
//        func documentPicker(_ controller: UIDocumentPickerViewController, didPickDocumentAt url: URL) {
//            self.parent.fileUrl = url
//        }
//    }
//
//    func makeUIViewController(context: Context) -> UIDocumentPickerViewController {
//        let documentPickerViewController =  UIDocumentPickerViewController(forOpeningContentTypes: [UTType.text])
//        documentPickerViewController.delegate = context.coordinator
//        return documentPickerViewController
//    }
//
//    func updateUIViewController(_ uiViewController: UIDocumentPickerViewController, context: Context) {}
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}





























//
//struct ContentView: View {
//    var body: some View {
//        NavigationView {
//            GeometryReader { geometry in
//                ZStack(alignment: .bottom) {
//                    List {
//                        Text("\(geometry.size.height)")
//                            .frame(height: 100)
//                        Text("Text")
//                            .frame(height: 100)
//
//                        Text("Text")
//                            .frame(height: 100)
//
//                        Text("Text")
//                            .frame(height: 100)
//
//                    }
//                    .listStyle(PlainListStyle())
//                    .ignoresSafeArea()
//                    Text("ボタン")
//                        .frame(minWidth: 0, maxWidth: .infinity)
//                        .frame(height: 60)
//                        .background(Color.red)
//                        .padding()
//                }
//            }
//            .navigationTitle("タイトル")
//        }
//    }
//}
//
//


//struct ContentView: View {
//    let pokemons = ["カビゴン", "コダック", "ヤドン"]
//    var body: some View {
//        List(pokemons, id: \.self) { pokemon in
//            Text(pokemon)
//        }
//    }
//}



//struct MyStruct: Encodable {
//    let number: Double
//
//    enum CodingKeys: String, CodingKey {
//        case number
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(Float(number), forKey: .number)
//    }
//}
//
//struct ContentView: View {
//    var body: some View {
//        Text("Hello")
//            .onAppear {
//                let myStruct = MyStruct(number: 1.0 / 3.0)
//                let data = try! JSONEncoder().encode(myStruct)
//                print(String(data: data, encoding: String.Encoding.utf8)!)
//            }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


//struct ContentView: View {
//    @State var top = false
//    var body: some View {
//        NavigationView {
//            VStack {
//                List {
//                    Button {
//                        print("押されたよ")
//                        top = true
//                    } label: {
//                        Text("ここを押すとSecondViewに行くよ")
//                    }
//                }
//                NavigationLink(destination: SecondView(), isActive: $top) {
//                }
//            }
//        }
//    }
//}
//
//struct SecondView: View {
//    var body: some View {
//        Text("Second Viewだよ")
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}




//
//
//struct ContentView: View {
//    let pokemons: [String] = ["Snorlax", "Slowpoke", "Pikachu", "Eevee"]
//    @State var text: String = ""
//    var filterdPokemons: [String] {
//        if text.isEmpty {
//            return pokemons
//        } else {
//            return pokemons.filter {$0.uppercased().contains(text.uppercased())}
//        }
//    }
//    var body: some View {
//        ScrollView {
//            LazyVStack{
//                ZStack(alignment: .trailing) {
//                    TextField("Type your search",text: $text)
//                        .padding(8)
//                        .textFieldStyle(RoundedBorderTextFieldStyle())
//                    if !text.isEmpty {
//                        Button(action: {
//                            text = ""
//                        }) {
//                            Image(systemName: "delete.left")
//                                .foregroundColor(Color(UIColor.opaqueSeparator))
//                        }
//                        .padding(.trailing, 12)
//                    }
//                }
//
//                ForEach(filterdPokemons, id: \.self) { pokemon in
//                    VStack(alignment: .leading) {
//                        Text(pokemon)
//                            .padding(.leading, 12)
//                        Divider()
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//






















//import SwiftUI
//import WebKit
//
//struct ContentView: View {
//    @State var showingSheet = false
//    var body: some View {
//        ZStack(alignment: .bottom) {
//            MyWebView(urlString: "https://twitter.com/takoikatakotako")
//            Button(action: {
//                showingSheet = true
//            }, label: {
//                Text("Show Sheet!!")
//                    .foregroundColor(Color.white)
//                    .padding()
//                    .background(Color(UIColor.lightGray))
//            })
//            .background(Color.gray)
//        }
//        .sheet(isPresented: $showingSheet) {
//            Text("This is Sheet")
//        }
//    }
//}
//
//struct MyWebView: UIViewRepresentable {
//    let urlString: String
//
//    func makeUIView(context: Context) -> WKWebView {
//        let webView = WKWebView()
//        if let url = URL(string: urlString) {
//            webView.load(URLRequest(url: url))
//        }
//        return webView
//    }
//
//    func updateUIView(_ uiView: WKWebView, context: Context) {}
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}



//struct ContentView: View {
//    var body: some View {
//        Text("Hello World")
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
//            .previewDisplayName("iPhone 13")
//    }
//}

