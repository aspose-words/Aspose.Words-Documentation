---
title: Java内の画像の操作
second_title: Aspose.WordsのためのJava
articleTitle: 画像の操作
linktitle: 画像の操作
type: docs
description: "Javaに対してAspose.Wordsによって提供される詳細と高度な機能の画像形状。"
weight: 300
url: /ja/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Wordsを使用すると、ユーザーは非常に柔軟な方法で画像を操作できます。 この記事では、画像を操作する可能性のいくつかのみを探索できます。

## 文書 {#how-to-extract-images-from-a-document}から画像を抽出する方法

すべての画像はドキュメント内の**Shape**ノード内に保存されます。 すべての画像または特定の種類の画像をドキュメントから抽出するには、次の手順を実行します:

- すべてのシェイプノードを選択するには、[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes)メソッドを使用します。
- 結果のノードコレクションを反復処理します。
- ブールプロパティ[hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage)を確認します。
- [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData)プロパティを使用してイメージデータを抽出します。
- 画像データをファイルに保存します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## 各文書ページにバーコードを挿入する方法 {#how-to-insert-barcode-on-each-documen-page}

この例では、Word文書のすべてのページまたは特定のページに同じまたは異なるバーコードを追加できます。 ドキュメントのすべてのページにバーコードを直接追加する方法はありませんが、[moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)、[moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)、[insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[]))メソッドを使用して任意のセクションまたはヘッダー/フッターに移動し、次のコードでわかるようにバーコード画像を挿入することができます。

次のコード例は、ドキュメントの各ページにバーコードイメージを挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## イメージ {#lock-aspect-ratio-of-image}のアスペクト比をロックする

幾何学的形状のアスペクト比は、異なる寸法におけるそのサイズの比である。 [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)を使用して画像のアスペクト比をロックできます。 シェイプのアスペクト比のデフォルト値は[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)に依存します。 これは`ShapeType.Image`ではtrue、他の図形タイプではfalseです。

次のコード例は、アスペクト比を操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## 点 {#how-to-get-actual-bounds-of-shape-in-points}で形状の実際の境界を取得する方法

ページ上にレンダリングされた形状の実際の境界ボックスが必要な場合は、[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints)プロパティを使用してこれを実現できます。

次のコード例は、このプロパティを使用する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 画像の切り抜き

画像のトリミングとは、通常、フレーミングを改善するために、画像の不要な外側部分を除去することを指します。 また、特定の領域への焦点を増やすために、画像の一部を除去するためにも使用されます。

次のコード例は、Aspose.WordsAPIを使用してこれを実現する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## 画像をWMFとして保存する

Aspose.Wordsは、ドキュメント内の使用可能なすべての画像を保存する機能を提供します。 [WMF](https://docs.fileformat.com/image/wmf/)DOCXをRTFに変換している間にフォーマットします。

次のコード例は、RTF保存オプションを使用して画像をWMFとして保存する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
