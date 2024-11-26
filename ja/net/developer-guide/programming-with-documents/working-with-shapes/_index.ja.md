---
title: C# でのシェイプの操作
second_title: .NET用Aspose.Words
articleTitle: 図形の操作
linktitle: 図形の操作
description: "C# を使用してさまざまなタイプのシェイプを作成する、シェイプ マークアップ言語の紹介。"
type: docs
weight: 280
url: /ja/net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

このトピックでは、Aspose.Words を使用してプログラムでシェイプを操作する方法について説明します。

Aspose.Words の図形は、オートシェイプ、テキストボックス、フリーフォーム、OLE オブジェクト、ActiveX コントロール、画像などの描画レイヤー内のオブジェクトを表します。 Word 文書には 1 つ以上の異なる図形を含めることができます。 Aspose.Words の形状は [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) クラスで表されます。

## ドキュメントビルダーを使用した図形の挿入

[InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) メソッドを使用して、指定したタイプとサイズのインライン図形、および指定した位置、サイズ、テキストの折り返しタイプのフリーフローティング図形をドキュメントに挿入できます。 **InsertShape** メソッドを使用すると、DML 形状をドキュメント モデルに挿入できます。ドキュメントは、DML 形状をサポートする形式で保存する必要があります。そうでない場合、ドキュメントの保存中に、そのようなノードは VML 形状に変換されます。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## アスペクト比を設定ロック

Aspose.Words を使用すると、[AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) プロパティを通じてシェイプのアスペクト比をロックするかどうかを指定できます。

次のコード例は、**AspectRatioLocked** プロパティを操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## セル内の図形レイアウトを設定

[IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) プロパティを使用して、図形をテーブルの内側に表示するかテーブルの外側に表示するかを指定することもできます。

次のコード例は、**IsLayoutInCell** プロパティを操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## 切り取り角長方形の作成

Aspose.Words を使用して角を切り取る長方形を作成できます。形状タイプは *SingleCornerSnipped、TopCornersSnipped、DiagonalCornersSnipped、TopCornersOneRoundedOneSnipped、SingleCornerRounded、TopCornersRounded*、および *DiagonalCornersRounded.* です。

DML 形状は、これらの形状タイプを使用して **InsertShape** メソッドを使用して作成されます。これらのタイプを使用して VML 形状を作成することはできません。 "Shape" クラスのパブリック コンストラクターを使用してシェイプを作成しようとすると、"NotSupportedException" 例外が発生します。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## 実際の形状の境界点を取得する

Aspose.Words API を使用すると、最上位のシェイプのアンカーを基準とした、ブロックを含むシェイプの位置とサイズをポイント単位で取得できます。これを行うには、[BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) プロパティを使用します。

次のコード例は、**BoundsInPoints** プロパティを操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 垂直アンカーを指定

[VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) プロパティを使用して、図形内のテキストの垂直方向の配置を指定できます。

次のコード例は、**VerticalAnchor** プロパティを操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## SmartArt 形状の検出

Aspose.Words では、Shape に `SmartArt` オブジェクトがあるかどうかを検出することもできます。これを行うには、[HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) プロパティを使用します。

次のコード例は、**HasSmartArt** プロパティを操作する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## 文書に横罫線を挿入する

[InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) メソッドを使用して、横罫線の形状を文書に挿入できます。

次のコード例は、これを行う方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API は、水平罫線形状のプロパティにアクセスするための [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) プロパティを提供します。 [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) クラスは、水平罫線の書式設定のための Height、Color、NoShade などの基本プロパティを公開します。

次のコード例は、**HorizontalRuleFormat** を設定する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Math XML を含むシェイプをシェイプとして DOM にインポート

[ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) プロパティを使用して、EquationXML の図形を Office Math オブジェクトに変換できます。このプロパティのデフォルト値は Microsoft Word の動作に対応します。つまり、方程式 XML を含む図形は Office 数学オブジェクトに変換されません。

次のコード例は、図形を Office Math オブジェクトに変換する方法を示しています。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
