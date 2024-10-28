---
title: 将文档转换为HTML、MHTML或EPUB
second_title: Aspose.Words对于C++
articleTitle: 将文档转换为HTML、MHTML或EPUB
linktitle: 将文档转换为HTML、MHTML或EPUB
description: "使用C++将文档从几乎任何格式转换为HTML或MHTML以及EPUB格式。 您还可以指定用于管理输出文档的保存选项。"
type: docs
weight: 20
url: /zh/cpp/convert-a-document-to-html-mhtml-or-epub/
---

HTML和MHTML流布局格式的文档也非常流行，可以在任何web平台上使用。 因此，将文档转换为HTML和MHTML是Aspose.Words的一个重要功能。

EPUB（简称"电子出版物"）是一种基于HTML的格式，通常用于电子书分发。 Aspose.Words中完全支持此格式，用于导出与大多数阅读设备兼容的电子书。

## 转换文档

对于简单转换为HTML、MHTML或EPUB，使用[Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)方法重载之一。 您可以将文档保存到文件或流中，并显式设置输出文档保存格式或从文件扩展名中定义它。

下面的示例演示如何通过指定保存格式将DOCX转换为HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

要将文档转换为MHTML或EPUB，请分别使用`SaveFormat.Mhtml`或`SaveFormat.Epub`。

## 转换包含往返信息的文档

HTML格式不支持许多Microsoft Word功能，如果我们需要恢复尽可能接近原始的文档模型，我们需要在HTML文件中保存一些额外的信息。 此类信息也称为"往返信息"。 为此，Aspose.Words提供了在使用[ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/)属性保存到HTML、MHTML或EPUB时导出往返信息的功能。 保存往返信息允许在将列出格式的文档加载回**Document**对象期间还原文档属性，如选项卡、注释、页眉和页脚。

对于HTML，默认值为**true**，对于MHTML和EPUB，默认值为**false**:

- **true**时，往返信息导出为相应HTML元素的-aw-*CSS属性
- 当**false**时，没有往返信息要输出到生成的文件中

下面的代码示例演示如何在将文档从DOCX转换为HTML时导出往返信息:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 转换为HTML时指定保存选项

Aspose.Words允许使用默认或自定义保存选项将Word文档转换为HTML。 下面介绍了一些自定义保存选项的示例。

### 指定用于保存资源的文件夹

使用Aspose.Words，我们可以指定一个物理文件夹，当文档转换为HTML时，保存所有资源，如图像，字体和外部CSS。 默认情况下，这是一个空字符串。

指定[ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/)属性是设置应写入所有资源的文件夹的最简单方法。 我们可以使用单个属性，例如[FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/)将字体保存到指定文件夹，[ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/)将图像保存到指定文件夹。 指定相对路径时，**FontsFolder**和**ImagesFolder**指代码程序集所在的文件夹，**ResourceFolder**和[CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/)指HTML文档所在的输出文件夹。

在此示例中，**ResourceFolder**指定相对路径。 此路径指向保存HTML文档的输出文件夹。 **ResourceFolderAlias**属性的值用于为所有资源创建URLs。

下面的代码示例演示如何使用这些属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

使用[ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/)属性，我们还可以指定用于构造写入HTML文档的所有资源的URIs的文件夹的名称。 这是指定如何为所有资源文件生成URIs的最简单方法。 可以分别通过[ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/)和[FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/)属性为图像和字体指定相同的信息。

但是，CSS没有单独的属性。 的行为**FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** 和**CssStyleSheetFileName**属性不更改。 请注意，**CssStyleSheetFileName**属性用于指定文件夹名和文件名。

- **ResourceFolder**的优先级低于通过**FontsFolder**、**ImagesFolder**和**CssStyleSheetFileName**指定的文件夹。 如果**ResourceFolder**中指定的文件夹不存在，它将自动创建。
- **ResourceFolderAlias**的优先级低于**FontsFolderAlias**和**ImagesFolderAlias**。 如果**ResourceFolderAlias**为空，则**ResourceFolder**属性的值将用于创建资源URIs。 如果**ResourceFolderAlias**设置为"."（点），则资源URIs将只包含文件名而不指定路径。

### 导出Base64编码字体资源

Aspose.Words提供了在Base64编码中指定字体资源是否应嵌入到HTML中的功能。 要执行此操作，请使用[ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/)属性-这是[ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/)属性的扩展。 默认情况下，它的值为**false**，字体被写入单独的文件中。 但是，如果此选项设置为**true**，字体将以Base64编码嵌入到文档的CSS中。 **ExportFontsAsBase64**属性仅影响HTML格式，不影响EPUB和MHTML。

下面的代码示例演示如何将Base64编码的字体导出到HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## 转换为EPUB时指定保存选项

Aspose.Words允许使用默认或自定义保存选项将Word文档转换为EPUB格式。 您可以通过将[HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/)的实例传递给`Save`方法来指定多个选项。

下面的代码示例演示如何通过指定一些自定义保存选项将Word文档转换为EPUB:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
