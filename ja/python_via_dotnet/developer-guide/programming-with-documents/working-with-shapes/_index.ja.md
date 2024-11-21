---
title: Python でのシェイプの操作
second_title: Python via .NET用Aspose.Words
articleTitle: 図形の操作
linktitle: 図形の操作
description: "Python を使用して、ドキュメント内の図形やオブジェクトを作成および管理します。"
type: docs
weight: 280
url: /ja/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

このトピックでは、Aspose.Words を使用してプログラムでシェイプを操作する方法について説明します。

Aspose.Words の図形は、オートシェイプ、テキストボックス、フリーフォーム、OLE オブジェクト、ActiveX コントロール、画像などの描画レイヤー内のオブジェクトを表します。 Word 文書には 1 つ以上の異なる図形を含めることができます。文書の形状は[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)クラスで表現されます。

## ドキュメントビルダーを使用した図形の挿入

[insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) メソッドを使用して、指定したタイプとサイズのインライン図形、および指定した位置、サイズ、テキストの折り返しタイプのフリーフローティング図形をドキュメントに挿入できます。 [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) メソッドを使用すると、DML 形状をドキュメント モデルに挿入できます。ドキュメントは、DML 形状をサポートする形式で保存する必要があります。そうでない場合、ドキュメントの保存中に、そのようなノードは VML 形状に変換されます。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## アスペクト比を設定ロック

Aspose.Words を使用すると、[aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) プロパティを通じてシェイプのアスペクト比をロックするかどうかを指定できます。

次のコード例は、**AspectRatioLocked** プロパティを操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## セル内の図形レイアウトを設定

[is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/) プロパティを使用して、図形をテーブルの内側に表示するかテーブルの外側に表示するかを指定することもできます。

次のコード例は、**IsLayoutInCell** プロパティを操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## 切り取り角長方形の作成

Aspose.Words を使用して角を切り取る長方形を作成できます。形状タイプは、[SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped)、[TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped)、[DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped)、[TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped)、[SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded)、[TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded)、[DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded) です。

DML 形状は、これらの形状タイプを使用して [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) メソッドを使用して作成されます。これらのタイプを使用して VML 形状を作成することはできません。 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) クラスのパブリック コンストラクターを使用してシェイプを作成しようとすると、「NotSupportedException」例外が発生します。

次のコード例は、これらの種類の図形をドキュメントに挿入する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## 実際の形状の境界点を取得する

Aspose.Words API を使用すると、最上位のシェイプのアンカーを基準とした、ブロックを含むシェイプの位置とサイズをポイント単位で取得できます。これを行うには、[bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/) プロパティを使用します。

次のコード例は、**BoundsInPoints** プロパティを操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## 垂直アンカーを指定

[vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/) プロパティを使用して、図形内のテキストの垂直方向の配置を指定できます。

次のコード例は、**VerticalAnchor** プロパティを操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## SmartArt 形状の検出

Aspose.Words では、Shape に `SmartArt` オブジェクトがあるかどうかを検出することもできます。これを行うには、[has_smart_art プロパティ](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/) プロパティを使用します。

次のコード例は、**HasSmartArt** プロパティを操作する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## 文書に横罫線を挿入する

[insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/) メソッドを使用して、横罫線の形状を文書に挿入できます。

次のコード例は、これを行う方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API は、水平罫線形状のプロパティにアクセスするための [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) プロパティを提供します。 [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) クラスは、水平罫線の書式設定のための [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/)、[color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/)、[no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/) などの基本プロパティを公開します。

次のコード例は、[HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) を設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## OLE オブジェクトをアイコンとして挿入

Aspose.Words API は、埋め込みまたはリンクされた OLE オブジェクトをアイコンとしてドキュメントに挿入する **Shape.insert_ole_object_as_icon** 関数を提供します。この機能ではアイコンファイルとキャプションを指定できます。 `OLE` オブジェクト タイプは、ファイル拡張子を使用して検出されます。

次のコード例は、OLE オブジェクトをアイコンとしてドキュメントに挿入するように設定する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

正しく表示するには、アイコンの最大サイズが 32x32 である必要があります。

{{% /alert %}}

## Math XML を含むシェイプをシェイプとして DOM にインポート

[convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) プロパティを使用して、EquationXML の図形を Office Math オブジェクトに変換できます。このプロパティのデフォルト値は MS Word の動作に対応しています。つまり、方程式 XML を含む図形は Office 数学オブジェクトに変換されません。

次のコード例は、図形を Office Math オブジェクトに変換する方法を示しています。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
