---
title: FAQ
second_title: Aspose.Words为Java
articleTitle: FAQ
linktitle: FAQ
type: docs
description: "Aspose.WordsforJava回答最常见的问题。 学习此页面，以快速解决您的一般问题或特定主题的问题。"
weight: 75
url: /zh/java/faq/
timestamp: 2024-01-31-14-23-37
---

本页包含最常见问题的答案。 请了解当前页面-也许这可以让您快速解决问题。

如果您还没有找到问题的答案，您可以在支持论坛上询问。 有关如何正确报告您的问题或问题的信息，请参阅 [技术支持](/words/java/technical-support/) 页。

{{% alert color="primary" %}}

为了方便您,常见问题按主题分组.

{{% /alert %}}

## 一般事务

**问：什么是Aspose.Words？**

Aspose.WordsforJava是一个类库，允许您的应用程序执行各种文档处理任务。 使用Aspose.WordsforJava，您可以在没有第三方应用程序的情况下生成，修改，转换，呈现和打印文档。

详细信息可以在我们的文档中找到。

------

**问："Aspose.Words不需要第三方应用程序"是什么意思？**

Aspose.Words对于Java不需要安装任何第三方应用程序或额外的软件包工作。 只需下载并安装Aspose.Words，如 [安装工程](/words/java/installation/) 文章并开始。

------

**问：Aspose.Words支持哪些平台？**

Aspose.WordsforJava涵盖了大多数流行的开发环境和部署平台。 它的API可用于为各种操作系统（如Windows、Linux和Mac OS）以及各种平台开发应用程序。

有关详细信息，请参阅 [产品概览](/words/java/product-overview/) 页和 [平台和Interop可读性](/words/java/platforms-and-interoperability/) 节。

------

**问：Aspose.Words支持哪些文档格式？**

Aspose.WordsforJava支持大多数流行的文档格式，例如DOC, DOCX, HTML, Markdown, PDF, XML, 和其他人。

您可以在 [支持的文档格式](/words/java/supported-document-formats/) 页。

------

**问：如何免费试用Aspose.Words？**

您可以通过两种方式执行此操作-使用试用版或30天临时许可证。 试用版与购买的版本相同，它提供完整的产品功能，但在加载和保存时在文档顶部添加评估水印，并将最大文档大小限制为几百个段落。 临时许可证允许您在没有试用限制的情况下测试Aspose.Words30天。

查看 [许可和订阅](/words/java/licensing/) 页以获取更多信息。

{{% alert color="primary" %}}

您也可以尝试一些最流行的Aspose.Words功能，通过 [Aspose.Words免费在线应用程序](https://products.aspose.app/words).

{{% /alert %}}

------

**问：如何购买Aspose.Words？**

要购买Aspose.Words许可证，您需要转到 [购买](https://purchase.aspose.com/buy) 页，选择"Aspose.Words"产品和适合您的许可证类型。 然后将许可证添加到购物车并按照购物车说明操作。

购买后，按照 [购买许可证](/words/java/licensing/#purchased-license) 节。

有关如何安装Aspose.Words的详细信息，请参阅 [安装工程](/words/java/installation/) 页。

------

**问：如何获得支持？**

使用免费的技术支持论坛。 有关如何正确报告问题以及在联系论坛之前需要做些什么的详细信息，请参阅 [技术支持](/words/java/technical-support/) 页。

## 呈现文档

{{% alert color="primary" %}}

你可以在 [渲染图](/words/java/rendering/) 文件科。

{{% /alert %}}

**问：为什么输出文档中的布局和字体与原始文档不同？**

字体可能不可用，或者字体格式由Microsoft Word支持，但Aspose.Words不支持。 Aspose.Words将执行 [字体替换](/words/java/manipulate-and-substitute-truetype-fonts/).

检查字体是否丢失:

- 在Aspose.Words中使用字体替换警告（有关详细信息，请参阅 [操作和替换TrueType字体](/words/java/manipulate-and-substitute-truetype-fonts/) 文章）。
- 在Microsoft Word中打开"字体替换"对话框（文件→选项→高级→字体替换）。

------

**问：为什么字体回退在非Windows平台上不起作用，Unicode字符被替换为.notdef字形？**

我们经常可以看到`.notdef`字形而不是一些Unicode字符。 这通常是一个框或一个问题字形。

这是因为默认情况下选择MicrosoftOffice回退设置，并且MicrosoftOffice字体不可用。 用户必须安装MicrosoftOffice字体或更改回退设置。

------

**问：为什么复杂的脚本文本（如泰语或希伯来语）可能由于某种原因而显示不准确，例如变音符号的错误位置或不准确的连字？**

一些复杂的脚本字体需要处理高级排版功能才能正确显示它们。 默认情况下，在Aspose.Words中禁用高级排版。 用户必须使用[TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getTextShaperFactory)启用高级排版。

------

**问：我使用的字体是否需要许可证文件？**

是的，你知道。 因此，复制字体时，请记住，大多数字体都受版权保护。 事先找到字体许可证并验证它们是否可以自由地转移到另一台机器上。

## 嵌套Mail Merge

{{% alert color="primary" %}}

有关Mail Merge的详细资料，请参阅 [Mail Merge和报告](/words/java/mail-merge-and-reporting/) 文件科。

{{% /alert %}}

**问：为什么生成的输出中没有合并字段？**

合并字段的原始名称保持不变，而不会被来自数据源的所需数据替换，则:

- 检查数据是否正确加载到表中：使用所有必需的主键和关系正确设置[TableName](https://reference.aspose.com/words/java/com.aspose.words/imailmergedatasource/#getTableName)。
- 检查合并字段是否正确命名。 使用[GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames)方法获取所有合并字段名称，并确保模板中合并字段的名称与数据源中的名称匹配。

------

**问：为什么嵌套合并的输出不显示父表中第一个条目的子表中的数据，而是显示父表中最后一个条目的所有项，甚至是那些实际上没有链接到它的项？**

这是因为模板中的合并区域没有正确形成，这会使所有嵌套的Mail Merge区域完全停止显示任何内容。 [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)开始标记和[EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable)结束标记必须匹配并且位于同一行或单元格中。 例如，如果您开始在表的单元格中嵌套合并区域，则必须在与第一个单元格相同的行中结束合并区域。

------

**问：为什么父表中的每个条目都显示子表中的每个条目，甚至是那些实际上没有链接到它的条目？**

这是因为父表和子表之间的关系未设置或设置不正确。 有必要:

- 确保**DataSet**内的数据完整性，并使用**DataRelation**对象表示相关数据表之间的父子关系。
- 检查文章中的"如何在带有区域的嵌套Mail Merge中设置数据关系"一节 [带有区域的嵌套Mail合并](/words/java/nested-mail-merge-with-regions/).

------

**问：为什么是一个例外："系统。ArgumentException：不能启用此约束，因为不是所有值都有相应的父值"，同时执行嵌套mail merge？**

发生这种情况是因为并非每个父记录都有一个子记录，因此您的数据源不符合以下条件：*every row in the parent table should have a one-to-one relationship with the rows of the child table based on the primary and foreign keys*。

创建**DataRelation**时禁用外键约束。

## 追加或插入文档

{{% alert color="primary" %}}

你可以在 [使用文档编程](/words/java/programming-with-documents/) 文件科。

{{% /alert %}}

**问：为什么附加到文档的内容不会出现在同一页面上？**

追加结果显示在单独的页面上，因为文档一起追加的部分的[PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/)设置不同。 对文档附加在一起的部分进行相同的**PageSetup**设置。

## 转换文档

{{% alert color="primary" %}}

您可以在 [转换文档](/words/java/convert-a-document/) 文件科。

{{% /alert %}}

**问：如何将DOCX转换为PDF？**

这也非常简单，只需将文档加载到模型并将其保存为任何支持的格式即可。

下面的代码示例演示将DOCX文件转换为PDF的过程:

{{< highlight java >}}
// Open the source DOCX document.
Document doc = new Document(dataDir + "Input.docx");

// Save the document to PDF format.
doc.save(dataDir + "output.pdf", SaveFormat.Pdf);
{{< /highlight >}}

## 使用文档进行操作

{{% alert color="primary" %}}

你可以在 [使用文档编程](/words/java/programming-with-documents/) 文件科。

{{% /alert %}}

**问：如何逐页拆分文档？**

Aspose.Words使您能够逐页拆分多页文档。

下面的代码示例演示如何分割文档并将每个页面另存为单独的文档:

{{< highlight java >}}
Document doc = new Document(dataDir + "TestFile (Split).docx");

int pageCount = doc.getPageCount();

// Save each page as a separate document.
for (int page = 0; page <= pageCount; page++)
{
	Document extractedPage = doc.extractPages(page, 1);
	extractedPage.save(dataDir + "SplitDocumentPageByPageOut_" + (page + 1) + ".docx");
}
{{< /highlight >}}

------

**问：如何打开加密**

您可以尝试在没有密码的情况下打开加密文档，这应该会导致异常。

下面的代码示例演示如何使用密码打开加密文档:

{{< highlight java >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.write("Hello world!");

//OoxmlSaveOptions only applies to Docx, Docm, Dotx, Dotm, or FlatOpc formats.
OoxmlSaveOptions options = new OoxmlSaveOptions(SaveFormat.DOCX);

// Set a password with which the document will be encrypted, and which will be required to open it.
options.setPassword("MyPassword");
doc.save(getArtifactsDir() + "OoxmlSaveOptions.SaveAsDocx.docx", options);

// We will not be able to open this document with Microsoft Word or
// Aspose.Words without providing the correct password.
try
{
    doc = new Document(getArtifactsDir() + "OoxmlSaveOptions.Password.docx"));
}
catch (Exception e)
{
    Assert.assertTrue(e instanceof IncorrectPasswordException);
}
{{< /highlight >}}

------

**问：如何打印文档？**

有关详细答案，请了解文章 [以编程方式或使用对话框打印文档](/words/java/print-a-document-programmatically-or-using-dialogs/).
