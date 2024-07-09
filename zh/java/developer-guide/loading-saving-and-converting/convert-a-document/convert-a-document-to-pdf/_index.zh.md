---
title: 将文档转换为 PDF Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 将文档转换为 PDF
linktitle: 将文档转换为 PDF
description: "将 Word 或其他任何支持格式的文档转换为 PDF, 它保留文档在使用各种平台渲染时的原始外观 Java。 。 。 。"
type: docs
weight: 10
url: /zh/java/convert-a-document-to-pdf/
---

将文档从一种格式简单可靠地转换到另一种格式的能力是: Aspose.Words。 。 。 最受欢迎的转换格式之一是PDF – 一种固定放行格式,它保留了文档在各种平台渲染时的原始外观. "放弃"一词用于: Aspose.Words 来描述将文档转换成一个文件格式的过程,该格式是加成的或具有页面概念的。

## 将单词文档转换为 PDF {#convert-a-word-document-to-pdf}

从Word转换为PDF是一个相当复杂的过程,需要几个阶段的计算. Aspose.Words 布局引擎模仿方式 Microsoft Word页面布局引擎工作,使 PDF 输出文档尽可能接近您可以看到的内容 Microsoft Word。 。 。 。

与 Aspose.Words 您可以在程序上将文档从 DOC 格式或 DOCX 格式转换为 PDF 格式,而不使用 Microsoft 办公室 本条解释了如何进行这种转换。

{{% alert color="primary" %}}

注意文件的页数影响转换时间。

{{% /alert %}}

### 将 DOCX 或 DOC 转换为 PDF {#converting-doc-or-docx-to-pdf}

从 DOC 或 DOCX 文档格式转换为 PDF 格式 Aspose.Words 很容易,只要两行代码就可以做到:

一、导 言 将文档装入 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 对象通过指定文档名称及其格式扩展名来使用其构建器之一。
一、导 言 发射一个 [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) 方法 **Document** 对象,并通过输入带有".PDF"扩展名的文件名,将想要的输出格式指定为 PDF。

以下代码示例显示如何使用 DOCX 将文档转换为 PDF `Save` 方法:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc)。 。 。 。

{{% alert color="primary" %}}

有时需要指定额外的选项,这可能影响将文档保存为PDF的结果. 这些选项可以通过使用 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 类,包含决定如何显示 PDF 输出的属性。

注意,使用同样的技术,可以将任何流线显示格式文档转换为PDF格式.

{{% /alert %}}

### 转换为不同的 PDF 标准 {#converting-to-various-pdf-standards}

Aspose.Words 提供 [压缩](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)用于支持将DOC或DOCX转换为各种PDF格式标准(如PDF 1.7,PDF 1.5等)的点数.

以下代码示例演示如何使用 PDF 1.7 转换文档 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 遵守PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## 将图像转换为 PDF

转换为 PDF 不受限制 Microsoft Word 文档格式。 由 Aspose.Words, 也可以转换为PDF。 例如,我们可以将JPEG,PNG,BMP,EMF,或WMF等单页图像以及TIFF和GIF等多页图像转换为PDF.

以下代码示例显示如何将 JPEG 和 TIFF 图像转换为 PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

要让这个代码发挥作用,你需要添加引用到 Aspose.Words, Java..awt.image,和javax。 。 。 图像类软件包到您的项目 。

## 减少 PDF 输出大小

在保存到 PDF 时, 您可以指定您是否想要优化输出 。 要做到这一点,你需要设置 [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) 标记改为 true, 然后多余的嵌入式画布和空画布将被移除,邻居 glyphs 格式相同,将进行调制。

以下代码示例显示如何优化输出:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

使用 **OptimizeOutput** 属性可能影响内容显示的准确性。

{{% /alert %}}

## 另见

- 这篇文章 [渲染](/words/zh/java/rendering/) 需要更多关于固定页和流程显示格式的信息
- 这篇文章 [转换为固定页面格式](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) 关于页面布局的更多信息
- 这篇文章 [++ PDF-154+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++](/words/zh/java/specify-rendering-options-when-converting-to-pdf/) 获取更多关于使用 `PdfSaveOptions` 类
