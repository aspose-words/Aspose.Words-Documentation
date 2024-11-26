---
title: DocumentBuilderを使用して文書を変更する
second_title: Aspose.WordsのためのJava
articleTitle: DocumentBuilderを使用して文書を変更する
linktitle: DocumentBuilderを使用して文書を変更する
type: docs
description: "ドキュメントビルダーを使用して、Javaで文書を簡単に変更できます。"
weight: 20
url: /ja/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## 書式の指定

### フォントの書式設定

現在のフォントの書式は、`DocumentBuilder.Font`プロパティによって返される`Font`オブジェクトで表されます。 `Font`クラスには、Microsoft Wordで可能なさまざまなフォントプロパティが含まれています。

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
次のコード例は、フォントの書式設定を設定する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### セルの書式設定

セルの書式設定は、テーブルの構築中に使用されます。 これは、`DocumentBuilder.CellFormat`プロパティによって返される`CellFormat`オブジェクトによって表されます。 CellFormat幅や垂直方向の配置など、さまざまなテーブルセルプロパティをカプセル化します。

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
次のコード例は、単一の書式設定されたセルを含むテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### 行の書式設定

現在の行の書式設定は、`DocumentBuilder.RowFormat`プロパティによって返される`RowFormat`オブジェクトによって決定されます。 このオブジェクトは、すべての表の行の書式設定に関する情報をカプセル化します。

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
Below codeの例は、単一のセルを含むテーブルを作成し、行の書式設定を適用する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### リストの書式設定

Aspose.Wordsリストの書式設定を適用することで、リストを簡単に作成できます。 DocumentBuilderは`ListFormat`オブジェクトを返す`DocumentBuilder.ListFormat`プロパティを提供します。 このオブジェクトには、リストの開始と終了、およびインデントの増減を行ういくつかのメソッドがあります。

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Microsoft Wordには、箇条書きと番号付きの2つの一般的なタイプのリストがあります。

- 箇条書きリストを開始するには、[ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)を呼び出します。
- 番号付きリストを開始するには、[ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)を呼び出します。

箇条書きまたは番号と書式設定が現在の段落に追加され、[ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers)まで**DocumentBuilder**を使用して作成されたすべての段落が呼び出されて箇条書きリストの書式設定

Word文書では、リストは最大9つのレベルで構成されています。 各レベルのリストの書式設定は、使用される箇条書きまたは番号、左インデント、箇条書きとテキストの間のスペースなどを指定します。

- 現在の段落のリストレベルを1レベル上げるには、[ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)を呼び出します。
- 現在の段落のリストレベルを1レベル下げるには、[ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)を呼び出します。

これらのメソッドは、リストレベルを変更し、新しいレベルの書式設定プロパティを適用します。

{{% alert color="primary" %}}

また、[ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int)プロパティを使用して、段落のリストレベルを取得または設定することもできます。 リストレベルには0から8の番号が付けられています。

{{% /alert %}}

次のコード例は、マルチレベルリストを作成する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### ページの設定とセクションの書式設定

ページ設定とセクションプロパティは`DocumentBuilder.PageSetup`プロパティによって返される`PageSetup`オブジェクトにカプセル化されます。 このオブジェクトには、セクションのすべてのページ設定属性(左余白、下余白、用紙サイズなど)がプロパティとして含まれます。

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
次のコード例は、現在のセクションのページサイズや向きなどのプロパティを設定する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### スタイルの適用

フォントやParagraphFormatのような一部の書式設定オブジェクトはスタイルをサポートしています。 単一の組み込みまたはユーザー定義のスタイルは、名前、基本スタイル、フォント、スタイルの段落書式などの対応するスタイルプロパティを含む`Style`オブジ

さらに、**Style**オブジェクトは、**Style.StyleIdentifier**列挙値によって表されるロケールに依存しないスタイル識別子を返す[Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier)プロパティを提供します。 重要なのは、Microsoft Wordの組み込みスタイルの名前が異なる言語にローカライズされていることです。 スタイル識別子を使用すると、文書の言語に関係なく正しいスタイルを見つけることができます。 列挙値は、Normal、Heading 1、Heading 2などのMicrosoft Word組み込みスタイルに対応しています。 すべてのユーザー定義スタイルには**StyleIdentifier.User value**が割り当てられます。

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
次のコード例は、段落スタイルを適用する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### 境界線とシェーディング

境界線はBorderCollectionで表されます。 これは、インデックスまたは境界線の種類によってアクセスされるBorderオブジェクトのコレクションです。 境界線の型は`BorderType`列挙体で表されます。 列挙体の一部の値は、複数または1つのドキュメント要素にのみ適用できます。 たとえば、`BorderType.Bottom`は段落または表のセルに適用できますが、`BorderType.DiagonalDown`は表のセル内の対角線の境界線のみを指定します。

Borderコレクションとそれぞれの境界線の両方には、色、線のスタイル、線の幅、テキストからの距離、オプションの影などの同様の属性があります。 それらは同じ名前のプロパティによって表されます。 プロパティ値を組み合わせることで、さまざまな境界線の種類を実現できます。 さらに、**BorderCollection**オブジェクトと**Border**オブジェクトの両方で、[Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting)メソッドを呼び出すことでこれらの値を既定値にリセットできます。 境界線のプロパティがデフォルト値にリセットされると、境界線は非表示になります。

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
[Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/)クラスには、文書要素のシェーディング属性が含まれています。 必要なシェーディングテクスチャと、要素の背景と前景に適用される色を設定できます。

シェーディングテクスチャは、次のように設定されています [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) **Shading**オブジェクトへのさまざまなパターンの適用を可能にする列挙値。 たとえば、ドキュメント要素の背景色を設定するには、次のようにします [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) 値を設定し、必要に応じて前景の陰影の色を設定します。

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
次の例は、段落に境界線と陰影を適用する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### グリッドにスナップ

Aspose.Wordsは、段落プロパティスナップをグリッドに取得および設定するための二つのプロパティ`ParagraphFormat.SnapToGrid`と`Font.SnapToGrid`を提供します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### カーソルの移動

### 現在のカーソル位置の検出

Builderのカーソルが現在位置している場所はいつでも取得できます。 [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode)プロパティは、このビルダーで現在選択されているノードを返します。 ノードは段落の直接の子です。 `DocumentBuilder`を使用して実行する挿入操作は、`DocumentBuilder.CurrentNode`の前に挿入されます。 現在の段落が空の場合、またはカーソルが段落の終わりの直前に配置されている場合、`DocumentBuilder.CurrentNode`はnullを返します。

また、この**DocumentBuilder**で現在選択されている段落を取得する[DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph)プロパティを使用することもできます。 Below codeの例は、ドキュメントビルダーで現在のノードにアクセスする方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### 任意のノード（段落とその子）への移動

段落または段落の直接の子であるドキュメントオブジェクトノードがある場合は、ビルダーのカーソルをこのノードにポイントできます。 これを実行するには[DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node)メソッドを使用します。
次のコード例は、カーソル位置を指定したノードに移動する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### ドキュメントの開始/終了への移動

文書の先頭に移動する必要がある場合は、[DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart)を呼び出します。 文書の最後に移動する必要がある場合は、[DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd)を呼び出します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### セクションへの移動

複数のセクションを含むドキュメントを操作している場合は、[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)を使用して目的のセクションに移動できます。 このメソッドは、指定されたセクションの先頭にカーソルを移動し、必要なセクションのインデックスを受け入れます。 セクションインデックスが0以上の場合、0が最初のセクションであるドキュメントの先頭からのインデックスを指定します。 セクションインデックスが0より小さい場合は、ドキュメントの末尾からのインデックスを指定し、最後のセクションを-1とします。 Below codeの例は、指定されたセクションにカーソル位置を移動する方法を示しています。 この例のテンプレートファイルは、次の場所からダウンロードできます [ここに](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### ヘッダー/フッターへの移動

ヘッダーまたはフッターにデータを配置する必要がある場合は、最初に[DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)を使用してそこに移動する必要があります。このメソッドは、カーソルを移動するヘッダーまたはフッターのタイプを識別するHeaderFooterType列挙値を受け入れます。

最初のページで異なるヘッダーとフッターを作成する場合は、[PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter)プロパティを**true**に設定する必要があります。 偶数ページと奇数ページで異なるヘッダーとフッターを作成する場合は、[PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter)を**true**に設定する必要があります。

メインストーリーに戻る必要がある場合は、[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)を使用してヘッダーまたはフッターから移動します。 以下の例では、DocumentBuilderを使用してドキュメント内にヘッダーとフッターを作成します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### 段落への移動

現在のセクションの目的の段落にカーソルを移動するには、[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int)を使用します。 このメソッドには、paragraphIndex(移動先の段落のインデックス)とcharacterIndex(段落内の文字のインデックス)の二つのパラメータを渡す必要があります。

ナビゲーションは、現在のセクションの現在のストーリー内で実行されます。 つまり、カーソルを最初のセクションのプライマリヘッダーに移動した場合、paragraphIndexはそのセクションのそのヘッダー内の段落のインデックスを指定します。

ParagraphIndexが0以上の場合、セクションの先頭からのインデックスを指定し、0が最初の段落になります。 paragraphIndexが0より小さい場合は、セクションの最後からのインデックスを指定し、-1が最後の段落になります。 現在、文字インデックスは、段落の先頭に移動する場合は0、段落の末尾に移動する場合は-1としてのみ指定できます。 次のコード例は、カーソル位置を指定した段落に移動する方法を示しています。 この例のテンプレートファイルは、次の場所からダウンロードできます [ここに](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### テーブルセルへの移動

現在のセクションのテーブルセルにカーソルを移動する必要がある場合は[DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int)を使用します。 このメソッドは、次の4つのパラメータを受け入れます:

- tableIndex-移動先のテーブルのインデックス。
- rowIndex-テーブル内の行のインデックス。
- columnIndex-テーブル内の列のインデックス。
- characterIndex-セル内の文字のインデックス。

ナビゲーションは、現在のセクションの現在のストーリー内で実行されます。

Indexパラメーターでは、インデックスが0以上の場合、最初の要素が0である最初からインデックスを指定します。 インデックスが0より小さい場合は、最後の要素である-1で末尾からのインデックスを指定します。

また、characterIndexは現在、セルの先頭に移動するには0、セルの末尾に移動するには-1しか指定できないことに注意してください。 次のコード例は、指定されたテーブルセルにカーソル位置を移動する方法を示しています。 この例のテンプレートファイルは、次の場所からダウンロードできます [ここに](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### ブックマークへの移動

ブックマークは、新しい要素が挿入される文書内の特定の場所をマークするために頻繁に使用されます。 ブックマークに移動するには、[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)を使用します。 このメソッドには2つのオーバーロードがあります。 最も単純なものは、カーソルが移動されるブックマークの名前だけを受け入れます。 次のコード例は、カーソル位置をブックマークに移動する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

このオーバーロードは、指定された名前のブックマークの開始直後の位置にカーソルを移動します。 別のオーバーロード[DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean)は、カーソルをより高い精度でブックマークに移動します。 2つの追加のブールパラメータを受け入れます:

- isStartカーソルをブックマークの先頭に移動するか末尾に移動するかを指定します。
- isAfterカーソルをブックマークの開始位置または終了位置の後に移動するか、ブックマークの開始位置または終了位置の前に移動するかを決定します。

次のコード例は、ブックマークの終了直後にカーソル位置を移動する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

この方法で新しいテキストを挿入しても、ブックマークの既存のテキストは置き換えられません。 ドキュメント内のブックマークの中には、フォームフィールドに割り当てられているものがあります。 そのようなブックマークに移動してテキストを挿入すると、テキストがフォームフィールドコードに挿入されます。 これによりフォームフィールドが無効になることはありませんが、挿入されたテキストはフィールドコードの一部になるため表示されません。

### `Merge`フィールドへの移動

場合によっては、`DocumentBuilder`を使用して"手動"Mail Mergeを実行したり、Mail Mergeイベントハンドラー内で特別な方法で差し込み項目を入力したりする必要がある場合があります。 それは[DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String)が有用である可能性があるときです。 このメソッドは、差し込み項目の名前を受け入れます。 カーソルを指定した差し込み項目のすぐ外側の位置に移動し、差し込み項目を削除します。 次のコード例は、指定した差し込み項目のすぐ外側の位置にカーソルを移動する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## 測定単位間で変換する方法

いくつかの測定値（幅/高さ、余白、さまざまな距離）を表すAspose.WordsAPIで提供されるオブジェクトプロパティのほとんどは、ポイント単位の値を受け入れます（1イ これは便利ではない場合があるため、さまざまな測定単位間で変換するヘルパー関数を提供する`ConvertUtil`クラスがあります。 これにより、インチをポイントに、ポイントをインチに、ピクセルをポイントに、ポイントをピクセルに変換できます。 ピクセルをポイントに変換したり、その逆に変換したりする場合は、96dpi(dots per inch)解像度または指定されたdpi解像度で実行できます。

**ConvertUtil**

次のコード例は、ページプロパティをインチで指定する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
