---
title: ドキュメントをPDFに変換 Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントをPDFに変換
linktitle: ドキュメントをPDFに変換
description: "ドキュメントをWordまたは他のサポートされているフォーマットでPDFに変換し、さまざまなプラットフォームでレンダリング中にドキュメントの元の外観を保存します。 Javaお問い合わせ"
type: docs
weight: 10
url: /ja/java/convert-a-document-to-pdf/
---

1つの形式から別の形式への文書を容易にそして確実に変える能力は重要な特徴です Aspose.Wordsお問い合わせ 変換のための最も人気のあるフォーマットの1つは、PDF - さまざまなプラットフォーム上でレンダリング中にドキュメントの元の外観を保持する固定レイアウトフォーマットです。 「レンダリング」用語は、 Aspose.Words 文書をページをコピーしたり、ページをコンセプトにしたりするファイル形式に変換するプロセスを記述します。

## Word文書をPDFに変換 {#convert-a-word-document-to-pdf}

WordからPDFへの変換は、計算のいくつかの段階を必要とするかなり複雑なプロセスです。 Aspose.Words レイアウトエンジンは方法を模倣します Microsoft Word's ページレイアウトエンジンの仕組み, PDF 出力文書を作ることは、あなたが見ることができるものをできるだけ近いように見える Microsoft Wordお問い合わせ

と Aspose.Words ドキュメントをDOCまたはDOCX形式からPDFに変換できます。 Microsoft オフィス。 この記事では、この変換を実行する方法について説明します。

{{% alert color="primary" %}}

ドキュメント内のページ数が変換時間に影響することに注意してください。

{{% /alert %}}

### DOCXやDOCをPDFに変換 {#converting-doc-or-docx-to-pdf}

DOC または DOCX 文書の形式から PDF 形式の変換 Aspose.Words 非常に簡単で、次の2つのコードで達成することができます。

1。 ドキュメントをドキュメントにロードする [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 拡張子を持つドキュメント名を指定することで、コンストラクタの1つを使用してオブジェクト。
1。 の 1 つを呼び出します。 [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) メソッド **Document** 目的の出力形式を「.PDF」の拡張子でファイル名を入力するとPDFとして指定します。

次のコードの例では、DOCX から PDF にドキュメントを変換する方法を示します。 `Save` メソッド:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

この例のテンプレートファイルをダウンロードできます。 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)お問い合わせ

{{% alert color="primary" %}}

時々、追加のオプションを指定する必要があります。これは、PDFとして文書を保存した結果に影響を与えることができます。 これらのオプションは、使用によって指定することができます [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) クラスは、PDFの出力方法を決定するプロパティを含む。

同じ技術で、フローレイアウト形式文書をPDF形式に変換できます。

{{% /alert %}}

### 異なるPDFに変換 スタンダード {#converting-to-various-pdf-standards}

Aspose.Words 提供して下さい [Pdfコンピリアス](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)DOCやDOCXの変換を様々なPDF形式規格(PDF 1.7、PDF 1.5など)にサポートする列挙。

次のコードの例では、ドキュメントをPDF 1.7に変換する方法を示します。 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) PDF17への準拠:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## 画像をPDFに変換

PDFへの変換は制限されていません Microsoft Word ドキュメントフォーマット。 サポートされているフォーマット Aspose.Words, プログラマティックに作成されるなど、PDFに変換することもできます。 たとえば、JPEG、PNG、BMP、EMF、WMF、TIFF、GIFなどのマルチページ画像をPDFに変換できます。

次のコードの例では、JPEGとTIFF画像をPDFに変換する方法を示します。

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

このコードを作成するには、参照を追加する必要があります Aspose.Words, Java.awt.image と javax 。 プロジェクトのイメージクラスパッケージ。

## PDFを削減 出力サイズ

PDFに保存すると、出力を最適化するかどうかを指定できます。 これを行うには、設定する必要があります [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) フラグ true, そして、ネストされたキャンバスと空のキャンバスが削除され、隣人 glyph同じ書式を持つ s は連結されます。

次のコードの例では、出力を最適化する方法を示します。

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

使い方 **OptimizeOutput** プロパティは、コンテンツの表示の正確さに影響を与える可能性があります。

{{% /alert %}}

## お問い合わせ

- 記事 [レンダリング](/words/ja/java/rendering/) 固定ページおよびフローレイアウトフォーマットの詳細については、
- 記事 [固定ページ形式に変換する](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) ページレイアウトに関する詳細情報
- 記事 [お問い合わせ](/words/ja/java/specify-rendering-options-when-converting-to-pdf/) より多くの情報の使用について `PdfSaveOptions` レッスン
