---
title: 在C++中使用形状
second_title: Aspose.Words对于C++
articleTitle: 使用形状
linktitle: 使用形状
type: docs
description: "Shape标记语言简介，使用C++创建不同类型的形状。"
weight: 280
url: /zh/cpp/working-with-shapes/
---

本主题讨论如何使用Aspose.Words以编程方式处理形状。

Aspose.Words中的形状表示绘图层中的对象，例如AutoShape、textbox、freeform、OLE对象、ActiveX控件或图片。 Word文档可以包含一个或多个不同的形状。 文档的形状由[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)类表示。

## 使用文档生成器插入形状

您可以使用[InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/)方法将具有指定类型和大小的内联形状以及具有指定位置，大小和文本换行类型的自由浮动形状插入文档。 **InsertShape**方法允许在文档模型中插入DML形状。 文档必须以支持DML形状的格式保存，否则，这样的节点将被转换为VML形状，同时保存文档。

下面的代码示例演示如何将这些类型的形状插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## 设置长宽比锁定

使用Aspose.Words，您可以指定是否通过[AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/)属性锁定形状的宽高比。

下面的代码示例演示如何使用**AspectRatioLocked**属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## 在单元格中设置形状布局

您还可以使用[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/)属性指定形状是显示在表内部还是表外部。

下面的代码示例演示如何使用**IsLayoutInCell**属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## 创建剪断角矩形

您可以使用Aspose.Words创建剪断角矩形。 形状类型为*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*和*DiagonalCornersRounded.*

使用具有这些形状类型的**InsertShape**方法创建DML形状。 这些类型不能用于创建VML形状。 尝试使用"Shape"类的公共构造函数创建shape会引发"NotSupportedException"异常。

下面的代码示例演示如何将这些类型的形状插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## 获取实际形状边界点

使用Aspose.WordsAPI，您可以获得包含块的形状的位置和大小（以点为单位），相对于最顶层形状的锚点。 为此，请使用[BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/)属性。

下面的代码示例演示如何使用**BoundsInPoints**属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## 水平规则格式

Aspose.WordsAPI提供[HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/)属性来访问水平规则形状的属性。 **HorizontalRuleFormat**类公开了基本属性，如高度，颜色，阴影等。 用于水平规则的格式设置。

下面的代码示例演示如何设置**HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## 插入OLE对象作为图标

Aspose.WordsAPI提供**Shape**→**InsertOleObjectAsIcon**函数，将嵌入或链接的OLE对象作为图标插入到文档中。 此功能允许指定图标文件和标题。 应使用文件扩展名检测`OLE`对象类型。

下面的代码示例演示如何将insertOLE对象设置为文档中的图标:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

图标的最大尺寸必须为32x32才能正确显示。

{{% /alert %}}
