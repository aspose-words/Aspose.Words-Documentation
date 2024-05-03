---
title: WordをExcelに変換する Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: ドキュメントをExcelに変換する
linktitle: ドキュメントをExcelに変換する
description: "PDFをExcel、XML、Excel、DOCX、Excelに変換する Javaお問い合わせ さまざまな形式のドキュメントをXLSXに保存する Javaお問い合わせ"
type: docs
weight: 15
url: /ja/java/convert-a-document-to-excel/
---

1つの形式から別の形式への文書の変換は、 Aspose.Wordsお問い合わせ 利用可能な文書を変換することができます [ロード形式](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) XLSX 形式にも対応

## ドキュメントをXLSXに変換する

XLSX にドキュメントを変換するのは、かなり複雑なプロセスです。 ドキュメントをXLSX形式に保存するには、 <span notrans="<span notrans=" Aspose.Words"=""></span>????? 使用して下さい [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) クラスと新しい `Xlsx` 要素の [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) パンフレット 上記のように、サポートされている任意のロードフォーマットでドキュメントを保存することができます Aspose.Words XLSX に。

次のコードの例では、PDFをXLSXに保存する方法を示します。

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

時々追加のオプションを指定する必要があります。これは、XLSXとして文書を保存した結果に影響を与えることができます。 これらのオプションは、使用によって指定することができます [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) XLSX の出力方法を決定するプロパティを含むクラス。

{{% /alert %}}

## XLSX に保存するときの検索と置換

ご利用にあたって Aspose.Words, ドキュメントに特定の文字列や正規表現を見つけ、必要に応じて一致する文字列に置き換えることができます。 その後、結果をXLSX形式に保存することもできます。

次のコードの例では、検索を実行し、操作を交換し、結果をXLSXに保存する方法を示します。

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

## XLSXに保存するときの圧縮レベルを指定する

保存時に圧縮レベルを指定することもできます。 [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) プロパティ.

次のコードの例では、XLSX 形式に保存する際に圧縮レベルを指定する方法を示します。

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## お問い合わせ

- ドキュメントセクション [ドキュメントの保護または暗号化](/words/ja/java/protect-or-encrypt-a-document/) ドキュメントの保護と暗号化に関する詳細情報
- 記事 [見つけ、取り替えて下さい](/words/ja/java/find-and-replace/) あなたが望むコンテンツを見つけて置き換えることについての詳細情報
