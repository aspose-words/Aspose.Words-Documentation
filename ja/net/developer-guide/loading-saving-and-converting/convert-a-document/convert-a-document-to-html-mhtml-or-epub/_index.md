---
title: C# でドキュメントを HTML、MHTML、または EPUB に変換する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを HTML、MHTML、または EPUB に変換する
linktitle: ドキュメントを HTML、MHTML、または EPUB に変換する
description: "C# を使用すると、ドキュメントをほぼすべての形式から HTML または MHTML に変換できるだけでなく、EPUB 形式にも変換できます。出力ドキュメントを管理するための保存オプションを指定することもできます。"
type: docs
weight: 20
url: /ja/net/convert-a-document-to-html-mhtml-or-epub/
---

HTML および MHTML フロー レイアウト形式のドキュメントも非常に人気があり、あらゆる Web プラットフォームで使用できます。そのため、ドキュメントを HTML および MHTML に変換することは、Aspose.Words の重要な機能です。

EPUB (「Electronic Publication」の略) は、電子書籍の配布に一般的に使用される HTML ベースの形式です。この形式は、ほとんどの読書デバイスと互換性のある電子書籍のエクスポート用に Aspose.Words で完全にサポートされています。

## ドキュメントを変換する

HTML、MHTML、または EPUB への単純な変換には、[Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) メソッド オーバーロードの 1 つが使用されます。ドキュメントをファイルまたはストリームに保存し、出力ドキュメントの保存形式を明示的に設定したり、ファイル名拡張子から定義したりできます。

次の例は、保存形式を指定して DOCX を HTML に変換する方法を示しています。

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

ドキュメントを MHTML または EPUB に変換するには、それぞれ `SaveFormat.Mhtml` または `SaveFormat.Epub` を使用します。

## ラウンドトリップ情報を含むドキュメントの変換

HTML 形式は多くの Microsoft Word 機能をサポートしていないため、ドキュメント モデルをできるだけオリジナルに近づける必要がある場合は、HTML ファイル内に追加情報を保存する必要があります。このような情報は「ラウンドトリップ情報」とも呼ばれます。この目的のために、Aspose.Words は、[ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) プロパティを使用して HTML、MHTML、または EPUB に保存するときにラウンドトリップ情報をエクスポートする機能を提供します。ラウンドトリップ情報を保存すると、リストされた形式のドキュメントを **Document** オブジェクトにロードするときに、タブ、コメント、ヘッダー、フッターなどのドキュメント プロパティを復元できます。

デフォルト値は、HTML の場合は **true**、MHTML および EPUB の場合は **false** です。

- **true** の場合、ラウンドトリップ情報は - aw - * 対応する HTML 要素の CSS プロパティとしてエクスポートされます
- **false**の場合、生成されるファイルに出力されるラウンドトリップ情報はありません

次のコード例は、ドキュメントを DOCX から HTML に変換するときにラウンドトリップ情報をエクスポートする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

## HTML への変換時の保存オプションの指定

Aspose.Words では、デフォルトまたはカスタムの保存オプションを使用して Word 文書を HTML に変換できます。カスタム保存オプションの例をいくつか以下に説明します。

### リソースを保存するフォルダーを指定する

Aspose.Words を使用すると、ドキュメントを HTML に変換するときに、画像、フォント、外部 CSS などのすべてのリソースが保存される物理フォルダーを指定できます。デフォルトでは、これは空の文字列です。

[ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) プロパティを指定することは、すべてのリソースを書き込むフォルダーを設定する最も簡単な方法です。フォントを指定したフォルダーに保存する [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) や画像を指定したフォルダーに保存する [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) など、個別のプロパティを使用できます。相対パスが指定されている場合、**FontsFolder** と **ImagesFolder** はコード アセンブリが配置されているフォルダーを参照し、**ResourceFolder** と [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) は HTML ドキュメントが配置されている出力フォルダーを参照します。

この例では、**ResourceFolder** は相対パスを指定します。このパスは、HTML ドキュメントが保存される出力フォルダーを指します。 **ResourceFolderAlias** プロパティの値は、すべてのリソースの URL を作成するために使用されます。

次のコード例は、これらのプロパティを操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

[ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) プロパティを使用すると、HTML ドキュメントに書き込まれるすべてのリソースの URI を構築するために使用されるフォルダーの名前を指定することもできます。これは、すべてのリソース ファイルに対して URI を生成する方法を指定する最も簡単な方法です。同じ情報を、それぞれ [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) プロパティと [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) プロパティを介して画像とフォントに個別に指定できます。

ただし、CSS には個別のプロパティはありません。 **FontsFolder**、**FontsFolderAlias**、**ImagesFolder**、**ImagesFolderAlias**、および **CssStyleSheetFileName** プロパティの動作は変更されません。 **CssStyleSheetFileName** プロパティはフォルダー名とファイル名の両方の指定に使用されることに注意してください。

- **ResourceFolder** は、**FontsFolder**、**ImagesFolder**、および **CssStyleSheetFileName** で指定されたフォルダーよりも優先度が低くなります。 **ResourceFolder** で指定したフォルダーが存在しない場合は、自動的に作成されます。
- **ResourceFolderAlias** は **FontsFolderAlias** や **ImagesFolderAlias** よりも優先順位が低くなります。 **ResourceFolderAlias** が空の場合、**ResourceFolder** プロパティの値を使用してリソース URI が作成されます。 **ResourceFolderAlias** が「.」に設定されている場合(ドット) の場合、リソース URI にはパスを指定せずにファイル名のみが含まれます。

### Base64 エンコーディング フォント リソースのエクスポート

Aspose.Words は、フォント リソースを Base64 エンコーディングで HTML に埋め込むかどうかを指定する機能を提供します。これを実行するには、[ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) プロパティを使用します。これは [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) プロパティの拡張機能です。デフォルトでは、その値は **false** で、フォントは別のファイルに書き込まれます。ただし、このオプションが **true** に設定されている場合、フォントは Base64 エンコーディングでドキュメントの CSS に埋め込まれます。 **フォントをBase64としてエクスポート** プロパティは HTML 形式にのみ影響し、EPUB および MHTML には影響しません。

次のコード例は、Base64 でエンコードされたフォントを HTML にエクスポートする方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## EPUB への変換時の保存オプションの指定

Aspose.Words では、デフォルトまたはカスタムの保存オプションを使用して Word 文書を EPUB 形式に変換できます。 [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) のインスタンスを [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) メソッドに渡すことで、いくつかのオプションを指定できます。

次のコード例は、いくつかのカスタム保存オプションを指定して Word 文書を EPUB に変換する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

## 関連項目

- [HTML に保存するときにラウンドトリップ情報をエクスポートする方法](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
