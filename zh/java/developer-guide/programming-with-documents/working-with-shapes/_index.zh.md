---
title: 与形状合作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与形状合作
linktitle: 与形状合作
type: docs
description: "形状标记语言的介绍,使用 Java。 。 。 。"
weight: 280
url: /zh/java/working-with-shapes/
---

本议题讨论了如何在方案上利用各种形状开展工作。 Aspose.Words。 。 。 。

形状在 Aspose.Words 代表绘图层中的某个对象,例如AutoShape、文本框、freeform、OLE对象、ActiveX控制或图片。 一个Word文档可以包含一个或多个不同的形状. 文件的形状由以下文件代表: [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 课。

## 使用文档构建器插入形状

您可以在文档中插入带有指定类型和大小的内在形状,以及带有指定位置、大小和文本包类型的自由浮动形状。 [InsertShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertShape-int-double-double) 方法。 那个 **InsertShape** 方法允许在文档模型中插入DML形状。 文档必须保存在支持DML形状的格式中,否则,这样的节点会被转换成VML形状,同时保存文档.

以下代码示例显示如何在文档中插入这些类型的形状:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.java" >}}

## 设定侧面比锁定

使用 Aspose.Words, 您可以指定形状的侧面比是否通过 [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getAspectRatioLocked) 属性。

下面的代码示例显示如何与. **AspectRatioLocked** 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.java" >}}

## 在单元格中设置形状布局

您也可以指定形状是显示在表格内还是使用表格外 [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell) 属性。

下面的代码示例显示如何与. **IsLayoutInCell** 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}

## 添加弯角

您可以使用 Aspose.Words。 。 。 形状类型为 *SingleCornerSnipt, TopCornersSnipt, DiagonalCorners Snipt, TopCorners OneCorners OneCorners Snipt, SingCornerSnipt, TopCorners Snipt, * 和 TopCorners Snipt, * 和 TopCorners. *DiagonalCornersRounded.*

DML 形状是使用 **InsertShape** 这些形状类型的方法。 这些类型不能用来创建VML形状. 试图通过使用"形状"类的公共构造器来创造形状,提出了"不支持的例外"例外.

以下代码示例显示如何将这类形状插入文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-AddCornersSnipped.java" >}}

## 获取实际形状边界点

使用 Aspose.Words API, 您可以从最顶端形状的锚地上获得含有块的形状的位置和大小。 要做到这一点,使用 [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getBoundsInPoints) 属性。

下面的代码示例显示如何与. **BoundsInPoints** 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 指定垂直锁定

您可以使用 [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/textbox/#getVerticalAnchor) 属性。

下面的代码示例显示如何与. **VerticalAnchor** 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.java" >}}

## 检测智能 艺术形状

Aspose.Words 也可以检测形状是否有 `SmartArt` 对象。 要做到这一点,使用 [HasSmartArt](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasSmartArt) 属性。

下面的代码示例显示如何与. **HasSmartArt** 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-DetectSmartArtShape.java" >}}

## 水平规则格式

您可以使用 [InsertHorizontalRule](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHorizontalRule) 方法。

Aspose.Words API 提供 [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/shape/#getHorizontalRuleFormat) 属性以访问水平规则形状的属性。 那个 [HorizontalRuleFormat](https://reference.aspose.com/words/java/com.aspose.words/horizontalruleformat/) class 曝光了用于横向规则格式化的基本属性,如高度,颜色,NoShade等.

以下代码示例显示如何设置 **HorizontalRuleFormat**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-ShapeHorizontalRuleFormat.java" >}}
