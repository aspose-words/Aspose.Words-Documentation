---
title: 在 C# 中查找和替换
second_title: .NET 格式的 Aspose.Words
articleTitle: 查找和替换
linktitle: 查找和替换
type: docs
description: "在文档中查找字符串或正则表达式模式，然后使用 C# 将其替换为所需的文本。"
weight: 100
url: /zh/net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

您可以使用键盘和鼠标轻松地在文档中导航，但如果您有很多页面需要滚动，则需要相当长的时间才能在长文档中找到特定文本。当您想要替换文档中使用的某些字符或单词时，这会花费更多时间。 "查找和替换"功能使您能够在文档中查找字符序列并将其替换为另一个字符序列。

Aspose.Words 允许您在文档中查找特定字符串或正则表达式模式，并将其替换为替代方案，而无需安装和使用 Microsoft Word 等其他应用程序。这将加快许多打字和格式化任务的速度，可能会节省您的工作时间。

本文介绍如何在元字符的支持下应用字符串替换和正则表达式。

## 查找和替换 {#ways-to-find-and-replace} 的方法

Aspose.Words 提供了两种应用查找和替换操作的方法，方法如下：

1. *简单字符串替换* – 要查找特定字符串并将其替换为另一个字符串，您需要指定一个搜索字符串（字母数字字符），该搜索字符串将根据所有出现的情况被替换为另一个指定的替换字符串。两个字符串都不能包含符号。请考虑到字符串比较可能区分大小写，否则您可能不确定拼写或有多个相似的拼写。
2. *正则表达式* – 指定正则表达式来查找精确匹配的字符串并根据您的正则表达式替换它们。请注意，单词被定义为仅由字母数字字符组成。如果仅匹配整个单词而执行替换，并且输入字符串恰好包含符号，则将找不到短语。

此外，您可以使用带有简单字符串替换和正则表达式的特殊元字符来指定查找和替换操作中的中断。

Aspose.Words 通过 [Aspose.Words.Replacing](https://reference.aspose.com/words/zh/net/aspose.words.replacing/) 命名空间提供查找和替换功能。您可以在使用 [FindReplaceOptions](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/) 类的查找和替换过程中使用许多选项。

### 使用简单字符串替换 {#find-and-replace-text-using-simple-string-replacement} 查找和替换文本

您可以使用 [Replace](https://reference.aspose.com/words/zh/net/aspose.words/range/replace/#replace/) 方法之一来查找或替换特定字符串并返回所做的替换数。在这种情况下，您可以指定要替换的字符串、将替换所有出现的字符串、替换是否区分大小写以及是否仅影响独立单词。

以下代码示例显示如何查找字符串"_CustomerName_"并将其替换为字符串*"James Bond"*：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

在应用简单字符串替换之前，您可以注意到文档之间的差异：

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="简单字符串替换之前" style="width:600px"/>

应用简单的字符串替换后：

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="简单字符串替换后" style="width:600px"/>

### 使用正则表达式 {#find-and-replace-text-using-regular-expressions} 查找和替换文本

正则表达式 (regex) 是描述特定文本序列的模式。假设您要将某个单词的所有重复出现替换为单个单词出现。然后，您可以应用以下正则表达式来指定双字模式：`([a-zA-Z]+) \1`。

使用其他 [Replace](https://reference.aspose.com/words/zh/net/aspose.words/range/replace/) 方法通过将 `Regex` 参数设置为正则表达式模式来搜索和替换特定字符组合以查找匹配项。

以下代码示例演示如何将与正则表达式模式匹配的字符串替换为指定的替换字符串：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

在使用正则表达式进行字符串替换之前，您可以注意到文档之间的差异：

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="用正则表达式替换之前" style="width:600px"/>

使用正则表达式应用字符串替换后：

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="用正则表达式替换后" style="width:600px"/>

### 使用元字符 {#find-and-replace-text-using-metacharacters} 查找和替换字符串

如果特定文本或短语由多个段落、部分或页面组成，则可以在搜索字符串或替换字符串中使用元字符。一些元字符包括用于段落分隔符的 **&amp;p**、用于分节符的 **&amp;b**、用于分页符的 **和米** 以及用于换行符的 **&amp;l**。

{{% alert color="primary" %}}

请注意，元字符 **&&** 等于 **&**。例如，如果您需要查找不是分段符的 **&amp;p** 文本，则可以使用 **&amp;&amp;p**。

{{% /alert %}}

以下代码示例演示如何用段落和分页符替换文本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## 查找并替换文档 {#find-and-replace-string-in-header-or-footer-of-a-document} 页眉/页脚中的字符串

您可以使用 [HeaderFooter](https://reference.aspose.com/words/zh/net/aspose.words/headerfooter/) 类查找并替换 Word 文档的页眉/页脚部分中的文本。

以下代码示例演示如何替换文档中标题部分的文本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

您可以在应用标题字符串替换之前注意到文档之间的差异：

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="应用标头字符串替换之前" style="width:600px"/>

应用标头字符串替换后：

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="应用标头字符串替换后" style="width:600px"/>

用于替换文档中页脚部分文本的代码示例与前面的页眉代码示例非常相似。您需要做的就是替换以下两行：

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

具有以下内容：

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

在应用页脚字符串替换之前，您可以注意到文档之间的差异：

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="应用页脚字符串替换之前" style="width:600px"/>

应用页脚字符串替换后：

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="应用页脚字符串替换后" style="width:600px"/>

## 在查找和替换 {#ignore-text-during-find-and-replace} 期间忽略文本

在应用查找和替换操作时，您可以忽略文本的某些片段。因此，可以从搜索中排除文本的某些部分，并且查找和替换只能应用于其余部分。

Aspose.Words 提供了许多用于忽略文本的查找和替换属性，例如 [IgnoreDeleted](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/)、[IgnoreFieldCodes](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/)、[IgnoreFields](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/ignorefields/)、[IgnoreFootnotes](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) 和 [IgnoreInserted](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/)。

以下代码示例显示如何忽略删除修订中的文本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## 自定义查找和替换操作 {#customize-find-and-replace-operation}

Aspose.Words 提供了许多不同的 [properties](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/) 来查找和替换文本，例如使用 [ApplyFont](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/applyfont/) 和 [ApplyParagraphFormats](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/) 属性应用特定格式、使用 [UseSubstitutions](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) 属性在替换模式中使用替换等。

以下代码示例演示如何突出显示文档中的特定单词：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words 允许您在替换操作期间使用 [IReplacingCallback](https://reference.aspose.com/words/zh/net/aspose.words.replacing/ireplacingcallback/) 接口创建和调用自定义方法。您可能有一些需要自定义查找和替换操作的用例，例如用 HTML 标记替换用正则表达式指定的文本，因此基本上您将通过插入 HTML 来应用替换。

如果您需要用 HTML 标记替换字符串，请应用 **IReplacingCallback** 接口来自定义查找和替换操作，以便匹配从文档的匹配节点开始运行。让我们提供几个使用 **IReplacingCallback** 的示例。

以下代码示例显示如何替换用 HTML 指定的文本：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

以下代码示例演示如何用绿色突出显示正数，用红色突出显示负数：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

以下代码示例显示如何在每行前面添加行号：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
