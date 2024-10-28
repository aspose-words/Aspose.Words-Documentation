---
title: 在C++中将文档转换为PDF
second_title: Aspose.Words对于C++
articleTitle: 将文档转换为PDF
linktitle: 将文档转换为PDF
description: "使用C++将文档转换为PDF。 支持各种输入格式，包括Word，OpenOffice，Image和eBook格式。"
type: docs
weight: 10
url: /zh/cpp/convert-a-document-to-pdf/
---

能够轻松可靠地将文档从一种格式转换为另一种格式是Aspose.Words的一个关键特性。 最流行的转换格式之一是PDF–一种固定布局格式，它在各种平台上呈现时保留文档的原始外观。 在Aspose.Words中使用"呈现"术语来描述将文档转换为分页或具有页面概念的文件格式的过程。

## 将Word文档转换为PDF{#convert-a-word-document-to-pdf}

从Word到PDF的转换是一个相当复杂的过程，需要几个阶段的计算。 Aspose.Words布局引擎模仿Microsoft Word的页面布局引擎的工作方式，使PDF输出文档看起来尽可能接近您在Microsoft Word中看到的内容。

使用Aspose.Words，您可以以编程方式将文档从DOC或DOCX格式转换为PDF，而无需使用Microsoft Office。 本文介绍如何执行此转换。

{{% alert color="primary" %}}

请注意，文档中的页数会影响转换时间。

{{% /alert %}}

### 将DOCX或DOC转换为PDF{#converting-doc-or-docx-to-pdf}

从DOC或DOCX文档格式转换为Aspose.Words中的PDF格式非常容易，只需两行代码即可完成:

1. 通过指定文档名称及其格式扩展名，使用其构造函数之一将文档加载到[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)对象中。
1. 调用**Document**对象上的[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)方法之一，并通过输入带有"的文件名将所需的输出格式指定为PDF。PDF"扩展。

下面的代码示例演示如何使用`Save`方法将文档从DOCX转换为PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "docx-to-pdf.h" >}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% alert color="primary" %}}

有时需要指定其他选项，这可能会影响将文档保存为PDF的结果。 这些选项可以通过使用[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)类来指定，其中包含确定如何显示PDF输出的属性。

请注意，使用相同的技术，您可以将任何流布局格式文档转换为PDF格式。

{{% /alert %}}

### 转换为不同的PDF标准{#converting-to-various-pdf-standards}

Aspose.Words提供[PdfCompliace](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_compliance/)枚举以支持将DOC或DOCX转换为各种PDF格式标准（例如PDF 1.7, PDF 1.5, 等。).

下面的代码示例演示如何使用符合PDF17的[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)将文档转换为PDF1.7:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "conversion-to-pdf17.h" >}}

## 将图像转换为PDF{#convert-an-image-to-pdf}

转换为PDF不受Microsoft Word文档格式的限制。 Aspose.Words支持的任何格式，包括以编程方式创建的格式，也可以转换为PDF。 例如，我们可以转换单页图像，例如JPEG, PNG, BMP, EMF, 或WMF，以及多页图像，例如TIFF和GIF，到PDF。

下面的代码示例演示如何将JPEG和TIFF图像转换为PDF:

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "image-to-pdf.h" >}}

{{< gist "aspose-words-gists" "b9784b73e288805e08fba6e3fc5ae2af" "convert-image-to-pdf.h" >}}

要使此代码工作，您需要将对Aspose.Words和`System.Drawing`的引用添加到您的项目中。

## 请参阅

- 文章 [渲染图](/words/cpp/rendering/) 有关固定页面和流布局格式的更多信息
- 文章 [转换为固定页格式](/words/cpp/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 有关页面布局的更多信息
- 文章 [转换为PDF时指定渲染选项](/words/cpp/specify-rendering-options-when-converting-to-pdf/) 有关使用`PdfSaveOptions`类的更多信息
