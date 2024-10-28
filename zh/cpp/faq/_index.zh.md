---
title: FAQ
second_title: Aspose.Words为C++
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.Words为C++ 回答最常见的问题。 学习此页面，快速解决您的一般问题或特定主题的问题。"
weight: 75
url: /zh/cpp/faq/
---

本页包含最常见问题的答案。 请了解当前页面-也许这可以让您快速解决问题。

如果您还没有找到问题的答案，您可以在支持论坛上询问。 有关如何正确报告您的问题或问题的信息，请参阅 [技术支持](/words/cpp/technical-support/) 页。

{{% alert color="primary" %}}

为了方便您,常见问题按主题分组.

{{% /alert %}}

## 一般事务

**问：什么是Aspose.Words？**

Aspose.Words为C++ 是一个类库，允许您的应用程序执行各种文档处理任务。 与 Aspose.Words为C++，您可以在没有第三方应用程序的情况下生成，修改，转换，呈现和打印文档。

详细信息可以在我们的文档中找到。

------

**问："Aspose.Words不需要第三方应用程序"是什么意思？**

Aspose.Words为C++ 不需要安装任何第三方应用程序或额外的软件包工作。 只需下载并安装Aspose.Words，如 ["安装"](/words/cpp/installation/) 文章并开始。

------

**问：Aspose.Words支持哪些平台？**

Aspose.Words为C++ 涵盖大多数流行的开发环境和部署平台。 它的API可用于开发各种操作系统的应用程序，如Windows、Linux和MacOS，以及各种平台。

有关详细信息，请参阅 [产品概览](/words/cpp/product-overview/) 页。

------

**问：Aspose.Words支持哪些文档格式？**

Aspose.Words为C++ 支持大多数流行的文档格式，如DOC, DOCX, HTML, Markdown, PDF, XML, 和其他人。

您可以在 [支持的文档格式](/words/cpp/supported-document-formats/) 页。

------

**问：如何免费试用Aspose.Words？**

您可以通过两种方式执行此操作-使用试用版或30天临时许可证。 试用版与购买的版本相同，它提供完整的产品功能，但在加载和保存时在文档顶部添加评估水印，并将最大文档大小限制为几百个段落。 临时许可证允许您在没有试用限制的情况下测试Aspose.Words30天。

查看 [许可和订阅](/words/cpp/licensing/) 页以获取更多信息。

{{% alert color="primary" %}}

您也可以尝试一些最流行的Aspose.Words功能，通过 [Aspose.Words免费在线应用程序](https://products.aspose.app/words).

{{% /alert %}}

------

**问：如何购买Aspose.Words？**

要购买Aspose.Words许可证，您需要转到 [购买](https://purchase.aspose.com/buy) 页，选择"Aspose.Words"产品和适合您的许可证类型。 然后将许可证添加到购物车并按照购物车说明操作。

购买后，按照 [购买许可证](/words/cpp/licensing/#purchased-license) 节。

有关如何安装Aspose.Words的详细信息，请参阅 [安装工程](/words/cpp/installation/) 页。

------

**问：如何获得支持？**

使用免费的技术支持论坛。 有关如何正确报告问题以及在联系论坛之前需要做些什么的详细信息，请参阅 [技术支持](/words/cpp/technical-support/) 页。

## 呈现文档

{{% alert color="primary" %}}

你可以在 [渲染图](/words/cpp/rendering/) 文件科。

{{% /alert %}}

**问：为什么输出文档中的布局和字体与原始文档不同？**

字体可能不可用，或者字体格式由Microsoft Word支持，但Aspose.Words不支持。 Aspose.Words将执行 [字体替换](/words/cpp/manipulate-and-substitute-truetype-fonts/).

检查字体是否丢失:

- 在Aspose.Words中使用字体替换警告（有关详细信息，请参阅 [操作和替换TrueType字体](/words/cpp/manipulate-and-substitute-truetype-fonts/) 文章）。
- 在Microsoft Word中打开"字体替换"对话框（文件→选项→高级→字体替换）。

------

**问：为什么字体回退在非Windows平台上不起作用，Unicode字符被替换为.notdef字形？**

我们经常可以看到`.notdef`字形而不是一些Unicode字符。 这通常是一个框或一个问题字形。

这是因为默认情况下选择MicrosoftOffice回退设置，并且MicrosoftOffice字体不可用。 用户必须安装MicrosoftOffice字体或更改回退设置。

------

**问：为什么复杂的脚本文本（如泰语或希伯来语）可能由于某种原因而显示不准确，例如变音符号的错误位置或不准确的连字？**

一些复杂的脚本字体需要处理高级排版功能才能正确显示它们。 默认情况下，在Aspose.Words中禁用高级排版。 用户必须使用[TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/)启用高级排版。

------

**问：我使用的字体是否需要许可证文件？**

是的，你知道。 因此，复制字体时，请记住，大多数字体都受版权保护。 事先找到字体许可证，并验证它们是否可以自由地转移到另一台机器。

## 追加或插入文档

{{% alert color="primary" %}}

你可以在 [使用文档编程](/words/cpp/programming-with-documents/) 文件科。

{{% /alert %}}

**问：为什么附加到文档的内容不会出现在同一页面上？**

追加结果显示在单独的页面上，因为文档一起追加的部分的[PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/)设置不同。 对文档附加在一起的部分进行相同的**PageSetup**设置。

## 转换文档

{{% alert color="primary" %}}

您可以在 [转换文档](/words/cpp/convert-a-document/) 文件科。

{{% /alert %}}

**问：如何将DOCX转换为PDF？**

这也非常简单，只需将文档加载到模型并将其保存为任何支持的格式即可。

下面的代码示例演示将DOCX文件转换为PDF的过程:

{{< highlight csharp >}}
// Load the document from disk.
System::SharedPtr<Document> doc = System::MakeObject<Document>(inputDataDir + u"Rendering.doc");

System::String outputPath = outputDataDir + u"Doc2Pdf.SaveDoc2Pdf.pdf";
// Save the document in PDF format.
doc->Save(outputPath);
{{< /highlight >}}

## 使用文档进行操作

{{% alert color="primary" %}}

你可以在 [使用文档编程](/words/cpp/programming-with-documents/) 文件科。

{{% /alert %}}

**问：如何逐页拆分文档？**

Aspose.Words使您能够逐页拆分多页文档。

下面的代码示例演示如何分割文档并将每个页面另存为单独的文档:

{{< highlight csharp >}}
auto doc = MakeObject<Document>(MyDir + u"Big document.docx");

int pageCount = doc->get_PageCount();

for (int page = 0; page < pageCount; page++)
{
    // Save each page as a separate document.
    SharedPtr<Document> extractedPage = doc->ExtractPages(page, 1);
    extractedPage->Save(ArtifactsDir + String::Format(u"SplitDocument.PageByPage_{0}.docx", page + 1));
}
{{< /highlight >}}

------

**问：如何打开加密**

您可以尝试在没有密码的情况下打开加密文档，这应该会导致异常。

下面的代码示例演示如何使用密码打开加密文档:

{{< highlight csharp >}}
// Create a document.
auto doc = System::MakeObject<Document>();
auto builder = System::MakeObject<DocumentBuilder>(doc);
builder->Write(u"Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
auto options = System::MakeObject<OoxmlSaveOptions>(SaveFormat::Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options->set_Password(u"MyPassword");
doc->Save(u"OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = System::MakeObject<Document>(u"OoxmlSaveOptions.Password.docx", System::MakeObject<LoadOptions>(u"MyPassword"));

ASSERT_EQ(doc->GetText().Trim(), u"Hello world!");
{{< /highlight >}}
