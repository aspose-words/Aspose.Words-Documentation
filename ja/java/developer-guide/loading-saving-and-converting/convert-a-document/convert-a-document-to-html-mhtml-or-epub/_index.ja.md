---
title: ドキュメントをHTML、MHTML、EPUBに変換する
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントをHTML、MHTML、EPUBに変換する
linktitle: ドキュメントをHTML、MHTML、EPUBに変換する
description: "使用条件 Aspose.Words お問い合わせ Java 文書をWordまたは他のサポートされているフォーマットからHTML、MHTML、またはEPUBに変換する。"
type: docs
weight: 20
url: /ja/java/convert-a-document-to-html-mhtml-or-epub/
---

HTML と MHTML のフローレイアウトのフォーマットのドキュメントも非常に人気があり、任意の web プラットフォームで使用できます。 そのため、ドキュメントを HTML や MHTML に変換することは重要な機能です。 Aspose.Wordsお問い合わせ

EPUB(「電子出版」の略)は、電子書籍の配布に一般的に使用されるHTMLベースのフォーマットです。 このフォーマットは完全にサポートされています Aspose.Words ほとんどの読書装置と互換性がある電子書籍を輸出するため。

## ドキュメントを変換する

HTML、MHTML、EPUBへの簡単な変換のために、 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) 方法積み過ぎは使用されます。 ドキュメントをファイルに保存したり、ストリームや明示的に出力文書保存形式を設定したり、ファイル名拡張子から定義したりすることができます。

次の例では、保存形式を指定してDOCXをHTMLに変換する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

ドキュメントをMHTMLまたはEPUBに変換するには、 `SaveFormat.MHTML` または `SaveFormat.EPUB` それぞれ。

## 往復情報でドキュメントを変換

HTMLフォーマットは多くのサポートをしていません Microsoft Word 機能と、可能な限り元のに近いドキュメントモデルを復元する必要がある場合は、HTMLファイル内の追加情報を保存する必要があります。 そのような情報は「往復情報」とも呼ばれます。 この目的のために、 Aspose.Words HTML、MHTML、EPUBへの保存時に往復情報をエクスポートする機能を提供します。 [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) 宿泊施設 往復情報を保存することで、リストされたフォーマットの読み込み中にタブ、コメント、ヘッダー、フッターなどのドキュメントプロパティを復元できます。 **Document** オブジェクト。

デフォルト値は **true** HTML と HTML **false** MHTMLとEPUBの場合:

- いつ **true**, 往復情報は - aw - *対応するHTML要素のCSSプロパティとしてエクスポートされます
- いつ **false**, 生成されたファイルに出力される往復情報がない

次のコードの例では、DOCX から HTML にドキュメントを変換する際に、往復情報をエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\).doc です。

{{% /alert %}}

## HTMLへの変換時に保存オプションを指定する

Aspose.Words デフォルトまたはカスタム保存オプションを使用してWord文書をHTMLに変換できます。 カスタム保存オプションの例を以下に示します。

### リソースを保存するためのフォルダを指定します

使用方法 Aspose.Words ドキュメントがHTMLに変換されると、画像、フォント、および外部CSSなどのすべてのリソースが保存される物理的なフォルダを指定できます。 デフォルトでは、これは空の文字列です。

指定する [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) プロパティは、すべてのリソースが書かれるべきフォルダを設定する最も簡単な方法です。 個々の特性を、例えば使用してもいいです [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) フォントを指定されたフォルダに保存し、 [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) 指定したフォルダに画像を保存します。 相対パスを指定すると、 **FontsFolder** そして、 **ImagesFolder** コードアセンブリが配置されているフォルダを参照してください。 **ResourceFolder** そして、 [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) HTML ドキュメントが配置されている出力フォルダを参照してください。

この例では、 **ResourceFolder** 相対パスを指定します。 このパスは、HTML文書が保存される出力フォルダを指します。 の値は、 **ResourceFolderAlias** プロパティは、すべてのリソースの URL を作成するために使用されます。

次のコードの例では、これらのプロパティで動作する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

使い方 [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) プロパティは、HTML文書に書かれているすべてのリソースのURIを構築するために使用されるフォルダの名前を指定することもできます。 これは、すべてのリソースファイルに対して URI が生成される方法を指定する最も簡単な方法です。 画像とフォントを別々に指定できます。 [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) そして、 [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) それぞれプロパティ。

ただし、CSSには個別のプロパティはありません。 行動の行動 **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** そして、 **CssStyleSheetFileName** プロパティは変更されません。 注意: **CssStyleSheetFileName** プロパティはフォルダー名とファイル名を指定するために使われます。

- - - **ResourceFolder** 指定したフォルダよりも優先度が低い **FontsFolder**, **ImagesFolder**, そして、 **CssStyleSheetFileName**お問い合わせ 指定されたフォルダが **ResourceFolder** 存在しない、自動的に作成されます。
- - - **ResourceFolderAlias** 優先度が低い **FontsFolderAlias** そして、 **ImagesFolderAlias**お問い合わせ お問い合わせ **ResourceFolderAlias** は空です。 **ResourceFolder** リソースの URI を作成するためにプロパティが使用されます。 お問い合わせ **ResourceFolderAlias** "" (dot) に設定されると、リソース URI はパスを指定せずにファイル名のみを含む。

### エクスポートベース64 エンコードフォントリソース

Aspose.Words フォントリソースがBase64エンコーディングでHTMLに埋め込まれるべきかどうかを指定する機能を提供します。 これを実行するには、 [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) プロパティ – これは、拡張機能です [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) プロパティ. デフォルトでは、その値は **false**, フォントは別のファイルに書かれています。 しかし、このオプションが設定されている場合 **true**, フォントはBase64エンコーディングのドキュメントのCSSに埋め込まれます。 ザ・オブ・ザ・ **輸出FontsAsBase64** プロパティは HTML 形式にのみ影響し、EPUB や MHTML には影響しません。

次のコードの例では、Base64 エンコードされたフォントをHTMLにエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## EPUBへの変換時に保存オプションを指定する

Aspose.Words デフォルトまたはカスタム保存オプションを使用して、Word文書をEPUB形式に変換できます。 インスタンスを渡すことでオプションの数を指定できます。 [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) お問い合わせ [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) メソッド。

次のコードの例では、Word文書をEPUBに変換し、いくつかのカスタム保存オプションを指定する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)お問い合わせ

{{% /alert %}}

## お問い合わせ

- [HTMLの投稿](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
