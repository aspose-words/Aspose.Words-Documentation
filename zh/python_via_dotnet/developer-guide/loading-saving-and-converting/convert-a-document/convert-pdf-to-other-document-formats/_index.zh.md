---
title: 将 PDF 转换为其他文档格式
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 将 PDF 转换为其他文档格式
linktitle: 将 PDF 转换为其他文档格式
type: docs
description: "使用 `Python.Words` 将 PDF 转换为 Word 格式（例如 DOCX、DOC）、图像格式（例如 JPG 或 PNG）或 Aspose 支持的任何其他格式。"
keywords: convert pdf to other formats python
weight: 45
url: /zh/python-net/convert-pdf-to-other-document-formats/
---

Aspose.Words 甚至可以加载 PDF 等复杂格式。这开辟了新的机会：可以将 PDF 转换为 Word 或其他格式，从而使用户在解决许多应用问题方面遥遥领先。

## 将 PDF 转换为其他格式 {#convert-pdf-to-other-formats}

最流行的 PDF 转换是转换为 Microsoft Word 格式（例如 DOCX、DOC）以及图像格式（例如 JPG 或 PNG）。话虽如此，将文档从一种格式转换为另一种格式的执行方式很熟悉。

以下代码示例演示如何将文档从 PDF 转换为 DOCX：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## 导入 PDF {#specify-load-options-when-importing-pdf} 时指定加载选项

Aspose.Words 为您提供了 [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) 类，它可以更精确地控制 PDF 文档的加载方式。

大多数属性都会继承或重载 [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/) 类中已存在的属性。除此之外，还为 PDF 格式指定了许多属性。例如，您可以使用 [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) 和 [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) 属性来定义要从 PDF 文档加载的页面范围，并使用 [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) 属性来控制加载 PDF 时是否应跳过图像。另一个受支持的参数是 [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/)，必须为受密码保护的文档提供该参数。

## 支持的 PDF 内容 {#supported-pdf-content}

PDF2Word插件目前支持以下数据类型：

* 文字段落
* 图片
* 表格
* 列表
* 页眉和页脚
* 脚注
* 页码
* 从右到左的文本（有一些限制）
* 可搜索的 PDF（前面的图像将被删除，以支持背景文本）

## 计划的功能 {#planned-features}

一些功能仍处于早期开发阶段或包含在开发路线图中：

* 目录
* 可搜索和不可搜索 PDF 的 OCR
* 进度报告
* 多列文本
* 数学公式
* 更多自动字段（除了 `PAGE` 和 NUMPAGES）

## PDF 加载异常

在 PDF 文档转换过程中，可能会发生以下异常之一：

|  例外 |  描述 |
|  --------------------------------  |  ------------------------------------------------------------  |
|   *FileLoadException*               |  由于某种原因无法处理 PDF 文件。<br /> {{% alert color="primary" %}}您可以使用 [技术支援](/words/zh/python-net/technical-support/).{{% /alert %}} 将问题报告给开发团队进行详细调查 |
|   *DrmProtectedFileException*       |  PDF 文件受 Adobe DRM 保护，无法使用 Pdf2Word 进行解码。 |
|   *PasswordProtectedFileException*  |  必须为受密码保护的 PDF 提供正确的密码。 |


