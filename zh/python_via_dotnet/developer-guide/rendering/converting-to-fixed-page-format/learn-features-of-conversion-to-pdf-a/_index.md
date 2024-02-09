---
title: 转换为 PDF/A 和 PDF/UA
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 了解转换为 PDF/A 和 PDF/UA 的功能
linktitle: 了解转换为 PDF/A 和 PDF/UA 的功能
description: "使用 Python 转换为 PDF/A-1、PDF/A-2、PDF/A-4 和 PDF/UA。选择最佳的 PDF 标准来使用 Python via .NET 转换文档。"
type: docs
weight: 25
url: /zh/python-net/learn-features-of-conversion-to-pdf-a/
---

PDF 是一种固定页面格式，深受用户欢迎，并受到各种应用程序的广泛支持，因为 PDF 文档在任何设备上看起来都是一样的。因此，转换为 PDF 是 Aspose.Words 的一个重要功能。

PDF 本身是一种复杂的格式，因为它具有特定的文件结构、图形模型、字体嵌入以及一些复杂的输出功能，例如文档结构标签、加密、数字签名和可编辑表单。此外，将文档转换为PDF需要多个计算阶段，既复杂又耗时。

在本节中，我们将考虑使用各种 PDF 标准中的文档时可能出现的主要问题，并描述解决这些问题的选项。

## Aspose.Words 支持哪些 PDF 标准

Aspose.Words 现在允许用户使用 PDF/A-1、PDF/A-2 和 PDF/A-4 格式以及 PDF/UA-1：

- PDF/A-1 有严重的限制，例如透明度和某些压缩选项被禁止
- PDF/A-2 消除了 PDF/A-1 的一些限制，例如支持透明度和图层效果或嵌入 OpenType 字体
- PDF/A-4 采用修订后的一致性级别：常规 PDF/A-4 一致性相当于以前版本的 U 级一致性，并且 A 级一致性被删除
- PDF/UA-1 内容应根据 ISO 32000-1: 2008 进行标记和标准化

PDF/A 是 PDF 的 ISO 标准化版本，旨在用于电子文档的归档和长期存储。同时，PDF/UA 是 PDF 的另一个 ISO 标准化版本，旨在确保使用辅助技术的残疾人士的可访问性。要指定符合 PDF 标准的级别，请使用 [PdfSaveOptions.compliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/compliance/) 属性。由于存储条件的原因，PDF/A 文档必须嵌入所有字体并禁用加密，而 PDF/UA 只能嵌入所有字体。

在本节中，我们将仔细研究如何使用 PDF/A 或 PDF/UA-1 文档。

## PDF 标准的相关 ISO

要了解有关不同 PDF 标准的更多信息，请查看以下 ISO：

- PDF 1.7 = ISO-32000-1：2008
- PDF 2.0 = ISO-32000-2：2020
- PDF/A-1 = ISO-19005-1: 2005
- PDF/A-2 = ISO-19005-2：2011
- PDF/A-4 = ISO-19005-4：2020
- PDF/UA-1 = ISO-14289：2014

## 也可以看看

* [如何在 Adobe Acrobat 中编辑文档结构标签](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [如何检查或编辑 Microsoft Word 中的文本语言](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [如何更改 Adobe Acrobat 中的文本语言](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [如何将替代文本添加到 Microsoft Word 中的形状、图片、图表、SmartArt 图形或其他对象](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [如何向标签添加替代文本和补充信息](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)（或阅读[Adobe Acrobat 用户指南](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)中的相同信息）
* [如何设置文本的 ActualText 输入](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html)，"为缩写术语、公式或非 Unicode 符号添加实际文本"部分
* [常见 Windows 符号字体的 Unicode 映射](http://www.alanwood.net/demos/webdings.html)