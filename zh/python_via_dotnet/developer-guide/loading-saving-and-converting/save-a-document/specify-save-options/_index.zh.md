---
title: 指定 Python 中的保存选项
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 指定保存选项
linktitle: 指定保存选项
description: "使用 Python 更准确地控制保存过程。"
type: docs
weight: 10
url: /zh/python-net/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

保存文档时，您可以设置一些高级属性。 Aspose.Words 为您提供了 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 类，可以更精确地控制保存过程。 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法的重载接受 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 对象 – 它应该是从 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 类派生的类的对象。每种保存格式都有一个对应的类，用于保存该保存格式的保存选项，例如，[PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 用于保存为 PDF 格式，或者 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 用于保存为图像。本文提供了使用从 [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) 派生的一些选项类的示例。

以下代码示例演示如何在将文档保存为 HTML 之前设置保存选项：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

本文介绍了保存文档时可以控制的一些属性。

## 使用密码加密文档

使用 **密码** 属性获取或设置加密文档的密码。使用相应类的 **密码** 属性来处理选定的文档格式。

例如，将文档保存为 DOC 或 DOT 格式时，请使用 [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) 类的 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) 属性。

以下代码示例显示如何设置密码以使用 RC4 加密方法加密文档：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

将文档保存为 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) 格式时，请使用 [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/) 类的 [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) 属性。

以下代码示例显示如何加载和保存使用密码加密的 Docx：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

并非所有格式都支持加密和 **密码** 属性的使用。

## 更新文档创建时间

Aspose.Words 提供了使用 [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) 属性获取或设置 UTC 文档创建日期的功能。您还可以在保存之前使用 [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/) 选项更新此值。

以下代码示例展示了如何更新文档创建时间：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## 更新上次保存的属性

Aspose.Words 提供了使用 [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) 属性获取或设置一个值的功能，该值确定 [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) 属性在保存之前是否更新。

以下代码示例显示如何设置此属性并保存文档：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## 以每像素一位格式保存黑白图像

为了控制图像保存选项，使用 [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) 类。例如，您可以使用 [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) 属性来设置生成图像的像素格式。请注意，由于skia的工作，输出图像的像素格式可能与设置值不同。

以下代码示例演示如何以每像素一位格式保存黑白图像：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
