---
title: 处理 C# 中的图像
second_title: .NET 格式的 Aspose.Words
articleTitle: 处理图像
linktitle: 处理图像
description: "Aspose.Words for .NET 提供的图像形状细节和高级功能。"
type: docs
weight: 300
url: /zh/net/working-with-images/
---

Aspose.Words 允许用户以非常灵活的方式处理图像。在本文中，您只能探索处理图像的一些可能性。

## 如何插入图像 {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 提供了 [InsertImage](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertimage/) 方法的多个重载，允许您插入内联或浮动图像。如果图像是 EMF 或 WMF 图元文件，它将以图元文件格式插入到文档中。所有其他图像都将以 PNG 格式存储。 **InsertImage** 方法可以使用来自不同来源的图像：

- 通过传递 `String` 参数 [InsertImage](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertimage/) 从文件或 `URL` 中
- 通过传递 `Stream` 参数 **InsertImage** 从流中
- 通过传递 Image 参数 **InsertImage** 从 Image 对象
- 通过传递字节数组参数 **InsertImage** 从字节数组中获取

对于每个 **InsertImage** 方法，还有更多重载，允许您使用以下选项插入图像：
- 内联或浮动在特定位置，例如 **InsertImage**
- 百分比比例或自定义尺寸，例如 **InsertImage**；此外，**InsertImage** 方法返回刚刚创建和插入的 [Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/) 对象，以便您可以进一步修改 Shape 的属性

### 如何插入内联图像 {#insert-an-inline-image}

将表示包含图像的文件的单个字符串传递给 **InsertImage**，以将图像作为内联图形插入到文档中。

以下代码示例演示如何将光标位置处的内联图像插入到文档中：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### 如何插入浮动图像 {#insert-a-floating-image}

以下代码示例演示如何从文件或 `URL` 在指定位置和大小插入浮动图像：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## 如何从文档 {#how-to-extract-images-from-a-document} 中提取图像

所有图像都存储在 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 中的 **Shape** 节点内。要从文档中提取所有图像或具有特定类型的图像，请按照下列步骤操作：

- 使用[GetChildNodes](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/getchildnodes/)方法选择所有**Shape**节点。
- 迭代结果节点集合。
- 检查 [HasImage](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/hasimage/) 布尔属性。
- 使用 [ImageData](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/imagedata/) 属性提取图像数据。
- 将图像数据保存到文件中。

以下代码示例演示如何从文档中提取图像并将其另存为文件：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx) 下载本示例的示例文件。

{{% /alert %}}

## 如何在每个文档页 {#how-to-insert-barcode-on-each-documen-page} 上插入条形码

此示例演示如何在 Word 文档的所有或特定页面上添加相同或不同的条形码。没有直接的方法可以在文档的所有页面上添加条形码，但您可以使用 **MoveToSection**、**MoveToHeaderFooter** 和 **InsertImage** 方法移动到任何部分或页眉/页脚并插入条形码图像，如以下代码所示。

以下代码示例演示如何在文档的每一页上插入条形码图像：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## 锁定图像 {#lock-aspect-ratio-of-image} 的长宽比

几何形状的长宽比是其在不同维度上的大小之比。您可以使用 [AspectRatioLocked](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shapebase/aspectratiolocked/) 锁定图像的纵横比。形状纵横比的默认值取决于 [ShapeType](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shapetype/)。对于 `ShapeType.Image`，它是 *true*；对于其他形状类型，它是 *false*。

以下代码示例展示了如何使用宽高比：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## 如何获取点 {#how-to-get-actual-bounds-of-shape-in-points} 中的实际形状边界

如果您希望在页面上呈现形状的实际边界框，则可以使用 [BoundsInPoints](https://reference.aspose.com/words/zh/net/aspose.words.rendering/noderendererbase/boundsinpoints/) 属性来实现。

以下代码示例展示了如何使用此属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## 裁剪图像 {#crop-images}

图像的裁剪通常是指去除图像中不需要的外部部分以帮助改善取景。它还用于删除图像的某些部分以增加对特定区域的关注。

以下代码示例展示了如何使用 Aspose.Words API 实现此目的：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## 将图像另存为 WMF {#save-images-as-wmf}

Aspose.Words 提供将文档中所有可用图像保存为 [WMF](https://docs.fileformat.com/image/wmf/) 格式，同时将 DOCX 转换为 RTF 的功能。

以下代码示例演示如何使用 RTF 保存选项将图像保存为 WMF：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
