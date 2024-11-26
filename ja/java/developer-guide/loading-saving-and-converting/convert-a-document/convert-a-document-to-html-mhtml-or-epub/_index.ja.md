---
title: ドキュメントをHTML、MHTML、またはEPUBに変換します
second_title: Aspose.WordsのためのJava
articleTitle: ドキュメントをHTML、MHTML、またはEPUBに変換します
linktitle: ドキュメントをHTML、MHTML、またはEPUBに変換します
description: "文書をWordまたはその他のサポートされている形式からHTML、MHTML、またはEPUBに変換するには、JavaにAspose.Wordsを使用します。"
type: docs
weight: 20
url: /ja/java/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

HTMLおよびMHTMLフローレイアウト形式の文書も非常に一般的であり、任意のwebプラットフォームで使用できます。 そのため、文書をHTMLとMHTMLに変換することはAspose.Wordsの重要な機能です。

EPUB("Electronic Publication"の略)は、電子書籍の配布に一般的に使用されるHTMLベースのフォーマットです。 この形式は、ほとんどの読書デバイスと互換性のある電子書籍をエクスポートするためにAspose.Wordsで完全にサポートされています。

## 文書を変換する

HTML、MHTML、またはEPUBへの単純な変換には、[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int)メソッドオーバーロードのいずれかが使用されます。 ドキュメントをファイルまたはストリームに保存し、出力ドキュメントの保存形式を明示的に設定したり、ファイル名拡張子から定義したりできます。

次の例は、保存形式を指定してDOCXをHTMLに変換する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

文書をMHTMLまたはEPUBに変換するには、それぞれ`SaveFormat.MHTML`または`SaveFormat.EPUB`を使用します。

## 往復情報を含む文書を変換する

HTML形式は多くのMicrosoft Word機能をサポートしておらず、可能な限り元のものに近いドキュメントモデルを復元する必要がある場合は、HTMLファイル内に追加情報を保存する必要があります。 このような情報は、"往復情報"とも呼ばれます。 この目的のために、Aspose.Wordsは、[ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation)プロパティを使用してHTML、MHTML、またはEPUBに保存するときにラウンドトリップ情報をエクスポートする機能を提供します。 往復情報を保存すると、リストされた書式の文書を**Document**オブジェクトにロードする際に、タブ、コメント、ヘッダー、フッターなどの文書のプロパティを復元で

デフォルト値はHTMLの場合は**true**、MHTMLとEPUBの場合は**false**です:

- **true**の場合、ラウンドトリップ情報は、対応するHTML要素の-aw-*CSSプロパティとしてエクスポートされます
- **false**の場合、生成されたファイルに出力されるラウンドトリップ情報はありません

次のコード例は、ドキュメントをDOCXからHTMLに変換するときに往復情報をエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## HTMLに変換するときに保存オプションを指定します

Aspose.Words既定またはカスタム保存オプションを使用してWord文書をHTMLに変換できます。 以下では、カスタム保存オプションの例をいくつか説明します。

### リソースを保存するためのフォルダを指定します

Aspose.Wordsを使用すると、文書がHTMLに変換されたときに画像、フォント、外部CSSなどのすべてのリソースが保存される物理フォルダを指定できます。 デフォルトでは、これは空の文字列です。

[ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder)プロパティを指定することは、すべてのリソースを書き込むフォルダを設定する最も簡単な方法です。 フォントを指定したフォルダに保存する[FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder)や画像を指定したフォルダに保存する[ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder)など、個々のプロパティを使用できます。 相対パスが指定されている場合、**FontsFolder**と**ImagesFolder**はコードアセンブリが配置されているフォルダーを参照し、**ResourceFolder**と[CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName)はHTMLドキュメントが配置されている出力フォル

この例では、**ResourceFolder**は相対パスを指定します。 このパスは、HTMLドキュメントが保存されている出力フォルダーを参照します。 **ResourceFolderAlias**プロパティの値は、すべてのリソースに対してURLsを作成するために使用されます。

次のコード例は、これらのプロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias)プロパティを使用して、HTML文書に書き込まれたすべてのリソースのURIsを構築するために使用されるフォルダの名前を指定することもできます。 これは、すべてのリソースファイルに対してURIsを生成する方法を指定する最も簡単な方法です。 [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias)プロパティと[FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias)プロパティを使用して、画像とフォントに同じ情報を個別に指定することができます。

ただし、CSSには個々のプロパティはありません。 の動作**FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** および**CssStyleSheetFileName**プロパティは変更されません。 **CssStyleSheetFileName**プロパティは、フォルダ名とファイル名の両方を指定するために使用されることに注意してください。

- **ResourceFolder**は、**FontsFolder**、**ImagesFolder**、**CssStyleSheetFileName**で指定されたフォルダよりも優先度が低くなります。 **ResourceFolder**で指定したフォルダが存在しない場合は、自動的に作成されます。
- **ResourceFolderAlias**の優先度は**FontsFolderAlias**や**ImagesFolderAlias**よりも低くなります。 **ResourceFolderAlias**が空の場合、**ResourceFolder**プロパティの値はリソースURIsを作成するために使用されます。 **ResourceFolderAlias**が"."(ドット)に設定されている場合、リソースURIsにはパスを指定せずにファイル名のみが含まれます。

### Base64エンコーディングフォントリソースのエクスポート

Aspose.Wordsは、Base64エンコーディングのHTMLにフォントリソースを埋め込むかどうかを指定する機能を提供します。 これを実行するには、[ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64)プロパティを使用します–これは[ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources)プロパティの拡張です。 デフォルトでは、その値は**false**であり、フォントは別々のファイルに書き込まれます。 ただし、このオプションを**true**に設定すると、フォントはBase64エンコーディングでドキュメントのCSSに埋め込まれます。 **ExportFontsAsBase64**プロパティはHTML形式にのみ影響し、EPUBとMHTMLには影響しません。

Base64でエンコードされたフォントをHTMLにエクスポートする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## EPUBに変換するときに保存オプションを指定します

Aspose.Words既定またはカスタム保存オプションを使用してWord文書をEPUB形式に変換できます。 [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/)のインスタンスを[Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions)メソッドに渡すことで、いくつかのオプションを指定できます。

次のコード例は、いくつかのカスタム保存オプションを指定してWord文書をEPUBに変換する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## また見て下さい

- [HTMLに保存するときに往復情報をエクスポートする方法](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
