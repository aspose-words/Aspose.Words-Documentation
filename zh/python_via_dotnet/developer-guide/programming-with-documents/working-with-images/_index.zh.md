---
title: 处理 Python 中的图像
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 处理图像
linktitle: 处理图像
description: "使用 Python 创建和管理文档中各种格式的图像。"
type: docs
weight: 300
url: /zh/python-net/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 允许用户以非常灵活的方式处理图像。在本文中，您只能探索处理图像的一些可能性。

## 插入图像

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 提供了 [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) 方法的多个重载，允许您插入内联或浮动图像。如果图像是 EMF 或 WMF 图元文件，它将以图元文件格式插入到文档中。所有其他图像都将以 PNG 格式存储。 **插入图像** 方法可以使用来自不同来源的图像：

- 通过传递字符串参数从文件或 `URL`
- 通过传递 `Stream` 参数从流中
- 通过传递字节数组参数从字节数组中获取

对于每个 **插入图像** 方法，还有更多重载，允许您使用以下选项插入图像：
- 内联或浮动在特定位置，例如 **插入图像**
- 百分比比例或自定义尺寸；此外，[DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) 方法返回刚刚创建和插入的 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 对象，以便您可以进一步修改 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 的属性

### 插入内嵌图像

将表示包含图像的文件的单个字符串传递给 [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/)，以将图像作为内联图形插入到文档中。

以下代码示例演示如何将光标位置处的内联图像插入到文档中：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### 插入浮动（绝对定位）图像

以下代码示例演示如何从文件或 `URL` 在指定位置和大小插入浮动图像：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## 如何从文档中提取图像

所有图像都存储在 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 中的 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 节点内。要从文档中提取所有图像或具有特定类型的图像，请按照下列步骤操作：

- 使用[Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/)方法选择所有[Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)节点。
- 迭代结果节点集合。
- 检查 [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/) 布尔属性。
- 使用 [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/) 属性提取图像数据。
- 将图像数据保存到文件中。

以下代码示例演示如何从文档中提取图像并将其另存为文件：

您可以从[这里](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx)下载本示例的模板文件。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx) 下载本示例的示例文件。

{{% /alert %}}

## 如何在文档的每一页上插入条形码

此示例演示如何在 Word 文档的所有或特定页面上添加相同或不同的条形码。没有直接的方法可以在文档的所有页面上添加条形码，但您可以使用 [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/)、[move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) 和 [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) 方法移动到任何部分或页眉/页脚并插入条形码图像，如以下代码所示。

以下代码示例在文档的每一页上插入条形码图像。

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## 锁定图像的纵横比

几何形状的长宽比是其在不同维度上的大小之比。您可以使用 [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) 锁定图像的纵横比。形状纵横比的默认值取决于 [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/)。对于 [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)，它是 `True`；对于其他形状类型，它是 `False`。

以下代码示例展示了如何使用宽高比：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## 如何获取实际形状边界（以点为单位）

如果您希望在页面上呈现形状的实际边界框，则可以使用 [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) 属性来实现。

以下代码示例展示了如何使用此属性：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## 裁剪图像

图像的裁剪通常是指去除图像中不需要的外部部分以帮助改善取景。它还用于删除图像的某些部分以增加对特定区域的关注。

以下代码示例展示了如何使用 Aspose.Words API 实现此目的：

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## 将图像保存为 WMF

Aspose.Words 提供将文档中所有可用图像保存为 [WMF](https://docs.fileformat.com/image/wmf/) 格式，同时将 DOCX 转换为 RTF 的功能。

以下代码示例演示如何使用 RTF 保存选项将图像保存为 WMF：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
