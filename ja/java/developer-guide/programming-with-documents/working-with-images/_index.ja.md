---
title: イメージで働く Java
second_title: Aspose.Words お問い合わせ Java
articleTitle: 画像を扱う
linktitle: 画像を扱う
type: docs
description: "細部のイメージ図形および提供される高度の特徴 Aspose.Words お問い合わせ Javaお問い合わせ"
weight: 300
url: /ja/java/working-with-images/
---

Aspose.Words ユーザーが非常に柔軟な方法で画像を操作することができます。 この記事では、画像を扱う可能性の一部だけを探索することができます。

## ドキュメントから画像を抽出する方法 {#how-to-extract-images-from-a-document}

すべての画像は内部に保存されます **Shape** ドキュメント内のノード。 ドキュメントから特定のタイプを持つすべての画像や画像を抽出するには、次の手順に従ってください。

- 使用して下さい [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) すべてのShapeノードを選択する方法。
- 結果として得られるノードコレクションを通して反復します。
- チェック [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) booleanプロパティ。
- 画像データを抽出する [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) プロパティ.
- 画像データをファイルに保存します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## 各ドキュメントページでバーコードをインサートする方法 {#how-to-insert-barcode-on-each-documen-page}

この例では、Word文書のすべてのページまたは特定のページに同じまたは異なるバーコードを追加できます。 ドキュメントのすべてのページにバーコードを追加する直接の方法はありませんが、使用できる [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) そして、 [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) 任意のセクションまたはヘッダ/フッターに移動し、次のコードで見ることができるようにバーコード画像をインサートする方法。

次のコードの例では、ドキュメントの各ページでバーコードイメージをインサートする方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## 画像のロックアスペクト比 {#lock-aspect-ratio-of-image}

幾何学形状のアスペクト比は、寸法の異なる比率です。 画像のアスペクト比をロックできます。 [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)お問い合わせ 形状のアスペクト比のデフォルト値は、 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)お問い合わせ お問い合わせ true お問い合わせ `ShapeType.Image` そして、 false その他の形状タイプ

次のコードの例では、アスペクト比で動作する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## ポイントの形の実際の境界を取得する方法 {#how-to-get-actual-bounds-of-shape-in-points}

ページのレンダリングとして、形状の実際の境界ボックスが必要な場合は、これを使用することができます [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) プロパティ.

以下のコードの例では、このプロパティを使用する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 作物のイメージ

画像のクリッピングは通常、イメージの不要な外部分の除去を参照して、フラミングを改善するのに役立ちます。 特定の領域に焦点を増加させるために、画像の一部の除去にも使用されます。

以下のコード例では、この使用方法を示す Aspose.Words API:::

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## WMFとして画像を保存

Aspose.Words すべての利用可能な画像を文書に保存する機能を提供します [WMFの特長](https://docs.fileformat.com/image/wmf/)DOCX を RTF に変換しながらフォーマットします。

次のコードの例では、RTF 保存オプションで WMF として画像を保存する方法を示します。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
