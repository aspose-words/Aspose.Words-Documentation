---
title: 常问问题
second_title: .NET 格式的 Aspose.Words
articleTitle: 常见问题解答 – .NET 格式的 Aspose.Words
linktitle: 常见问题解答 – .NET 格式的 Aspose.Words
articleTitle: 常问问题
linktitle: 常问问题
type: docs
description: "Aspose.Words for .NET 回答了最常见的问题。了解此页面可快速解决您的一般问题或特定主题的问题。"
weight: 75
url: /zh/net/faq/
---

此页面包含最常见问题的解答。请了解当前页面--也许这能让您快速解决问题。

如果您没有找到问题的答案，可以在支持论坛上提问。有关如何正确报告您的疑问或问题的信息，请参阅 [技术支援](/words/zh/net/technical-support/) 页面。

{{% alert color="primary" %}}

为方便起见，常见问题按主题分组。

{{% /alert %}}

## 一般的

**问：什么是 Aspose.Words？**

Aspose.Words for .NET 是一个类库，允许您的应用程序执行各种文档处理任务。借助 Aspose.Words for .NET，您无需第三方应用程序即可生成、修改、转换、渲染和打印文档。

详细信息可以在我们的文档中找到。

------

**问："Aspose.Words 不需要第三方应用程序"是什么意思？**

Aspose.Words for .NET 不需要安装任何第三方应用程序或额外的软件包即可工作。只需按照 [安装](/words/zh/net/installation/) 文章中所述下载并安装 Aspose.Words 即可开始。

------

**问：Aspose.Words 支持哪些平台？**

Aspose.Words for .NET 涵盖了大多数流行的开发环境和部署平台。其 API 可用于为各种操作系统（例如 Windows、Linux 和 Mac OS）以及各种平台开发应用程序。

有关详细信息，请参阅 [产品概述](/words/zh/net/product-overview/) 页面和 [平台和 Interoperability](/words/net/platforms-and-interoperability/) 部分。

------

**问：Aspose.Words 支持哪些文档格式？**

Aspose.Words for .NET 支持大多数流行的文档格式，例如 DOC、DOCX、HTML、Markdown、PDF、XML 等。

您可以在 [支持的文档格式](/words/zh/net/supported-document-formats/) 页面上查看支持格式的完整列表。

------

**问：如何免费试用 Aspose.Words？**

您可以通过两种方式执行此操作 - 使用试用版或 30 天临时许可证。试用版与购买的版本相同，它提供完整的产品功能，但在加载和保存时在文档顶部添加评估水印，并将最大文档大小限制为几百段。临时许可证允许您在 30 天内不受试用限制地测试 Aspose.Words。

请参阅 [许可和订阅](/words/zh/net/licensing/) 页面了解更多信息。

{{% alert color="primary" %}}

您还可以通过 [Aspose.Words 免费在线应用程序](https://products.aspose.app/words) 尝试一些最流行的 Aspose.Words 功能。

{{% /alert %}}

------

**问：如何购买 Aspose.Words？**

要购买Aspose.Words许可证，您需要进入[购买](https://purchase.aspose.com/buy)页面，选择"Aspose.Words"产品和适合您的许可证类型。然后将许可证添加到您的购物车并按照购物车说明进行操作。

购买后，按照 [购买许可证](/words/net/licensing/#purchased-license) 部分所述申请许可证。

有关如何安装 Aspose.Words 的详细信息可以在 [安装](/words/zh/net/installation/) 页面上阅读。

------

**问：我如何获得支持？**

使用免费的技术支持论坛。有关如何正确报告问题以及联系论坛之前需要做什么的详细信息，请参阅 [技术支援](/words/zh/net/technical-support/) 页面。

## 渲染文档

{{% alert color="primary" %}}

您可以在 [渲染](/words/zh/net/rendering/) 文档部分找到有关渲染的更多详细信息。

{{% /alert %}}

**问：为什么输出文档的布局和字体与原始文档不同？**

该字体可能不可用，或者 Microsoft Word 支持该字体格式，但 Aspose.Words 不支持该字体格式。 Aspose.Words 将执行 [操作和替换 TrueType 字体](/words/zh/net/manipulating-and-substitution-truetype-fonts/)。

检查字体是否丢失：

* 在 Aspose.Words 中使用字体替换警告（有关详细信息，请参阅 [操作和替换 TrueType 字体](/words/zh/net/manipulating-and-substitution-truetype-fonts/) 文章的"如何识别字体被替换"部分）。
* 在 Microsoft Word 中打开"字体替换"对话框（文件 → 选项 → 高级 → 字体替换）。

------

**问：我应该在哪里存储 ASP.NET 应用程序的字体？**

在 `APS.NET` 中，无法访问中等信任的系统字体文件夹。用户必须将字体存储在自己的文件夹中。

------

**问：为什么字体回退在非 Windows 平台上不起作用，并且 Unicode 字符被替换为 .notdef glyph？**

我们经常可以看到 `.notdef` glyph 而不是一些 Unicode 字符。这通常是一个框或一个问题 glyph。

这是因为默认选择 Microsoft Office 后备设置，并且 Microsoft Office 字体不可用。用户必须安装 Microsoft Office 字体或更改后备设置。

------

**问：为什么复杂的脚本文本（例如泰语或希伯来语）可能由于某种原因（例如变音符号位置错误或连字不准确）显示不准确？**

一些复杂的脚本字体需要处理高级排版功能才能正确显示。默认情况下，Aspose.Words 中禁用高级排版。用户必须启用 [TextShaperFactory](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/textshaperfactory/) 高级排版。

------

**问：我使用的字体需要许可证文件吗？**

是的你是。因此，在复制字体时，请记住大多数字体都受版权保护。预先找到字体许可证并验证它们是否可以自由转移到另一台计算机。

## 嵌套Mail Merge

{{% alert color="primary" %}}

您可以在 [Mail Merge 和报告](/words/net/mail-merge-and-reporting/) 文档部分找到有关 mail merge 的更多详细信息。

{{% /alert %}}

**问：为什么生成的输出中没有合并字段？**

合并字段的原始名称保持不变，不被数据源中所需的数据替换，则：

* 检查数据是否正确加载到表中：使用所有必需的主键和关系正确设置 [TableName](https://reference.aspose.com/words/zh/net/aspose.words.mailmerging/imailmergedatasource/tablename/)。
* 检查合并字段的命名是否正确。使用 [GetFieldNames](https://reference.aspose.com/words/zh/net/aspose.words.mailmerging/mailmerge/getfieldnames/) 方法获取所有合并字段名称，并确保模板中合并字段的名称与数据源中的名称相匹配。

------

**问：为什么嵌套合并的输出不显示父表中第一个条目的子表数据，而是显示父表中最后一个条目的所有项目，甚至是那些实际上未链接到它的项目？**

这是因为模板中的合并区域的格式不正确，这可能会使所有嵌套的 mail merge 区域完全停止显示任何内容。 [StartTable](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/starttable/) 开始标记和 [EndTable](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/endtable/) 结束标记必须匹配并且位于同一行或单元格中。例如，如果您在表的单元格中开始嵌套合并区域，则必须在与第一个单元格相同的行中结束合并区域。

------

**问：为什么父表中的每个条目都会显示子表中的每个项目，甚至是那些实际上未链接到子表的项目？**

这是因为父子表关系没有设置或者设置不正确。有必要：

* 确保 **DataSet** 内的数据完整性，并使用 **DataRelation** 对象来表示相关数据表之间的父子关系。
* 请查看 [带有区域的嵌套 Mail Merge](/words/net/nested-mail-merge-with-regions/) 文章中的"如何在嵌套 Mail Merge 中与区域建立数据关系"部分。

------

**问：执行嵌套 mail merge 时，为什么会出现异常："System.ArgumentException：无法启用此约束，因为并非所有值都有相应的父值"？**

发生这种情况的原因是，并非每个父记录都有子记录，因此您的数据源不符合以下条件： *父表中的每一行都应根据主表和子表的行具有一对一的关系。外键*。

创建 **DataRelation** 时禁用外键约束。

## 追加或插入文档

{{% alert color="primary" %}}

您可以在 [使用文档编程](/words/zh/net/programming-with-documents/) 文档部分找到有关使用文档编程的更多详细信息。

{{% /alert %}}

**问：为什么附加到文档的内容不会出现在同一页面上？**

由于文档附加在一起的部分的 [PageSetup](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/) 设置不同，附加结果显示在单独的页面上。对文档附加到一起的部分进行相同的 **PageSetup** 设置。

## 转换文档

{{% alert color="primary" %}}

您可以在 [转换文档](/words/zh/net/convert-a-document/) 文档部分找到有关转换文档的更多详细信息。

{{% /alert %}}

**问：如何将PDF转换为Word？**

这非常简单，只需将文档加载到模型中并将其保存为任何支持的格式即可。

以下代码示例显示了将 PDF 文件转换为 DOC 的过程：

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

// Save the file into MS document format
pdfDocument.Save(_dataDir + "PDFToDOC_out.doc", SaveFormat.Doc); // .Docx, .Rtf, .WordML, etc.
{{< /highlight >}}

------

**问：如何将 DOCX 转换为 PDF？**

这也非常简单，只需将文档加载到模型中并将其保存为任何支持的格式即可。

以下代码示例显示了将 DOCX 文件转换为 PDF 的过程：

{{< highlight csharp >}}
// Open the source DOCX document.
Document doc = new Document(_dataDir + "input.docx");

// Save the file to PDF format.
doc.Save(_dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## 使用文档进行操作

{{% alert color="primary" %}}

您可以在 [使用文档编程](/words/zh/net/programming-with-documents/) 文档部分找到有关使用文档编程的更多详细信息。

{{% /alert %}}

**问：如何逐页拆分文档？**

Aspose.Words 使您能够逐页拆分多页文档。

以下代码示例演示如何划分文档并将每个页面保存为单独的文档：

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Big document.docx");

int pageCount = doc.PageCount;

for (int page = 0; page < pageCount; page++)
{
	// Save each page as a separate document.
	Document extractedPage = doc.ExtractPages(page, 1);
	extractedPage.Save(ArtifactsDir + $"SplitDocument.PageByPage_{page + 1}.docx");
}
{{< /highlight >}}

------

**问：如何打开加密的** **文档？**

您可以尝试在没有密码的情况下打开加密文档，这应该会导致异常。

以下代码示例演示如何使用密码打开加密文档：

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.Docx);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.Password = "MyPassword";
doc.Save(ArtifactsDir + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// Open the encrypted document by passing the correct password in a `LoadOptions` object.
doc = new Document(ArtifactsDir + "OoxmlSaveOptions.Password.docx", new LoadOptions("MyPassword"));

Assert.AreEqual("Hello world!", doc.GetText().Trim());
{{< /highlight >}}

------

**问：如何打印文档？**

只需两行代码。

以下代码示例展示了如何以两种方式打印文档：

{{< highlight csharp >}}
Document doc = new Document(MyDir + "PrintMe.docx");

// Below are two ways of printing our document.
// 1 -  Print using the default printer:
doc.Print();

// 2 -  Specify a printer that we wish to print the document with by name:
string myPrinter = PrinterSettings.InstalledPrinters[4];

doc.Print(myPrinter);
{{< /highlight >}}

------

**问：如何编辑PDF文档？**

只需将 PDF 加载到 Aspose.Words 文档模型并进行更改即可。

以下代码示例展示了如何编辑文档：

{{< highlight csharp >}}
// Open the source PDF document
Document pdfDocument = new Document(_dataDir + "PDFToDOC.pdf");

DocumentBuilder builder = new DocumentBuilder(pdfDocument);
builder.MoveToDocumentEnd();
builder.Writeln("New paragraph with text");

pdfDocument.Save(_dataDir + "out.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## Docker

**问：如何在Docker中使用Aspose.Words？**

如需详细答案，请学习 [如何在 Docker 中运行 Aspose.Words](/words/zh/net/how-to-run-aspose-words-in-docker/) 文章。
