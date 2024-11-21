---
title: 在图像中工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 图像工作
linktitle: 图像工作
type: docs
description: "图像形状的细节和高级特性 Aspose.Words (单位:千美元) Java。 。 。 。"
weight: 300
url: /zh/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 允许用户以非常灵活的方式与图像合作. 在此文章中,您只能探索一些与图像合作的可能性.

## 如何从文档中提取图像 {#how-to-extract-images-from-a-document}

所有图像都存储在内 **Shape** 文档中的节点。 要从文档中提取所有具有特定类型的图像或图像,请遵循这些步骤:

- 用那个 [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) 选择所有形状节点的方法。
- 通过生成的节点集合进行排列。
- 检查一下 [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) 布尔财产。
- 利用 [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) 属性。
- 将图像数据保存为文件。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## 如何在每个文档页面上插入条码 {#how-to-insert-barcode-on-each-documen-page}

此示例允许您在 Word 文档的全部或特定页面上添加相同或不同的条码。 无法在文档的所有页面上直接添加条码, 但您可以使用 [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) 和 [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) 移动到任何部分或页眉/脚的方法,并插入条码图像,如您在以下代码中看到的。

以下代码示例显示如何在文档的每页插入条码图像:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## 锁定图像的光谱比 {#lock-aspect-ratio-of-image}

几何形状的尺寸比是其大小在不同维度中的比例. 您可以使用 [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked)。 。 。 。 形状宽度比的默认值取决于 [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/)。 。 。 。 没错 true (单位:千美元) `ShapeType.Image` 和 false 用于其他形状类型。

以下代码示例显示如何使用宽度比:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## 如何在点中获取形状的实际边界 {#how-to-get-actual-bounds-of-shape-in-points}

如果您想要页面上渲染的形状的实际边框, 您可以使用 [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) 属性。

以下代码示例显示如何使用此属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## 裁剪图像

图像的裁剪通常是指删除图像中不想要的外侧部分,以帮助改进帧. 也用于去除图像的某些部分,以增加对特定地区的关注.

以下代码示例显示如何使用 Aspose.Words API编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## 将图像保存为 WMF

Aspose.Words 提供将文档中所有可用的图像保存到 [妇女](https://docs.fileformat.com/image/wmf/)格式,同时将 DOCX 转换为 RTF。

以下代码示例显示如何用RTF保存选项将图像保存为 WMF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
