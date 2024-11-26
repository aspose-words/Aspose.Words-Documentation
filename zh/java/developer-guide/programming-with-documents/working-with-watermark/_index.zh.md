---
title: 与 Watermark 合作于 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与水印合作
linktitle: 与水印合作
type: docs
description: "使用水印操作文档 Java。 。 。 。"
weight: 70
url: /zh/java/working-with-watermark/
timestamp: 2024-01-27-14-07-04
---

本专题讨论如何利用水印在方案上开展工作。 Aspose.Words。 。 。 一个水印是一个背景图像,在文档中显示文本后面. 水印可以包含文本或以 [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 课。

{{% alert color="primary" %}}

**尝试在线**

你可以试试这个功能与我们 [免费在线文档水印](https://products.aspose.app/words/watermark)。 。 。 。

{{% /alert %}}

## 在文档中添加水印

内 Microsoft Word, 使用"插入水印"命令,可以在文档中插入水印。 Aspose.Words 提供 [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 在文档中添加或删除水印。 Aspose.Words 提供 [水印 类型](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/)列出要工作的三种可能类型的水印(文本、图像和无)。

### 添加文字水印

以下代码示例说明如何通过定义在文档中插入文本水印 [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) 使用 [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String) 方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### 添加图像水印

以下代码示例说明如何通过定义在文档中插入图像水印 [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) 使用 [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage) 方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

水印也可以使用形状类插入. 很容易将任何形状或图像插入一个页眉或页脚,从而创建一个任何可想象类型的水印。

以下代码示例将水印插入到 Word 文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc)。 。 。 。

{{% /alert %}}


## 从文档中删除水印

那个 [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) 类提供 `Remove` 从文档中删除水印的方法。

以下代码示例显示如何从文档中删除水印:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

要从文档中删除水印,您必须在插入时仅设置水印形状的名称,然后用指定的名称去除水印形状。

以下代码示例显示如何设置水印形状的名称并从文档中移除:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## 将水印添加到表格单元格

有时需要在表格的单元格中插入水印/图像,并在表格外显示,可以使用 [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean) 属性。 此属性获得或设置一个标志,表明形状是显示在表格内还是表外。 请注意,此属性只有在您优化文档时才有效 。 Microsoft Word 2010年使用 [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) 方法。

以下代码示例显示如何使用此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
