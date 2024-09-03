---
title: バーコードの作成方法
second_title: 「Aspose.Words for .NET」
articleTitle: カスタムバーコード画像を生成する
linktitle: カスタムバーコード画像を生成する
description: "「C#」を使ったバーコードの形状生成の例。"
type: docs
weight: 350
url: /ja/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

バーコードとは、平行線や模様の形でデータを表す視覚的な表現です。小売、物流、医療、銀行など、様々な業界でバーコードが広く使用されています。

「Microsoft Word はユーザーがドキュメントにバーコードを埋め込むことを可能にする。ユーザーは、QRコードや線形コードなどの特定の種類のバーコードを「[BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19)」フィールドを使用して挿入できる。」

「この記事では、BARCODEフィールドがどのようにAspose.Wordsで実装されているかを調べ、Aspose.Wordsがバーコードを追加済みのWord文書の操作をユーザーに可能にする方法について調査します。

## 「バーコードタイプ」サポートされているバーコードタイプ：「Aspose.Words」

「Aspose.Words は様々な種類のバーコードをサポートします。バーコードの種類は、[BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/) プロパティに文字列値として渡されます。」

{{% alert color="primary" %}}

「Aspose.Words」の機能内でバーコードを扱うことには制限があるため、ユーザーはAspose. Barcodeのような任意のライブラリを使用するか、バーコードを扱うための自作レンダリングを作成することができます。バーコードの種類について詳しくはこちらからご覧ください。「[supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/)」

{{% /alert %}}

「バールコードをサポートするワード形式に保存するときは、[supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)のどんな種類のバーコードでも使うことができます。間違った種類のバーコードが渡された場合、「Word」はエラーを表示します。」

「PDFのような他形式に保存する際に、Aspose.Wordsはバーコードの描画をユーザコードに委任するので、ユーザーはその実装または使用しているライブラリで利用可能なバーコードタイプに限定される。

## 「文書にバーコードを挿入するか、追加されたバーコードのある文書を読み込む」

「Aspose.Words は以下の機能を提供します：」

「１．ドキュメントにプログラムを使ってバーコードを挿入する　０ｆａｌｔｅｓ：[DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) と [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) フィールド」
２.または、バーコードが既に挿入されているWord文書を読み込み、作業を継続します。

Aspose.Wordsはカスタムバーコードの生成のためのインターフェースを提供し、[Aspose.Words](https://products.aspose.com/words/net/)と[Aspose.BarCode](https://products.aspose.com/barcode/net/)を簡単に一緒に使って出力文書にバーコード画像を出力できます。例えば、あなたはDOC、OOXML、またはRTF文書を作成して、Aspose.Wordsを使ってDISPLAYBARCODEフィールドを追加することができます。また、 이미 DISPLAYBARCODEフィールドを含むDOC、OOXML、またはRTF文書を読み込んで、自前のカスタムバーコードジェネレータの実装を提供することもできます。」

典型的なDISPLAYBARCODEフィールドは、以下の構文です：

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

ここでは、Aspose.Words と Aspose.BarCode API を使用するコード ジェネレーターの例を示します。この例では、Word ドキュメント内の DISPLAYBARCODE フィールド位置にバーコード画像を挿入する方法を示します。

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

また、PDF、XPS等の固定ページフォーマットに読み込んだり挿入したばかりのバーコード付き文書を保存することもできます。以下のコード例では、Word文書をPDFフォーマットで保存する方法を示しています：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

「別の形式の文書に変換する方法について詳しくは、 [Convert a Document](/words/net/convert-a-document/)ドキュメントセクションを参照してください。」

{{% /alert %}}

{{% alert color="primary" %}}

「Wordドキュメントに埋め込まれたバーコードを画像に変換する際にも、この[IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/)インターフェースを利用できます。変換された画像はドキュメントから抽出可能です。詳細についてはWorking with Imagesを参照してください。」

{{% /alert %}}

## バーコードオプションの指定

バーコードの作業をする時、いくつかの追加プロパティを設定できます。 Aspose.Words では、[BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/)クラス – バーコードパラメータを BarcodeGenerator に渡すためのクラス – を提供しています。

「Aspose.Wordsでは、[IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/)で生成された画像の埋め込み96 פי�ックスル解像度をサポートしており、これはバーバークオッド画像の最最小サイズに制限を与えます。これに対処するには、開発者は手動で対象の解像度のバーバークオッド画像をWordドキュメントに入力し、必要な形式で保存することができます。詳細と例については、記事[Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/)を参照してください。」