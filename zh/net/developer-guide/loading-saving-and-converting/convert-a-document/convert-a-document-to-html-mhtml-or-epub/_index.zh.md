---
title: 将文档转换为 C# 格式的 HTML、MHTML 或 EPUB
second_title: .NET 格式的 Aspose.Words
articleTitle: 将文档转换为 HTML、MHTML 或 EPUB
linktitle: 将文档转换为 HTML、MHTML 或 EPUB
description: "将文档从几乎任何格式转换为 HTML 或 MHTML，以及使用 C# 转换为 EPUB 格式。您还可以指定用于管理输出文档的保存选项。"
type: docs
weight: 20
url: /zh/net/convert-a-document-to-html-mhtml-or-epub/
---

HTML 和 MHTML 流程布局格式的文档也非常流行，可以在任何 Web 平台上使用。因此，将文档转换为 HTML 和 MHTML 是 Aspose.Words 的一个重要功能。

EPUB（"Electronic Publication"的缩写）是一种基于 HTML 的格式，常用于电子图书分发。 Aspose.Words 完全支持此格式，可导出与大多数阅读设备兼容的电子书。

## 转换文档

为了简单地转换为 HTML、MHTML 或 EPUB，可以使用 [Save](https://reference.aspose.com/words/zh/net/aspose.words/document/save/#save/) 方法重载之一。您可以将文档保存到文件或流，并显式设置输出文档保存格式或从文件扩展名定义它。

以下示例显示如何将 DOCX 转换为 HTML 并指定保存格式：

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

要将文档转换为 MHTML 或 EPUB，请分别使用 `SaveFormat.Mhtml` 或 `SaveFormat.Epub`。

## 转换带有往返信息的文档

HTML 格式不支持许多 Microsoft Word 功能，如果我们需要恢复尽可能接近原始的文档模型，我们需要在 HTML 文件中保存一些额外的信息。这种信息也称为"往返信息"。为此，Aspose.Words 提供了在使用 [ExportRoundtripInformation](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/) 属性保存为 HTML、MHTML 或 EPUB 时导出往返信息的功能。保存往返信息允许在将列出的格式的文档加载回 **Document** 对象期间恢复文档属性，例如选项卡、注释、页眉和页脚。

HTML 的默认值为 **true**，MHTML 和 EPUB 的默认值为 **false**：

- **true** 时，往返信息导出为 -aw -* 相应 HTML 元素的 CSS 属性
- 当 **false** 时，没有往返信息可输出到生成的文件中

以下代码示例演示如何在将文档从 DOCX 转换为 HTML 时导出往返信息：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

## 指定转换为 HTML 时的保存选项

Aspose.Words 允许使用默认或自定义保存选项将 Word 文档转换为 HTML。下面描述了一些自定义保存选项的示例。

### 指定保存资源的文件夹

使用 Aspose.Words，我们可以指定一个物理文件夹，当文档转换为 HTML 时，所有资源（例如图像、字体和外部 CSS）都保存在其中。默认情况下，这是一个空字符串。

指定 [ResourceFolder](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) 属性是设置应写入所有资源的文件夹的最简单方法。我们可以使用单独的属性，例如将字体保存到指定文件夹的 [FontsFolder](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) 和将图像保存到指定文件夹的 [ImagesFolder](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/imagesfolder/)。当指定相对路径时，**FontsFolder**和**ImagesFolder**指的是代码程序集所在的文件夹，**ResourceFolder**和[CssStyleSheetFileName](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/)指的是HTML文档所在的输出文件夹。

在此示例中，**ResourceFolder** 指定相对路径。该路径是指保存 HTML 文档的输出文件夹。 **ResourceFolderAlias** 属性的值用于创建所有资源的 URL。

以下代码示例展示了如何使用这些属性：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

使用 [ResourceFolderAlias](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/) 属性，我们还可以指定用于构造写入 HTML 文档的所有资源的 URI 的文件夹的名称。这是指定如何为所有资源文件生成 URI 的最简单方法。可以分别通过 [ImagesFolderAlias](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) 和 [FontsFolderAlias](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) 属性分别为图像和字体指定相同的信息。

然而，CSS 没有单独的属性。 **FontsFolder**、**FontsFolderAlias**、**ImagesFolder**、**ImagesFolderAlias** 和 **CssStyleSheetFileName** 属性的行为不会更改。请注意，**CssStyleSheetFileName** 属性同时用于指定文件夹名称和文件名。

- **ResourceFolder** 的优先级低于通过 **FontsFolder**、**ImagesFolder** 和 **CssStyleSheetFileName** 指定的文件夹。如果 **ResourceFolder** 中指定的文件夹不存在，则会自动创建。
- **ResourceFolderAlias** 的优先级低于 **FontsFolderAlias** 和 **ImagesFolderAlias**。如果 **ResourceFolderAlias** 为空，则 **ResourceFolder** 属性的值将用于创建资源 URI。如果 **ResourceFolderAlias** 设置为"." （点），资源 URI 将仅包含文件名，而不指定路径。

### 导出 Base64 编码字体资源

Aspose.Words 提供了指定字体资源是否应以 Base64 编码嵌入到 HTML 中的功能。要执行此操作，请使用 [ExportFontsAsBase64](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) 属性 - 这是 [ExportFontResources](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/exportfontresources/) 属性的扩展。默认情况下，其值为 **false**，并且字体写入单独的文件中。但如果此选项设置为 **true**，字体将以 Base64 编码嵌入到文档的 CSS 中。 **将字体导出为Base64** 属性仅影响 HTML 格式，不影响 EPUB 和 MHTML。

以下代码示例演示如何将 Base64 编码的字体导出为 HTML：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## 转换为 EPUB 时指定保存选项

Aspose.Words 允许使用默认或自定义保存选项将 Word 文档转换为 EPUB 格式。您可以通过将 [HtmlSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/) 实例传递给 [Save](https://reference.aspose.com/words/zh/net/aspose.words/document/save/#save/) 方法来指定多个选项。

以下代码示例演示如何通过指定一些自定义保存选项将 Word 文档转换为 EPUB：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

您可以从[Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)下载本示例的模板文件。

{{% /alert %}}

## 也可以看看

- [保存为 HTML 时如何导出往返信息](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
