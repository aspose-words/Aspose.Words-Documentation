---
title: C# で Word を PDF に変換する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを PDF に変換する
linktitle: ドキュメントを PDF に変換する
description: "C# を使用してドキュメントを PDF に変換します。 DOCXをPDF C#に変換します。 Word、OpenOffice、画像、電子書籍形式など、さまざまな入力形式がサポートされています。"
type: docs
weight: 10
url: /ja/net/convert-a-document-to-pdf/
timestamp: 2024-09-25-11-08-55
---

ドキュメントをある形式から別の形式に簡単かつ確実に変換できる機能は、Aspose.Words の重要な機能です。変換用の最も一般的な形式の 1 つは PDF です。これは固定レイアウト形式であり、さまざまなプラットフォームでのレンダリング中にドキュメントの元の外観が保持されます。 Aspose.Words では、「レンダリング」という用語は、ドキュメントをページ分割されたファイル形式、またはページの概念を持つファイル形式に変換するプロセスを表すために使用されます。

## Word 文書を PDF に変換する

Word から PDF への変換は、いくつかの段階の計算を必要とするかなり複雑なプロセスです。 Aspose.Words レイアウト エンジンは、Microsoft Word のページ レイアウト エンジンの動作方法を模倣し、PDF 出力ドキュメントを Microsoft Word で表示されるものにできるだけ近づけます。

Aspose.Words を使用すると、Microsoft Office を使用せずに、プログラムによって文書を DOC や DOCX などの Word 形式から PDF に変換できます。この記事では、この変換を実行する方法について説明します。

{{% alert color="primary" %}}

ドキュメント内のページ数が変換時間に影響することに注意してください。

{{% /alert %}}

### DOCX または DOC を PDF に変換

DOC または DOCX ドキュメント形式から Aspose.Words の PDF 形式への変換は非常に簡単で、次のような 2 行のコードだけで実行できます。

1. コンストラクターの 1 つを使用して、ドキュメント名とその形式拡張子を指定して、ドキュメントを [Document](https://reference.aspose.com/words/net/aspose.words/document/) オブジェクトにロードします。
1. **Document** オブジェクトで [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) メソッドの 1 つを呼び出し、「.PDF」拡張子の付いたファイル名を入力して、目的の出力形式を PDF として指定します。

次のコード例は、[Save](https://reference.aspose.com/words/net/aspose.words/document/save/) メソッドを使用してドキュメントを DOCX から PDF に変換する方法を示しています。

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% alert color="primary" %}}

追加のオプションを指定する必要がある場合があります。これは、ドキュメントを PDF として保存する結果に影響を与える可能性があります。これらのオプションは、PDF 出力の表示方法を決定するプロパティを含む [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) クラスを使用して指定できます。

同じ手法を使用して、フロー レイアウト形式のドキュメントを PDF 形式に変換できることに注意してください。

{{% /alert %}}

### 異なる PDF 標準に変換する

Aspose.Words は、DOC または DOCX からさまざまな PDF 形式標準 (PDF 1.7、PDF 1.5 など) への変換をサポートする [PDFコンプライアンス](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/)enumeration を提供します。

次のコード例は、PDF17 に準拠した [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) を使用してドキュメントを PDF 1.7 に変換する方法を示しています。

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## 画像を PDF に変換

PDF への変換は、Microsoft Word ドキュメント形式による制限を受けません。プログラムで作成されたものも含め、Aspose.Words でサポートされているあらゆる形式も PDF に変換できます。たとえば、JPEG、PNG、BMP、EMF、WMF などの単一ページの画像や、TIFF や GIF などの複数ページの画像を PDF に変換できます。

次のコード例は、JPEG および TIFF 画像を PDF に変換する方法を示しています。

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

このコードを機能させるには、Aspose.Words と `System.Drawing` への参照をプロジェクトに追加する必要があります。

## PDF 出力サイズを縮小する

PDF に保存するときに、出力を最適化するかどうかを指定できます。これを行うには、[OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) フラグを true に設定する必要があります。その後、冗長なネストされたキャンバスと空のキャンバスが削除され、同じフォーマットを持つ隣接する glyph が連結されます。

次のコード例は、出力を最適化する方法を示しています。

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

**OptimizeOutput** プロパティを使用すると、コンテンツ表示の精度に影響を与える可能性があります。

{{% /alert %}}

## 関連項目

- 固定ページおよびフロー レイアウト形式の詳細については、[レンダリング](/words/ja/net/rendering/) の記事を参照してください。
- ページ レイアウトの詳細については、[固定ページ形式への変換](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) の記事を参照してください。
- `PdfSaveOptions` クラスの使用方法の詳細については、[PDF への変換時のレンダリング オプションの指定](/words/ja/net/specify-rendering-options-when-converting-to-pdf/) の記事を参照してください。
- Aspose.Words をサポートする PDF 標準および PDF 標準に関連する ISO について説明した記事 [PDF/A および PDF/UA への変換の機能を学ぶ](/words/ja/net/learn-features-of-conversion-to-pdf-a-pdf-ua/)
- どの PDF 標準がどのような場合に意味があるかを判断する記事 [どの PDF 規格を選択するのが良いか](/words/ja/net/which-pdf-standard-is-better-to-choose/)

- [PDF/A または PDF/UA の操作](/words/ja/net/working-with-pdfa-or-pdfua/) の記事では、PDF/A および PDF/UA 形式のドキュメント コンテンツの要件、主に構造とフォントの要件について説明しています。

- 記事 [PDF/A および PDF/UA に保存する際のアクセシビリティの問題の警告](/words/ja/net/warnings-when-saving-to-pdfa-and-pdfua/) では、PDF/A および PDF/UA が課すコンテンツ アクセシビリティ要件について説明しています
