---
title: C++での図形の操作
second_title: C++の場合Aspose.Words
articleTitle: 図形の操作
linktitle: 図形の操作
type: docs
description: "Shape markup languageの概要、C++を使用してさまざまな型の図形を作成します。"
weight: 280
url: /ja/cpp/working-with-shapes/
---

このトピックでは、Aspose.Wordsを使用して図形をプログラムで操作する方法について説明します。

Aspose.Wordsの図形は、AutoShape、textbox、freeform、OLEオブジェクト、ActiveXコントロール、または画像など、描画レイヤー内のオブジェクトを表します。 Word文書には、1つ以上の異なる図形を含めることができます。 ドキュメントの図形は[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)クラスで表されます。

## ドキュメントビルダーを使用した図形の挿入

[InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/)メソッドを使用して、指定されたタイプとサイズのインライン図形と、指定された位置、サイズ、テキスト折り返しタイプの自由浮動図形をドキュメントに挿入できます。 **InsertShape**メソッドを使用すると、dml図形をドキュメントモデルに挿入できます。 それ以外の場合は、ドキュメントの保存中にそのようなノードがVML形状に変換されます。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## ロックされたアスペクト比を設定

Aspose.Wordsを使用すると、図形のアスペクト比を[AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/)プロパティでロックするかどうかを指定できます。

次のコード例は、**AspectRatioLocked**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## セル内の図形レイアウトを設定する

また、[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/)プロパティを使用して、図形をテーブルの内側に表示するか、テーブルの外側に表示するかを指定することもできます。

次のコード例は、**IsLayoutInCell**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## スニップ角の長方形を作成します。

Aspose.Wordsを使用してスニップ角矩形を作成することができます。 図形の種類は*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*と*DiagonalCornersRounded.*です

DML図形は、これらの図形タイプの**InsertShape**メソッドを使用して作成されます。 これらの型を使用してVML図形を作成することはできません。 "Shape"クラスのパブリックコンストラクタを使用してshapeを作成しようとすると、"NotSupportedException"例外が発生します。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## 実際の形状の境界点を取得する

Aspose.WordsAPIを使用すると、一番上の図形のアンカーを基準にして、ブロックを含む図形の位置とサイズをポイント単位で取得できます。 これを行うには、[BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/)プロパティを使用します。

次のコード例は、**BoundsInPoints**プロパティを操作する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## 水平ルール形式

Aspose.WordsAPIは、水平ルールシェイプのプロパティにアクセスするための[HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/)プロパティを提供します。 **HorizontalRuleFormat**クラスは、Height、Color、Shadeなどの基本的なプロパティを公開します。 水平ルールの書式設定のために。

次のコード例は、**HorizontalRuleFormat**を設定する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Oleオブジェクトをアイコンとして挿入する

Aspose.WordsAPIは、埋め込みまたはリンクされたOLEオブジェクトをアイコンとしてドキュメントに挿入する**Shape**→**InsertOleObjectAsIcon**関数を提供します。 この機能は、アイコンファイルとキャプションを指定することができます。 `OLE`オブジェクトタイプは、ファイル拡張子を使用して検出されます。

次のコード例は、oleオブジェクトをアイコンとしてドキュメントに挿入する方法を示しています:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

アイコンの最大サイズは、正しい表示のために32x32でなければなりません。

{{% /alert %}}
