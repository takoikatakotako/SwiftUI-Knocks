# SwiftUI100本ノック iOS16バージョン

SwiftUI（と関連知識）を習得するための100本ノックのiOS16バージョンです
「SwiftUIチュートリアルの次に何をすれば良いかわからない」という人向けに作ってみました。
もっと良い解答例があればコメントでどんどん教えてください m(_ _)m


Xcode Version 14.1
Swift version 5.7.1
シミュレーターはiPhone14でサイズはcommand+1のPhysical Size


## かんたん（SwiftUIの簡単な構文だけで実装可能）

### 1. 画像をリサイズして表示（fit）

150✖︎200サイズに画像をリサイズして表示させてください。
アスペクト比が異なる場合は余白を赤色で表示してください。

<img width="300" alt="画像をリサイズして表示（fit）" src="1.png">

[解答](https://swiswiswift.com/2020-09-05/)


### 2. 画像をリサイズして表示（clip）

150✖︎200サイズに画像をリサイズして表示させてください。
アスペクト比が異なる場合ははみ出た箇所を切り取って表示してください。

<img width="300" alt="画像をリサイズして表示（clip）" src="2.png">

[解答](https://swiswiswift.com/2020-09-06/)

参考
[【SwiftUI】画像（Image）の使い方](https://capibara1969.com/1861/)
[SwiftUIにおけるscaledToFill()とかscaledToFit()とかaspectRatio(_:contentMode:)等の使い分け](https://qiita.com/Riscait/items/71a9492314b8424274f1)


### 3. 画像を丸く切り取る

150✖︎150サイズに画像をリサイズし、丸く切り取って表示させてください。

<img width="300" alt="画像を丸く切り取る" src="3.png">

[解答](????)


### 4. 画像を丸く切り取り、枠を付ける

150✖︎150サイズに画像をリサイズし、丸く切り取り、黒い枠を付けて表示させてください。

<img width="300" alt="画像を丸く切り取り、枠を付ける" src="4.png">


[解答](https://swiswiswift.com/2020-09-07/)


### 5. 画像を等間隔で横に並べる

画像を等間隔で横に並べてください。

<img width="300" alt="画像を等間隔で横に並べる" src="5.png">

[解答](https://swiswiswift.com/2020-09-08/)


### 6. NavigationViewを使いラージタイトルを表示する

NavigationViewを使いラージタイトルを表示してください。

<img width="300" alt="NavigationViewを使いタイトルを表示する" src="6.png">

[NavigationViewを使いラージタイトルを表示する](???)


### 7. Pickerを表示する

Pickerを使いポケモンを表示してください。

<img width="300" alt="Pickerを表示する" src="7.gif">

[解答](https://swiswiswift.com/2020-01-12/)


### 8. TabViewを使って画面を切り替える

TabViewを使って画面を切り替えてください。

<img width="300" alt="TabViewを使って画面を切り替える" src="8.gif">

[解答](https://swiswiswift.com/2019-11-21/)


### 9. Buttonが押されたら文字を変える

Buttonが押されたら文字を変えてください。

<img width="300" alt="Buttonが押されたら文字を変える" src="9.gif">

[解答](https://swiswiswift.com/2020-09-04/)


### 10. Listを使ってセクションごとに表示する

Listを使ってセクションごとに表示する

<img width="300" alt="Listを使ってセクションごとに表示する" src="10.png">

[解答](???)


### 11. 画面遷移時に値を渡す

画面遷移時に値を渡してください。

<img width="300" alt="画面遷移時に値を渡す" src="11.png">

[解答](https://swiswiswift.com/2020-09-13/)


### 12. NavigationViewの戻るボタンを非表示にする

NavigationViewの戻るボタンを非表示にしてください。

<img width="300" alt="NavigationViewの戻るボタンを非表示にする" src="12.gif">

[解答](???)


### 13. Listのスタイルを変更する

ListのスタイルをPlainListStyleに変更してください。

<img width="300" alt="Listのスタイルを変更する" src="13.png">

[解答](???)


### 14. アラートを表示する（その1）

iOS14以前でも使用できる方法でアラートを表示させてください。

<img width="300" alt="SwiftUIでアラートを表示する（その1）" src="14.gif">

[解答](https://swiswiswift.com/2019-12-20/)


### 15. アラートを表示する（その2）

iOS15以降で使用できる方法でアラートを表示させてください。

<img width="300" alt="SwiftUIでアラートを表示する（その2）" src="15.gif">

[解答](???)


### 16. アラートを出し分ける（その1）

ボタン1が押されたらアラート1を、ボタン2が押されたらアラート2を表示してください

<img width="300" alt="アラートを出し分ける（その1）" src="16.gif">

[解答](???)


### 17. アラートを出し分ける（その2）

ボタン1が押されたらアラート1を、ボタン2が押されたらアラート2を表示してください。
iOS14以下でも使用できる方法です。

<img width="300" alt="アラートを出し分ける（その2）" src="17.gif">

[解答](???)


### 18. Button内の画像やテキストの色を変えない

Buttonが押されたら文字を変えてください。
Button内の画像やテキストの色を変えないでください。

<img width="300" alt="Button内の画像やテキストの色を変えない" src="18.gif">

[解答](https://swiswiswift.com/2020-09-14/)


### 19. SwiftUIでアラートとシートを出し分ける

数字が入力されたらシートを表示してください。
数字以外が入力されたらアラートを表示してください。

<img width="300" alt="SwiftUIでアラートとシートを出し分ける" src="19.gif">

[解答](https://swiswiswift.com/2020-09-03/)


### 20. NavigationLinkではなくButtonを押して画面遷移する

NavigationLink内のテキストではなく、Button内のテキストが押されたら画面遷移をしてください。

<img width="300" alt="NavigationLinkではなくButtonを押して画面遷移する" src="20.gif">

[解答](https://swiswiswift.com/2020-08-03/)


### 21. 続きを読む。。。ボタンがあるViewを実装する

SwiftUIで続きを読む。。。ボタンがあるViewを実装してください。

<img width="300" alt="続きを読む。。。ボタンがあるViewを実装する" src="21.gif">

[解答](https://swiswiswift.com/2020-06-20/)


### 22. Text中の文字の太さや色を変える

Text中の文字の太さや色を変えてください。

<img width="300" alt="Text中の文字の太さや色を変える" src="22/png">

[解答](https://swiswiswift.com/2020-06-22/)


### 23. FunctionBuilderを使ってViewに影をつける

FunctionBuilderを使ってViewに影をつけてください。

<img width="300" alt="FunctionBuilderを使ってViewに影をつける" src="23.png">

[解答](https://swiswiswift.com/2020-05-07/)


### 24. ViewModifierを使ってViewに影をつける

ViewModifierを使ってViewに影をつけてください。

<img width="300" alt="ViewModifierを使ってViewに影をつける" src="24.png">

[解答](https://swiswiswift.com/2020-05-06/)


### 25. リストを編集する

リストを編集してください。

<img width="300" alt="リストを編集する" src="25.png">

[解答](https://swiswiswift.com/2019-12-17/)


### 26. リストのセルをタップするとアラートが表示させる

リストのセルをタップするとアラートが表示させてください。

<img width="300" alt="リストのセルをタップするとアラートが表示させる" src="26.gif">

[解答](https://swiswiswift.com/2019-12-18/)


### 27. 画面遷移先のViewから遷移元のメソッドを呼び出す

画面遷移先の View から遷移元のメソッドを呼び出してください。

<img width="300" alt="画面遷移先のViewから遷移元のメソッドを呼び出す" src="27.gif">

[解答](https://swiswiswift.com/2020-01-11/)


### 28. ListViewからそれぞれ別のViewに遷移する

ListViewからそれぞれ別のViewに遷移する

<img width="300" alt="ListViewからそれぞれ別のViewに遷移する" src="28.gif">

[解答](https://swiswiswift.com/2019-11-20/)


### 29. 複数行のPickerを作成する

複数行のPickerを作成する

<img width="300" alt="複数行のPickerを作成する" src="29.gif">

[解答](https://swiswiswift.com/2020-01-14/)


### 30. Sheetを表示する

Sheetを表示する

<img width="300" alt="Sheetを表示する" src="30.gif">

[解答](???)


### 31. 全画面でSheetを表示する

全画面でSheetを表示する

<img width="300" alt="全画面でSheetを表示する" src="31.gif">

[解答](???)


### 32. NavigationBarを隠す

TextをNavigationViewの中に入れつつNavigationBarを表示しないでください

<img width="300" alt="NavigationBarを隠す" src="32.png">

[解答](https://swiswiswift.com/2020-08-02/)


### 33. Previewを横向きにする

Previewを横向きにしてください。

<img width="300" alt="NavigationBarを隠す" src="33.png">

[解答](https://swiswiswift.com/2020-08-04/)
TODO: 記事の内容が古いからコードに合わせて


## 34. 端末のシェイクを検知する

端末のシェイクを検知して@Stateを更新してください

<img width="300" alt="NavigationBarを隠す" src="34.gif">

[解答](https://swiswiswift.com/2020-11-01/)











### UICollectionViewのようにViewを並べる

UICollectionViewのようにViewを並べてください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/3d2fd773-f2d8-f18d-7352-43c626c6067a.gif)

[解答](https://swiswiswift.com/2020-02-09/)

参考
[Q-Mobile/QGrid](https://github.com/Q-Mobile/QGrid)







### アプリ起動時に画面を遷移させる

アプリ起動時に画面を遷移させてください。

![アプリ起動時に画面を遷移させる](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/2cd1b0c2-b1ec-a5f2-9691-659095e22c81.gif)

[解答](https://swiswiswift.com/2020-05-12/)




## むずかしい（UIKitや他のフレームワークが必要）

### よくあるチュートリアル画面をUIPageViewControllerとSwiftUIで作る

画像のような良くあるウェークスルー画面を実装してください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/0b9ca669-4014-1fb9-c065-e41b471e231c.gif)

[解答](https://swiswiswift.com/2020-06-28/)


### SwiftUIで閉じることができないモーダルを表示する

SwiftUIで閉じることができないモーダルを表示してください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/f4c84112-5b99-3566-4d12-5861032d5edf.gif)

[解答](https://swiswiswift.com/2020-06-01/)



### SwiftUIでモーダルからフルモーダルを表示する



[解答](https://swiswiswift.com/2020-05-13/)





### フルスクリーンモーダルを表示する

フルスクリーンモーダルを表示してください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/284c1475-f3f2-92d6-3ada-72d7c0e2c2a5.gif)

[解答](https://swiswiswift.com/2020-05-05/)

iOS14では簡単に実装できるようになりました。

[解答](https://swiswiswift.com/2021-02-02/)



### 文字列中にタップ可能なリンクを追加する

文字列中にタップ可能なリンクを追加してください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/df0bb4b0-c09b-2c75-c0f6-4821248933ce.gif)

[解答](https://swiswiswift.com/2020-05-03/)







### GithubのAPIを叩き、リポジトリの情報をリストに表示する（Closure）

GithubのAPI( https://api.github.com/search/repositories?q=swift&sort=stars&page=1&per_page=30 )を叩きリポジトリの情報をリストに表示してください。
Closureを使用してください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/0f2bce27-2fa9-bb9e-722e-f43fc925c00d.gif)

[解答](https://swiswiswift.com/2020-09-09/)

参考
[Infinite List Scroll with SwiftUI and Combine](https://www.vadimbulavin.com/infinite-list-scroll-swiftui-combine/)


### GithubのAPIを叩き、リポジトリの情報をリストに表示する（Combine）

GithubのAPI( https://api.github.com/search/repositories?q=swift&sort=stars&page=1&per_page=30 )を叩きリポジトリの情報をリストに表示してください。
Combineを使用してください。

![1.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/63855/6120c8c8-a798-9139-0cad-e8bb0d9cf71e.gif)

[解答](https://swiswiswift.com/2020-09-10/)

参考
[Infinite List Scroll with SwiftUI and Combine](https://www.vadimbulavin.com/infinite-list-scroll-swiftui-combine/)


### GithubのAPIを叩き、リポジトリの情報をリストに表示する。一番下までスクロールされたら追加で取得してください。
GithubのAPI( https://api.github.com/search/repositories?q=swift&sort=stars&page=1&per_page=30 )を叩きリポジトリの情報をリストに表示してください。
一番下までスクロールされたら追加で取得してください。

![1.gif](https://swiswiswift.com/2020-09-11/1.gif)

[解答](https://swiswiswift.com/2020-09-11/)

参考
[Infinite List Scroll with SwiftUI and Combine](https://www.vadimbulavin.com/infinite-list-scroll-swiftui-combine/)


### GithubのAPIを叩き、リポジトリの情報をリストに表示する。一番下までスクロールされたら追加で取得してください。Indicator も表示してください。
GithubのAPI( https://api.github.com/search/repositories?q=swift&sort=stars&page=1&per_page=30 )を叩きリポジトリの情報をリストに表示してください。
一番下までスクロールされたら追加で取得してください。

![1.gif](https://swiswiswift.com/2020-09-12/1.gif)

[解答](https://swiswiswift.com/2020-09-12/)

参考
[Infinite List Scroll with SwiftUI and Combine](https://www.vadimbulavin.com/infinite-list-scroll-swiftui-combine/)






SwiftUIのTextFieldで編集中と編集完了を検知する
https://swiswiswift.com/2020-08-06/

SwiftUIでAppStorageを使ってUserDefaultの値を監視する
https://swiswiswift.com/2020-10-08/



SwiftUIでViewの上にViewを重ねる
https://swiswiswift.com/2020-11-06/

SwiftUIでMapを使う。Mapにピンを立てる
https://swiswiswift.com/2020-11-07/

SwiftUIでImageを長押しするとContextMenuを表示する
https://swiswiswift.com/2020-12-07/

SwiftUIを使ったTODOアプリのサンプル
https://swiswiswift.com/2020-12-10/

SwiftUIでAVAudioPlayerで音楽を再生し、再生終了を検知する
https://swiswiswift.com/2020-12-12/

SwiftUIでモーダルを表示する時に値を渡す
https://swiswiswift.com/2021-02-01/

SwiftUIでフルスクリーンモーダルを表示する（iOS14以上）
https://swiswiswift.com/2021-02-02/

SwiftUIで複数のモーダルをEnumで出し分ける
https://swiswiswift.com/2021-02-03/

@Stateと@Bindingの使い分け
https://swiswiswift.com/2021-02-05/

SwiftUIでBMIを計算し、結果を別のViewで表示する
https://swiswiswift.com/2021-02-06/

SwiftUIでボタンを押すとポップアップを表示する
https://swiswiswift.com/2021-02-07/

SwiftUIでアラートを入れ子にして使うことができない
https://swiswiswift.com/2021-02-09/

QGridを使ってCollectionViewを実装する
https://swiswiswift.com/2021-03-01/

SwiftUIでViewを横スクロールで表示する
https://swiswiswift.com/2021-03-02/

SwiftUIでButtonを有効にしたり無効にしたりする
https://swiswiswift.com/2021-03-04/

SwiftUIのTextFieldで表示するキーボードを指定する
https://swiswiswift.com/2021-03-07/

SwiftUIで初めの画面に遷移する（popToRootViewController）
https://swiswiswift.com/2021-03-09/

SwiftUIでシートを表示し、プッシュ遷移後にシートを閉じる
https://swiswiswift.com/2021-03-10/

SwiftUIでListをEditModeにして並び替える
https://swiswiswift.com/2021-04-02/

SwiftUIのListでSpacerの部分にもタップ判定をつける
https://swiswiswift.com/2021-04-07/

SwiftUIのListの中にボタンを複数設置する
https://swiswiswift.com/2021-04-08/

SwiftUIでSearchBar(TextField)を使って検索する
https://swiswiswift.com/2021-05-01/

SwiftUIでSearchBar(TextField)にクリアボタンをつける
https://swiswiswift.com/2021-05-02/

SwiftUIでUIActivityViewControllerを表示する
https://swiswiswift.com/2021-05-05/

SwiftUIでActivityIndicatorを表示する
https://swiswiswift.com/2021-05-06/

SwiftUIで少しカスタマイズしたActivityIndicatorを表示する
https://swiswiswift.com/2021-05-08/

SwiftUIでListにButtonを設定してパラメーターの違う画面に遷移する
https://swiswiswift.com/2021-05-09/

SwiftUIのTabViewのタブをコードから動的に切り替える
https://swiswiswift.com/2021-06-01/

Identifiableに適合していないStructでListを使う
https://swiswiswift.com/2021-07-02/

SwiftUIでカメラを使う
https://swiswiswift.com/2021-11-01/

SwiftUIでスライダーとスクロールを連動させる
https://swiswiswift.com/2021-11-02/

SwiftUIでPHPickerViewControllerを使って画像を選択する
https://swiswiswift.com/2021-11-09/

SwiftUIでMapViewの中央に十字を用意し、その中央の座標を取得する
https://swiswiswift.com/2021-12-05/

SwiftUIでMapViewを使い複数の位置情報を選択する
https://swiswiswift.com/2022-03-07/

SwiftUIで画像をピンチで拡大する（MagnificationGesture）
https://swiswiswift.com/2022-04-05/

SwiftUIで画像をピンチで拡大する（PDFView）
https://swiswiswift.com/2022-04-06/

SwiftUIで画像をピンチで拡大する（UIImageView + UIScrollView）
https://swiswiswift.com/2022-04-07/

iOSのファイルアプリ（UIDocumentPickerViewController）を開いてドキュメントフォルダに保存したファイルを開く
https://swiswiswift.com/2022-06-05/

SwiftUIでObservableObjectの@publishedなプロパティとBindingをする
https://swiswiswift.com/2022-06-06/

Swiftのasync,awaitを使ってAPIをフェッチする
https://swiswiswift.com/2022-06-15/

Swiftのasync,awaitを使ってAPIと画像を取得し、全てが揃ってから表示する
https://swiswiswift.com/2022-06-16/

SwiftUIでさまざまなデバイスのプレビューを確認する
https://swiswiswift.com/2022-01-03/