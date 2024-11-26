---
title: C++で文書をPDFに変換する
second_title: C++の場合Aspose.Words
articleTitle: 文書をPDFに変換する
linktitle: 文書をPDFに変換する
description: "C++を使用して文書をPDFに変換します。 Word、OpenOffice、Image、eBook形式など、さまざまな入力形式がサポートされています。"
type: docs
weight: 10
url: /ja/cpp/convert-a-document-to-pdf/
timestamp: 2024-10-21-08-52-03
---

文書をある形式から別の形式に簡単かつ確実に変換する機能は、Aspose.Wordsの重要な機能です。 変換のための最も一般的な形式の一つはPDFです–さまざまなプラットフォーム上でのレンダリング中にドキュメントの元の外観を維持する固定レイアウ Aspose.Wordsで"レンダリング"という用語は、ドキュメントをページ分割されたファイル形式またはページの概念を持つファイル形式に変換するプロセスを記述する

## Word文書をPDF{#convert-a-word-document-to-pdf}に変換する

単語からPDFへの変換は、いくつかの計算段階を必要とするかなり複雑なプロセスです。 Aspose.WordsレイアウトエンジンはMicrosoft Wordのページレイアウトエンジンの動作を模倣し、PDF出力ドキュメントをMicrosoft Wordで見ることができるものにできるだけ近く見えるようにします。

Aspose.Wordsを使用すると、Microsoft Officeを使用せずに、プログラムで文書をDOCまたはDOCX形式からPDFに変換できます。 この記事では、この変換を実行する方法について説明します。

{{% alert color="primary" %}}

ドキュメント内のページ数が変換時間に影響することに注意してください。

{{% /alert %}}

### DOCXまたはDOCをPDF{#converting-doc-or-docx-to-pdf}に変換する

DOCまたはDOCXドキュメント形式からAspose.WordsのPDF形式に変換するのは非常に簡単で、次のようなコード行だけで実現できます:

1. ドキュメント名とその書式拡張子を指定して、そのコンストラクタのいずれかを使用してドキュメントを[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)オブジェクトにロードします。
1. **Document**オブジェクトで[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)メソッドのいずれかを呼び出し、"を付けてファイル名を入力して、目的の出力形式をPDFとして指定します。PDF"拡張子。

次のコード例は、`Save`メソッドを使用して文書をDOCXからPDFに変換する方法を示しています:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

この例のテンプレートファイルは、次の場所からダウンロードできます [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

ドキュメントをPDFとして保存した結果に影響を与える追加のオプションを指定する必要がある場合があります。 これらのオプションは、PDF出力の表示方法を決定するプロパティを含む[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)クラスを使用して指定できます。

同じ手法を使用して、任意のフローレイアウト形式の文書をPDF形式に変換できます。

{{% /alert %}}

### 異なるPDF標準{#converting-to-various-pdf-standards}に変換する

Aspose.Wordsは[PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/)列挙体を提供し、DOCまたはDOCXをさまざまなPDF形式標準(次のような)に変換することをサポートしますPDF 1.7, PDF 1.5, など。).

次のコード例は、PDF17に準拠して[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)を使用して文書をPDF1.7に変換する方法を示しています:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## 画像をPDF{#convert-an-image-to-pdf}に変換する

PDFへの変換はMicrosoft Word文書形式によって制限されません。 Aspose.Wordsでサポートされている形式は、プログラムで作成されたものを含め、PDFに変換することもできます。 たとえば、JPEG、PNG、BMP、EMF、WMFなどの単一ページの画像や、TIFFやGIFなどの複数ページの画像をPDFに変換できます。

次のコード例は、JPEG画像とTIFF画像をPDFに変換する方法を示しています:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

このコードを動作させるには、Aspose.Wordsと`System.Drawing`への参照をプロジェクトに追加する必要があります。

## また見て下さい

- この記事は、 [レンダリング](/words/cpp/rendering/) 固定ページ形式とフローレイアウト形式の詳細については、以下を参照してください
- この記事は、 [固定ページ形式への変換](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) ページレイアウトの詳細については
- この記事は、 [PDFに変換するときのレンダリングオプションの指定](/words/cpp/specify-rendering-options-when-converting-to-pdf/) `PdfSaveOptions`クラスの使用の詳細については
