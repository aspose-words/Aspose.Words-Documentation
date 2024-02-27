---
title: 在 C# 中使用水印
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用水印
linktitle: 使用水印
description: "使用 C# 处理文档水印。"
type: docs
weight: 340
url: /zh/net/working-with-watermark/
---

本主题讨论如何使用 Aspose.Words 以编程方式处理水印。水印是显示在文档中文本后面的背景图像。水印可以包含由 [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) 类表示的文本或图像。

{{% alert color="primary" %}}

**在线尝试**

您可以使用我们的 [免费在线文档水印](https://products.aspose.app/words/watermark) 尝试此功能。

{{% /alert %}}

## 向文档添加水印

在 Microsoft Word 中，可以使用"插入水印"命令轻松地将水印插入到文档中。 Aspose.Words 提供了 [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) 类来添加或删除文档中的水印。 Aspose.Words 提供了 [水印类型](https://reference.aspose.com/words/net/aspose.words/watermark/type/)Enumeration，定义了三种可能使用的水印类型（文本、图像和无）。

### 添加文字水印

以下代码示例演示如何通过使用 [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext) 方法定义 [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) 在文档中插入文本水印：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### 添加图片水印

以下代码示例演示如何通过使用 [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage) 方法定义 [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) 在文档中插入图像水印：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

也可以使用形状类插入水印。将任何形状或图像插入页眉或页脚中非常容易，从而创建任何可以想象的类型的水印。

以下代码示例将水印插入到 Word 文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx) 下载本示例的示例文件。

{{% /alert %}}


## 从文档中删除水印

[Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) 类提供了remove 方法来从文档中删除水印。

以下代码示例演示如何从文档中删除水印：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

如果使用 [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) 类对象添加水印，则要从文档中删除水印，您必须在插入期间仅设置水印形状的名称，然后通过分配的名称删除水印形状。

以下代码示例向您展示如何设置水印形状的名称并将其从文档中删除：

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## 将水印添加到表格单元格中

有时您需要将水印/图像插入表格的单元格并将其显示在表格外，您可以使用 [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/) 属性。此属性获取或设置一个标志，指示形状是显示在表格内部还是表格外部。请注意，仅当您使用 [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) 方法针对 Microsoft Word 2010 优化文档时，此属性才起作用。

以下代码示例展示了如何使用此属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
