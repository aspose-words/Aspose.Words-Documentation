---
title: Java内の図形の操作
second_title: Aspose.WordsのためのJava
articleTitle: 図形の操作
linktitle: 図形の操作
type: docs
description: "Shape markup languageの概要、Javaを使用して異なるタイプの図形を作成します。"
weight: 280
url: /ja/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

このトピックでは、Aspose.Wordsを使用して図形をプログラムで操作する方法について説明します。

Aspose.Wordsの図形は、AutoShape、textbox、freeform、OLEオブジェクト、ActiveXコントロール、または画像など、描画レイヤー内のオブジェクトを表します。 Word文書には、1つ以上の異なる図形を含めることができます。 ドキュメントの図形は[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)クラスで表されます。

## ドキュメントビルダーを使用した図形の挿入

[InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) メソッドを使用して、タイプとサイズが指定されたインライン シェイプと、位置、サイズ、テキスト折り返しタイプが指定されたフリー フローティング シェイプをドキュメントに挿入できます。**InsertShape** メソッドを使用すると、ドキュメント モデルに DML シェイプを挿入できます。ドキュメントは、DML シェイプをサポートする形式で保存する必要があります。そうでない場合、ドキュメントの保存時に、このようなノードは VML シェイプに変換されます。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## ロックされたアスペクト比を設定

Aspose.Wordsを使用すると、図形のアスペクト比を[AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked)プロパティでロックするかどうかを指定できます。

次のコード例は、**AspectRatioLocked**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## セル内の図形レイアウトを設定する

また、[IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell)プロパティを使用して、図形をテーブルの内側に表示するか、テーブルの外側に表示するかを指定することもできます。

次のコード例は、**IsLayoutInCell**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## 角切りを追加

Aspose.Wordsを使用してスニップ角矩形を作成することができます。 図形の種類は*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*と*DiagonalCornersRounded.*です

DML図形は、これらの図形タイプの**InsertShape**メソッドを使用して作成されます。 これらの型を使用してVML図形を作成することはできません。 "Shape"クラスのパブリックコンストラクタを使用してshapeを作成しようとすると、"NotSupportedException"例外が発生します。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## 実際の形状の境界点を取得する

Aspose.WordsAPIを使用すると、一番上の図形のアンカーを基準にして、ブロックを含む図形の位置とサイズをポイント単位で取得できます。 これを行うには、[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints)プロパティを使用します。

次のコード例は、**BoundsInPoints**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 縦のアンカーを指定して下さい

[VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor)プロパティを使用して、図形内のテキストの垂直方向の配置を指定できます。

次のコード例は、**VerticalAnchor**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## SmartArt形状の検出

Aspose.Wordsは、図形に`SmartArt`オブジェクトがあるかどうかを検出することもできます。 これを行うには、[HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt)プロパティを使用します。

次のコード例は、**HasSmartArt**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## 水平ルール形式

[InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule)メソッドを使用して、水平ルール形状を文書に挿入できます。

Aspose.WordsAPIは、水平ルール図形のプロパティにアクセスするための[HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat)プロパティを提供します。 [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/)クラスは、Height、Color、NoShadeなどの基本的なプロパティを公開します。 水平ルールの書式設定のために。

次のコード例は、**HorizontalRuleFormat**を設定する方法を示しています:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
