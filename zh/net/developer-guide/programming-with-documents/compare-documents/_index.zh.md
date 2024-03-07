---
title: 比较 C# 中的文档
second_title: .NET 格式的 Aspose.Words
articleTitle: 比较文档
linktitle: 比较文档
description: "比较任何支持格式的两个文档并使用 C# 显示内容更改。您可以在比较时应用高级选项。"
type: docs
weight: 60
url: /zh/net/compare-documents/
---

比较文档是识别两个文档之间的更改并将更改包含为修订的过程。此过程会比较任何两个文档，包括一个特定文档的版本，然后两个文档之间的更改将显示为第一个文档中的修订版本。

比较方法是通过在字符级别或词级别比较单词来实现的。如果一个单词至少包含一个字符的变化，则在结果中，差异将显示为整个单词的变化，而不是一个字符的变化。这种比较过程是法律和金融行业的常见任务。

您可以使用 Aspose.Words 来比较文档并获取格式、页眉/页脚、表格等方面的内容更改，而不是手动搜索文档之间或不同版本之间的差异。

本文介绍如何比较文档以及如何指定高级比较属性。

{{% alert color="primary" %}}

**在线尝试**

您可以使用 [在线文档比较](https://products.aspose.app/words/comparison) 工具在线比较两个文档。

请注意，该工具使用下面描述的比较方法来确保获得相同的结果。因此，即使使用在线比较工具或使用Aspose.Words中的比较方法，也会得到相同的结果。

{{% /alert %}}

## 限制和支持的文件格式 {#limitations-and-supported-file-formats}

比较文档是一项非常复杂的功能。内容组合的不同部分需要进行分析以识别所有差异。造成这种复杂性的原因是 Aspose.Words 的目标是获得与 Microsoft Word 比较算法相同的比较结果。

比较两个文档的一般限制是在调用比较方法之前它们不得有修订，因为 Microsoft Word 中存在此限制。

{{% alert color="primary" %}}

请注意，您可以比较 [支持的文档格式](/words/zh/net/supported-document-formats/) 中的任意两个文档。基本上，您可以比较文档对象，甚至可以从头开始创建这些对象，而无需任何特定格式。

{{% /alert %}}

## 比较两个文档 {#compare-two-documents}

当您比较文档时，后一个文档与前一个文档的差异会显示为对前一个文档的修订。当您修改文档时，运行比较方法后，每个编辑都会有自己的修订版本。

Aspose.Words 允许您使用 [Compare](https://reference.aspose.com/words/zh/net/aspose.words/document/compare/#compare/) 方法识别文档差异 - 这类似于 Microsoft Word 文档比较功能。它允许您检查文档或文档版本以查找差异和更改，包括格式修改，例如字体更改、间距更改、单词和段落的添加。

作为比较的结果，可以确定文档相等或不相等。术语"同等"文档意味着比较方法无法将更改表示为修订。这意味着文档文本和文本格式是相同的。但文档之间可能还存在其他差异。例如，Microsoft Word 仅支持样式的格式修订，并且不能表示样式插入/删除。因此文档可以有一组不同的样式，并且 **Compare** 方法仍然不会产生任何修订。

以下代码示例显示如何检查两个文档是否相等：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

以下代码示例展示了如何简单地将 `Compare` 方法应用于两个文档：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## 指定高级比较选项 {#specify-advanced-comparing-properties}

当您想要比较文档时，可以应用 [CompareOptions](https://reference.aspose.com/words/zh/net/aspose.words.comparing/compareoptions/) 类的许多不同属性。

例如，Aspose.Words 允许您忽略在对原始文档中某些类型的对象进行比较操作期间所做的更改。您可以通过将对象类型设置为"true"来选择适当的属性，例如 [IgnoreHeadersAndFooters](https://reference.aspose.com/words/zh/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/)、[IgnoreFormatting](https://reference.aspose.com/words/zh/net/aspose.words.comparing/compareoptions/ignoreformatting/)、[IgnoreComments](https://reference.aspose.com/words/zh/net/aspose.words.comparing/compareoptions/ignorecomments/) 等。

此外，Aspose.Words 提供 [Granularity](https://reference.aspose.com/words/zh/net/aspose.words.comparing/compareoptions/granularity/) 属性，您可以使用该属性指定是按字符还是按单词跟踪更改。

另一个常见属性是选择在哪个文档中显示比较更改。例如，Microsoft Word 中的"比较文档对话框"有"显示更改"选项--这也会影响比较结果。 Aspose.Words 提供了用于此目的的 [Target](https://reference.aspose.com/words/zh/net/aspose.words.comparing/compareoptions/target/) 属性。

以下代码示例展示了如何设置高级比较属性：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
