---
title: 将文档拆分到 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 分割文档
linktitle: 分割文档
description: "Aspose.Words (单位:千美元) Java 为您提供了按标题或区域以及页面或页面范围将一个文档分为多个文档的有效方法。"
type: docs
weight: 90
url: /zh/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* 或 * 将文档* 拆解为更多较小文件的过程。 拆分文件有各种原因. 例如,您只需从特定文档中获取一些页面,而不是整个文档。 或者出于隐私原因,您只想要与他人共享文档的某些部分. 使用拆分功能,您只能获取文档中所需的部分,并与它们一起采取必要的行动,例如标记、保存或发送。

Aspose.Words 为您提供了按标题或章节将一个文档分成多个文档的有效途径。 您也可以按页面或页面范围拆分文档。 本条将说明两种拆分办法。

使用 Aspose.Words, 您需要遵循这些步骤:

一、导 言 以任何支持的格式装入文档。
一、导 言 拆分文档.
一、导 言 保存输出文档 。

拆分文档后,您将能够打开所有以所需页面,文本等开头的输出文档.

{{% alert color="primary" %}}

**尝试在线**

你可以试试这个功能与我们 [自由在线文档分割器](https://products.aspose.app/words/splitter)。 。 。 。

{{% /alert %}}

## 使用不同的标准分割文档 {#split-a-document-using-different-criteria}

Aspose.Words 允许您按照各种标准将 EPUB 或 HTML 文档分割成章节。 在此过程中,为输出文档保留了源文档的样式和布局.

您可以使用 [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) 计数. 因此,您可以使用以下标准之一将文档分为章节,或者将多个标准合并在一起:

- 标题,
- 节间休息,
- 分栏
- 分页

当将输出保存到 HTML 时, Aspose.Words 将每个章节保存为单独的 HTML 文件。 因此,文档将被拆分为多个HTML文件. 当将输出保存到 EPUB 时, Aspose.Words 将结果保存在一个单一的 EPUB 文件中,而不论 `DocumentSplitCriteria` 您使用的数值 。 因此,对EPUB文档使用DocumentSplitCriteria只会影响其内容在读者应用程序中的出现:内容将分为章节,文档将不再出现连续.

{{% alert color="primary" %}}

您不能使用 [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) 属性时保存到 MHTML 格式。

{{% /alert %}}

在本节中,我们只考虑一些可能分开的标准。

### 按标题分割文档 {#split-a-document-by-headings}

要将文档按标题分成章节,请使用 **HeadingParagraph** 数值 **DocumentSplitCriteria** 属性。

如果您需要用标题1、2和3等标题段落的特定级别将文档拆分,请使用 [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) 属性。 产出将按与指定标题级别格式化的段落划分。

以下代码示例显示如何通过标题将文档分割为较小的部分:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

请注意,关于这一标准, Aspose.Words 只支持在拆分时保存到 HTML 格式。

在保存到 EPUB 时,文档不会被分割成多个文件,并且将只有一个输出文件.

### 按区域分割文档 {#split-a-document-by-sections}

Aspose.Words 也允许您使用分区交换符来分割文档并将其保存到 HTML。 为此目的,使用 **SectionBreak** 作为 **DocumentSplitCriteria**编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

有另一种方法可以将源文档分割成多个输出文档,您可以选择由. Aspose.Words。 。 。 。

以下代码示例显示如何将文档按分区间断拆分成较小的部分( 不使用 `DocumentSplitCriteria` 属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## 按页分隔 {#splitting-by-pages}

您也可以按页面、页面范围或从指定的页码开始,将文档的页面分割。 在这种情况下, [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) 方法可以做到这一点。

本节介绍用页码将文档分割的几种使用情况。 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 分类和 **ExtractPages** 方法。

{{% alert color="primary" %}}

你可以使用任意 [支持的文档格式](/words/zh/java/supported-document-formats/)。 。 。 。

{{% /alert %}}

{{% alert color="primary" %}}

由于在减少页数的同时出现了许多细微的差别,因此完全符合 Microsoft Word 布局相当复杂。 因此,根据文件的复杂程度,由此产生的文件排版可能与原始文件略有不同。

{{% /alert %}}

### 按页面分割文档页面 {#split-a-document-page-by-page}

Aspose.Words 使您能够将多页文档页面逐页分割。

以下代码示例显示如何分割文档,并将每个页面保存为单独的文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### 按页面区域分割文档 {#split-a-document-by-page-ranges}

Aspose.Words 允许按页面范围分割多页文档。 您可以将一个文件分割成多个文件, 并有不同的页面范围, 或者只选择一个区域, 只保存源文档的这一部分 。 请注意,您可以根据文档的最大和最小页码选择页面范围。

以下代码示例显示如何将文档按页数范围分成较小的部分,并附有具体的起始和结尾索引:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## 回调选项以保存文档 {#callback-option-for-saving-a-document}

你可以用这个 [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) 属性 Aspose.Words 当文档导出为 HTML 格式时,保存文档部分。 此属性允许您重命名输出文件, 甚至重定向到自定义流 。

请注意,这种回调在保存到EPUB时没有用处,因为所有输出部件都必须保存到单个容器中 - .epub文件. 因此,流重定向不支持,而且由于文件在容器内被重新命名,因此重命名的效果不明显.

## 将拆分文档与其它文档合并 {#merge-the-split-document-with-another-file}

Aspose.Words 使您能够将输出拆分文档与另一个文档合并,形成新的文档。 这可以称为文档合并.

以下代码示例显示如何将拆分文档与另一个文档合并:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
