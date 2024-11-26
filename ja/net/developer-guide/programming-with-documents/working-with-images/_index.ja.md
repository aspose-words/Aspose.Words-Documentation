---
title: C# での画像の操作
second_title: .NET用Aspose.Words
articleTitle: 画像の操作
linktitle: 画像の操作
description: "Aspose.Words for .NET が提供する詳細な画像形状と高度な機能。"
type: docs
weight: 300
url: /ja/net/working-with-images/
timestamp: 2024-05-02-11-51-44
---

Aspose.Words を使用すると、ユーザーは非常に柔軟な方法で画像を操作できます。この記事では、画像を操作する可能性の一部のみを紹介します。

## 画像{#insert-an-image}を挿入する方法

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) は、インラインまたはフローティング イメージを挿入できる [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) メソッドのオーバーロードをいくつか提供します。画像が EMF または WMF メタファイルの場合、メタファイル形式でドキュメントに挿入されます。他のすべての画像は PNG 形式で保存されます。 **InsertImage** メソッドでは、さまざまなソースからの画像を使用できます。

- ファイルまたは `URL` から `String` パラメータ [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) を渡して送信
- `Stream` パラメータ **InsertImage** を渡すことによるストリームからの送信
- Image パラメータ **InsertImage** を渡して Image オブジェクトから
- バイト配列パラメータ **InsertImage** を渡すことによるバイト配列から

各 **InsertImage** メソッドには、次のオプションを使用してイメージを挿入できるオーバーロードがさらにあります。
- 特定の位置でのインラインまたはフローティング (**InsertImage** など)
- パーセンテージ スケールまたはカスタム サイズ (**InsertImage** など)。さらに、**InsertImage** メソッドは作成および挿入されたばかりの [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) オブジェクトを返すため、Shape のプロパティをさらに変更できます。

### インライン画像{#insert-an-inline-image}を挿入する方法

画像を含むファイルを表す単一の文字列を **InsertImage** に渡し、画像をインライン グラフィックとしてドキュメントに挿入します。

次のコード例は、ドキュメント内のカーソル位置にインライン イメージを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### フローティング イメージ {#insert-a-floating-image} を挿入する方法

次のコード例は、ファイルまたは `URL` から指定された位置とサイズにフローティング イメージを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## ドキュメントから画像を抽出する方法 {#how-to-extract-images-from-a-document}

すべてのイメージは、**Shape** ノード内の [Document](https://reference.aspose.com/words/net/aspose.words/document/) に保存されます。すべての画像、または特定のタイプの画像をドキュメントから抽出するには、次の手順に従います。

- [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) メソッドを使用して、すべての **Shape** ノードを選択します。
- 結果として得られるノード コレクションを反復処理します。
- [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/) ブール値プロパティを確認します。
- [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/) プロパティを使用して画像データを抽出します。
・画像データをファイルに保存します。

次のコード例は、ドキュメントから画像を抽出してファイルとして保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

この例のサンプル ファイルは [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx) からダウンロードできます。

{{% /alert %}}

## 各文書ページにバーコードを挿入する方法 {#how-to-insert-barcode-on-each-documen-page}

この例では、Word 文書のすべてのページまたは特定のページに同じまたは異なるバーコードを追加する方法を示します。ドキュメントのすべてのページにバーコードを追加する直接的な方法はありませんが、次のコードに示すように、**MoveToSection**、**MoveToHeaderFooter**、および **InsertImage** メソッドを使用して任意のセクションまたはヘッダー/フッターに移動し、バーコード イメージを挿入できます。

次のコード例は、ドキュメントの各ページにバーコード イメージを挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## 画像{#lock-aspect-ratio-of-image}のアスペクト比をロックする

幾何学的形状のアスペクト比は、さまざまな次元でのサイズの比率です。 [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) を使用して画像のアスペクト比をロックできます。シェイプのアスペクト比のデフォルト値は [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/) によって異なります。 `ShapeType.Image` の場合は *true*、他の形状タイプの場合は *false* です。

次のコード例は、アスペクト比を操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 実際の形状の境界をポイント単位で取得する方法 {#how-to-get-actual-bounds-of-shape-in-points}

ページ上に描画される形状の実際の境界ボックスが必要な場合は、[BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/) プロパティを使用してこれを実現できます。

次のコード例は、このプロパティの使用方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 画像のトリミング {#crop-images}

画像のトリミングとは通常、フレーミングを改善するために画像の不要な外側部分を除去することを指します。また、特定の領域への焦点を高めるために画像の一部を削除するためにも使用されます。

次のコード例は、Aspose.Words API を使用してこれを実現する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## 画像を WMF {#save-images-as-wmf} として保存

Aspose.Words は、DOCX を RTF に変換しながら、ドキュメント内の利用可能なすべての画像を [WMF](https://docs.fileformat.com/image/wmf/) 形式で保存する機能を提供します。

次のコード例は、RTF 保存オプションを使用して画像を WMF として保存する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
