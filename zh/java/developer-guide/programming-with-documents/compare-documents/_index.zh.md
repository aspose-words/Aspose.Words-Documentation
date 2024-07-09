---
title: 比较文档在 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 比较文档
linktitle: 比较文档
type: docs
description: "比较任何支持格式的两个文档并显示内容变化。 您可以在比较时应用高级选项 Java。 。 。 。"
weight: 60
url: /zh/java/compare-documents/
---

比较文件是一个确定两个文件之间变化并包含这些变化作为订正的过程。 这一程序比较了任何两份文件,包括一份具体文件的版本,然后这两份文件之间的改动将在第一份文件中显示为订正。

比较方法通过在字符级别或词级别上比较单词来实现. 如果一个单词包含至少一个字符的变化,在结果中,差异将显示为整个单词的变化,而不是字符. 这种比较过程是法律和金融行业的通常任务.

不需要手动查找文档之间或不同版本之间的差异,而是可以使用 Aspose.Words 用于在格式、页眉/页脚、表格等中比较文档和获取内容变化。

本篇文章解释了如何比较文档以及如何指定高级比较属性.

{{% alert color="primary" %}}

**尝试在线**

您可以使用 [文件在线比较](https://products.aspose.app/words/comparison) 工具。

请注意,这一工具采用了下文所述的比较方法,以确保取得平等的结果。 因此,即使使用在线比较工具或使用比较方法,在 Aspose.Words。 。 。 。

{{% /alert %}}

## 限制和支持的文件格式 {#limitations-and-supported-file-formats}

比较文件是一个非常复杂的特征。 需要分析内容组合的不同部分,以确认所有差异。 之所以如此复杂,是因为 Aspose.Words 目的是获得与 Microsoft Word 比较算法。

比较两个文件的一般限制是,在调用比较方法之前不得有修改,因为这种限制存在于 Microsoft Word。 。 。 。

{{% alert color="primary" %}}

请注意,您可以比较 [支持的文档格式](/words/zh/java/supported-document-formats/)。 。 。 基本上,你可以比较文档对象,甚至你可以在没有任何特定格式的情况下从头创建这些对象.

{{% /alert %}}

## 比较两个文档 {#compare-two-documents}

在比较文档时,后一文档与前一文档的区别会显示为对前一文档的修订. 当您修改文档时,每次编辑都会在运行比较方法后有自己的修改.

Aspose.Words 允许您使用 [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) 方法 - 这类似于 Microsoft Word 文档比较特性。 它允许您检查文档或文档版本以查找差异和修改,包括格式化修改,如字体修改,间隔修改,词和段落的添加.

通过比较,文件可以确定为等值或者不等值. "同等"文件一词意味着比较方法不能作为订正表示变化。 这意味着文档文本和文本格式都是相同的. 但文档之间可能存在其他差异. 举例来说, Microsoft Word 只支持样式格式修订,而不能代表样式插入/删除。 因此,文档可以有不同的样式, **Compare** 方法仍然没有产生任何修改。

以下代码示例显示如何检查两个文档是否相等:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

以下代码示例显示如何简单地应用 `Compare` 方法为两个文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## 指定高级比较选项 {#specify-advanced-comparing-properties}

有很多不同的属性 [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) 用于比较文档的类别。

举例来说, Aspose.Words 允许您忽略原始文档中某些类型对象的比较操作过程中所作的修改。 您可以为对象类型选择合适的属性, 例如 [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), 和他人,规定 "true" ..

临Τ Aspose.Words 提供 [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) 属性,可以指定是按字符还是按字词跟踪变化。

另一个共同属性是文档显示比较变化的选择. 例如,"Compare 文档对话框"中 Microsoft Word 有"显示变化"的选项,这也影响到比较结果。 Aspose.Words 提供 [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) 用于此目的的财产。

以下代码示例显示如何设置高级比较属性:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
