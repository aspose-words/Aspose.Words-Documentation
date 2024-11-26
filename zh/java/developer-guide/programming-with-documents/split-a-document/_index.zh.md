---
title: 在Java中分割文档
second_title: Aspose.Words为Java
articleTitle: 拆分文档
linktitle: 拆分文档
description: "Aspose.WordsforJava为您提供了一种通过标题或部分以及页面或页面范围将一个文档拆分为多个文档的有效方法。"
type: docs
weight: 90
url: /zh/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting*或*split a document*是将大型文档分解为更多较小文件的过程。 分割文件有多种原因。 例如，您只需要特定文档中的某些页面，而不是整个页面。 或者出于隐私原因，您只希望与其他人共享文档的某些部分。 使用拆分功能，您可以只获取文档的所需部分，并对它们执行必要的操作，例如标记、保存或发送。

Aspose.Words为您提供了一种通过标题或部分将一个文档拆分为多个文档的有效方法。 您还可以按页面或页面范围拆分文档。 这两个拆分选项将在本文中描述。

要使用Aspose.Words将文档拆分为较小的文件，您需要遵循以下步骤:

1. 以任何支持的格式加载文档。
1. 拆分文档。
1. 保存输出文档。

分割文档后，您将能够打开所有以所需页面，文本等开头的输出文档。

{{% alert color="primary" %}}

**在线试用**

您可以使用我们的 [免费在线文档分割器](https://products.aspose.app/words/splitter).

{{% /alert %}}

## 使用不同的条件分割文档 {#split-a-document-using-different-criteria}

Aspose.Words允许您根据各种标准将EPUB或HTML文档拆分为章节。 在此过程中，将为输出文档保留源文档的样式和布局。

您可以使用[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)枚举指定条件。 因此，您可以使用以下条件之一将文档分成章节，或者将多个条件组合在一起:

- 标题段落,
- 节间休息,
- 列断,
- 分页符。

将输出保存到HTML时，Aspose.Words将每个单独的章节保存为单独的HTML文件。 因此，文档将被拆分为多个HTML文件。 将输出保存到EPUB时，Aspose.Words将结果保存在单个EPUB文件中，而不考虑您使用的`DocumentSplitCriteria`值。 因此，对EPUB文档使用DocumentSplitCriteria只会影响其内容在阅读器应用程序中的外观：内容将被分成章节，文档将不再显示连续。

{{% alert color="primary" %}}

保存为MHTML格式时，不能使用[DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/)属性拆分文档。

{{% /alert %}}

在本节中，我们只考虑一些可能的分割标准。

### 按标题 {#split-a-document-by-headings}分割文档

要按标题将文档拆分为多个章节，请使用**DocumentSplitCriteria**属性的**HeadingParagraph**值。

如果需要按标题段落的特定级别（如标题1、2和3）分割文档，还可以使用[DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel)属性。 输出将按指定标题级别格式化的段落划分。

下面的代码示例演示如何按标题将文档拆分为更小的部分:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

请注意，对于此条件，Aspose.Words仅支持在拆分时保存为HTML格式。

保存到EPUB时，文档不会被拆分为多个文件，并且只会有一个输出文件。

### 按节 {#split-a-document-by-sections}分割文档

Aspose.Words还使您能够使用分段分隔符来分割文档并将其保存到HTML。 为此，使用**SectionBreak**作为**DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

还有另一种方法可以将源文档拆分为多个输出文档，您可以选择Aspose.Words支持的任何输出格式。

下面的代码示例演示如何按节符（不使用`DocumentSplitCriteria`属性）将文档拆分为较小的部分:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## 按页 {#splitting-by-pages}分割

您还可以逐页、按页面范围或从指定的页码开始拆分文档。 在这种情况下，[ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int)方法可以完成这项工作。

本节介绍使用[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)类和**ExtractPages**方法按分页划分文档的几个用例。

{{% alert color="primary" %}}

您可以使用任何 [Aspose.Words支持的输出格式](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

由于在减少页面数量的同时出现了许多细微差别，因此与Microsoft Word布局的完全匹配是一项相当复杂的任务。 因此，取决于文档复杂度，结果文档布局可能与原始文档略有差异。

{{% /alert %}}

### 按页分割文档 {#split-a-document-page-by-page}

Aspose.Words使您能够逐页拆分多页文档。

下面的代码示例演示如何分割文档并将每个页面另存为单独的文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### 按页面范围 {#split-a-document-by-page-ranges}分割文档

Aspose.Words允许按页面范围拆分多页文档。 您可以将一个文件拆分为具有不同页面范围的多个文件，或者只选择一个范围并仅保存源文档的这一部分。 请注意，您可以根据文档的最大和最小页码来选择页面范围。

下面的代码示例演示如何使用特定的开始和结束索引按页面范围将文档拆分为较小的部分:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## 保存文档 {#callback-option-for-saving-a-document}的回调选项

您可以使用[DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback)属性来控制当此文档导出为HTML格式时Aspose.Words如何保存文档部分。 此属性允许您重命名输出文件，甚至将它们重定向到自定义流中。

请注意，此回调在保存到EPUB时没有用，因为所有输出部分都必须保存到单个容器中-the。epub文件。 因此，不支持流重定向，并且重命名的效果不可见，因为文件在容器内重命名。

## 将拆分后的文档与另一个文档合并 {#merge-the-split-document-with-another-file}

Aspose.Words使您能够将输出拆分文档与另一个文档合并以形成新文档。 这可以称为文档合并。

下面的代码示例演示如何将拆分文档与另一个文档合并:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
