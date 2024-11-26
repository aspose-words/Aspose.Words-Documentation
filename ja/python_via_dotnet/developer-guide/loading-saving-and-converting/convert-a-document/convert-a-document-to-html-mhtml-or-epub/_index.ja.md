---
title: ドキュメントをHTMLに変換
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを HTML、MHTML、または EPUB に変換する
linktitle: ドキュメントを HTML、MHTML、または EPUB に変換する
description: "Python を使用すると、ドキュメントをほぼすべての形式から HTML または MHTML に変換できるだけでなく、EPUB 形式にも変換できます。出力ドキュメントを管理するための保存オプションを指定することもできます。"
type: docs
weight: 20
url: /ja/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

HTML および MHTML フロー レイアウト形式のドキュメントも非常に人気があり、あらゆる Web プラットフォームで使用できます。そのため、ドキュメントを HTML および MHTML に変換することは、Aspose.Words の重要な機能です。

EPUB (「Electronic Publication」の略) は、電子書籍の配布に一般的に使用される HTML ベースの形式です。この形式は、ほとんどの読書デバイスと互換性のある電子書籍のエクスポート用に Aspose.Words で完全にサポートされています。

## ドキュメントを変換する

HTML、MHTML、または EPUB への単純な変換には、[save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッド オーバーロードの 1 つが使用されます。ドキュメントをファイルまたはストリームに保存し、出力ドキュメントの保存形式を明示的に設定したり、ファイル名拡張子から定義したりできます。

次の例は、保存形式を指定して DOCX を HTML に変換する方法を示しています。

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

ドキュメントを MHTML または EPUB に変換するには、それぞれ [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) または [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) を使用します。

## ラウンドトリップ情報を含むドキュメントの変換

HTML 形式は多くの Microsoft Word 機能をサポートしていないため、ドキュメント モデルをできるだけオリジナルに近づける必要がある場合は、HTML ファイル内に追加情報を保存する必要があります。このような情報は「ラウンドトリップ情報」とも呼ばれます。この目的のために、Aspose.Words は、**往復情報のエクスポート** プロパティを使用して HTML、MHTML、または EPUB に保存するときにラウンドトリップ情報をエクスポートする機能を提供します。ラウンドトリップ情報を保存すると、リストされた形式のドキュメントを [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトにロードするときに、タブ、コメント、ヘッダー、フッターなどのドキュメント プロパティを復元できます。

デフォルト値は、HTML の場合は *True*、MHTML および EPUB の場合は *False* です。

- *True* の場合、ラウンドトリップ情報は - aw - * 対応する HTML 要素の CSS プロパティとしてエクスポートされます
- *False*の場合、生成されるファイルに出力されるラウンドトリップ情報はありません

次のコード例は、ドキュメントを DOCX から HTML に変換するときにラウンドトリップ情報をエクスポートする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

## HTML への変換時の保存オプションの指定

Aspose.Words では、デフォルトまたはカスタムの保存オプションを使用して Word 文書を HTML に変換できます。カスタム保存オプションの例をいくつか以下に説明します。

### リソースを保存するフォルダーを指定する

Aspose.Words を使用すると、ドキュメントを HTML に変換するときに、画像、フォント、外部 CSS などのすべてのリソースが保存される物理フォルダーを指定できます。デフォルトでは、これは空の文字列です。

[resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) プロパティを指定することは、すべてのリソースを書き込むフォルダーを設定する最も簡単な方法です。フォントを指定したフォルダーに保存する [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) や画像を指定したフォルダーに保存する [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) など、個別のプロパティを使用できます。相対パスが指定されている場合、[fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) と [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) はコード アセンブリが配置されているフォルダーを参照し、[resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) と [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) は HTML ドキュメントが配置されている出力フォルダーを参照します。

この例では、[resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) は相対パスを指定します。このパスは、HTML ドキュメントが保存される出力フォルダーを指します。 [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) プロパティの値は、すべてのリソースの URL を作成するために使用されます。

次のコード例は、これらのプロパティを操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

[resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) プロパティを使用すると、HTML ドキュメントに書き込まれるすべてのリソースの URI を構築するために使用されるフォルダーの名前を指定することもできます。これは、すべてのリソース ファイルに対して URI を生成する方法を指定する最も簡単な方法です。同じ情報を、それぞれ [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) プロパティと [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) プロパティを介して画像とフォントに個別に指定できます。

ただし、CSS には個別のプロパティはありません。 [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/)、[fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/)、[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/)、[images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/)、および [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) プロパティの動作は変更されません。 [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) プロパティはフォルダー名とファイル名の両方の指定に使用されることに注意してください。

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) は、[fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/)、[images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/)、および [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) で指定されたフォルダーよりも優先度が低くなります。 [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) で指定したフォルダーが存在しない場合は、自動的に作成されます。
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) は [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) や [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) よりも優先順位が低くなります。 [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) が空の場合、[resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) プロパティの値を使用してリソース URI が作成されます。 [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) が「.」に設定されている場合(ドット) の場合、リソース URI にはパスを指定せずにファイル名のみが含まれます。

### Base64 エンコーディング フォント リソースのエクスポート

Aspose.Words は、フォント リソースを Base64 エンコーディングで HTML に埋め込むかどうかを指定する機能を提供します。これを実行するには、[export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) プロパティを使用します。これは [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/) プロパティの拡張機能です。デフォルトでは、その値は *False* で、フォントは別のファイルに書き込まれます。ただし、このオプションが *True* に設定されている場合、フォントは Base64 エンコーディングでドキュメントの CSS に埋め込まれます。 [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) プロパティは HTML 形式にのみ影響し、EPUB および MHTML には影響しません。

次のコード例は、Base64 でエンコードされたフォントを HTML にエクスポートする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## EPUB への変換時の保存オプションの指定

Aspose.Words では、デフォルトまたはカスタムの保存オプションを使用して Word 文書を EPUB 形式に変換できます。 [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) のインスタンスを [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドに渡すことで、いくつかのオプションを指定できます。

次のコード例は、いくつかのカスタム保存オプションを指定して Word 文書を EPUB に変換する方法を示しています。

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

