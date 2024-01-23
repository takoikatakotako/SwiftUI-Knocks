import SwiftUI
import Markdown

struct ContentView: View {
    
    let markdown = """
    # 東京タワー
    
    東京タワー（とうきょうタワー、英: Tokyo Tower）は、東京都港区芝公園にある総合電波塔である。日本電波塔（にっぽんでんぱとう）とも呼ばれる。
    1958年（昭和33年）12月23日竣工。東京のシンボル、観光名所である。
    2018年度グッドデザイン賞受賞。
    
    ## 概要
    
    創設者は前田久吉で、日本の「塔博士」とも称される内藤多仲らが設計（詳細は設計を参照）。
    高さは333メートルと広報されており、海抜では351メートル。塔脚の中心を基準とした塔脚の間隔は88.0メートル。
    総工費約30億円、1年半（197万4,015時間/543日間）と延べ21万9,335人の人員を要して完成した。
    地上125メートル（海抜約150メートル）と223.55メートル（海抜約250メートル）に展望台を有するトラス構造の電波塔である。
    
    昼間障害標識として、頂点より黄赤色（インターナショナルオレンジ）と白色を交互に配した塗装となっている。
    テレビおよびFMラジオのアンテナとして放送電波を送出（#送信周波数・出力を参照）、また東日本旅客鉄道（JR東日本）の防護無線用アンテナとして緊急信号を発信するほか、東京都環境局の各種測定器なども設置されている。
    
    完成当初は日本一高い建造物だったが、高さが日本一だったのは1968年6月26日に小笠原諸島が日本に返還され南鳥島ロランタワーと硫黄島ロランタワーに抜かれるまでの約9年半と、対馬（長崎県）のオメガタワーが解体されてから東京スカイツリーに抜かれるまでの約11年間である。
    自立式鉄塔に限れば、東京スカイツリーに抜かれるまでの約51年半は日本一の高さだった。
    2020年現在は、東京スカイツリーに次ぐ日本で2番目に高い建造物である。
    なお、重量については約4,000トンとされる。
    
    ## 運営会社
    
    株式会社 TOKYO TOWER（英: TOKYO TOWER Co.,Ltd）は、東京都港区芝公園に本社を置く東京タワーの建主であり、管理ならびに運営を行っている。
    
    ### 法人概要
    
    1957年5月、「大阪の新聞王」と呼ばれ、当時、産業経済新聞社、大阪放送（ラジオ大阪）各社の社長を務め、後に関西テレビ放送の社長にも就く前田久吉が日本電波塔株式会社（にっぽんでんぱとう、英: NIPPON TELEVISION CITY CORPORATION）を設立。
    久吉はタワーの完成とほぼ同時の1958年、産経新聞社を国策パルプ工業（現・日本製紙）社長の水野成夫に譲渡してその経営から手を引いたが、日本電波塔（東京タワー）とラジオ大阪の経営には引き続き携わった。
    この結果、日本電波塔は当時の産経新聞グループはもちろん、その後のフジサンケイグループからも完全に切り離されて前田家主導の同族企業となった。
    その名残で産経新聞グループから離脱する直前の1957年10月、文化放送やニッポン放送などと共に発足した、中央ラジオ・テレビ健康保険組合に基幹会社の一社として2019年現在でも加入している。
    また、ラジオ大阪も2005年にフジサンケイグループ入りするまで、前田家主導で独自の経営をしていた。
    """
    
    var body: some View {
        ScrollView {
            Text(getAttributedString(markdown: markdown))
                .padding()
        }
    }
    
    func getAttributedString(markdown: String) -> AttributedString {
        var attributedString = AttributedString()
        for block in Document(parsing: markdown).blockChildren {
            if let heading = block as? Heading {
                var headingAttributedString = AttributedString(heading.plainText + "\n\n")
                if heading.level == 1 {
                    headingAttributedString.font = .system(size: 24, weight: .bold)
                } else if heading.level == 2 {
                    headingAttributedString.font = .system(size: 18, weight: .bold)
                } else {
                    headingAttributedString.font = .system(size: 16, weight: .bold)
                }
                attributedString += headingAttributedString
            } else if let paragraph = block as? Paragraph {
                var paragraphAttributedString = AttributedString(paragraph.plainText + "\n\n")
                attributedString += paragraphAttributedString
            } else {
                print(type(of: block))
            }
        }
        return attributedString
    }
}


#Preview {
    ContentView()
}
