---
title: JavaでWordをExcelに変換する
second_title: Aspose.WordsのためのJava
articleTitle: 文書をExcelに変換する
linktitle: 文書をExcelに変換する
description: "PDFをExcelに、XMLをExcelに、DOCXをExcelJavaに変換します。 Javaを使用して、さまざまな形式の文書をXLSXに保存します。"
type: docs
weight: 15
url: /ja/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

ドキュメントをある形式から別の形式に変換することは、Aspose.Wordsの主要な機能です。 利用可能な任意の[ロード形式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/)形式の文書をXLSX形式に変換することもできます。

## 文書をXLSXに変換する

文書をXLSXに変換するのはかなり複雑なプロセスです。 Aspose.Wordsを使用して文書をXLSX形式で保存するには、[XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)クラスと[SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)列挙体の新しい`Xlsx`要素を使用します。 上記のように、Aspose.WordsからXLSXでサポートされている任意の読み込み形式でドキュメントを保存できます。

次のコード例は、PDFをXLSXに保存する方法を示しています:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

ドキュメントをXLSXとして保存した結果に影響を与える追加のオプションを指定する必要がある場合があります。 これらのオプションは、XLSX出力の表示方法を決定するプロパティを含む[XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)クラスを使用して指定できます。

{{% /alert %}}

## XLSXに保存するときの検索と置換

また、Aspose.Wordsを使用すると、文書内の特定の文字列または正規表現を見つけて、必要な一致する文字列に置き換えることができます。 その後、結果をXLSX形式で保存することもできます。

次のコード例は、検索および置換操作を実行し、結果をXLSXに保存する方法を示しています:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSXに保存するときの圧縮レベルの指定

また、[CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/)プロパティを使用して保存時に圧縮レベルを指定することもできます。

次のコード例は、XLSX形式で保存するときに圧縮レベルを指定する方法を示しています:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## また見て下さい

- ドキュメントセクション [文書の保護または暗号化](/words/java/protect-or-encrypt-a-document/) 文書の保護と暗号化の詳細については
- この記事は、 [検索と置換](/words/java/find-and-replace/) 必要なコンテンツの検索と置換の詳細については、次の手順を参照してください
