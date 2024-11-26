---
title: 使用Java中的图像
second_title: Aspose.Words为Java
articleTitle: 使用图像
linktitle: 使用图像
type: docs
description: "Aspose.Words为Java提供的详细信息和高级功能中的图像形状。"
weight: 300
url: /zh/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words允许用户以非常灵活的方式处理图像。 在本文中，您只能探索使用图像的一些可能性。

## 如何从文档 {#how-to-extract-images-from-a-document}中提取图像

所有图像都存储在文档中的**Shape**节点中。 要从文档中提取具有特定类型的所有图像或图像，请执行以下步骤:

- 使用[getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes)方法选择所有形状节点。
- 迭代生成的节点集合。
- 检查[hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage)布尔属性。
- 使用[ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData)属性提取图像数据。
- 将图像数据保存到文件中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## 如何在每个文档页面上插入条形码 {#how-to-insert-barcode-on-each-documen-page}

此示例允许您在Word文档的所有或特定页面上添加相同或不同的条形码。 没有直接的方法可以在文档的所有页面上添加条形码，但您可以使用[moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int)，[moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int)和[insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])）方法移动到任何部分或页眉/页脚并插入条形码图像，如下面的代码所示。

下面的代码示例演示如何在文档的每页上插入条形码图像:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## 锁定图像 {#lock-aspect-ratio-of-image}的宽高比

几何形状的长宽比是其尺寸在不同尺寸中的比例。 您可以使用[AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)锁定图像的宽高比。 形状长宽比的默认值取决于[ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)。 对于`ShapeType.Image`为true，对于其他形状类型为false。

下面的代码示例演示如何使用宽高比:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## 如何在点 {#how-to-get-actual-bounds-of-shape-in-points}中获得形状的实际边界

如果您希望在页面上呈现形状的实际边界框，则可以使用[BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints)属性来实现此目的。

下面的代码示例演示如何使用此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 裁剪图像

图像的裁剪通常是指去除图像的不需要的外部部分，以帮助改善帧。 它还用于去除图像的某些部分，以增加对特定区域的焦点。

下面的代码示例演示如何使用Aspose.WordsAPI实现此目的:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## 将图像保存为WMF

Aspose.Words提供将文档中所有可用图像保存到 [WMF](https://docs.fileformat.com/image/wmf/)将DOCX转换为RTF时进行格式化。

下面的代码示例演示如何使用RTF保存选项将图像保存为WMF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
