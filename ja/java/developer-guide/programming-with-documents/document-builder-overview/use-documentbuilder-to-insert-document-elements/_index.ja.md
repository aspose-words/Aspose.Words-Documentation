---
title: 使用条件 `DocumentBuilder` 文書要素をインサートする
second_title: Aspose.Words お問い合わせ Java
articleTitle: 使用条件 `DocumentBuilder` 文書要素をインサートする
linktitle: 使用条件 `DocumentBuilder` 文書要素をインサートする
type: docs
description: "ドキュメントビルダーを使用してドキュメント要素をインサートする Javaお問い合わせ"
weight: 10
url: /ja/java/use-documentbuilder-to-insert-document-elements/
---

ザ・オブ・ザ・ [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 文書の変更に使用されます。 この記事では、複数のタスクを実行する方法について説明します。

## テキストの文字列をインサートする

テキストの文字列をドキュメントに差し込む必要があるだけに渡す [DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String))メソッド。 テキストフォーマットは、 `Font` 宿泊施設 このオブジェクトには、異なるフォント属性(フォント名、フォントサイズ、色など)が含まれています。 重要なフォント属性も、 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 直接アクセスできるようにするプロパティ。 Boolean プロパティー [Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), そして、 [Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)お問い合わせ

{{% alert color="primary" %}}

設定した文字の書式は、ドキュメントの現在の位置から入力したすべてのテキストに適用されます。

{{% /alert %}}

次のコード例 DocumentBuilder を使用して整形テキストをインサートします。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## パラグラフをインサートする

DocumentBuilder.writeln は、テキストの文字列をドキュメントにも差し込みますが、また、段落の休憩を追加します。 現行のフォントフォーマットは、DocumentBuilder で指定します。 お問い合わせ フォントプロパティと現在の段落のフォーマットは、DocumentBuilder.getParagraphFormatプロパティで決定されます。

以下のコードの例では、段落を文書に差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## テーブルをインサートする

基本的なアルゴリズムでテーブルを作成する `DocumentBuilder` 簡単です:

1。 利用するテーブルの起動 [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)お問い合わせ
1。 セルをインサートする [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)お問い合わせ 新しい行が自動的に始まります。 必要であれば、 [DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) セルのフォーマットを指定するプロパティ。
1。 インサートセルのコンテンツを使用して `DocumentBuilder` メソッド。
1。 行が完了するまで、ステップ2と3を繰り返します。
1。 電話番号 [DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) 現在の行を終了します。 必要に応じて、使用 [DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) 行のフォーマットを指定するプロパティ。
1。 繰り返しステップ2 - 5はテーブルが完成するまで。
1。 電話番号 [DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) テーブル造りを終える。 適切な DocumentBuilder テーブル作成方法は以下のとおりです。

### テーブルを始める

DocumentBuilder.start の呼び出し テーブルはテーブルを建てる最初のステップです。 セル内でも呼び出せます。この場合、ネストされたテーブルが始まります。 次のメソッドは DocumentBuilder.insertCell です。

### セルをインサートする

DocumentBuilder を呼び出した後。 インサート セル、新しいセルが作成され、他のメソッドを使用して追加するコンテンツ `DocumentBuilder` 現在のセルにクラスを追加します。 同じ行で新しいセルを開始するには、DocumentBuilder を呼び出します。 インサート 再びセル。 DocumentBuilder.getCell を使う セルのフォーマットを指定するプロパティをフォーマットします。 を返します。 [getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) テーブルセルのすべての書式を表すオブジェクト。

### 行末

コールドキュメントビルダー.end 現在の行を終了する行。 DocumentBuilder を呼び出す場合。 インサート その直後には、テーブルが新しい行に続いています。 利用する `DocumentBuilder.RowFormat` 行のフォーマットを指定するプロパティ。 を返します。 [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) テーブル行のすべての書式を表すオブジェクト。

### テーブルを終わらせる

コールドキュメントビルダー.end 現在のテーブルを終了するテーブル。 このメソッドは、DocumentBuilder の直後にのみ呼び出されるべきです。 endRow が呼び出されました。 呼ばれるとき、DocumentBuilder.end 表は、現在のセルからカーソルをテーブルの直後に位置に移動します。 次の例では、2列と2列を含む整形テーブルを作成する方法を説明します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## ブレイクをインサートする

新しい行、段落、列、セクション、またはページを明示的に開始したい場合は、DocumentBuilder を呼び出す。 インサートブレイク。 このメソッドに渡すと、表されるブレークの型を差し込む必要があります。 `BreakType` パンフレット
次のコードの例では、ページをドキュメントに分割する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## 画像をインサートする

DocumentBuilder は複数のオーバーロードを提供 [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) インラインやフローティングイメージを差し込むことができます。 EMF や WMF のメタファイルの場合、メタファイル形式のドキュメントに挿します。 PNG形式で保存されます。 ドキュメントビルダー.insert Imageメソッドは、異なるソースから画像を使うことができます。

- ファイルまたは `URL` 文字列パラメータを渡すことで
- 通過してストリームから `Stream` パラメータ
- Image パラメータを渡すことでイメージオブジェクトから
- バイト配列からバイト配列パラメーターを渡す
- - - その他

ドキュメントビルダーのそれぞれ。 インサート 画像メソッドは、次のオプションで画像を差し込むことを可能にする、さらにオーバーロードがあります。

- 特定の位置でインラインまたはフローティング
- パーセンテージスケールまたはカスタムサイズ

さらに、DocumentBuilder.insert(文書ビルダー) Imageメソッドは、 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 作成したオブジェクトは、形状のプロパティをさらに変更できるようにインサートします。

### インライン画像をインサートする

DocumentBuilder に画像を含むファイルを表す単一の文字列を渡します。 インサート 画像をインライングラフィックとして文書に差し込むイメージ。 以下のコードの例では、カーソル位置のインラインイメージをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### フローティング(絶対位置決め)画像のインサート

この例では、ファイルからフローティングイメージを差し込みます。 `URL` 指定された位置とサイズで。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## ブックマークの表示

ブックマークをドキュメントに差し込むには、次の操作を行います。

1。 電話番号 [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) ブックマークの所望の名前を渡します。
1。 ブックマークテキストを入力 `DocumentBuilder` メソッド。
1。 電話番号 [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) DocumentBuilder.startBookmark で使用した名前と同じ名前を渡します。

ブックマークは、任意の範囲をオーバーラップし、スパンすることができます。 有効なブックマークを作成するには、DocumentBuilder.startBookmark と DocumentBuilder.endBookmark を同じブックマーク名で呼び出す必要があります。

文書が保存されると、重複した名前を持つ著名なブックマークやブックマークが無視されます。

以下のコードの例では、ドキュメントビルダーを使用してブックマークをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## フィールドをインサートする

フィールド Microsoft Word フィールドコードとフィールド結果で構成される文書。 フィールドコードは式のように、フィールド結果は式が生成する値です。 フィールドコードには、特定のアクションを実行する追加の指示であるフィールドスイッチも含まれている場合があります。 フィールドコードの表示とドキュメントの結果を切り替えることができます。 Microsoft Word キーボードショートカットAlt+F9を使用します。 フィールドコードはカーリーブレースの間に表示されます( { } ).使用 [DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) ドキュメント内のフィールドを作成する フィールドタイプ、フィールドコード、フィールド値を指定する必要があります。 特定のフィールドコードの構文がわからない場合は、フィールドをフィールドに作成します。 Microsoft Word フィールドコードを最初に表示し、フィールドコードを表示するように切り替えます。
次のコードの例では、ドキュメントビルダーを使用してマージフィールドをドキュメントに差し込みます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## インサート `Form` フィールド

フォームフィールドは、ユーザーが「インタラクション」できるWordフィールドの特定のケースです。 フォームフィールド Microsoft Word テキストボックス、コンボボックス、チェックボックスが含まれます。 DocumentBuilder は、各フォームフィールドをドキュメントに入力するための特別なメソッドを提供しています。 [DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int) , [DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int), そして、 [DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)お問い合わせ フォームフィールドの名前を指定すると、ブックマークが同じ名前で自動的に作成されます。

### テキスト入力をインサートする

DocumentBuilder.insertTextInput は、テキストボックスをドキュメントに追加します。 次のコードの例では、テキスト入力フォームフィールドをドキュメントに入力する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### インサート `CheckBox`

コール・ドキュメントBuilder.insert チェックボックスをドキュメントに差し込む 以下のコードの例では、チェックボックスフォームフィールドをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### コンボボックスをインサートする

コール・ドキュメントBuilder.insertComboBox コンボボックスをドキュメントに差し込む。 以下のコード例では、コンボボックスフォームフィールドをドキュメントに差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## フィールドレベルでのローカライズ

顧客の指定 フィールドレベルでローカル化し、より優れた制御を実現します。 ローカル Ids は DocumentBuilder 内の各フィールドに関連付けることができます。 以下の例では、このオプションの使用方法について説明します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## インサート HTML

HTML フラグメントや全 HTML ドキュメントを含む HTML 文字列をWord ドキュメントに簡単に差し込むことができます。 この文字列を DocumentBuilder に渡します。 インサート Htmlメソッド。 メソッドの有用な実装の1つは、データベースに HTML 文字列を格納し、その間に文書にそれを差し込むことです。 mail merge ドキュメントビルダーのさまざまなメソッドを使用してビルドするのではなく、フォーマットされたコンテンツを付加します。 次のコードの例では、ドキュメントビルダーを使用してHTMLをドキュメントにインサートします。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## ハイパーリンクをインサートする

DocumentBuilder.insertHyperlink を使用して、ハイパーリンクをドキュメントに差し込みます。 このメソッドは、ドキュメント、リンク先(文書内のブックマークのURLまたは名前)に表示するリンクのテキスト、およびブール値のパラメーターを3つのパラメーターで受け入れます。 true もし `URL` ドキュメント内のブックマークの名前です。 DocumentBuilder.insertHyperlink 内部で DocumentBuilder.insertField を呼び出す。 メソッドは URL の先頭と末尾に apostrophes を常に追加します。 ハイパーリンク表示テキストのフォントフォーマットを明示的に指定する必要があることに注意してください。 `Font` 宿泊施設 以下のコードの例では、DocumentBuilder を使用して文書にハイパーリンクを差し込みます。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## コンテンツの表をインサートする

インサートできます `TOC` (内容の表)は、現在の位置の文書に、呼び出して [DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) メソッド。 DocumentBuilder.insertTableOfContentsメソッドは、 `TOC` ドキュメントにフィールドします。 コンテンツの表を作成し、ページ番号に従って表示するためには、両方 **Document.UpdateFields**フィールドのインサートの後にメソッドを呼び出す必要があります。 以下のコードの例では、コンテンツフィールドの表を文書に書き込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Ole オブジェクトをインサートする

Ole オブジェクト呼び出しが必要な場合 [DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)お問い合わせ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Ole オブジェクトをインサートするときにファイル名と拡張子を設定する

OLEパッケージは、OLEハンドラが不明な場合、埋め込まれたオブジェクトを格納するレガシーで「unocumented」方法です。 早割 Windows などのバージョン Windows 3.1、95、98 は Packager を持っていた。 任意のタイプのデータを文書に埋め込むために使用できるアプリケーションを実行します。 今、このアプリケーションは除外されます Windows しかし、MS Word やその他のアプリケーションは、OLE ハンドラが不足しているか不明な場合は、データを埋め込むためにそれを使用しています。 OlePackage クラスでは、OLE Package プロパティーにアクセスすることができます。 以下のコードの例では、 OLE Package のファイル名、拡張子、表示名を設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## OLE オブジェクトの未加工データにアクセスする

次のコードの例では、OLEを取得する方法を示します オブジェクトの未加工データを使用して `OleFormat.GetRawData`() メソッド

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## インサート横 ドキュメントへのルール

次のコード例では、水平ルールの形状をドキュメントに書き込む方法を示します。 `DocumentBuilder.InsertHorizontalRule` メソッド。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## 形状を扱う

### インラインとフリーフローティング形状のインサート

指定したタイプとサイズとフリーフローティング形状のインライン形状を指定した位置、サイズ、テキストラップタイプをドキュメントに貼り付けることができます。 `DocumentBuilder.InsertShape` メソッド。 ザ・オブ・ザ・ `DocumentBuilder.InsertShape` DML形状をドキュメントモデルに差し込むことができます。 ドキュメントは DML 形状をサポートする形式で保存されなければなりません。そうしないと、ドキュメント保存中に VML 形状に変換されます。 以下のコードの例では、これらの型を文書に差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### スニップコーナー長方形を作成する

スニップコーナー長方形を作成できます。 Aspose.Wordsお問い合わせ 形状タイプは、シングルコーナースナイピング、トップコーナースナイピング、斜めコーナースナイピング、トップコーナーワンラウンド OneSnipped、SingleCornerRounded、TopCornersRounded、およびDiagonalCornersRounded。 DML形状は、 `DocumentBuilder.InsertShape` これらの形状タイプでの方法。 これらのタイプはVML形状を作成するために使用できません。 「Shape」クラスのパブリックコンストラクタを使用して形状を作成する試みは、「NotSupportedException」例外を上げます。 以下のコードの例では、これらの型を文書に差し込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### 形状として数学XMLで形状をインポート DOM

使える `LoadOptions.ConvertShapeToOfficeMath` EquationXML を Office Math オブジェクトに変換するプロパティ。 このプロパティのデフォルト値は、MS Word の動作に対応します。例えば、式XML の形状は、Office の数学オブジェクトに変換されません。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
