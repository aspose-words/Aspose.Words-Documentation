---
title: 比较Java中的文档
second_title: Aspose.Words为Java
articleTitle: 比较文件
linktitle: 比较文件
type: docs
description: "比较任何支持格式的两个文档并显示内容更改。 使用Java进行比较时，可以应用高级选项。"
weight: 60
url: /zh/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

比较文档是一个识别两个文档之间的更改并将更改包含为修订的过程。 此过程比较任何两个文档，包括一个特定文档的版本，然后两个文档之间的更改将显示为第一个文档中的修订。

比较方法是通过在字符级别或在单词级别比较单词来实现的。 如果一个单词包含至少一个字符的变化，在结果中，差异将显示为整个单词的变化，而不是一个字符。 这个比较过程是法律和金融业的通常任务。

您可以使用Aspose.Words来比较文档并获取格式、页眉/页脚、表格等内容的更改，而不是手动搜索文档之间或不同版本之间的差异。

本文介绍如何比较文档以及如何指定高级比较属性。

{{% alert color="primary" %}}

**在线试用**

你可以使用 [网上文件比较](https://products.aspose.app/words/comparison) 工具。

请注意，此工具中使用了下文所述的比较方法，以确保获得相同的结果。 因此，即使使用在线比较工具或使用Aspose.Words中的比较方法，您也会获得相同的结果。

{{% /alert %}}

## 限制和支持的文件格式 {#limitations-and-supported-file-formats}

比较文档是一个非常复杂的功能。 内容组合的不同部分需要分析以识别所有差异。 这种复杂性的原因是因为Aspose.Words旨在获得与Microsoft Word比较算法相同的比较结果。

被比较的两个文档的一般限制是，在调用比较方法之前，它们不能有修订，因为Microsoft Word中存在此限制。

{{% alert color="primary" %}}

请注意，您可以比较 [支持的文件格式](/words/java/supported-document-formats/). 基本上，您可以比较文档对象，甚至可以从头开始创建这些对象，而无需任何特定的格式。

{{% /alert %}}

## 比较两个文档 {#compare-two-documents}

当您比较文档时，后一个文档与前一个文档的差异显示为对前一个文档的修订。 修改文档时，运行compare方法后，每个编辑都会有自己的修订版本。

Aspose.Words允许您使用[Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date)方法识别文档差异-这与Microsoft Word文档比较功能类似。 它允许您检查文档或文档版本以查找差异和更改，包括格式修改，如字体更改，间距更改，单词和段落的添加。

作为比较的结果，文档可以被确定为相等或不相等。 术语"相等"文档意味着比较方法不能将更改表示为修订。 这意味着文档文本和文本格式都是相同的。 但文档之间可能存在其他差异。 例如，Microsoft Word仅支持样式的格式修订，不能表示样式插入/删除。 所以文档可以有一组不同的样式，**Compare**方法仍然不会产生任何修改。

下面的代码示例演示如何检查两个文档是否相等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

下面的代码示例演示如何简单地将`Compare`方法应用于两个文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## 指定高级比较选项 {#specify-advanced-comparing-properties}

[CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/)类有许多不同的属性，您可以在比较文档时应用这些属性。

例如，Aspose.Words允许您忽略在比较操作期间对原始文档中某些类型的对象所做的更改。 您可以为对象类型选择适当的属性，例如[IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), 和其他人通过将它们设置为"真"。

此外，Aspose.Words还提供了[Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity)属性，您可以使用该属性指定是按字符还是按单词跟踪更改。

另一个常见属性是选择在哪个文档中显示比较更改。 例如，Microsoft Word中的"比较文档对话框"具有"显示更改"选项–这也会影响比较结果。 Aspose.Words提供用于此目的的[Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget)属性。

下面的代码示例演示如何设置高级比较属性:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
