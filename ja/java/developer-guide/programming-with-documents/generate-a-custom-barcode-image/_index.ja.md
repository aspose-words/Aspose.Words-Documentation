---
title: JavaにBarCodeを作成する
second_title: Aspose.WordsのためのJava
articleTitle: カスタムBarCodeイメージを生成する
linktitle: カスタムBarCodeイメージを生成する
description: "Javaを使用したバーコード形状生成の例。"
type: docs
weight: 350
url: /ja/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

バーコードは、平行な線またはパターンの形でデータを視覚的に表現したものです。 バーコードは小売り、兵站学、ヘルスケア、銀行業、および多くの他のようなさまざまな企業で広く利用されています。

Microsoft Wordフィールドを使用して、ユーザーが直接文書にバーコードを埋め込むことができます。 ユーザーは、QRコードやリニアバーコードなどの特定のタイプのバーコードを挿入できます。 [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) フィールド。

この記事では、BARCODEフィールドがAspose.Wordsにどのように実装されているか、およびAspose.Wordsでバーコードが既に追加されているWord文書をユーザーが操作できるようにする方法を見

## Aspose.Wordsでサポートされているバーコードタイプ

Aspose.Wordsはさまざまな種類のバーコードをサポートします。 バーコードの種類は、[BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType)プロパティの文字列値として渡されます。

{{% alert color="primary" %}}

Aspose.Wordsの機能内でバーコードを操作することは制限されているため、ユーザーはAsposeを含む任意のライブラリを使用できます。バーコード、またはバーコードで動作するように彼自身のレンダリングを書きます。 バーコードの種類について詳しく知ることができます [Asposeでサポートされています。BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

バーコードをサポートするWord形式に保存する場合は、次のような任意のタイプのバーコードを使用できます。 [Microsoft Wordによってサポートされています](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). 誤った種類のバーコードが渡された場合、Wordはエラーを表示します。

PDFなどの他の形式に保存する場合、Aspose.Wordsはバーコードレンダリングをユーザーコードに委譲するため、ユーザーは使用される実装またはライブラリのバーコードタイプに

## 文書にバーコードを挿入するか、追加されたバーコードを含む文書をロードします

Aspose.Wordsは次の機能を提供します:

1. を使用して文書にバーコードをプログラムで挿入します。 [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) と [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) フィールドコード
2. または、さらなる作業のためにバーコードが既に挿入されているWord文書をロードします

Aspose.Wordsには、使いやすいカスタムバーコードを生成するためのインターフェイスがあります [Aspose.Words](https://products.aspose.com/words/java/) と [アスポーズBarCode](https://products.aspose.com/barcode/java/) 一緒に出力文書内のバーコード画像をレンダリングします。 たとえば、DOC、OOXML、またはRTFドキュメントを作成し、Aspose.Wordsを使用してDISPLAYBARCODEフィールドを追加できます。 または、DISPLAYBARCODEフィールドが既に存在するDOC、OOXML、またはRTFドキュメントをロードして、カスタムバーコードジェネレータの実装を提供することもできます。

典型的なDISPLAYBARCODEフィールドの構文は次のとおりです:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

以下は、Aspose.WordsとAsposeを使用したコードジェネレータの例です。BarCode APIs. この例では、Word文書のDISPLAYBARCODEフィールドの位置にバーコードイメージを挿入する方法を示します:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

また、PDF、XPSなどの固定ページ形式で、読み込まれたバーコードまたは新しく挿入されたバーコードを使用して文書を保存することもできます。 Word文書をPDF形式で保存する方法を次のコード例に示します:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

ドキュメントをある形式から別の形式に変換する方法の詳細については、次を参照してください。 [文書を変換する](/words/java/convert-a-document/) ドキュメントセクション。

{{% /alert %}}

{{% alert color="primary" %}}

また、[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)インターフェイスを使用して、Word文書に埋め込まれたバーコードを画像に変換することもできます。 結果の画像は、ドキュメントから抽出することができます–詳細については、画像での作業の記事を参照してください。

{{% /alert %}}

## バーコードオプションの指定

バーコードを操作するときは、いくつかの追加のプロパティを設定できます。 Aspose.Wordsは[BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/)クラスを提供します–バーコードパラメータをBarcodeGeneratorにパススルーするためのクラスです。

Aspose.Wordsは、[IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/)で生成された画像の埋め込み96ppi解像度をサポートし、バーコード画像の最小サイズを制限します。 これに対処するために、開発者は、目標解像度のバーコード画像をWord文書に手動で挿入し、必要な形式で保存することができます。 バーコードの操作の詳細と例については、記事を参照してください [Wordからコードを読み込む](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
