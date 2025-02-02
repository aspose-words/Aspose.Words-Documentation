﻿---
title: PDFに変換するときのレンダリングオプションの指定
second_title: Aspose.WordsのためのJava
articleTitle: PDFに変換するときのレンダリングオプションの指定
linktitle: PDFに変換するときのレンダリングオプションの指定
description: "高度なオプションを使用して文書をPDFに変換します。 Javaを使用して文書をPDF形式に保存した結果を変更するには、PdfSaveOptionsを使用します。"
type: docs
weight: 20
url: /ja/java/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

PDF形式は固定ページ形式であり、ユーザーの間で非常に人気があり、PDF文書はどのデバイスでも同じように見えるため、さまざまなアプリケーションで広くサポー そのため、PDFへの変換はAspose.Wordsの重要な機能です。

PDFは複雑な形式です。 レイアウト計算を含む、ドキュメントをPDFに変換するプロセスでは、いくつかの段階の計算が必要です。 これらの段階には複雑な計算が含まれているため、時間がかかります。 また、PDF形式はそれ自体ではかなり複雑です。 これは、特定のファイル構造、グラフィックスモデルとフォントの埋め込みを持っています。 さらに、文書構造タグ、暗号化、デジタル署名、編集可能なフォームなど、いくつかの複雑な出力機能を備えています。

Aspose.Wordsレイアウトエンジンは、Microsoft Wordのページレイアウトエンジンの動作を模倣しています。 したがって、Aspose.WordsはPDF出力文書をMicrosoft Wordで見ることができるものにできるだけ近く見えるようにします。 追加のオプションを指定する必要がある場合がありますが、これは文書をPDF形式で保存した結果に影響を与える可能性があります。 これらのオプションは、PDF出力がどのように表示されるかを決定するプロパティを含む[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)クラスを使用して指定できます。

**PdfSaveOptions**の使用例をいくつか以下に示します。

{{% alert color="primary" %}}

現在、あなたはに保存することができますPDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u, とPDF/UA-1形式。 [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)列挙体を使用して、PDF標準準拠レベルを設定します。 PDF/A形式では、出力ファイルのサイズは通常のPDFファイルのサイズよりも大きいことに注意してください。

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17)と[PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17)は廃止されたものとしてマークされています。

PDF/Aの詳細については、次の記事"PDF/Aへの変換の機能について"を参照してください。

{{% /alert %}}

## 入力可能なフォームを使用したPDFドキュメントの作成

入力可能なフォームをMicrosoft Wordドキュメントから出力PDFにエクスポートすることもできます。 入力可能なフォームで文書をPDFとして保存するには、[PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields)プロパティを使用します。

Microsoft Wordとは対照的に、PDF形式には、textbox、combo box、checkboxなどの編集可能なフォームのオプションの数が限られていることに注意してください。 Microsoft Wordには、カレンダーの日付ピッカーなど、より多くの種類のフォームがあります。 一般に、PDFでMicrosoft Wordの動作を完全に模倣することはできません。 したがって、いくつかの複雑なケースでは、PDFの出力はMicrosoft Wordに表示されるものと異なる場合があります。

次のコード例は、指定されたJpeg圧縮と品質で入力可能なフォームを使用して文書をPDFとして保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## ドキュメント構造とカスタムプロパティのエクスポート

[ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure)プロパティを使用すると、文書構造をPDF出力にエクスポートできます。

PDF論理構造ファシリティは、文書の内容構造に関する情報をPDFファイルに組み込むためのメカニズムを提供します。 Aspose.Wordsは、段落、リスト、表、脚注/文末脚注など、Microsoft Word文書からの構造に関する情報を保持します。Aspose.Wordsは、段落、リスト、表、脚注/文末脚注など、Microsoft Word文書からの構造に関する情報を保

次の例では、ドキュメントをPDF形式で保存し、ドキュメントの構造を保持する方法を示します:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Wordsでは、ドキュメントのカスタムプロパティをPDFにエクスポートすることもできます。:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## 出力PDFのブックマークと見出しからアウトラインをエクスポートする

出力PDFでブックマークをアウトラインとしてエクスポートする場合は、[DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel)プロパティを使用できます。 このプロパティは、Microsoft Wordブックマークが表示されるドキュメントアウトラインの既定のレベルを指定します。 ドキュメントのヘッダー/フッターにブックマークが含まれている場合は、[HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode)プロパティを[First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST)または[All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL)に設定して、出力PDFでエクスポートする方法を指定できます。 **HeaderFooterBookmarksExportMode**の値が[None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)の場合、ヘッダー/フッターのブックマークはエクスポートされません。

以下のコード例は、セクションの最初のヘッダー/フッターからブックマークをエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

この例の出力PDFを以下に示します:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

**HeaderFooterBookmarksExportMode**が[First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST)に設定されていて、ドキュメントに偶数と奇数のヘッダー/フッター、または異なる最初のページのヘッダー/フッターがある場合、セクション内の最初の一意のヘッダー/フッターのブックマークがエクスポートされます。

[HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels)プロパティを使用して、出力PDFの見出しをエクスポートすることもできます。 このプロパティは、ドキュメントアウトラインに含まれる見出しのレベルの数を指定します。

次のコード例は、3つのレベルの見出しをエクスポートする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

この例の出力PDFを以下に示します:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

ブックマークまたは見出しナビゲーションは、さまざまなPDFビューアーで異なる外観を持つ場合があります。 さらに、一部のアプリケーションでは、UIでブックマークと見出しナビゲーションを使用できません。

{{% /alert %}}

## ドキュメントサイズを縮小するための画像のダウンサンプリング

Aspose.Wordsは、[DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions)プロパティを使用して、出力PDFサイズを小さくするために画像をダウンサンプリングする機能を提供します。 ダウンサンプリングは、[DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages)プロパティで既定で有効になっています。

[Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution)プロパティに特定の解像度を設定したり、[ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold)プロパティに解像度のしきい値を設定したりすることもできます。 2番目のケースでは、画像の解像度がしきい値より小さい場合、ダウンサンプリングは適用されません。

次のコード例は、出力PDFドキュメント内の画像の解像度を変更する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

解像度は、ページ上の実際の画像サイズに応じて計算されます。

## AdobePDF形式でフォントを埋め込む

Aspose.Wordsを使用すると、結果のPDFドキュメントにフォントを埋め込む方法を制御することもできます。 フォントは、任意のマシンでドキュメントを正しくレンダリングできるようにするために、AdobePDFドキュメントに埋め込む必要があります(フォントレンダ [TrueTypeフォントの使用](/words/java/using-truetype-fonts/)). デフォルトでは、Aspose.Wordsはドキュメントで使用されるフォントのサブセットを生成されたPDFに埋め込みます。 この場合、文書で使用されているグリフ(文字)のみがPDFに保存されます。

### フルフォントを使用する場合とサブセット化する場合

完全なフォントを埋め込むためのAspose.Wordsのオプションを指定する方法があります。 さらなる詳細は、各設定のいくつかの利点および欠点とともに、以下の表に記載されている。

| 埋め込みフォントモード | 利点 | デメリット |
| :- | :- | :- |
| `Full` | テキストを追加または変更して、結果のPDFを後で編集する場合に便利です。 すべてのフォントが含まれているため、すべてのグリフが存在します。 | 一部のフォントは大きい(数メガバイト)ため、サブセットなしで埋め込むと、出力ファイルが大きくなる可能性があります。 |
| `Subset` | サブセットは、出力ファイルのサイズを小さくしたい場合に便利です。 | <p>ユーザーは、出力PDFドキュメント内のサブセットされたフォントを使用してテキストを完全に追加または編集することはできません。 これは、フォントのすべてのグリフが存在するわけではないためです。</p><p>複数のPDFsがサブセットされたフォントで保存され、一緒に組み立てられた場合、結合されたPDF文書には多くの不要なサブセットを含むフォントが含まれている可能性があります。</p> |

### PDFにフルフォントを埋め込む

[EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts)プロパティを使用すると、Aspose.Wordsが出力PDFドキュメントにフォントを埋め込む方法を指定できます。

- 出力PDFドキュメントに完全なフォントを埋め込むには、**EmbedFullFonts**をtrueに設定します
- PDFに保存するときにフォントをサブセット化するには、**EmbedFullFonts**をfalseに設定します

次の例は、出力PDFドキュメントに完全なフォントを埋め込む方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

次の例では、出力PDFのフォントをサブセット化するためにAspose.Wordsを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

これらの例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## コアフォントとWindows標準フォントの埋め込みを制御する方法

コアフォントとWindows標準フォントは"標準"フォントのセットであり、通常はターゲットマシン上に存在するか、ドキュメントリーダーによって提供されるため、出力PDFに埋め込む必要はありません。 これらのフォントを埋め込んでいないことで、レンダリングされたPDFドキュメントのサイズを小さくし、移植性を維持できます。

Aspose.Words には、フォントを PDF にエクスポートする方法を選択するオプションがあります。出力 PDF にコア フォントと標準フォントを埋め込むか、埋め込みをスキップして代わりにターゲット マシン上の標準コア PDF フォントまたはシステム フォントを使用するかを選択できます。これらのオプションのいずれかを使用すると、通常、Aspose.Words によって生成される PDF ドキュメントのファイル サイズが大幅に削減されます。

- これらのオプションは相互に排他的であるため、一度に1つだけ選択する必要があります。
- PDF/A-1準拠で保存する場合は、使用されるすべてのフォントをPDFドキュメントに埋め込む必要があります。 この準拠で保存する場合は、[UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts)プロパティをfalseに設定し、[FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode)プロパティを[EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)に設定する必要があります

### コアフォントの埋め込み

コアフォントを埋め込むオプションは、[UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts)プロパティを使用して有効または無効にできます。 Trueに設定されている場合、次の最も一般的な"True Type"フォント(ベース14フォント)は出力PDFドキュメントに埋め込まれません:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

これらのフォントは、PDFが開かれたときにリーダーによって提供される対応するコアタイプ1フォントに置き換えられます。

以下に示す例は、コアフォントの埋め込みを回避し、読者がそれらをPDFタイプ1フォントで置き換えるようにAspose.Wordsを設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

PDFビューアはサポートされている任意のプラットフォームでコアフォントを提供するため、このオプションはドキュメントの移植性を高める必要がある場合にも役立ちます。 ただし、コアフォントはシステムフォントとは異なる場合があります。

{{% alert color="primary" %}}

この設定はANSI(Windows-1252)エンコーディングテキストに対してのみ機能します。 ANSI以外のテキストをPDFに書き込むには、常に対応するフォントを埋め込む必要があります。

{{% /alert %}}

### システムフォントの埋め込み

このオプションは[FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode)プロパティを使用して有効または無効にすることができます。 このプロパティが[EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD)に設定されている場合、"Arial"および"Times New Roman"true typeフォントはPDFドキュメントに埋め込まれません。 この場合、クライアントビューアはクライアントオペレーティングシステムにインストールされているフォントに依存します。 **FontEmbeddingMode**プロパティが[EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE)に設定されている場合、Aspose.Wordsはフォントを埋め込みません。

以下の例は、Aspose.Wordsを設定してArialフォントとTimes New RomanフォントをPDF文書に埋め込むのをスキップする方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

このモードは、出力PDF内のフォントの正確な外観を維持しながら、同じプラットフォーム上でドキュメントを表示する場合に最も便利です。

{{% alert color="primary" %}}

この設定はANSI(Windows-1252)エンコーディングテキストに対してのみ機能します。 ANSI以外のテキストをPDFに書き込むには、対応するフォントを埋め込む必要があります。

{{% /alert %}}
