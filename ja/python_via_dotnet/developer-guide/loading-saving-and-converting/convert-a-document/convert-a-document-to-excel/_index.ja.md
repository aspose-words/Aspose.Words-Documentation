---
title: Python で Word を Excel に変換する
second_title: Python via .NET用Aspose.Words
articleTitle: ドキュメントを Excel に変換する
linktitle: ドキュメントを Excel に変換する
description: "PDF を Excel に、XML を Excel に、DOCX を Excel Python に変換します。 Python を使用して、ドキュメントをさまざまな形式で XLSX に保存します。"
type: docs
weight: 15
url: /ja/python-net/convert-a-document-to-excel/
---

ドキュメントをある形式から別の形式に変換することは、Aspose.Words の主力機能です。利用可能な [ロードフォーマット](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) のドキュメントを XLSX 形式に変換することもできます。

## ドキュメントをXLSXに変換する

ドキュメントを XLSX に変換するプロセスはかなり複雑です。 Aspose.Words を使用してドキュメントを XLSX 形式で保存するには、[XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) クラスと [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) 列挙の新しい `Xlsx` 要素を使用します。前述したように、Aspose.Words でサポートされている任意のロード形式でドキュメントを XLSX に保存できます。

次のコード例は、PDF を XLSX に保存する方法を示しています。

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

追加のオプションを指定する必要がある場合があります。これは、ドキュメントを XLSX として保存する結果に影響を与える可能性があります。これらのオプションは、XLSX 出力の表示方法を決定するプロパティを含む [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) クラスを使用して指定できます。

{{% /alert %}}

## XLSX に保存する際の検索と置換

また、Aspose.Words を使用すると、ドキュメント内で特定の文字列または正規表現を検索し、必要な一致する文字列または正規表現に置き換えることができます。その後、結果を XLSX 形式で保存することもできます。

次のコード例は、検索と置換操作を実行し、結果を XLSX に保存する方法を示しています。

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## XLSX に保存する際の圧縮レベルの指定

[CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) プロパティを使用して保存時に圧縮レベルを指定することもできます。

次のコード例は、XLSX 形式で保存するときに圧縮レベルを指定する方法を示しています。

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## 関連項目

- ドキュメントの保護と暗号化の詳細については、ドキュメント セクション [ドキュメントを保護または暗号化する](/words/ja/python-net/protect-or-encrypt-a-document/)
- 必要なコンテンツの検索と置換について詳しくは、[検索と置換](/words/ja/python-net/find-and-replace/) の記事をご覧ください。
