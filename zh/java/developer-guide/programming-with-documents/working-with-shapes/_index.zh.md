---
title: 使用Java中的形状
second_title: Aspose.Words为Java
articleTitle: 使用形状
linktitle: 使用形状
type: docs
description: "介绍形状标记语言，使用Java创建不同类型的形状。"
weight: 280
url: /zh/java/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

本主题讨论如何使用Aspose.Words以编程方式处理形状。

Aspose.Words中的形状表示绘图层中的对象，例如AutoShape、textbox、freeform、OLE对象、ActiveX控件或图片。 Word文档可以包含一个或多个不同的形状。 文档的形状由[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)类表示。

## 使用文档生成器插入形状

您可以使用[InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double)方法将具有指定类型和大小的内联形状以及具有指定位置，大小和文本换行类型的自由浮动形状插入文档。 **InsertShape**方法允许在文档模型中插入DML形状。 文档必须以支持DML形状的格式保存，否则，这样的节点将被转换为VML形状，同时保存文档。

下面的代码示例演示如何将这些类型的形状插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## 设置长宽比锁定

使用Aspose.Words，您可以指定是否通过[AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked)属性锁定形状的宽高比。

下面的代码示例演示如何使用**AspectRatioLocked**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## 在单元格中设置形状布局

您还可以使用[IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell)属性指定形状是显示在表内部还是表外部。

下面的代码示例演示如何使用**IsLayoutInCell**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## 添加剪下的角

您可以使用Aspose.Words创建剪断角矩形。 形状类型为*SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,*和*DiagonalCornersRounded.*

使用这些形状类型的**InsertShape**方法创建DML形状。 这些类型不能用于创建VML形状。 尝试使用"Shape"类的公共构造函数创建shape会引发"NotSupportedException"异常。

下面的代码示例演示如何将这些类型的形状插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## 获取实际形状边界点

使用Aspose.WordsAPI，您可以获得包含块的形状的位置和大小（以点为单位），相对于最顶层形状的锚点。 为此，请使用[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints)属性。

下面的代码示例演示如何使用**BoundsInPoints**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 指定垂直锚点

您可以使用[VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor)属性指定形状内的文本垂直对齐。

下面的代码示例演示如何使用**VerticalAnchor**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## 检测SmartArt形状

Aspose.Words还允许检测形状是否有`SmartArt`对象。 为此，请使用[HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt)属性。

下面的代码示例演示如何使用**HasSmartArt**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## 水平规则格式

您可以使用[InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule)方法将水平规则形状插入到文档中。

Aspose.WordsAPI提供[HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat)属性来访问水平规则形状的属性。 [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/)类公开了基本属性，如高度，颜色，NoShade等。 用于水平规则的格式设置。

下面的代码示例演示如何设置**HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
