---
title: Java でバーコードを作成
second_title: Aspose.Words の Java 用
articleTitle: カスタムバーコード画像を生成する
linktitle: カスタムバーコード画像を生成する
description: "Javaを使用したバーコードの形状生成の例"
type: docs
weight: 350
url: /ja/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

バーコードは、データを並行線または模様の形で表す視覚表現です。バーコードは小売業、物流業、医療、銀行業などのさまざまな産業で広く使用されています。

Microsoft Word はユーザーがドキュメントにバーコードを直接埋め込むことを可能にする。ユーザーは、QRコードや線形バーコードのような特定の種類のバーコードを、[BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) フィールドを使って挿入することができる。

本記事では、BARCODE フィールドがどのように Aspose.Words で実装されているか、そしてどのように Aspose.Words がユーザーがそのバーコードが追加されたWord文書で作業できるようにするかについて見ていきます。

## Aspose.Words がサポートするバーコードタイプ

Aspose.Words は様々なタイプのバーコードをサポートします。バーコードのタイプは、[BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType) プロパティに文字列値として渡されます。

{{% alert color="primary" %}}

バーコード機能内で作業可能で Aspose.Words は制限されているので、ユーザーは Aspose. Barcode を含む任意のライブラリを使用するか、独自のレンダリングを書き込むことができます。バーコードの種類について詳しくはここをクリックしてください [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/)。

{{% /alert %}}

バーコードをサポートするワード形式に保存するとき、[supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)種類のどんなタイプのバーコードでも使用することができます。間違ったタイプのバーコードが渡された場合、ワードはエラーを表示します。

PDFのような別形式を保存するとき、Aspose.Wordsはバーコードレンダリングをユーザコードに委任するので、実装または使用しているライブラリのバーコードタイプに限られる

## 文書にバーコードを挿入するか、追加されたバーコードの文書を読み込む

Aspose.Words は、以下の機能を提供します：

1. バーコードを文書にプログラムで挿入するには、＼[DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3)と＼[MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)フィールドコードを使用します
2. あるいは、バーコードが既に挿入されているワード文書を読み込み、さらに作業する

Aspose.Wordsは、カスタムバーコードを生成するためのインターフェースを提供しており、これにより[Aspose.Words](https://products.aspose.com/words/java/)と[Aspose.BarCode](https://products.aspose.com/barcode/java/)を組み合わせて出力ドキュメントでバーコード画像をレンダリングすることが簡単になります。たとえば、Aspose.Wordsを使用してDOC、OOXML、またはRTF文書を作成し、それを"DISPLAYBARCODE"フィールドで使用できます。または、"DISPLAYBARCODE"フィールドが既に存在するDOC、OOXML、またはRTF文書を読み込み、独自のバーコード生成器の実装を提供できます。

典型的DISPLAYBARCODEフィールドは、以下の構文です。

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

以下は、Aspose.Words と Aspose.BarCode API を使用したコード生成器の例です。この例では、Word ドキュメント内の DISPLAYBARCODE フィールド位置にバーコード画像を挿入する方法を示します。

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

また、既に読み込んでいるバーコードや新規に挿入したバーコードで文書を保存することができます。固定ページフォーマットとしてPDF、XPS、などです。以下のコード例はWord文書をPDFフォーマットで保存する方法を示しています。

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

文書を１形式から別の形式にコンバートする方法については、[Convert a Document](/words/java/convert-a-document/)ドキュメントを参照してください。

{{% /alert %}}

{{% alert color="primary" %}}

また、Word文書に埋め込まれたバーコードを画像に変換するために、[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)インターフェイスを使用できます。変換された画像は文書から抽出できます。詳細については、画像の使い方を参照してください。

{{% /alert %}}

## バーコードオプションを指定する

バーコードを扱っているときに、いくつかの追加のプロパティを設定できます。Aspose.Wordsは、[BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/)クラス-バーコードパラメータをBarcodeGeneratorに渡すためのクラスを提供します。

Aspose.Wordsでは、[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)で生成された画像に対して組み込み96ピクセル/インチの解像度をサポートし、バーコード画像の最小サイズを制限しています。これに対応するため、開発者はWord文書内に目的の解像度を持つバーコード画像を手動で挿入し、要求された形式に保存することができます。詳細と例については、記事[Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/)を参照してください。
