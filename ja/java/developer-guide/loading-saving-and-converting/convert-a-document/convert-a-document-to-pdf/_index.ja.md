---
title: ドキュメントをJavaのPDFに変換する
second_title: Aspose.WordsのためのJava
articleTitle: 文書をPDFに変換する
linktitle: 文書をPDFに変換する
description: "Wordまたはその他のサポートされている形式の文書をPDFに変換します。Javaを使用して、さまざまなプラットフォームでのレンダリング中に文書の元の外観を維持します。"
type: docs
weight: 10
url: /ja/java/convert-a-document-to-pdf/
timestamp: 2024-01-31-14-23-37
---

文書をある形式から別の形式に簡単かつ確実に変換する機能は、Aspose.Wordsの重要な機能です。 変換のための最も一般的な形式の一つはPDFです–さまざまなプラットフォーム上でのレンダリング中にドキュメントの元の外観を維持する固定レイアウ Aspose.Wordsで"レンダリング"という用語は、ドキュメントをページ分割されたファイル形式またはページの概念を持つファイル形式に変換するプロセスを記述する

## Word文書をPDF {#convert-a-word-document-to-pdf}に変換する

単語からPDFへの変換は、いくつかの計算段階を必要とするかなり複雑なプロセスです。 Aspose.WordsレイアウトエンジンはMicrosoft Wordのページレイアウトエンジンの動作を模倣し、PDF出力ドキュメントをMicrosoft Wordで見ることができるものにできるだけ近く見えるようにします。

Aspose.Wordsを使用すると、MicrosoftOfficeを使用せずに、プログラムで文書をDOCまたはDOCX形式からPDFに変換できます。 この記事では、この変換を実行する方法について説明します。

{{% alert color="primary" %}}

ドキュメント内のページ数が変換時間に影響することに注意してください。

{{% /alert %}}

### DOCXまたはDOCをPDF {#converting-doc-or-docx-to-pdf}に変換する

DOCまたはDOCXドキュメント形式からAspose.WordsのPDF形式に変換するのは非常に簡単で、次のようなコード行だけで実現できます:

1. ドキュメント名とその書式拡張子を指定して、そのコンストラクタのいずれかを使用してドキュメントを[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)オブジェクトにロードします。
1. **Document**オブジェクトで[Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int)メソッドのいずれかを呼び出し、"を付けてファイル名を入力して、目的の出力形式をPDFとして指定します。PDF"拡張子。

次のコード例は、`Save`メソッドを使用して文書をDOCXからPDFに変換する方法を示しています:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

ドキュメントをPDFとして保存した結果に影響を与える追加のオプションを指定する必要がある場合があります。 これらのオプションは、PDF出力の表示方法を決定するプロパティを含む[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)クラスを使用して指定できます。

同じ手法を使用して、任意のフローレイアウト形式の文書をPDF形式に変換できます。

{{% /alert %}}

### 異なるPDF標準 {#converting-to-various-pdf-standards}に変換する

Aspose.Wordsは[PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)列挙体を提供し、DOCまたはDOCXをさまざまなPDF形式標準(次のような)に変換することをサポートしますPDF 1.7, PDF 1.5, など。).

次のコード例は、PDF17に準拠して[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)を使用して文書をPDF1.7に変換する方法を示しています:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## 画像をPDFに変換する

PDFへの変換はMicrosoft Word文書形式によって制限されません。 プログラムで作成されたものを含め、Aspose.Wordsでサポートされている形式はPDFに変換することもできます。 たとえば、次のような単一ページの画像を変換できますJPEG, PNG, BMP, EMF, またはWMF、およびTIFFやGIFなどの複数ページの画像からPDFまで。

次のコード例は、JPEGとTIFFの画像をPDFに変換する方法を示しています:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

このコードを動作させるには、Aspose.Words、Javaへの参照を追加する必要があります。awt。イメージ、およびjavax。imageioクラスパッケージをプロジェクトに追加します。

## PDF出力サイズを縮小する

PDFに保存するときに、出力を最適化するかどうかを指定できます。 これを行うには、[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput)フラグをtrueに設定する必要があり、冗長なネストされたキャンバスと空のキャンバスが削除され、同じ書式の隣接グリフが連結されます。

次のコード例は、出力を最適化する方法を示しています:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

**OptimizeOutput**プロパティを使用すると、コンテンツの表示の精度に影響する可能性があります。

{{% /alert %}}

## また見て下さい

- この記事は、 [レンダリング](/words/java/rendering/) 固定ページ形式とフローレイアウト形式の詳細については、以下を参照してください
- この記事は、 [固定ページ形式への変換](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) ページレイアウトの詳細については
- この記事は、 [PDFに変換するときのレンダリングオプションの指定](/words/java/specify-rendering-options-when-converting-to-pdf/) `PdfSaveOptions`クラスの使用の詳細については
