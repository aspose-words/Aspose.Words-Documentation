---
title: C# で Word を Excel に変換する
second_title: .NET用Aspose.Words
articleTitle: ドキュメントを Excel に変換する
linktitle: ドキュメントを Excel に変換する
description: "PDF を Excel に、XML を Excel に、DOCX を Excel C# に変換します。 C# を使用して、ドキュメントをさまざまな形式で XLSX に保存します。"
type: docs
weight: 15
url: /ja/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

ドキュメントをある形式から別の形式に変換することは、Aspose.Words の主力機能です。利用可能な [ロードフォーマット](https://reference.aspose.com/words/net/aspose.words/loadformat/) のドキュメントを XLSX 形式に変換することもできます。

## ドキュメントをXLSXに変換する

ドキュメントを XLSX に変換するプロセスはかなり複雑です。 Aspose.Words を使用してドキュメントを XLSX 形式で保存するには、[XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) クラスと [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) 列挙の新しい `Xlsx` 要素を使用します。前述したように、Aspose.Words でサポートされている任意のロード形式でドキュメントを XLSX に保存できます。

次のコード例は、PDF を XLSX に保存する方法を示しています。

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

追加のオプションを指定する必要がある場合があります。これは、ドキュメントを XLSX として保存する結果に影響を与える可能性があります。これらのオプションは、XLSX 出力の表示方法を決定するプロパティを含む [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) クラスを使用して指定できます。

{{% /alert %}}

## XLSX に保存する際の検索と置換

また、Aspose.Words を使用すると、ドキュメント内で特定の文字列または正規表現を検索し、必要な一致する文字列または正規表現に置き換えることができます。その後、結果を XLSX 形式で保存することもできます。

次のコード例は、検索と置換操作を実行し、結果を XLSX に保存する方法を示しています。

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## XLSX に保存する際の圧縮レベルの指定

[CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) プロパティを使用して保存時に圧縮レベルを指定することもできます。

次のコード例は、XLSX 形式で保存するときに圧縮レベルを指定する方法を示しています。

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## 関連項目

- ドキュメントの保護と暗号化の詳細については、ドキュメント セクション [ドキュメントを保護または暗号化する](/words/ja/net/protect-or-encrypt-a-document/)
- 必要なコンテンツの検索と置換について詳しくは、[検索と置換](/words/ja/net/find-and-replace/) の記事をご覧ください。
