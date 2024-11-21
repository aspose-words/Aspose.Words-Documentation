---
title: 指定 C# 中的保存选项
second_title: .NET 格式的 Aspose.Words
articleTitle: 指定保存选项
linktitle: 指定保存选项
description: "使用 C# 更准确地控制保存过程。"
type: docs
weight: 10
url: /zh/net/specify-save-options/
timestamp: 2024-07-09-19-00-42
---

保存文档时，您可以设置一些高级属性。 Aspose.Words 为您提供了 [SaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/saveoptions/) 类，可以更精确地控制保存过程。存在接受 **SaveOptions** 对象的 **Save** 方法的重载 - 它应该是从 **SaveOptions** 类派生的类的对象。每种保存格式都有一个相应的类，用于保存该保存格式的保存选项，例如，用于保存为 PDF 格式的 [PdfSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfsaveoptions/)、用于保存为 Markdown 格式的 [MarkdownSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/) 或用于保存为图像的 [ImageSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/)。本文提供了使用从 **SaveOptions** 派生的一些选项类的示例。

以下代码示例演示如何在将文档保存为 HTML 之前设置保存选项：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

本文介绍了保存文档时可以控制的一些属性。

## 使用密码加密文档

使用 **Password** 属性获取或设置加密文档的密码。使用相应类的 **Password** 属性来处理选定的文档格式。

例如，将文档保存为 DOC 或 DOT 格式时，请使用 [DocSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/docsaveoptions/) 类的 [Password](https://reference.aspose.com/words/zh/net/aspose.words.saving/docsaveoptions/password/) 属性。

以下代码示例显示如何设置密码以使用 RC4 加密方法加密文档：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

将文档保存为 Odt 格式时，请使用 [OdtSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/odtsaveoptions/) 类的 [Password](https://reference.aspose.com/words/zh/net/aspose.words.saving/odtsaveoptions/password/) 属性。

以下代码示例显示如何加载和保存使用密码加密的 OpenDocument：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

并非所有格式都支持加密和 **Password** 属性的使用。

## 显示文档保存进度通知

Aspose.Words 提供了使用 [ProgressCallback](https://reference.aspose.com/words/zh/net/aspose.words.saving/saveoptions/progresscallback/) 属性来获取有关文档保存进度的通知的功能。

现在可以在保存为 DOCX、FlatOpc、DOCM、DOTM、DOTX、HTML、MHTML、EPUB、XamlFlow、XamlFlowPack 或 TXT 格式时使用。

## 更新文档创建时间

Aspose.Words 提供了使用 [CreatedTime](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/createdtime/) 属性获取或设置 UTC 文档创建日期的功能。您还可以在保存之前使用 [UpdateCreatedTimeProperty](https://reference.aspose.com/words/zh/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/) 选项更新此值。

以下代码示例展示了如何更新文档创建时间：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## 更新上次保存的属性

Aspose.Words 提供了使用 [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/zh/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) 属性来获取或设置一个值的功能，该值确定在保存之前是否更新 [LastSavedTime](https://reference.aspose.com/words/zh/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) 属性。

以下代码示例显示如何设置此属性并保存文档：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## 将文档保存为 HTML 或 SVG 时控制外部资源

要将 HTML 或 SVG 转换为 PDF，只需调用 [Save](https://reference.aspose.com/words/zh/net/aspose.words/document/save/#save/) 方法并指定带有".PDF"扩展名的文件名。如果要从外部源加载图像、CSS等，可以使用[IResourceSavingCallback](https://reference.aspose.com/words/zh/net/aspose.words.saving/iresourcesavingcallback/)。

以下代码示例演示如何将 HTML 转换为 PDF 并从外部源加载图像：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## 以每像素一位格式保存黑白图像

为了控制图像保存选项，使用 **ImageSaveOptions** 类。例如，您可以使用 [PixelFormat](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/pixelformat/) 属性来设置生成图像的像素格式。请注意，由于 GDI+ 的工作，输出图像的像素格式可能与设置值不同。

以下代码示例演示如何以每像素一位格式保存黑白图像：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
