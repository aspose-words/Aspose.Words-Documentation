---
title: 使用方法 `DocumentBuilder` ドキュメントを修正する
second_title: Aspose.Words お問い合わせ Java
articleTitle: 使用方法 `DocumentBuilder` ドキュメントを修正する
linktitle: 使用方法 `DocumentBuilder` ドキュメントを修正する
type: docs
description: "ドキュメントビルダーを使用して文書を簡単に変更できます Javaお問い合わせ"
weight: 20
url: /ja/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## フォーマットの指定

### フォントのフォーマット

現在のフォントフォーマットは、 `Font` 返されたオブジェクト `DocumentBuilder.Font` プロパティ. ザ・オブ・ザ・ `Font` クラスには、さまざまなフォントのプロパティが含まれています。 Microsoft Wordお問い合わせ

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
次のコードの例では、フォントのフォーマットを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### セルのフォーマット

セルのフォーマットは、テーブルのビルド時に使用されます。 これは、 `CellFormat` 返されたオブジェクト `DocumentBuilder.CellFormat` 宿泊施設 CellFormat は、幅や垂直方向のアライメントなど、さまざまなテーブルのセルプロパティをカプセル化します。

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
次のコードの例では、単一の整形セルを含むテーブルを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### 列のフォーマット

現在の行のフォーマットは、 `RowFormat` 返されたオブジェクト `DocumentBuilder.RowFormat` プロパティ. オブジェクトは、すべてのテーブル行のフォーマットに関する情報をカプセル化します。

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
お問い合わせlow code たとえば、単一セルを含むテーブルを作成し、行のフォーマットを適用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### リストのフォーマット

Aspose.Words リストのフォーマットを適用することでリストを簡単に作成できます。 ドキュメントビルダーは、 `DocumentBuilder.ListFormat` を返すプロパティ `ListFormat` オブジェクト。 このオブジェクトは、リストを開始して終了し、インデントを増加/減少させるいくつかの方法を持っています。

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
リストには2種類あります。 Microsoft Word: 箇条書きと番号

- 箇条書きリストを開始するには、呼び出し [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault) お問い合わせ
- 番号付きリストを開始するには、呼び出し [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault) お問い合わせ

現在の段落に箇条書きまたは番号と書式が追加され、使用したすべての段落が追加されます。 **DocumentBuilder** まで [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) 箇条書きのフォーマットを停止するために呼び出されます。

ワード文書では、リストは9レベルまで構成できます。 各レベルのリストのフォーマットは、弾丸や数字が使用されるか、左インデント、弾丸とテキストの間隔などを指定します。

- - - 現在の段落の一覧レベルを1つのレベルに引き上げるために、呼び出し [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)お問い合わせ
- - - 現在の段落の一覧レベルを1レベルに下げるには、呼び出し [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)お問い合わせ

メソッドはリストレベルを変更し、新しいレベルの書式プロパティを適用します。

{{% alert color="primary" %}}

また、 [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) 段落のリストレベルを取得または設定するプロパティ。 リストレベルは 0 から 8 までです。

{{% /alert %}}

以下のコードの例では、マルチレベルリストを作成する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### ページ設定とセクションフォーマット

ページのセットアップとセクションプロパティがカプセル化されます `PageSetup` 返されたオブジェクト `DocumentBuilder.PageSetup` 宿泊施設 オブジェクトは、プロパティとしてセクション(左マージン、ボトムマージン、用紙サイズなど)のすべてのページ設定属性を含みます。

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
次のコードの例では、現在のセクションのページサイズとオリエンテーションなどのプロパティを設定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### スタイルの適用

Font や ParagraphFormat サポートスタイルなどのフォーマットオブジェクト。 単一の組み込みまたはユーザー定義のスタイルは、 `Style` スタイルの名前、ベーススタイル、フォント、段落フォーマットなどの対応するスタイルプロパティを含むオブジェクト。

さらに、 **Style** オブジェクトは、 [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) locale 独立したスタイル ID を返すプロパティ **Style.StyleIdentifier** 列挙値。 点は、組み込みスタイルの名前が組み込まれていることです。 Microsoft Word 異なる言語のためにローカライズされます。 スタイル識別子を使用して、ドキュメント言語に関係なく正しいスタイルを見つけることができます。 列挙値が対応する Microsoft Word ノーマル、見出し1、見出し2等のような作り付け様式。 すべてのユーザー定義のスタイルが割り当てられます **スタイル識別子。 ユーザー価値**お問い合わせ

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
次のコードの例では、段落スタイルを適用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### ボーダーとシェーディング

BordersはBorderCollectionによって表されます。 これは、インデックスまたはボーダータイプによってアクセスされるボーダーオブジェクトのコレクションです。 ボーダータイプは、 `BorderType` パンフレット 列挙のいくつかの値が複数または1つの文書要素にのみ適用されます。 例えば、 `BorderType.Bottom` 段落またはテーブルセルに適用される `BorderType.DiagonalDown` 対角線をテーブルセルのみで指定します。

境界コレクションと各境界線は、色、線スタイル、線幅、テキストからの距離、オプションの影のような類似の属性を持っています。 同じ名前のプロパティで表されます。 プロパティの値を組み合わせることで、異なる境界タイプを実現できます。 その他、両方 **BorderCollection** そして、 **Border** オブジェクトを使用すると、これらの値をデフォルトにリセットできます。 [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) メソッド。 境界プロパティがデフォルト値にリセットされる場合、境界は見えないことに注意してください。

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
ザ・オブ・ザ・ [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) クラスには、ドキュメント要素のシェーディング属性が含まれています。 目的のシェーディングテクスチャと要素の背景と背景に適用される色を設定できます。

シェーディングテクスチャは、 [テクスチャインデックス](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 様々なパターンのアプリケーションを様々なパターンに適用できる列挙値 **Shading** オブジェクト。 例えば、ドキュメント要素の背景色を設定するには、 [テクスチャインデックス。テクスチャソリッド](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 値を設定し、フォアグラウンドシェーディングカラーを適切に設定します。

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
下の例では、境界線と段落にシェーディングを適用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### グリッドにスナップ

Aspose.Words 2つのプロパティ `ParagraphFormat.SnapToGrid` そして、 `Font.SnapToGrid` 段落プロパティをグリッドにスナップして設定します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### カーソル移動

### 現在のカーソル位置の検出

ビルダーのカーソルが現在位置している場所をいつでも取得できます。 ザ・オブ・ザ・ [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) プロパティは、現在このビルダーで選択したノードを返します。 ノードは段落の直接子です。 どんなインサート操作でも、 `DocumentBuilder` 前にインサートします `DocumentBuilder.CurrentNode`お問い合わせ 現在の段落が空かカーソルが段落の直前に置かれるとき、 `DocumentBuilder.CurrentNode` null を返します。

また、ご利用いただくこともできます。 [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) プロパティ, これは、現在この中で選択した段落を取得します **DocumentBuilder**お問い合わせ お問い合わせlow code 例えば、ドキュメントビルダーで現在のノードにアクセスする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### 任意のノード(パラグラフとその子供)に移動

ドキュメントオブジェクトノードがある場合、段落または段落の直接子である場合は、このノードにビルダーのカーソルを指すことができます。 利用する [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) これを実行する方法。
次のコードの例では、カーソル位置を指定されたノードに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### ドキュメントの開始/終了に移動

ドキュメントの先頭に移動する必要がある場合は、電話 [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)お問い合わせ ドキュメントの末尾に移動する必要がある場合は、 [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)お問い合わせ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### セクションに移動

複数のセクションを含むドキュメントを扱う場合、目的のセクションに移動できます。 [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)お問い合わせ このメソッドは、指定されたセクションの先頭にカーソルを移動し、必要なセクションのインデックスを受け取ります。 セクションのインデックスが 0 よりも大きい場合、最初のセクションである 0 でドキュメントの先頭からインデックスを指定します。 セクションのインデックスが 0 未満の場合、 -1 が最後のセクションであるドキュメントの末尾からインデックスを指定します。 お問い合わせlow code たとえば、カーソル位置を指定したセクションに移動する方法を示します。 この例のテンプレートファイルをダウンロードできます。 [詳しくはこちら](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### ヘッダー/フッターに移動

いくつかのデータをヘッダまたはフッターに置く必要がある場合は、まず最初に使用して移動する必要があります [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)お問い合わせ メソッドは、ヘッダーまたはフッターの型をカーソルが移動する場所に識別する HeaderFooterType 列挙値を受け取ります。

最初のページごとに異なるヘッダーやフッターを作成したい場合は、設定する必要があります [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) プロパティ **true**お問い合わせ ヘッダーやフッターを、偶数とオッズページが異なるように作成したい場合、設定する必要があります。 [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) お問い合わせ **true**お問い合わせ

メインストーリーに戻る必要がある場合、[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) ヘッダーまたはフッターから外に移動します。 以下は、DocumentBuilder を使用してドキュメントでヘッダーとフッターを作成します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### パラグラフへの移動

使用条件[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) カーソルを現在のセクションで目的の段落に移動します。 このメソッドに2つのパラメーターを渡します。: 段落インデックス (段落のインデックス) と CharacterIndex (段落の中の文字のインデックス).

現在のセクションの現在のストーリーの中でナビゲーションを実行します。 つまり、カーソルを最初のセクションのプライマリヘッダに移動すると、そのセクションのヘッダ内の段落のインデックスを指定します。

nodeIndex が 0 よりも大きい場合、セクションの先頭から最初の段落である 0 のインデックスを指定します。 段落Index が 0 未満の場合、-1 が最後の段落であるセクションの端からインデックスを指定します。 文字のインデックスは、現在、段落の先頭または-1に移動して、段落の最後に移動するために0として指定することができます。 次のコードの例では、指定された段落にカーソル位置を移動する方法を示します。 この例のテンプレートファイルをダウンロードできます [詳しくはこちら](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### テーブルセルへの移動

使用条件 [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) 現在のセクションでカーソルをテーブルセルに移動する必要がある場合。 この方法は4つの変数を受け入れます:

- tableIndex - に移動するテーブルのインデックス。
- rowIndex - テーブル内の行のインデックス。
- columnIndex - テーブル内の列のインデックス。
- CharacterIndex - セル内の文字のインデックス。

現在のセクションの現在のストーリーの中でナビゲーションを実行します。

インデックスパラメータの場合、インデックスが 0 よりも大きい場合、最初の要素である 0 の先頭からインデックスを指定します。 インデックスが 0 未満の場合、 -1 の末尾から最後の要素であるインデックスを指定します。

また、acterIndex は、現在 0 を指定して、セルの先頭に移動するか、-1 がセルの末尾に移動できることに注意してください。 次のコードの例では、指定されたテーブルセルにカーソル位置を移動する方法を示します。 この例のテンプレートファイルをダウンロードできます [詳しくはこちら](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx)お問い合わせ

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### ブックマークに移動

ブックマークは、新しい要素を投入するドキュメントの特定の場所をマークするために頻繁に使用されます。 ブックマークに移動するには、 [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)お問い合わせ この方法は2つの積み過ぎを持っています。 一番シンプルなものは、カーソルが移動するブックマークの名前は何も受け付けません。 次のコードの例では、カーソル位置をブックマークに移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

このオーバーロードは、指定された名前でブックマークの開始直後にカーソルを位置に移動します。 別の積み過ぎ [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) カーソルをブックマークに移動し、精度を高めます。 2つの追加のボオランパラメータを受け入れる:

- isStart は、カーソルを先頭に移動するか、ブックマークの末尾に移動するかを決定します。
- isAfter は、ブックマークの開始または終了位置の後にカーソルを移動するか、ブックマークの開始または終了位置の前にカーソルを移動するかを決定します。

次のコードの例では、ブックマーク終了直後にカーソル位置を移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

この方法で新しいテキストをインサートすることは、ブックマークの既存のテキストを置き換えません。 ドキュメントのブックマークはフィールドのフォームに割り当てられます。 このようなブックマークに移動し、テキストをフォームフィールドコードに差し込みます。 フォームフィールドを無効化しませんが、フィールドコードの一部になるため、インサートされたテキストは表示されません。

### 移動する `Merge` フィールド

「マニュアル」を実行する必要がある場合があります。 Mail Merge 使用方法 `DocumentBuilder` または内部の特別な方法でマージフィールドを埋める Mail Merge イベントハンドラ。 それはいつ [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) 便利かもしれません。 メソッドはマージフィールドの名前を指定します。 カーソルを指定したマージフィールドを超えて位置に移動し、マージフィールドを削除します。 次のコードの例では、指定したマージフィールドを超えてカーソルを位置に移動する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## 測定ユニット間の変換方法

提供されているオブジェクトプロパティのほとんど Aspose.Words API いくつかの測定値(幅/高さ、マージン、様々な距離)をポイント(1インチ等分72点)で受け入れます。 時々これは便利ではないので、そこにあります `ConvertUtil` さまざまな測定単位間で変換するヘルパー関数を提供するクラス。 インチからポイント、ポイント、ピクセル、ポイント、ポイント、ポイントをピクセル単位に変換できます。 ピクセルがポイントやその逆に変換されると、96 dpi(ドット/インチ)の解像度または指定されたdpi解像度で実行できます。

**ConvertUtil** たとえば、異なるページプロパティを設定する際には、ポイントよりも多くの通常の測定単位であるため、非常に便利です。 次の例では、ページプロパティをインチに設定する方法を示します。

次のコードの例では、ページプロパティをインチで指定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
