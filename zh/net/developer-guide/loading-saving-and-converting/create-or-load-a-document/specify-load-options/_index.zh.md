---
title: 在 C# 中指定加载选项
second_title: .NET 格式的 Aspose.Words
articleTitle: 指定加载选项
linktitle: 指定加载选项
description: "使用C#更准确地控制加载过程。"
type: docs
weight: 10
url: /zh/net/specify-load-options/
---

加载文档时，您可以设置一些高级属性。 Aspose.Words 为您提供了 [LoadOptions](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/) 类，它允许更精确地控制加载过程。某些加载格式具有相应的类，用于保存该加载格式的加载选项，例如，有 [PdfLoadOptions](https://reference.aspose.com/words/zh/net/aspose.words.loading/pdfloadoptions/) 用于加载到 PDF 格式或 [TxtLoadOptions](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/) 用于加载到 TXT。本文提供了使用 **LoadOptions** 类选项的示例。

## 设置Microsoft Word版本以更改外观

不同版本的Microsoft Word应用程序可以以不同的方式显示文档。例如，使用 WPS Office 生成的 OOXML 文档（例如 DOCX 或 DOTX）存在一个众所周知的问题。在这种情况下，重要的文档标记元素可能会丢失，或者可能会被不同地解释，从而导致 Microsoft Word 2019 与 Microsoft Word 2010 相比以不同的方式显示此类文档。

默认情况下，Aspose.Words 使用 Microsoft Word 2019 规则打开文档。如果您需要使文档加载看起来像在以前的 Microsoft Word 应用程序版本之一中那样，则应使用 **LoadOptions** 类的 [MswVersion](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/mswversion/) 属性显式指定所需的版本。

以下代码示例显示如何使用加载选项设置 Microsoft Word 版本：

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## 设置语言首选项以更改外观

在 Microsoft Word 中显示文档的详细信息不仅取决于应用程序版本和 **MswVersion** 属性值，还取决于语言设置。 Microsoft Word 可能会根据"Office 语言首选项"对话框设置以不同方式显示文档，该对话框设置可在"文件 → 选项 → 语言"中找到。使用此对话框，用户可以选择例如主要语言、校对语言、显示语言等。 Aspose.Words 提供 [LanguagePreferences](https://reference.aspose.com/words/zh/net/aspose.words.loading/languagepreferences/) 属性作为此对话框的等效属性。如果 Aspose.Words 输出与 Microsoft Word 输出不同，请为 **EditingLanguage** 设置适当的值 – 这可以改进输出文档。

以下代码示例显示如何将日语设置为 **EditingLanguage**：

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## 使用 WarningCallback 控制加载文档时的问题

某些文档可能已损坏、包含无效条目或具有 Aspose.Words 目前不支持的功能。如果您想了解加载文档时出现的问题，Aspose.Words 提供了 [IWarningCallback](https://reference.aspose.com/words/zh/net/aspose.words/iwarningcallback/) 接口。

以下代码示例显示了 **IWarningCallback** 接口的实现：

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

要获取有关整个加载期间所有问题的信息，请使用 [WarningCallback](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/warningcallback/) 属性。

以下代码示例展示了如何使用此属性：

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## 使用ResourceLoadingCallback控制外部资源加载

文档可能包含指向位于本地磁盘、网络或 Internet 上某处的图像的外部链接。 Aspose.Words 自动将此类图像加载到文档中，但在某些情况下需要控制此过程。例如，决定我们是否真的需要加载某个图像或者跳过它。 [ResourceLoadingCallback](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/resourceloadingcallback/) 加载选项允许您对此进行控制。

以下代码示例显示了 [IResourceLoadingCallback](https://reference.aspose.com/words/zh/net/aspose.words.loading/iresourceloadingcallback/) 接口的实现：

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

以下代码示例显示如何使用 **ResourceLoadingCallback** 属性：

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## 使用 TempFolder 避免内存异常

Aspose.Words 支持包含数千页且内容丰富的超大文档。加载此类文档可能需要大量 RAM。在加载过程中，Aspose.Words 需要更多内存来保存用于解析文档的临时结构。

如果在加载文档时遇到内存不足异常问题，请尝试使用 [TempFolder](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/tempfolder/) 属性。在这种情况下，Aspose.Words会将一些数据存储在临时文件中而不是内存中，这可以帮助避免此类异常。

以下代码示例展示了如何设置 **TempFolder**：

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## 显式设置编码

大多数现代文档格式以 Unicode 存储其内容，不需要特殊处理。另一方面，仍然有许多文档使用某些 Unicode 之前的编码，有时会丢失编码信息，或者甚至本质上不支持编码信息。默认情况下，Aspose.Words 会尝试自动检测适当的编码，但在极少数情况下，您可能需要使用与我们的编码识别算法检测到的编码不同的编码。在这种情况下，请使用 [Encoding](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/encoding/) 属性来获取或设置编码。

以下代码示例演示如何设置编码以覆盖自动选择的编码：

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## 加载加密文档

您可以加载使用密码加密的Word文档。为此，请使用特殊的构造函数重载，它接受 [LoadOptions](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/) 对象。该对象包含 [Password](https://reference.aspose.com/words/zh/net/aspose.words.loading/loadoptions/password/) 属性，该属性指定密码字符串。

以下代码示例显示如何加载使用密码加密的文档：

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

如果您事先不知道文件是否已加密，则可以使用 [FileFormatUtil](https://reference.aspose.com/words/zh/net/aspose.words/fileformatutil/) 类，该类提供了处理文件格式的实用方法，例如检测文件格式或将文件扩展名与文件格式枚举相互转换。要检测文档是否已加密以及是否需要密码才能打开它，请使用 [IsEncrypted](https://reference.aspose.com/words/zh/net/aspose.words/fileformatinfo/isencrypted/) 属性。

以下代码示例显示如何验证 OpenDocument 是否已加密：

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
