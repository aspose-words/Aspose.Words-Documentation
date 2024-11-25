---
title: `DocumentBuilder`を使用して文書要素を挿入します
second_title: Aspose.WordsのためのJava
articleTitle: `DocumentBuilder`を使用して文書要素を挿入します
linktitle: `DocumentBuilder`を使用して文書要素を挿入します
type: docs
description: "Javaにドキュメントビルダーを使用してドキュメント要素を挿入します。"
weight: 10
url: /ja/java/use-documentbuilder-to-insert-document-elements/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)は文書を変更するために使用されます。 この記事では、いくつかのタスクを実行する方法について説明します。

## テキストの文字列を挿入する

ドキュメントに挿入する必要があるテキストの文字列を[DocumentBuilder.write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write(java.lang.String))メソッドに渡すだけです。 テキストの書式設定は`Font`プロパティによって決まります。 このオブジェクトには、さまざまなフォント属性(フォント名、フォントサイズ、色など)が含まれています。 いくつかの重要なフォント属性は、直接アクセスできるように[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)プロパティでも表されます。 これらはブール値のプロパティ[Font.getBold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold)、[Font.getItalic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic)、および[Font.getUnderline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline)です。

{{% alert color="primary" %}}

設定した文字書式は、ドキュメント内の現在の位置から挿入されたすべてのテキストに適用されます。

{{% /alert %}}

次のコード例では、DocumentBuilderを使用して書式設定されたテキストを挿入します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WriteAndFont-WriteAndFont.java" >}}

## 段落の挿入

DocumentBuilder.writelnは、文書にもテキストの文字列を挿入しますが、さらに段落区切りを追加します。 現在のフォントの書式設定もDocumentBuilderで指定されます。getFontプロパティと現在の段落の書式はDocumentBuilderによって決まります。getParagraphFormatプロパティ。

次のコード例は、文書に段落を挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

## テーブルの挿入

`DocumentBuilder`を使用してテーブルを作成する基本的なアルゴリズムは簡単です:

1. [DocumentBuilder.startTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)を使用してテーブルを開始します。
1. [DocumentBuilder.insertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell)を使用してセルを挿入します。 これにより、新しい行が自動的に開始されます。 必要に応じて、[DocumentBuilder.getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat)プロパティを使用してセルの書式を指定します。
1. `DocumentBuilder`メソッドを使用してセルの内容を挿入します。
1. 行が完了するまで、手順2と3を繰り返します。
1. 現在の行を終了するには[DocumentBuilder.endRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow)を呼び出します。 必要に応じて、[DocumentBuilder.RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat)プロパティを使用して行の書式を指定します。
1. テーブルが完了するまで、手順2〜5を繰り返します。
1. テーブルの構築を終了するには[DocumentBuilder.endTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)を呼び出します。 適切なDocumentBuilderテーブルの作成方法については、以下で説明します。

### テーブルの開始

DocumentBuilderを呼び出します。startTableは、テーブルを構築する最初のステップです。 セル内で呼び出すこともでき、この場合はネストされたテーブルを開始します。 次に呼び出すメソッドはDocumentBuilderです。insertCell.

### セルの挿入

DocumentBuilderを呼び出した後。insertCellの場合、新しいセルが作成され、`DocumentBuilder`クラスの他のメソッドを使用して追加したコンテンツが現在のセルに追加されます。 同じ行の新しいセルを開始するには、DocumentBuilderを呼び出します。insertCell再び。 DocumentBuilderを使用します。getCellFormatセルの書式設定を指定するプロパティ。 テーブルセルのすべての書式設定を表す[getCellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)オブジェクトを返します。

### 行を終了する

DocumentBuilderを呼び出します。endRow現在の行を終了します。 あなたがDocumentBuilderを呼び出す場合。insertCellその直後に、テーブルは新しい行で続行されます。 行の書式設定を指定するには、`DocumentBuilder.RowFormat`プロパティを使用します。 テーブル行のすべての書式設定を表す[RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/)オブジェクトを返します。

### テーブルの終了

DocumentBuilderを呼び出します。endTable現在のテーブルを終了します。 このメソッドはDocumentBuilderの後に一度だけ呼び出す必要があります。endRowが呼び出されました。 呼び出されたとき、DocumentBuilder。endTableカーソルを現在のセルからテーブルの直後の位置に移動します。 次の例は、2つの行と2つの列を含む書式設定されたテーブルを作成する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderBuildTable-DocumentBuilderBuildTable.java" >}}

## 休憩を挿入する

新しい行、段落、列、セクション、またはページを明示的に開始する場合は、DocumentBuilderを呼び出します。insertBreak. このメソッドに、`BreakType`列挙体で表される挿入する必要のあるブレークの型を渡します。
次のコード例は、文書に改ページを挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBreak-DocumentBuilderInsertBreak.java" >}}

## 画像の挿入

DocumentBuilder は、インライン イメージまたはフローティング イメージを挿入できる [DocumentBuilder.insertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) メソッドのオーバーロードをいくつか提供します。イメージが EMF または WMF メタファイルの場合、メタファイル形式でドキュメントに挿入されます。その他のすべてのイメージは PNG 形式で保存されます。DocumentBuilder.insertImage メソッドでは、さまざまなソースからのイメージを使用できます。

- 文字列パラメータを渡すことにより、ファイルまたは`URL`から
- `Stream`パラメータを渡してストリームから
- Imageパラメータを渡してImageオブジェクトから
- バイト配列パラメータを渡すことにより、バイト配列から
- その他

DocumentBuilderのそれぞれについて。insertImageメソッドでは、次のオプションを使用して画像を挿入できるようにするさらにオーバーロードがあります:

- 特定の位置でインラインまたはフローティング
- パーセントのスケールか注文のサイズ

さらに、DocumentBuilder。insertImageメソッドは、シェイプのプロパティをさらに変更できるように、作成され挿入された[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)オブジェクトを返します。

### インラインイメージの挿入

イメージを含むファイルを表す単一の文字列をDocumentBuilderに渡します。insertImage画像をインライングラフィックとしてドキュメントに挿入します。 次のコード例は、カーソル位置にインラインイメージをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertInlineImage-DocumentBuilderInsertInlineImage.java" >}}

### フローティング(絶対配置)イメージの挿入

この例では、指定された位置とサイズのファイルまたは`URL`から浮動イメージを挿入します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertFloatingImage-DocumentBuilderInsertFloatingImage.java" >}}

## ブックマークの挿入

ドキュメントにブックマークを挿入するには、次の操作を行います:

1. [DocumentBuilder.startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)を呼び出して、ブックマークの目的の名前を渡します。
1. `DocumentBuilder`メソッドを使用してブックマークテキストを挿入します。
1. [DocumentBuilder.endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)を呼び出して、DocumentBuilderで使用したのと同じ名前を渡します。startBookmark.

ブックマークは、任意の範囲に重複してまたがることができます。 有効なブックマークを作成するには、両方DocumentBuilderを呼び出す必要があります。startBookmarkとDocumentBuilder。同じブックマーク名を持つendBookmark。

不適切に形成されたブックマークまたは重複した名前のブックマークは、文書を保存するときに無視されます。

次のコード例は、ドキュメントビルダーを使用してドキュメントにブックマークを挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertBookmark-DocumentBuilderInsertBookmark.java" >}}

## フィールドの挿入

Microsoft Word文書内のフィールドは、フィールドコードとフィールド結果で構成されます。 フィールドコードは数式のようなもので、フィールドの結果は数式が生成する値です。 フィールドコードには、特定のアクションを実行するための追加の命令であるフィールドスイッチも含まれている場合があります。 キーボードショートカットAlt+F9を使用して、Microsoft Wordのドキュメント内のフィールドコードと結果の表示を切り替えることができます。 フィールドコードは中括弧(`{ }`)の間に表示されます。ドキュメント内にフィールドを作成するには[DocumentBuilder.insertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean)を使用します。 フィールドタイプ、フィールドコード、およびフィールド値を指定する必要があります。 特定のフィールドコードの構文がわからない場合は、まずMicrosoft Wordにフィールドを作成し、そのフィールドコードを表示するように切り替えます。
次のコード例では、DocumentBuilderを使用して差し込み項目をドキュメントに挿入します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertField-DocumentBuilderInsertField.java" >}}

## `Form`フィールドの挿入

フォームフィールドは、ユーザーとの"対話"を可能にする単語フィールドの特定のケースです。 Microsoft Wordのフォームフィールドには、textbox、Combobox、checkboxが含まれます。DocumentBuilderは、[DocumentBuilder.insertTextInput](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTextInput-java.lang.String-int-java.lang.String-java.lang.String-int)、[DocumentBuilder.insertCheckBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCheckBox-java.lang.String-boolean-boolean-int)、[DocumentBuilder.insertComboBox](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertComboBox-java.lang.String-java.lang.String---int)の各タイプのフォームフィールドをドキュメントに挿入するための特別なメソッドを提供します。 フォームフィールドに名前を指定すると、同じ名前のブックマークが自動的に作成されることに注意してください。

### テキスト入力の挿入

DocumentBuilder.insertTextInputテキストボックスを文書に挿入します。 次のコード例は、テキスト入力フォームフィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTextInputFormField-DocumentBuilderInsertTextInputFormField.java" >}}

### `CheckBox`の挿入

DocumentBuilderを呼び出します。insertCheckBox文書にcheckboxを挿入します。 次のコード例は、checkboxフォームフィールドをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertCheckBoxFormField-DocumentBuilderInsertCheckBoxFormField.java" >}}

### コンボボックスの挿入

DocumentBuilderを呼び出します。insertComboBoxコンボボックスをドキュメントに挿入します。 コンボボックスフォームフィールドをドキュメントに挿入する方法を次のコード例に示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertComboBoxFormField-DocumentBuilderInsertComboBoxFormField.java" >}}

## フィールドレベルでのロケールの挿入

顧客は今、フィールドレベルでロケールを指定することができ、より良い制御を達成することができます。 ロケールIdはDocumentBuilder内の各フィールドに関連付けることができます。 以下の例は、このオプションを使用する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

## HTMLの挿入

HTMLフラグメントまたはHTML文書全体を含むHTML文字列をWord文書に簡単に挿入できます。 この文字列をDocumentBuilderに渡すだけです。insertHtmlメソッド。 このメソッドの便利な実装の一つは、HTML文字列をデータベースに格納し、Mail Merge中にドキュメントに挿入して、ドキュメントビルダのさまざまなメソッドを 次のコード例は、DocumentBuilderを使用して文書にHTMLを挿入することを示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHtml-DocumentBuilderInsertHtml.java" >}}

## ハイパーリンクの挿入

DocumentBuilderを使用します。insertHyperlink文書にハイパーリンクを挿入します。 このメソッドは、ドキュメント内に表示されるリンクのテキスト、リンク先(URLまたはドキュメント内のブックマークの名前)、および`URL`がドキュメント内のブックマークの名前である場合にtrueにする必要があるブールパラメータの三つのパラメータを受け入れます。DocumentBuilder.insertHyperlinkは内部的にDocumentBuilderを呼び出します。insertField. このメソッドは常にURLの先頭と末尾にアポストロフィを追加します。 `Font`プロパティを使用して、ハイパーリンク表示テキストのフォント書式を明示的に指定する必要があることに注意してください。 次のコード例では、DocumentBuilderを使用してドキュメントにハイパーリンクを挿入します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 目次の挿入

[DocumentBuilder.insertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) メソッドを呼び出すと、ドキュメントの現在の位置に `TOC` (目次) フィールドを挿入できます。DocumentBuilder.insertTableOfContents メソッドは、ドキュメントに `TOC` フィールドのみを挿入します。目次を構築し、ページ番号に従って表示するには、フィールドの挿入後に両方の **Document.UpdateFields** メソッドを呼び出す必要があります。次のコード例は、ドキュメントに目次フィールドを挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertTableOfContents-DocumentBuilderInsertTableOfContents.java" >}}

## Oleオブジェクトの挿入

Oleオブジェクトが必要な場合は[DocumentBuilder.insertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.lang.String-boolean-java.lang.String-java.lang.String)を呼び出します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

## Oleオブジェクトを挿入するときにファイル名と拡張子を設定する

OLEパッケージは、OLEハンドラーが不明な場合に埋め込まれたオブジェクトを格納するためのレガシーで"文書化されていない"方法です。 Windows 3.1、95、98などの初期のWindowsバージョンには、任意のタイプのデータを文書に埋め込むために使用できるPackager.exeアプリケーションがありました。 現在、このアプリケーションはWindowsから除外されていますが、MSWordや他のアプリケーションは、OLEハンドラーが欠落しているか不明な場合にデータを埋め込むた OlePackageクラスはOLE Packageプロパティへのアクセスを許可します。次のコード例は、OLE Packageのファイル名、拡張子、表示名を設定する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

## OLEオブジェクトの生データへのアクセスを取得する

次のコード例は、`OleFormat.GetRawData`()メソッドを使用してOLEオブジェクトの生データを取得する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

## 水平ルールを文書に挿入する

次のコード例は、`DocumentBuilder.InsertHorizontalRule`メソッドを使用して水平ルール形状をドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.java" >}}

## 図形の操作

### インラインおよびフリーフローティング図形の挿入

`DocumentBuilder.InsertShape` メソッドを使用して、タイプとサイズが指定されたインライン シェイプと、位置、サイズ、テキスト ラップ タイプが指定されたフリー フローティング シェイプをドキュメントに挿入できます。`DocumentBuilder.InsertShape` メソッドを使用すると、ドキュメント モデルに DML シェイプを挿入できます。ドキュメントは、DML シェイプをサポートする形式で保存する必要があります。そうでない場合、ドキュメントの保存時に、このようなノードは VML シェイプに変換されます。次のコード例は、これらのタイプのシェイプをドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

### スニップ角の長方形を作成します。

Aspose.Wordsを使用してスニップ角の長方形を作成できます。 形のタイプは次のとおりですSingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded, とDiagonalCornersRounded。 DML図形は、これらの図形タイプで`DocumentBuilder.InsertShape`メソッドを使用して作成されます。 これらの型を使用してVML図形を作成することはできません。 "Shape"クラスのパブリックコンストラクタを使用して図形を作成しようとすると、"NotSupportedException"例外が発生します。 次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

### 数学XMLを持つ図形を図形としてDOMにインポートします

`LoadOptions.ConvertShapeToOfficeMath` プロパティを使用して、EquationXML を含む図形を Office Math オブジェクトに変換できます。このプロパティの既定値は、MS Word の動作に対応しています。つまり、数式 XML を含む図形は Office Math オブジェクトに変換されません。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-ConvertShapeToOfficeMath.java" >}}
