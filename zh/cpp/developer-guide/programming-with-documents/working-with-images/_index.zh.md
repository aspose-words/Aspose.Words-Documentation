---
title: 在C++中处理图像
second_title: Aspose.Words对于C++
articleTitle: 使用图像
linktitle: 使用图像
type: docs
description: "介绍图像特性,如何使用C++创建和操作图像."
weight: 300
url: /zh/cpp/working-with-images/
---

Aspose.Words允许用户以非常灵活的方式处理图像。 在本文中，您只能探索使用图像的一些可能性。

## 如何从文档中提取图像

所有图像都存储在[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)中的**Shape**节点中。 要从文档中提取具有特定类型的所有图像或图像，请执行以下步骤:

- 使用[GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/)方法选择所有**Shape**节点。
- 迭代生成的节点集合。
- 检查[HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/)布尔属性。
- 使用[ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/)属性提取图像数据。
- 将图像数据保存到文件中。

下面的代码示例演示如何从文档中提取图像并将其另存为文件:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## 将图像保存为WMF

Aspose.Words提供将文档中所有可用图像保存到 [WMF ](https://docs.fileformat.com/image/wmf/)将DOCX转换为RTF时进行格式化。

下面的代码示例演示如何使用RTF保存选项将图像保存为WMF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
