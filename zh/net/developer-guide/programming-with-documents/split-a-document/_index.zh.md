---
title: 在 C# 中拆分文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 拆分文档
linktitle: 拆分文档
description: "使用 C# 将文档拆分为多个文件。使用拆分功能可以按标题或部分以及按页面或页面范围有效地拆分文档。"
type: docs
weight: 90
url: /zh/net/split-a-document/
---

*Splitting* 或"拆分文档"是将大文档分解为更多小文件的过程。分割文件的原因有多种。例如，您只需要特定文档中的某些页面，而不是整个文档。或者出于隐私原因，您只想与其他人共享文档的某些部分。通过拆分功能，您可以仅获取文档中所需的部分，并对它们执行必要的操作，例如标记、保存或发送。

Aspose.Words 为您提供了一种按标题或部分将一个文档拆分为多个文档的有效方法。您还可以按页面或页面范围拆分文档。本文将介绍这两种拆分选项。

要使用 Aspose.Words 将文档拆分为较小的文件，您需要执行以下步骤：

1. 以任何支持的格式加载文档。
1. 拆分文档。
1. 保存输出文档。

拆分文档后，您将能够打开以所需页面、文本等开头的所有输出文档。

{{% alert color="primary" %}}

**在线尝试**

您可以使用我们的 [免费在线文档分割器](https://products.aspose.app/words/splitter) 尝试此功能。

{{% /alert %}}

## 使用不同的标准 {#split-a-document-using-different-criteria} 拆分文档

Aspose.Words 允许您根据各种标准将 EPUB 或 HTML 文档拆分为章节。在此过程中，为输出文档保留源文档的样式和布局。

您可以使用 [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/) 枚举指定条件。因此，您可以使用以下条件之一将文档划分为多个章节，或将多个条件组合在一起：

- 标题段落，
- 分节符，
- 分栏符，
- 分页符。

将输出保存为 HTML 时，Aspose.Words 将每个单独的章节保存为单独的 HTML 文件。结果，文档将被分割成多个 HTML 文件。将输出保存到 EPUB 时，Aspose.Words 将结果保存在单个 EPUB 文件中，无论您使用的 `DocumentSplitCriteria` 值如何。因此，对 EPUB 文档使用 DocumentSplitCriteria 只会影响其内容在阅读器应用程序中的外观：内容将分为章节，文档将不再显得连续。

{{% alert color="primary" %}}

保存为 MHTML 格式时，无法使用 [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) 属性分割文档。

{{% /alert %}}

在本节中，我们仅考虑一些可能的分割标准。

### 按标题 {#split-a-document-by-headings} 拆分文档

要按标题将文档拆分为章节，请使用 **DocumentSplitCriteria** 属性的 **HeadingParagraph** 值。

如果您需要按特定级别的标题段落（例如标题 1、2 和 3）拆分文档，还可以使用 [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/) 属性。输出将按指定标题级别格式化的段落进行划分。

以下代码示例展示了如何通过标题将文档拆分为更小的部分：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

请注意，对于此条件，Aspose.Words 仅支持在拆分时保存为 HTML 格式。

保存为 EPUB 时，文档不会分割为多个文件，并且只有一个输出文件。

### 按 {#split-a-document-by-sections} 部分拆分文档

Aspose.Words 还允许您使用分节符来分割文档并将其保存为 HTML。为此，使用 **SectionBreak** 作为 **DocumentSplitCriteria**：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

还有另一种方法可以将源文档拆分为多个输出文档，您可以选择 Aspose.Words 支持的任何输出格式。

以下代码示例演示如何通过分节符将文档拆分为更小的部分（不使用 `DocumentSplitCriteria` 属性）：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## 按页面拆分 {#splitting-by-pages}

您还可以逐页、按页面范围或从指定页码开始拆分文档。在这种情况下，[ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) 方法可以完成这项工作。

本节介绍使用 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 类和 **ExtractPages** 方法按页划分文档的几个用例。

{{% alert color="primary" %}}

您可以使用任何 [支持的文档格式](/words/zh/net/supported-document-formats/)。

{{% /alert %}}

{{% alert color="primary" %}}

由于在减少页面数量的同时出现了许多细微差别，与 Microsoft Word 布局的完全匹配是一项相当复杂的任务。因此，根据文档的复杂程度，生成的文档布局可能与原始文档略有不同。

{{% /alert %}}

### 逐页拆分文档 {#split-a-document-page-by-page}

Aspose.Words 使您能够逐页拆分多页文档。

以下代码示例演示如何划分文档并将每个页面保存为单独的文档：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### 按页面范围 {#split-a-document-by-page-ranges} 拆分文档

Aspose.Words 允许按页面范围拆分多页文档。您可以将一个文件拆分为具有不同页面范围的多个文件，或者仅选择一个范围并仅保存源文档的这一部分。请注意，您可以根据文档的最大和最小页码选择页面范围。

以下代码示例演示如何按具有特定开始和结束索引的页面范围将文档拆分为更小的部分：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## 用于保存文档 {#callback-option-for-saving-a-document} 的回调选项

您可以使用 [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) 属性来控制将文档导出为 HTML 格式时 Aspose.Words 如何保存文档部分。此属性允许您重命名输出文件，甚至将它们重定向到自定义流。

请注意，保存到 EPUB 时此回调没有用，因为所有输出部分都必须保存到单个容器 - .epub 文件中。因此，不支持流重定向，并且由于文件在容器内重命名，因此重命名的效果不可见。

## 将分割文档与另一个文档 {#merge-the-split-document-with-another-file} 合并

Aspose.Words 使您能够将输出拆分文档与另一个文档合并以形成新文档。这可以称为文档合并。

以下代码示例演示如何将拆分文档与另一个文档合并：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
