---
title: 在C++中使用水印
second_title: Aspose.Words对于C++
articleTitle: 使用水印
linktitle: 使用水印
type: docs
description: "使用C++进行文档水印操作。"
weight: 340
url: /zh/cpp/working-with-watermark/
timestamp: 2024-01-30-16-22-34
---

本主题讨论如何使用Aspose.Words以编程方式处理水印。 水印是在文档中的文本后面显示的背景图像。 水印可以包含由[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)类表示的文本或图像。

## 为文档添加水印

在Microsoft Word中，可以使用Insert Watermark命令轻松地在文档中插入水印。 Aspose.Words提供[watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)类以在文档中添加或删除水印。 Aspose.Words提供[WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)枚举，定义三种可能的水印类型（文本、图像和无）。

### 添加文字水印

下面的代码示例演示如何通过使用[SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/)方法定义[TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/)在文档中插入文本水印。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### 添加图像水印

下面的代码示例演示如何通过使用[SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/)方法定义[ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/)在文档中插入图像水印。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

水印也可以使用形状类插入。 将任何形状或图像插入页眉或页脚非常容易，从而创建任何可以想象的类型的水印。 下面的代码示例将水印插入到Word文档中。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## 从文档中删除水印

[Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/)类提供remove方法从文档中删除水印。

下面的代码示例演示如何从文档中删除水印:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

如果使用[Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/)类对象添加水印，那么要从文档中删除水印，您必须在插入过程中仅设置水印形状的名称，然后通过指定的名称删除水印形状。

下面的代码示例演示如何设置水印形状的名称并将其从文档中删除:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## 在表格单元格中添加水印

有时您需要将水印/图像插入表格的单元格并将其显示在表格之外，您可以使用[IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/)属性。 此属性获取或设置一个标志，该标志指示形状是显示在表内部还是表外部。 请注意，仅当您使用[OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/)方法优化Microsoft Word2010的文档时，此属性才有效。

下面的代码示例演示如何使用此属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
