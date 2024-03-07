---
title: 将 Word 转换为 C# 格式的 PDF
second_title: .NET 格式的 Aspose.Words
articleTitle: 将文档转换为 PDF
linktitle: 将文档转换为 PDF
description: "使用 C# 将文档转换为 PDF。将 DOCX 转换为 PDF C#。支持多种输入格式，包括Word、OpenOffice、图像和电子书格式。"
type: docs
weight: 10
url: /zh/net/convert-a-document-to-pdf/
---

轻松可靠地将文档从一种格式转换为另一种格式的能力是 Aspose.Words 的一项关键功能。最流行的转换格式之一是 PDF--一种固定布局格式，它在各种平台上呈现时保留文档的原始外观。 Aspose.Words 中使用"渲染"术语来描述将文档转换为分页或具有页面概念的文件格式的过程。

## 将 Word 文档转换为 PDF

从 Word 到 PDF 的转换是一个相当复杂的过程，需要多个计算阶段。 Aspose.Words 布局引擎模仿 Microsoft Word 页面布局引擎的工作方式，使 PDF 输出文档看起来尽可能接近您在 Microsoft Word 中看到的内容。

使用 Aspose.Words，您可以以编程方式将文档从 Word 格式（例如 DOC 或 DOCX）转换为 PDF，而无需使用 Microsoft Office。本文解释了如何执行此转换。

{{% alert color="primary" %}}

请注意，文档中的页数会影响转换时间。

{{% /alert %}}

### 将 DOCX 或 DOC 转换为 PDF

从 DOC 或 DOCX 文档格式转换为 Aspose.Words 格式的 PDF 格式非常简单，只需两行代码即可完成：

1. 使用 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 对象的构造函数之一，通过指定文档名称及其格式扩展名，将文档加载到 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 对象中。
1. 在 **Document** 对象上调用 [Document.Save](https://reference.aspose.com/words/zh/net/aspose.words/document/save/#save/) 方法之一，并通过输入扩展名为".PDF"的文件名来指定所需的输出格式为 PDF。

以下代码示例演示如何使用 [Save](https://reference.aspose.com/words/zh/net/aspose.words/document/save/) 方法将文档从 DOCX 转换为 PDF：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% alert color="primary" %}}

有时需要指定其他选项，这可能会影响将文档另存为 PDF 的结果。这些选项可以通过使用 [PdfSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfsaveoptions/) 类来指定，其中包含确定 PDF 输出如何显示的属性。

请注意，使用相同的技术，您可以将任何流程布局格式文档转换为 PDF 格式。

{{% /alert %}}

### 转换为不同的 PDF 标准

Aspose.Words提供[Pdf合规性](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfcompliance/)枚举支持将DOC或DOCX转换为各种PDF格式标准（如PDF 1.7、PDF 1.5等）。

以下代码示例演示如何使用 [PdfSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfsaveoptions/) 将文档转换为 PDF 1.7，并符合 PDF17：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "conversion-to-pdf17.cs" >}}

## 将图像转换为 PDF

转换为 PDF 不受 Microsoft Word 文档格式的限制。 Aspose.Words 支持的任何格式（包括以编程方式创建的格式）也可以转换为 PDF。例如，我们可以将单页图像（如 JPEG、PNG、BMP、EMF 或 WMF）以及多页图像（如 TIFF 和 GIF）转换为 PDF。

以下代码示例演示如何将 JPEG 和 TIFF 图像转换为 PDF：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "image-to-pdf.cs" >}}

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "convert-image-to-pdf.cs" >}}

要使此代码正常工作，您需要将对 Aspose.Words 和 `System.Drawing` 的引用添加到您的项目中。

## 减小 PDF 输出大小

保存为 PDF 时，您可以指定是否要优化输出。为此，您需要将 [OptimizeOutput](https://reference.aspose.com/words/zh/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 标志设置为 true，然后删除多余的嵌套画布和空画布，并连接具有相同格式的相邻 glyph。

以下代码示例展示了如何优化输出：

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "optimize-output.cs" >}}

{{% alert color="primary" %}}

使用 **OptimizeOutput** 属性可能会影响内容显示的准确性。

{{% /alert %}}

## 也可以看看

- 文章 [渲染](/words/zh/net/rendering/) 了解有关固定页面和流程布局格式的更多信息
- 有关页面布局的更多信息，请参阅 [转换为固定页面格式](/words/net/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 文章
- 有关使用 `PdfSaveOptions` 类的更多信息，请参阅 [转换为 PDF 时指定渲染选项](/words/zh/net/specify-rendering-options-when-converting-to-pdf/) 文章
- [了解转换为 PDF/A 和 PDF/UA 的功能](/words/zh/net/learn-features-of-conversion-to-pdf-a-pdf-ua/) 文章描述了哪些 PDF 标准以及 PDF 标准的相关 ISO 支持 Aspose.Words
- [选择哪种 PDF 标准更好](/words/zh/net/which-pdf-standard-is-better-to-choose/) 文章确定哪些 PDF 标准对哪些情况有意义

- [使用 PDF/A 或 PDF/UA](/words/zh/net/working-with-pdfa-or-pdfua/) 文章描述了 PDF/A 和 PDF/UA 格式文档内容的要求 - 主要是结构和字体的要求

- [保存为 PDF/A 和 PDF/UA 时出现辅助功能问题警告](/words/zh/net/warnings-when-saving-to-pdfa-and-pdfua/) 文章描述了 PDF/A 和 PDF/UA 所施加的内容可访问性要求
