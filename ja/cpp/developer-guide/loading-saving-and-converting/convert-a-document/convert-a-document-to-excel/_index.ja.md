---
title: C++でWordをExcelに変換する
second_title: C++の場合Aspose.Words
articleTitle: 文書をExcelに変換する
linktitle: 文書をExcelに変換する
description: "PDFをExcelに変換し、XMLをExcelに変換し、DOCXをExcel C++に変換します。 C++を使用して、さまざまな形式の文書をXLSXに保存します。"
type: docs
weight: 15
url: /ja/cpp/convert-a-document-to-excel/
---

ドキュメントをある形式から別の形式に変換することは、Aspose.Wordsの主要な機能です。 使用可能な任意の[load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/)の文書をXLSX形式に変換することもできます。

## 文書をXLSXに変換する

文書をXLSXに変換することは、かなり複雑なプロセスです。 Aspose.Wordsを使用して文書をXLSX形式で保存するには、**XlsxSaveOptions**クラスと[SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)列挙体の新しい`Xlsx`要素を使用します。 上記のように、Aspose.Wordsでサポートされている任意のロード形式で文書をXLSXに保存できます。

次のコード例は、PDFをXLSXに保存する方法を示しています:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## XLSXに保存するときの検索と置換

また、Aspose.Wordsを使用すると、文書内の特定の文字列または正規表現を見つけて、必要な一致する文字列に置き換えることができます。 その後、結果をXLSX形式で保存することもできます。

次のコード例は、検索および置換操作を実行し、結果をXLSXに保存する方法を示しています:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSXに保存するときの圧縮レベルの指定

また、**CompressionLevel**プロパティを使用して保存時に圧縮レベルを指定することもできます。

次のコード例は、XLSX形式に保存するときに圧縮レベルを指定する方法を示しています:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## また見て下さい

- ドキュメントセクション [文書の保護または暗号化](/words/cpp/protect-or-encrypt-a-document/) 文書の保護と暗号化の詳細については
- この記事は、 [検索と置換](/words/cpp/find-and-replace/) 必要なコンテンツの検索と置換の詳細については、次の手順を参照してください
