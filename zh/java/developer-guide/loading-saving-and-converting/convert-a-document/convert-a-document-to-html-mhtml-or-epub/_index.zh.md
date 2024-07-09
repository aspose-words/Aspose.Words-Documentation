---
title: 将文档转换为 HTML、 MHTML 或 EPUB
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 将文档转换为 HTML、 MHTML 或 EPUB
linktitle: 将文档转换为 HTML、 MHTML 或 EPUB
description: "使用 Aspose.Words (单位:千美元) Java 将文档从 Word 或任何其他支持的格式转换为 HTML、MHTML 或 EPUB。"
type: docs
weight: 20
url: /zh/java/convert-a-document-to-html-mhtml-or-epub/
---

HTML和MHTML流放格式的文档也很受欢迎,可以在任何网络平台上使用. 因此,将文档转换为HTML和MHTML是其中的一个重要特征。 Aspose.Words。 。 。 。

EPUB(简称"电子出版")是一种基于HTML的格式,通常用于电子图书发行. 此格式在 Aspose.Words 用于输出与大多数阅读设备兼容的电子书籍。

## 转换文档

简单转换为 HTML、 MHTML 或 EPUB, 其中之一 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) 采用了超载方法。 您可以将文档保存到文件或流中,并从文件名扩展名中明确设置输出文档保存格式或定义格式.

以下示例显示如何将 DOCX 转换为 HTML 并指定保存格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

要将文档转换为 MHTML 或 EPUB,请使用 `SaveFormat.MHTML` 或 `SaveFormat.EPUB` 页:1

## 将文档转换为回合信息

HTML 格式不支持许多 Microsoft Word 特性,如果我们需要恢复一个尽可能接近原始的文档模型,我们需要在HTML文件中保存一些额外信息。 此类信息也被称为"回合信息". 为此, Aspose.Words 提供在使用 HTML、 MHTML 或 EPUB 保存到 HTML 时导出往返信息的能力 [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation) 属性。 保存圆通信息可以恢复文档属性, 如标签、 注释、 页眉和页脚, 在将所列格式的文档装回到时 **Document** 对象。

默认值是 **true** 用于 HTML 和 **false** 关于MHTML和EPUB:

- 当 **true**, 环行信息导出为 -aw - * 相应的 HTML 元素的 CSS 属性
- 当 **false**, 没有可输出到生成文件的往返信息

以下代码示例显示将文档从 DOCX 转换为 HTML 时如何导出往返信息:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertDocumentToHtmlWithRoundtrip/Test%20File%20\(doc\).doc) (中文(简体) ).

{{% /alert %}}

## 指定转换为 HTML 时的保存选项

Aspose.Words 允许使用默认或自定义保存选项将 Word 文档转换为 HTML。 下面介绍一些自定义保存选项的例子。

### 指定保存资源的文件夹

使用 Aspose.Words 我们可以指定一个物理文件夹,当文档转换为 HTML 时,该文件夹将保存所有资源,如图像、字体和外部 CSS 。 默认情况下, 这是空字符串 。

指定 [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) 属性是最简单的设置所有资源应当写入的文件夹。 我们可以使用个人属性,例如 [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) 将字体保存到指定的文件夹, [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) 将图像保存到指定的文件夹。 当指定了相对路径时, **FontsFolder** 和 **ImagesFolder** 指代码组装所在的文件夹, **ResourceFolder** 和 [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) 引用 HTML 文档所在的输出文件夹。

在这个例子中, **ResourceFolder** 指定相对路径。 此路径指保存 HTML 文档的输出文件夹。 数值 **ResourceFolderAlias** 属性用于为所有资源创建 URL。

以下代码示例显示了如何与这些属性合作:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

使用 [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias) 属性,我们也可以指定用于构建写入 HTML 文档的所有资源的 URI 文件夹的名称。 这是为所有资源文件指定 URI 如何生成的最简单的方式. 图像和字体可通过下列方式单独指定相同信息: [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) 和 [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) 属性。

但是,社会保障局没有个人财产。 行为 **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** 和 **CssStyleSheetFileName** 属性不更改。 注意到 **CssStyleSheetFileName** 属性用于指定文件夹名称和文件名称。

- 怎么样? **ResourceFolder** 优先级低于指定的文件夹 **FontsFolder**, **ImagesFolder**, 和 **CssStyleSheetFileName**。 。 。 。 如果指定文件夹 **ResourceFolder** 不存在,将自动创建。
- 怎么样? **ResourceFolderAlias** 优先级低于 **FontsFolderAlias** 和 **ImagesFolderAlias**。 。 。 。 若为 **ResourceFolderAlias** 空, 值为 **ResourceFolder** 属性将用于创建资源URI。 若为 **ResourceFolderAlias** 设置为"."(dot),资源 URI只包含文件名而不指定路径。

### 导出 Base64 编码字体资源

Aspose.Words 提供了指定字体资源是否应嵌入 Base64 编码中的 HTML 的能力。 要做到这一点,请使用 [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) 属性 - 这是扩展 [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources) 属性。 默认值为 **false**, 和字体写入单独的文件。 但如果这个选项被设定为 **true**, 字体将嵌入到文档的 CSS 在 Base64 编码中. 那个 **导出 FontsAsBase64** 属性只影响 HTML 格式,并不影响 EPUB 和 MHTML。

以下代码示例显示如何将 Base64 编码字体导出到 HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## 指定转换到 EPUB 时保存选项

Aspose.Words 允许使用默认或自定义保存选项将 Word 文档转换为 EPUB 格式。 您可以通过一个实例指定一些选项: [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) 页:1 [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions) 方法。

以下代码示例显示如何将 Word 文档转换为 EPUB, 并指定一些自定义保存选项:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc)。 。 。 。

{{% /alert %}}

## 另见

- [保存到 HTML 时如何导出往返信息](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
