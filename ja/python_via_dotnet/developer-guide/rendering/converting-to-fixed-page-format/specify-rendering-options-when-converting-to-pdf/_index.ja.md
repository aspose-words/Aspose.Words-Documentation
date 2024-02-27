---
title: PDF に変換するときのオプション
second_title: Python via .NET用Aspose.Words
articleTitle: PDF への変換時のレンダリング オプションの指定
linktitle: PDF への変換時のレンダリング オプションの指定
description: "Python を使用して、高度なオプションを使用してドキュメントを PDF に変換します。 PdfSaveOptions を使用して、ドキュメントを PDF 形式で保存した結果を変更します。"
type: docs
weight: 20
url: /ja/python-net/specify-rendering-options-when-converting-to-pdf/
---

PDF 形式は固定ページ形式であり、ユーザーの間で非常に人気があり、PDF ドキュメントはどのデバイスでも同じように見えるため、さまざまなアプリケーションで広くサポートされています。そのため、PDF への変換は Aspose.Words の重要な機能です。

PDF は複雑な形式です。ドキュメントを PDF に変換するプロセスでは、レイアウト計算を含むいくつかの段階の計算が必要です。これらの段階には複雑な計算が含まれるため、時間がかかります。また、PDF 形式自体はかなり複雑です。これには、特定のファイル構造、グラフィックス モデル、およびフォントの埋め込みがあります。さらに、文書構造タグ、暗号化、デジタル署名、編集可能なフォームなどの複雑な出力機能も備えています。

Aspose.Words レイアウト エンジンは、Microsoft Word のページ レイアウト エンジンの動作方法を模倣しています。したがって、Aspose.Words は、PDF 出力ドキュメントを Microsoft Word で表示されるものにできるだけ近づけます。追加のオプションを指定する必要がある場合があります。これは、ドキュメントを PDF 形式で保存する結果に影響を与える可能性があります。これらのオプションは、PDF 出力の表示方法を決定するプロパティを含む [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) クラスを使用して指定できます。

[PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) の使用例をいくつか以下に示します。

{{% alert color="primary" %}}

現在、PDF/A-1 および PDF/A-2 形式で保存することもできます。 PDF/A形式では、出力ファイルサイズが通常のPDFファイルサイズより大きくなりますのでご注意ください。

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) と [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) は廃止済みとしてマークされています。

PDF/A について詳しくは、次の記事「PDF/A への変換機能を学ぶ」を参照してください。

{{% /alert %}}

## 入力可能なフォームを含む PDF ドキュメントの作成

Microsoft Word ドキュメントから入力可能なフォームを、プレーン テキストの代わりに入力可能なフォームを持つ出力 PDF にエクスポートすることもできます。 [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) プロパティを使用して、入力可能なフォームを含む PDF としてドキュメントを保存します。

Microsoft Word とは対照的に、PDF 形式では、テキストボックス、コンボボックス、チェックボックスなど、編集可能なフォームのオプションの数が限られていることに注意してください。 Microsoft Word には、カレンダーの日付ピッカーなど、より多くの種類のフォームがあります。一般に、PDF で Microsoft Word の動作を完全に模倣することはできません。したがって、複雑な場合には、PDF 出力が Microsoft Word で表示されるものと異なる場合があります。

以下のコード例は、指定された Jpeg 圧縮と品質で入力可能なフォームを含む PDF としてドキュメントを保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## ドキュメント構造とカスタム プロパティのエクスポート

[export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) プロパティを使用すると、ドキュメント構造を PDF 出力にエクスポートできます。

PDF 論理構造機能は、文書コンテンツ構造に関する情報を PDF ファイルに組み込むためのメカニズムを提供します。 Aspose.Words は、段落、リスト、表、脚注/文末脚注など、Microsoft Word ドキュメントの構造に関する情報を保存します。

次の例は、ドキュメントの構造を維持しながらドキュメントを PDF 形式で保存する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words では、ドキュメントのカスタム プロパティを PDF にエクスポートすることもできます。これを次の例で示します。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## 出力 PDF のブックマークと見出しからアウトラインをエクスポートする

ブックマークを出力 PDF のアウトラインとしてエクスポートする場合は、[default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/) プロパティを使用できます。このプロパティは、Microsoft Word ブックマークが表示されるドキュメント アウトラインのデフォルト レベルを指定します。ドキュメントのヘッダー/フッターにブックマークが含まれている場合は、出力 PDF でブックマークをエクスポートする方法を指定するために、[header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) プロパティを [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) または [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) に設定できます。 [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) の値が [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none) の場合、ヘッダー/フッターのブックマークはエクスポートされません。

以下のコード例は、セクションの最初のヘッダー/フッターからブックマークをエクスポートする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

この例の出力 PDF を以下に示します。

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

[header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) が [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) に設定されており、ドキュメントに偶数と奇数のヘッダー/フッター、または最初のページの別のヘッダー/フッターがある場合、セクション内の最初の一意のヘッダー/フッターに対してブックマークがエクスポートされます。

[headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/) プロパティを使用して、出力 PDF の見出しをエクスポートすることもできます。このプロパティは、ドキュメントのアウトラインに何レベルの見出しを含めるかを指定します。

以下のコード例は、3 つのレベルで見出しをエクスポートする方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

この例の出力 PDF を以下に示します。

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

ブックマークまたは見出しナビゲーションは、さまざまな PDF ビューアで異なる外観になる場合があります。さらに、一部のアプリケーションでは、ブックマークや見出しナビゲーションが UI で利用できません。

{{% /alert %}}

## 画像をダウンサンプリングしてドキュメント サイズを削減する

Aspose.Words は、[downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/) プロパティを使用して、出力 PDF サイズを削減するために画像をダウンサンプリングする機能を提供します。ダウンサンプリングは、[downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/) プロパティでデフォルトで有効になっています。

[resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/) プロパティで特定の解像度を設定したり、[resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/) プロパティで解像度のしきい値を設定したりすることも可能であることに注意してください。 2 番目のケースでは、画像の解像度がしきい値よりも小さい場合、ダウンサンプリングは適用されません。

以下のコード例は、出力 PDF ドキュメント内の画像の解像度を変更する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

解像度はページ上の実際の画像サイズに基づいて計算されます。

## Adobe PDF 形式でのフォントの埋め込み

Aspose.Words を使用すると、結果の PDF ドキュメントにフォントを埋め込む方法を制御することもできます。 Adobe PDF ドキュメントをどのマシンでも正しくレンダリングできるようにするには、フォントを Adobe PDF ドキュメントに埋め込む必要があります (フォント レンダリングの詳細については、[TrueType フォントの使用](/words/ja/python-net/using-truetype-fonts/) セクションを参照してください)。デフォルトでは、Aspose.Words はドキュメントで使用されているフォントのサブセットを生成された PDF に埋め込みます。この場合、文書内で使用されているglyph（文字）のみがPDFに保存されます。

### フルフォントを使用する場合とサブセットを使用する場合

Aspose.Words に完全なフォントを埋め込むオプションを指定する方法があります。さらなる詳細と、各設定の長所と短所を以下の表で説明します。

| フォント埋め込みモード |  利点 | 短所 |
|  :-  |  :-  |  :-  |
|  `Full`  | 後でテキストを追加または変更して、結果の PDF を編集する場合に便利です。すべてのフォントが含まれているため、すべての glyph が存在します。 | 一部のフォントは大きい (数メガバイト) ため、サブセット化せずにフォントを埋め込むと、出力ファイルが大きくなる可能性があります。 |
|  `Subset`  | サブセット化は、出力ファイルのサイズを小さくしたい場合に便利です。 | <p>ユーザーは、出力 PDF ドキュメント内のサブセット化されたフォントを使用してテキストを完全に追加または編集することはできません。これは、フォントのすべての glyph が存在するわけではないためです。</p>

<p>複数の PDF がサブセット化されたフォントを使用して保存され、結合された場合、結合された PDF ドキュメントには、多くの不要なサブセットを含むフォントが含まれる可能性があります。</p> |

### PDF への完全なフォントの埋め込み

[embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) プロパティを使用すると、Aspose.Words が出力 PDF ドキュメントにフォントを埋め込む方法を指定できます。

- 出力 PDF ドキュメントに完全なフォントを埋め込むには、[embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) を *True* に設定します。
- PDF に保存するときにフォントをサブセット化するには、[embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) を *False* に設定します

次の例は、出力 PDF ドキュメントに完全なフォントを埋め込む方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

次の例は、出力 PDF のフォントをサブセットするように Aspose.Words を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

これらの例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

## コア フォントと Windows 標準フォントの埋め込みを制御する方法

コア フォントと Windows 標準フォントは「標準」フォント セットであり、通常はターゲット マシン上に存在するか、ドキュメント リーダーによって提供されるため、出力 PDF に埋め込む必要はありません。これらのフォントを埋め込まないことで、レンダリングされた PDF ドキュメントのサイズを小さくしながら、移植性を維持できます。

Aspose.Words には、フォントを PDF にエクスポートする方法を選択するオプションが用意されています。出力 PDF にコア フォントと標準フォントを埋め込むか、埋め込みをスキップしてターゲット マシン上の標準コア PDF フォントまたはシステム フォントを代わりに使用するかを選択できます。通常、これらのオプションのいずれかを使用すると、Aspose.Words によって生成された PDF ドキュメントのファイル サイズが大幅に削減されます。

- これらのオプションは相互に排他的であるため、一度に 1 つだけを選択してください。
- PDF/A-1 準拠で保存する場合、使用されるすべてのフォントを PDF ドキュメントに埋め込む必要があります。この準拠に従って保存する場合、[use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) プロパティを *False* に設定し、[font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) プロパティを [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all) に設定する必要があります。

### コアフォントの埋め込み

Core フォントを埋め込むオプションは、[use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) プロパティを使用して有効または無効にできます。 true に設定すると、次の最も一般的な「True Type」フォント (Base 14 フォント) は出力 PDF ドキュメントに埋め込まれません。

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

これらのフォントは、PDF を開いたときにリーダーによって提供される、対応するコア Type 1 フォントに置き換えられます。

以下に示す例は、コア フォントの埋め込みを回避し、リーダーがそれらを PDF Type 1 フォントに置き換えるように Aspose.Words を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% /alert %}}

PDF ビューアはサポートされているプラットフォームのコア フォントを提供するため、このオプションはドキュメントの移植性を高める必要がある場合にも役立ちます。ただし、コア フォントはシステム フォントとは異なる場合があります。

{{% alert color="primary" %}}

この設定は、ANSI (Windows-1252) エンコード テキストに対してのみ機能します。非 ANSI テキストを PDF に書き込むには、対応するフォントを埋め込む必要があります。

{{% /alert %}}

### システムフォントの埋め込み

このオプションは、[font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) を使用して有効または無効にできます。このプロパティが [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard) に設定されている場合、「Arial」および「Times New Roman」の true タイプ フォントは PDF ドキュメントに埋め込まれません。この場合、クライアント ビューアはクライアントのオペレーティング システムにインストールされているフォントに依存します。 [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) プロパティが [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none) に設定されている場合、Aspose.Words にはフォントが埋め込まれません。

以下の例は、PDF ドキュメントへの Arial および Times New Roman フォントの埋め込みをスキップするように Aspose.Words を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

このモードは、出力 PDF 内のフォントの正確な外観を維持しながら、同じプラットフォームでドキュメントを表示する場合に最も役立ちます。

{{% alert color="primary" %}}

この設定は、ANSI (Windows-1252) エンコード テキストに対してのみ機能します。非 ANSI テキストを PDF に書き込むには、対応するフォントを埋め込む必要があります。

{{% /alert %}}
