---
title: Python でドキュメントを PDF に変換する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを PDF に変換する
linktitle: ドキュメントを PDF に変換する
description: "Python を使用してドキュメントを PDF に変換します。 Word、OpenOffice、画像、電子書籍形式など、さまざまな入力形式がサポートされています。"
type: docs
weight: 10
url: /ja/python-net/convert-a-document-to-pdf/
---

ドキュメントをある形式から別の形式に簡単かつ確実に変換できる機能は、Aspose.Words の重要な機能です。変換用の最も一般的な形式の 1 つは PDF です。これは固定レイアウト形式であり、さまざまなプラットフォームでのレンダリング中にドキュメントの元の外観が保持されます。 Aspose.Words では、「レンダリング」という用語は、ドキュメントをページ分割されたファイル形式、またはページの概念を持つファイル形式に変換するプロセスを表すために使用されます。

## Word 文書を PDF {#convert-a-word-document-to-pdf} に変換する

Word から PDF への変換は、いくつかの段階の計算を必要とするかなり複雑なプロセスです。 Aspose.Words レイアウト エンジンは、Microsoft Word のページ レイアウト エンジンの動作方法を模倣し、PDF 出力ドキュメントを Microsoft Word で表示されるものにできるだけ近づけます。

Aspose.Words を使用すると、Microsoft Office を使用せずに、プログラムによって文書を DOC や DOCX などの Word 形式から PDF に変換できます。この記事では、この変換を実行する方法について説明します。

{{% alert color="primary" %}}

ドキュメント内のページ数が変換時間に影響することに注意してください。

{{% /alert %}}

### DOC または DOCX を PDF {#convert-doc-or-docx-to-pdf} に変換

DOC または DOCX ドキュメント形式から Aspose.Words の PDF 形式への変換は非常に簡単で、次のような 2 行のコードだけで実行できます。

1. コンストラクターの 1 つを使用して、ドキュメント名とその形式拡張子を指定して、ドキュメントを [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトにロードします。
1. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) オブジェクトで [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) メソッドの 1 つを呼び出し、「.PDF」拡張子の付いたファイル名を入力して、目的の出力形式を PDF として指定します。

次のコード例は、[save](https://reference.aspose.com/words/python-net/aspose.words/document/save/#str) メソッドを使用してドキュメントを DOCX から PDF に変換する方法を示しています。

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "docx-to-pdf.py" >}}

この例のテンプレート ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx) からダウンロードできます。

{{% alert color="primary" %}}

追加のオプションを指定する必要がある場合がありますが、これはドキュメントを PDF として保存する結果に影響を与える可能性があります。これらのオプションは、PDF 出力の表示方法を決定するプロパティを含む [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) クラスを使用して指定できます。

同じ手法を使用して、フロー レイアウト形式のドキュメントを PDF 形式に変換できることに注意してください。

{{% /alert %}}

### さまざまな PDF 標準 {#convert-to-various-pdf-standards} に変換

Aspose.Words は、DOC または DOCX からさまざまな PDF 形式標準 (PDF 1.7、PDF 1.5 など) への変換をサポートする [PdfCompliace](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) 列挙を提供します。

次のコード例は、[PDF17](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf17) に準拠した [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) を使用してドキュメントを PDF 1.7 に変換する方法を示しています。

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "conversion-to-pdf17.py" >}}

## 画像を PDF に変換

PDF への変換は、Microsoft Word ドキュメント形式による制限を受けません。プログラムで作成されたものも含め、Aspose.Words でサポートされているあらゆる形式も PDF に変換できます。たとえば、JPEG、PNG、BMP、EMF、WMF などの単一ページの画像や、TIFF や GIF などの複数ページの画像を PDF に変換できます。

次のコード例は、JPEG および TIFF 画像を PDF に変換する方法を示しています。

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "image-to-pdf.py" >}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "convert-image-to-pdf.py" >}}

このコードを機能させるには、Aspose.Words と `aspose.pydrawing` への参照をプロジェクトに追加する必要があります。

## PDF 出力サイズを縮小する

PDF に保存するときに、出力を最適化するかどうかを指定できます。これを行うには、[optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) フラグを true に設定する必要があります。その後、冗長なネストされたキャンバスと空のキャンバスが削除され、同じフォーマットを持つ隣接する glyph が連結されます。

{{% alert color="primary" %}}

**OptimizeOutput** プロパティを使用すると、コンテンツ表示の精度に影響を与える可能性があります。

{{% /alert %}}

{{< gist "aspose-words-gists" "36a49a29062268dc5e6d3134163f8d99" "optimize-output.py" >}}

## PDF 出力サイズを縮小する

PDF に保存するときに、出力を最適化するかどうかを指定できます。これを行うには、[optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) フラグを true に設定する必要があります。その後、冗長なネストされたキャンバスと空のキャンバスが削除され、同じフォーマットを持つ隣接する glyph が連結されます。

{{% alert color="primary" %}}

**OptimizeOutput** プロパティを使用すると、コンテンツ表示の精度に影響を与える可能性があります。

{{% /alert %}}

## 関連項目

- 固定ページおよびフロー レイアウト形式の詳細については、[レンダリング](/words/ja/python-net/rendering/) の記事を参照してください。
- ページ レイアウトの詳細については、[固定ページ形式への変換](/words/python-net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) の記事を参照してください。
- [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) クラスの使用方法の詳細については、[PDF への変換時のレンダリング オプションの指定](/words/ja/python-net/specify-rendering-options-when-converting-to-pdf/) の記事を参照してください。
