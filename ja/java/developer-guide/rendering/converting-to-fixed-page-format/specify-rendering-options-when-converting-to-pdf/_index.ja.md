---
title: レンダリングオプションをPDFに変換する
second_title: Aspose.Words お問い合わせ Java
articleTitle: レンダリングオプションをPDFに変換する
linktitle: レンダリングオプションをPDFに変換する
description: "ドキュメントをPDFに変換し、高度なオプションでPDFに変換します。 PdfSaveOptions を使用して、ドキュメントをPDF形式に保存する結果を変更します Javaお問い合わせ"
type: docs
weight: 20
url: /ja/java/specify-rendering-options-when-converting-to-pdf/
---

PDF形式は、ユーザーの間で非常に人気があり、さまざまなアプリケーションで広くサポートされている固定ページ形式です。 PDF文書は、任意のデバイスで同じように見えるからです。 そのため、PDFへの変換は重要な機能です Aspose.Wordsお問い合わせ

PDFは複雑な形式です。 レイアウト計算を含む文書をPDFに変換する過程で計算のいくつかの段階が必要です。 これらの段階は複雑な計算を含むので、時間がかかります。 また、PDF形式自体は複雑です。 特定のファイル構造、グラフィックモデル、フォントの埋め込みを持っています。 また、ドキュメント構造タグ、暗号化、デジタル署名、編集可能なフォームなど、複雑な出力機能を備えています。

Aspose.Words レイアウト エンジンは方法を模倣します Microsoft Word’s ページレイアウトエンジンの仕組み ですから、 Aspose.Words PDFの出力文書は、あなたが見ることができるものをできるだけ近いように見えます Microsoft Wordお問い合わせ 時々、追加のオプションを指定する必要があります。これは、ドキュメントをPDF形式に保存する結果に影響を与えることができます。 これらのオプションは、使用によって指定することができます [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) クラスは、PDFの出力方法を決定するプロパティを含む。

使用事例 **PdfSaveOptions** お問い合わせ

{{% alert color="primary" %}}

PDF 1.7、PDF 2.0、PDF/A-1a、PDF/A-1b、PDF/A-2a、PDF/A-2u、PDF/UA-1 形式の保存ができます。 利用する [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) PDF 規格準拠レベルを設定するための列挙。 PDF/A形式の出力ファイルサイズは通常のPDFファイルサイズよりも大きいことに注意してください。

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) そして、 [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) obsolete としてマークされます。

PDF/A の詳細については、次の記事「PDF/A への変換の学習特徴」を参照してください。

{{% /alert %}}

## PDFの作成 充填可能なフォームでドキュメント

充填可能なフォームをエクスポートすることも可能です。 Microsoft Word プレーンテキストではなく、埋め立て可能なフォームを持つPDFを出力するドキュメント。 利用する [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) 文書をPDFとして保存するプロパティ。

とは対照的に <span notrans="<span notrans=" Microsoft Word"=""></span>????? PDF形式は、テキストボックス、コンボボックス、チェックボックスなどの編集可能なフォームの限られた数のオプションがあります。 Microsoft Word カレンダー日付ピッカーなど、フォームの種類が増えています。 一般的には、完全に模倣することはできません Microsoft Word PDFでの動作 そのため、複雑なケースでは、PDF出力が表示されるものと異なる場合があります。 Microsoft Wordお問い合わせ

以下のコードの例では、指定されたJpegの圧縮と品質で、文書をPDFとして保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## 文書の構造および注文の特性の輸出

ザ・オブ・ザ・ [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) ドキュメント構造をPDF出力にエクスポートできます。

PDF の論理構造施設は、文書のコンテンツ構造に関する情報をPDFファイルに組み込むための仕組みを提供します。 Aspose.Words 構造体に関する情報を、 Microsoft Word 段落、リスト、表、脚注/内記など

次の例では、ドキュメントをPDF形式に保存する方法を説明します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words また、ドキュメントのカスタムプロパティをPDFにエクスポートすることもできます。次の例で示されています。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## アウトプットPDFのブックマークや見出しからのアウトラインのエクスポート

出力PDFの輪郭としてブックマークをエクスポートしたい場合は、 [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) プロパティ. このプロパティは、ドキュメントのアウトラインのデフォルトレベルを指定します。 Microsoft Word ブックマークが表示されます。 ドキュメントがドキュメントのヘッダ/フッターにブックマークが含まれている場合は、ドキュメントのヘッダ/フッターにブックマークを設定できます。 [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) プロパティ [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) または [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) 出力PDFでエクスポートする方法を指定するため。 ヘッダ/フッターのブックマークは、値のときにエクスポートされません。 **HeaderFooterBookmarksExportMode** お問い合わせ [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)お問い合わせ

セクションの最初のヘッダー/フッターからブックマークをエクスポートする方法は次のとおりです。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

この例の出力PDFは以下のとおりです。

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

いつか **HeaderFooterBookmarksExportMode** 設定する [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) ドキュメントには、オッズヘッダ/フッター、または別の最初のページヘッダ/フッター、ブックマークはセクションの最初のユニークなヘッダ/フッターにエクスポートされます。

出力PDFで見出しをエクスポートすることもできます。 [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) 宿泊施設 このプロパティは、ドキュメントのアウトラインに含まれるヘッディングの数を指定します。

以下のコード例では、見出しを3つのレベルにエクスポートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

この例の出力PDFは以下のとおりです。

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

ブックマークや見出しのナビゲーションは、さまざまなPDFビューアで異なる外観を持つ場合があります。 また、一部のアプリケーションでは、ブックマークや見出しのナビゲーションはUIでは利用できません。

{{% /alert %}}

## ドキュメントサイズを減らす画像のダウンサンプリング

Aspose.Words 出力PDFサイズを削減するために、サンプル画像をダウンサンプル化することができます。 [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) プロパティ. ダウンサンプリングはデフォルトで有効になっています [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) プロパティ.

特定の解像度を設定することもできます。 [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) プロパティ、または解像度のしきい値 [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) 宿泊施設 2番目のケースでは、画像の解像度が閾値未満の場合、ダウンサンプリングは適用されません。

以下のコードは、出力PDF文書の画像の解像度を変更する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

ページの実際の画像サイズに応じて、解像度を計算します。

## Adobe PDF形式のフォントの埋め込み

Aspose.Words また、フォントを結果のPDF文書に埋め込む方法を制御することができます。 フォントは、文書がどのマシンでも正しくレンダリングできることを確認するために、任意のAdobe PDF文書に埋め込む必要があります(セクションのフォントレンダリングの詳細については、を参照してください) [フォントの種類](/words/ja/java/using-truetype-fonts/))。 デフォルトでは、 Aspose.Words ドキュメントで使用されるフォントのサブセットを生成したPDFに埋め込む。 この場合、唯一の glyphドキュメントで使用されるs(文字)はPDFに保存されます。

### フルフォントとサブセットを使用するとき

オプションを指定する方法があります Aspose.Words フルフォントを埋め込む。 詳細は、各設定のいくつかの利点と欠点とともに、以下の表に記載されています。

| フォントモードを埋め込む |  メリット | 欠点 |
|  :-  |  :-  |  :-  |
|  `Full`  | テキストを追加または変更することにより、後で結果PDFを編集したい場合に便利です。 すべてのフォントが含まれているので、すべて glyphsは存在します。 | いくつかのフォントが大きいので (複数のメガバイト), サブセットなしでそれらを埋め込むことは、大きな出力ファイルにつながることができます. |
|  `Subset`  | 出力ファイルサイズを小さくしたい場合は、サブセットが便利です。 | <p>ユーザーは、出力PDF文書のサブセットされたフォントを使用してテキストを完全に追加または編集することはできません。 これは、すべてではないので glyphフォントの s が存在します。</p>

<p>複数の PDF がサブセットされたフォントで保存され、一緒に組み立てられた場合、結合された PDF ドキュメントには、不要なサブセットを含むフォントが含まれている場合があります。</p>
 |

### PDFでフルフォントを埋め込む

ザ・オブ・ザ・ [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) プロパティを使用すると、どのように指定するかを指定できます Aspose.Words フォントを出力PDFドキュメントに埋め込む。

- - - 完全なフォントを出力PDF文書に埋め込むには、設定 **EmbedFullFonts** お問い合わせ true
- - - PDFに保存するときにフォントをサブセットするには、設定 **EmbedFullFonts** お問い合わせ false

次の例では、出力PDF文書にフルフォントを埋め込む方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

次の例では、設定方法を示します Aspose.Words 出力PDFのフォントをサブセットするには:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

これらの例のテンプレートファイルをダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% /alert %}}

## エンベディングコアフォントと Windows スタンダードフォント

コアフォントと Windows 標準フォントは、通常、ターゲットマシンに存在するフォントの「標準」セットまたはドキュメントリーダーによって提供されているフォントです。したがって、出力PDFに埋め込む必要はありません。 これらのフォントを埋め込むことで、レンダリングされたPDF文書のサイズを減らし、移植性を維持することができます。

Aspose.Words フォントをPDFにエクスポートする方法を選択するオプションを提供します。 コアフォントと標準フォントを出力PDFに埋め込むか、埋め込むのをスキップして、ターゲットマシンの標準的なコアPDFフォントまたはシステムフォントを使用するかを選択できます。 これらのオプションのいずれかを使用して、通常、生成されたPDF文書の重要なファイルサイズの縮小が結果的に表示されます。 Aspose.Wordsお問い合わせ

- これらのオプションは相互に排他的であるため、一度だけ選択する必要があります。
- PDF/A-1 準拠で保存する場合は、すべてのフォントをPDF文書に埋め込む必要があります。 これを遵守することで、 [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) プロパティは、 false そして、 [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) プロパティは、 [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### コアフォントを埋め込む

コアフォントを埋め込むオプションは、使用することで有効または無効にすることができます。 [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) プロパティ. 設定した時 true, 最も人気のある「True Type」フォント(ベース14フォント)は、出力PDF文書には埋め込まれていません。

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

これらのフォントは、PDFが開いているときに読者が提供されている対応するコアタイプ1フォントに置き換えられます。

以下に示す例は、設定方法を示しています Aspose.Words コアフォントを埋め込むことを避け、読者にPDFを代入するようにして下さい タイプ1の壷:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)お問い合わせ

{{% /alert %}}

PDFビューアーは、サポートされているプラットフォームでコアフォントを提供しているため、より大きなドキュメントポータビリティが必要な場合でもこのオプションも便利です。 ただし、コアフォントはシステムフォントとは異なる場合があります。

{{% alert color="primary" %}}

この設定はANSIのみで動作します。Windows-1252) エンコーディングテキスト。 ANSI 以外のテキストを PDF に書き込むには、対応するフォントを埋め込む必要があります。

{{% /alert %}}

### システムフォントの埋め込み

このオプションは、使用することで有効または無効にすることができます。 [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) プロパティ. このプロパティが設定されている場合 [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), 「アーリアル」と「タイムス・ニュー・ローマ」 true フォントをPDF文書に埋め込むことはできません。 この場合、クライアントビューアはクライアントオペレーティングシステムにインストールされているフォントに依存します。 いつか **FontEmbeddingMode** プロパティは、 [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words フォントを埋め込むことはありません。

以下の例では、設定方法を示します Aspose.Words Arial と Times New Roman フォントを PDF ドキュメントに埋め込むのをスキップするには:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

このモードは、出力PDFのフォントの正確な外観を保存し、同じプラットフォームでドキュメントを表示したい場合に最も便利です。

{{% alert color="primary" %}}

この設定はANSIのみで動作します。Windows-1252) エンコーディングテキスト。 ANSI 以外のテキストを PDF に書き込むには、対応するフォントを埋め込む必要があります。

{{% /alert %}}
