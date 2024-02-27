---
title: 在 C# 中使用形状
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用形状
linktitle: 使用形状
description: "介绍形状标记语言，使用 C# 创建不同类型的形状。"
type: docs
weight: 280
url: /zh/net/working-with-shapes/
---

本主题讨论如何使用 Aspose.Words 以编程方式处理形状。

Aspose.Words 中的形状表示绘图层中的对象，例如自选图形、文本框、自由格式、OLE 对象、ActiveX 控件或图片。 Word 文档可以包含一种或多种不同的形状。 Aspose.Words 中的形状由 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 类表示。

## 使用文档生成器插入形状

您可以使用 [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/) 方法将指定类型和大小的内联形状以及指定位置、大小和文本换行类型的自由浮动形状插入到文档中。 **InsertShape** 方法允许将 DML 形状插入到文档模型中。文档必须以支持DML形状的格式保存，否则，在保存文档时，此类节点将被转换为VML形状。

以下代码示例演示如何将这些类型的形状插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## 设置长宽比锁定

使用 Aspose.Words，您可以通过 [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) 属性指定是否锁定形状的纵横比。

以下代码示例演示如何使用 **AspectRatioLocked** 属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 在单元格中设置形状布局

您还可以使用 [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) 属性指定形状是显示在表格内部还是表格外部。

以下代码示例演示如何使用 **IsLayoutInCell** 属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## 创建剪角矩形

您可以使用 Aspose.Words 创建剪角矩形。形状类型为 *SingleCornerSnipped、TopCornersSnipped、DiagonalCornersSnipped、TopCornersOneRoundedOneSnipped、SingleCornerRounded、TopCornersRounded* 和 *DiagonalCornersRounded.*

DML 形状是使用 **InsertShape** 方法使用这些形状类型创建的。这些类型不能用于创建 VML 形状。尝试使用"Shape"类的公共构造函数创建形状会引发"NotSupportedException"异常。

以下代码示例展示了如何将这些类型的形状插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## 获取实际形状边界点

使用 Aspose.Words API，您可以获得包含块的形状相对于最顶部形状的锚点的位置和大小（以点为单位）。为此，请使用 [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/) 属性。

以下代码示例演示如何使用 **BoundsInPoints** 属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 指定垂直锚点

您可以使用 [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/) 属性指定形状内的文本垂直对齐方式。

以下代码示例演示如何使用 **VerticalAnchor** 属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## 检测 SmartArt 形状

Aspose.Words 还允许检测 Shape 是否具有 `SmartArt` 对象。为此，请使用 [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/) 属性。

以下代码示例演示如何使用 **HasSmartArt** 属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## 将水平线插入文档

您可以使用 [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/) 方法将水平线形状插入到文档中。

以下代码示例展示了如何执行此操作：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API 提供 [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) 属性来访问水平线形状的属性。 [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) 类公开了用于水平线格式设置的基本属性，例如高度、颜色、NoShade 等。

以下代码示例展示了如何设置 **HorizontalRuleFormat**：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## 将带有 Math XML 的形状作为形状导入 DOM

您可以使用 [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) 属性将带有 EquationXML 的形状转换为 Office Math 对象。此属性的默认值对应于 Microsoft Word 行为，即带有方程式 XML 的形状不会转换为 Office 数学对象。

以下代码示例演示如何将形状转换为 Office Math 对象：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
