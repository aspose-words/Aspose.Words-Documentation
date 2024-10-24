---
title: 文書をHTML、MHTML、またはEPUBに変換する
second_title: C++の場合Aspose.Words
articleTitle: 文書をHTML、MHTML、またはEPUBに変換する
linktitle: 文書をHTML、MHTML、またはEPUBに変換する
description: "文書をほぼすべての形式からHTMLまたはMHTMLに変換し、C++を使用してEPUB形式に変換します。 また、出力文書を管理するための保存オプションを指定することもできます。"
type: docs
weight: 20
url: /ja/cpp/convert-a-document-to-html-mhtml-or-epub/
---

HTMLおよびMHTMLフローレイアウト形式の文書も非常に一般的であり、任意のwebプラットフォームで使用できます。 そのため、文書をHTMLおよびMHTMLに変換することはAspose.Wordsの重要な機能です。

EPUB（「Electronic Publication」の略）は、電子書籍の配布に一般的に使用されるHTMLベースの形式です。 この形式は、ほとんどの読書デバイスと互換性のある電子書籍をエクスポートするためにAspose.Wordsで完全にサポートされています。

## 文書を変換する

HTML、MHTML、またはEPUBへの単純な変換には、[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドオーバーロードのいずれかが使用されます。 ドキュメントをファイルまたはストリームに保存し、出力ドキュメントの保存形式を明示的に設定したり、ファイル名拡張子から定義したりできます。

次の例は、保存形式を指定してDOCXをHTMLに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

文書をMHTMLまたはEPUBに変換するには、それぞれ`SaveFormat.Mhtml`または`SaveFormat.Epub`を使用します。

## 往復情報を含む文書を変換する

HTML形式は多くのMicrosoft Word機能をサポートしておらず、可能な限り元のものに近いドキュメントモデルを復元する必要がある場合は、HTMLファイル内に追加情報を保存する必要があります。 このような情報は、"往復情報"とも呼ばれます。 この目的のために、Aspose.Wordsは、[ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/)プロパティを使用してHTML、MHTML、またはEPUBに保存するときにラウンドトリップ情報をエクスポートする機能を提供します。 往復情報を保存すると、リストされた書式のドキュメントを**Document**オブジェクトにロードするときに、タブ、コメント、ヘッダー、フッターなどのドキュメントプ

デフォルト値は、HTMLの場合は**true**、MHTMLとEPUBの場合は**false**です:

- **true**の場合、往復情報は対応するHTML要素の-aw-*CSSプロパティとしてエクスポートされます
- **false**の場合、生成されたファイルに出力されるラウンドトリップ情報はありません

次のコード例は、ドキュメントをDOCXからHTMLに変換するときに往復情報をエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## HTMLへの変換時に保存オプションを指定する

Aspose.Words既定またはカスタム保存オプションを使用してWord文書をHTMLに変換できます。 以下では、カスタム保存オプションの例をいくつか説明します。

### リソースを保存するためのフォルダを指定します

Aspose.Wordsを使用すると、ドキュメントがHTMLに変換されるときに、画像、フォント、外部CSSなどのすべてのリソースが保存される物理フォルダを指定できます。 デフォルトでは、これは空の文字列です。

[ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/)プロパティを指定することは、すべてのリソースを書き込むフォルダを設定する最も簡単な方法です。 フォントを指定したフォルダに保存する[FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/)や画像を指定したフォルダに保存する[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/)など、個々のプロパティを使用できます。 相対パスが指定されている場合、**FontsFolder**と**ImagesFolder**はコードアセンブリが配置されているフォルダーを参照し、**ResourceFolder**と[CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/)はHTMLドキュメントが配置されている出力フォル

この例では、**ResourceFolder**は相対パスを指定します。 このパスは、HTMLドキュメントが保存されている出力フォルダーを参照します。 **ResourceFolderAlias**プロパティの値は、すべてのリソースに対してURLsを作成するために使用されます。

次のコード例は、これらのプロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/)プロパティを使用して、HTMLドキュメントに書き込まれたすべてのリソースのURIsを構築するために使用されるフォルダの名前を指定することもで これは、すべてのリソースファイルに対してURIsを生成する方法を指定する最も簡単な方法です。 [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/)プロパティと[FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/)プロパティを使用して、画像とフォントに同じ情報を個別に指定することができます。

ただし、CSSには個々のプロパティはありません。 の動作**FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** および**CssStyleSheetFileName**プロパティは変更されません。 **CssStyleSheetFileName**プロパティは、フォルダ名とファイル名の両方を指定するために使用されることに注意してください。

- **ResourceFolder**は、**FontsFolder**、**ImagesFolder**、**CssStyleSheetFileName**で指定されたフォルダよりも優先度が低くなります。 **ResourceFolder**で指定したフォルダが存在しない場合は、自動的に作成されます。
- **ResourceFolderAlias**の優先度は**FontsFolderAlias**や**ImagesFolderAlias**よりも低くなります。 **ResourceFolderAlias**が空の場合、**ResourceFolder**プロパティの値はリソースURIsを作成するために使用されます。 **ResourceFolderAlias**が"."(ドット)に設定されている場合、リソースURIsにはパスを指定せずにファイル名のみが含まれます。

### Base64エンコーディングフォントリソースのエクスポート

Aspose.WordsフォントリソースをBase64エンコーディングでHTMLに埋め込むかどうかを指定する機能を提供します。 これを実行するには、[ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/)プロパティを使用します–これは[ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/)プロパティの拡張です。 デフォルトでは、その値は**false**であり、フォントは別々のファイルに書き込まれます。 ただし、このオプションが**true**に設定されている場合、フォントはBase64エンコーディングでドキュメントのCSSに埋め込まれます。 **ExportFontsAsBase64**プロパティはHTML形式にのみ影響し、EPUBおよびMHTMLには影響しません。

Base64でエンコードされたフォントをHTMLにエクスポートする方法を次のコード例に示します:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## EPUBへの変換時に保存オプションを指定する

Aspose.Wordsデフォルトまたはカスタム保存オプションを使用して、Word文書をEPUB形式に変換できます。 [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/)のインスタンスを`Save`メソッドに渡すことで、いくつかのオプションを指定できます。

次のコード例は、いくつかのカスタム保存オプションを指定してWord文書をEPUBに変換する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
