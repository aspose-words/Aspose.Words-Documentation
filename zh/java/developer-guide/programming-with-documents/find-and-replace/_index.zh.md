---
title: 查找和替换到 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 查找和替换
linktitle: 查找和替换
type: docs
description: "在文档中查找字符串或正则表达式模式,并替换为您想要使用的文本 Java。 。 。 。"
weight: 100
url: /zh/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

您可以使用键盘和鼠标在文档中轻松导航, 但是, 如果您有许多页要滚动, 在长的文档中找到特定的文本需要相当长的时间 。 当您想要替换您在文档中使用的某些字符或单词时,会花费更多的时间。 "查找和替换"功能使您能够在文档中找到字符序列,并以其他字符序列替换。

Aspose.Words 允许您在文档中找到特定的字符串或正则表达式模式,并在不安装和使用诸如 Microsoft Word。 。 。 这将加快许多打字和格式化的任务,有可能节省你的工作时间.

本条解释了如何在元字符的支持下应用字符串替换和正则表达式.

## 查找和替换方法 {#ways-to-find-and-replace}

Aspose.Words 提供两种应用查找和替换操作的方法:

一、导 言 *简单字符串替换 * – 要找到一个特定的字符串并替换到另一个字符串, 您需要指定一个搜索字符串( 数字字符) , 该字符串将根据所有事件替换到另一个指定的替换字符串 。 两个字符串都不得包含符号. 考虑字符串比较可以是对大小写敏感的,也可以是拼写上的不确定或者有几种类似的拼写.
2. *rgular 表达式 * - 指定正则表达式以找到精确的字符串匹配,并根据正则表达式替换. 注意一个单词的定义是只由字母的字符组成. 如果只匹配整个字的替换被执行,而输入字符串恰好包含符号,那么就不会找到短语.

另外,您还可以使用具有简单字符串替换和正则表达式的特殊元特征来指定查找和替换操作中的间断.

Aspose.Words 显示查找并替换为 [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/)。 。 。 。 您可以在查找和替换过程中使用许多选项 [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) 课。

### 使用简单字符串替换查找和替换文本 {#find-and-replace-text-using-simple-string-replacement}

你可以使用一个 [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) 用于查找或替换特定字符串并返回已替换数量的方法。 在这种情况下,您可以指定一个要替换的字符串,一个将替换其所有出现的字符串,替换是否对大小写有敏感认识,以及是否只会影响独立的单词.

以下代码示例显示如何找到字符串"_ CustomerName_" 并替换为字符串 * "James Bond " *:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

您可以在应用简单的字符串替换前注意到文档的区别:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

在应用简单的字符串替换后:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### 使用正则表达式查找和替换文本 {#find-and-replace-text-using-regular-expressions}

正则表达式(regex)是一种描述一定的文本序列的图案. 假设你想用一个单词来取代一个单词的所有重复出现. 然后可以应用以下正则表达式来指定双字模式: `([a-zA-Z]+) \1`。 。 。 。

使用另一个 [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) 通过设置 `Regex` 参数作为查找匹配的正则表达式模式。

以下代码示例显示如何用指定的替换字符串替换匹配正则表达式模式的字符串:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


您可以在应用正则表达式替换字符串之前注意到文档的区别:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

在应用正则表达式替换字符串后:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### 使用元数据查找和替换字符串 {#find-and-replace-text-using-metacharacters}

在搜索字符串或替换字符串中,如果某个特定的文本或短语由多个段落,段落或页面组成,则可以使用元特征. 一些元特征包括: **&p** 一段间断, **&b** 为了一段休息, **&m** 用于分页,以及 **&l** 为换行。

{{% alert color="primary" %}}

注意元特征 **&&** 等于 **&**。 。 。 。 例如,如果需要找到文本时 **&p** 这不是断段,然后你可以使用 **&&p**。 。 。 。

{{% /alert %}}

以下代码示例显示如何用段落和分页替换文本:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## 在文档页眉/页眉中查找和替换字符串 {#find-and-replace-string-in-header-or-footer-of-a-document}

您可以使用 Word 文档的页眉/页脚查找和替换文本 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 课。

以下代码示例显示如何替换文档中标题部分的文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


您可以在应用页眉字符串替换前注意到文档的区别:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

在应用页眉字符串替换后:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

替换文档中页脚部分文本的代码示例与前一个页脚代码示例非常相似. 你只需要替换以下两行:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

附有下列内容:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


您可以在应用页脚字符串替换前注意到文档的区别:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

在应用页脚字符串替换后:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## 查找和替换时忽略文本 {#ignore-text-during-find-and-replace}

在应用查找和替换操作时,可以忽略文本的某些部分. 因此,文本的某些部分可以排除在搜索之外,发现和替换只能应用于其余部分.

Aspose.Words 为忽略文本提供许多查找和替换属性, 如 [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), 和 [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted)。 。 。 。

以下代码示例显示如何在删除修改中忽略文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## 自定义查找和替换操作 {#customize-find-and-replace-operation}

Aspose.Words 提供了许多不同的 [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) 查找和替换文本,例如应用特定格式 [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) 和 [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) 属性,在替换模式中使用替换 [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) 财产等。

以下代码示例显示文档中如何突出特定单词:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words 允许您使用 [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) 在替换操作中创建和调用自定义方法的接口。 您可能有一些需要自定义查找和替换操作的用例,例如用 HTML 标记替换指定的正则表达式,所以基本上您会应用插入 HTML 替换。

如果您需要用 HTML 标签替换字符串,请应用 **IReplacingCallback** 用于自定义查找和替换操作的界面,这样匹配将在运行开始时以文档的匹配节点开始。 让我们举几个例子说明如何使用 **IReplacingCallback**。 。 。 。

以下代码示例显示如何替换 HTML 指定的文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


以下代码示例显示如何以绿色突出正数,以红色突出负数:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

以下的代码示例显示如何将一个行号预置到每行:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
