---
title: 在节点之间提取选中的内容 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 在文档中节点之间提取内容
linktitle: 在节点之间提取内容
type: docs
description: "使用不同的文档内容 Java。 。 。 。"
weight: 140
url: /zh/java/extract-selected-content-between-nodes/
---

在处理文件时,必须能够很容易地从文件中的特定范围提取内容。 然而,内容可能包括段落,表格,图像等复杂内容.

无论需要提取哪些内容,提取该内容的方法将始终被确定为选择节点以提取介于两者之间的内容. 这些可以是整个文本机构或简单的文本运行.

可能的情况很多,因此在提取内容时需要考虑许多不同的节点类型. 例如,您可能想要在:

- 两个具体段落
- 具体内容
- 各类领域,如合并领域
- 书签或注释的始末范围
- 各节所载的各种案文

在某些情况下,你甚至可能需要将不同的节点类型结合起来,比如在段落和字段之间提取内容,或者在运行和书签之间提取内容.

本条提供了在不同节点之间提取文本的代码执行,以及常见情景的例子.

{{% alert color="primary" %}}

这些例子只是许多可能性的几个例子。 我们计划让文本提取功能成为公众的一部分 API 在未来,不需要额外的代码。 同时,请将您关于此功能的请求张贴在 [Aspose.Words 论坛](https://forum.aspose.com/c/words/8)。 。 。 。

{{% /alert %}}

## 为何要提取内容

提取内容的目的往往是在新文档中重复或单独保存. 例如,可以提取内容和:

- 把它复制到单独的文档中
- 将文档的特定部分转换为 PDF 或图像
- 重复文件内容多次
- 与文件其他部分分开处理提取的内容

使用 Aspose.Words 以及下面的代码执行。

## 提取内容算法

本节的代码用一种通用和可重复使用的方法处理上述所有可能的情况。 这一技术的一般纲要包括:

一、导 言 收集决定文档中要提取的内容区域的节点。 检索这些节点是由用户在其代码中处理的,基于他们想要提取的东西.
一、导 言 传递这些节点到 **ExtractContent** 下文提供的方法。 您还必须通过布尔参数, 表示这些作为标记的节点是否应当包含在提取中 。
一、导 言 获取指定要提取的克隆内容列表(复制节点) 。 您可以以任何适用的方式使用此节点列表,例如创建一个只包含选定内容的新文档。

## 如何提取内容

我们将处理本条下面的文件。 可见其包含多种内容. 另请注意,该文件载有从第一页中间开始的第二节。 文件也有一个书签和评论,但在下面的截图中看不到。

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

要从文档中提取内容,请拨打 `ExtractContent` 方法并传递适当的参数。

这种方法的基本依据是寻找区块级节点(段落和表格)并将其克隆,以生成相同的副本。 如果通过的标记节点是块级的,那么该方法可以简单地复制该级上的内容并添加到数组中.

然而,如果标记节点是内在的(一个段落的子),那么情况就变得更加复杂,因为有必要在内在节点将段落拆分,无论是运行,书签字段等. 标记之间没有的克隆父节点的内容被删除。 这个过程用于确保内置节点仍然保留母段落的格式.

该方法还将检查作为参数传递的节点,如果任一节点无效,则丢弃例外. 要传递到这种方法的参数是:

一、导 言 **StartNode** 和 **EndNode**。 。 。 前两个参数是确定从何处开始和从何处结束内容的节点。 这些节点可以是两个块级([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) , (中文). [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) )或内置级别(例如: [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) , (中文). [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) , (中文). [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) (a) 国家:
   1. 要通过一个字段,请通过相应的字段。 **FieldStart** 对象。
   1. 通过书签, **BookmarkStart** 和 [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) 应该通过节点。
   1. 为了通过评论, [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) 和 [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) 应使用节点。
一、导 言 **IsInclusive**。 。 。 定义是否在提取中包含标记。 如果设置为 false 然后返回一个空列表:

      1. 如为 **FieldStart** 节点通过后,此选项将定义是否包含或排除整个字段。
      1. 如为 **BookmarkStart** 或 **BookmarkEnd** 节点被传递,此选项定义是包含书签还是仅仅包含书签范围之间的内容.
      1. 如为 **CommentRangeStart** 或 **CommentRangeEnd** 节点通过,此选项定义了评论本身是否要包含,或者仅仅是评论范围内的内容.

《公约》的执行情况 **ExtractContent** 可以找到的方法 [这里](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java)。 。 。 。 这一方法将在本条设想中提及。

我们还将定义一种自定义方法,以方便从提取的节点生成文档. 这种方法在下文的许多设想中都使用,只是创建了新的文档,并将提取的内容导入其中.

以下代码示例显示如何将节点列表并插入新文档:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## 摘录段落之间的内容

这表明如何使用上述方法在具体段落之间提取内容。 在这种情况下,我们要提取文件前半部分中发现的字母正文. 可见此七段与十一段之间.

下面的代码完成这个任务. 使用 [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) 方法,并通过指定的索引。 然后我们把这些节点传给 **ExtractContent** 方法,并声明这些将包括在提取中。 这种方法将返回在这些节点之间复制的内容,然后插入到新文档中。

以下代码示例显示如何使用 `ExtractContent` 以上方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

输出文件包含取出的两个段落.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## 节点不同类型之间提取内容

我们可以在区块级或内线节点的组合之间提取内容. 在下文的这种设想中,我们将在第一段和第二节表格之间全面抽取内容。 我们通过呼叫得到标记节点 [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) 和 [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) 在文档第二部分中检索适当的方法 **Paragraph** 和 **Table** 节点。 稍作改动,让我们重复内容,放在原文下面。

以下代码示例显示如何使用 **ExtractContent** 方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

以下段落和表格之间的内容重复是结果。

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## 摘录段落之间的内容 基于样式

您可能需要在相同或不同样式的段落之间提取内容,例如标有标题样式的段落之间。

下面的代码显示了如何实现这一点. 这是一个简单的例子,可以摘取第一种"标题1"和"标题3"之间的内容,而不摘取标题。 为此,我们设定了最后一个参数: false, 指定不应包含标记节点。

在适当的执行中,应当循环运行,从文档中提取这些样式的所有段落之间的内容. 提取的内容被复制到一个新的文档中。

以下代码示例显示如何使用 **ExtractContent** 方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

以下是前一次行动的结果.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## 在特定运行之间提取内容

您可以在内部节点之间提取内容, 如 a **Run** 也一样。 **Runs** 从不同段落可以作为标记传递。 下面的代码显示如何在相同文本之间提取特定文本 **Paragraph** 节点.

以下代码示例显示如何使用 **ExtractContent** 方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

提取的文本显示在控制台上 。

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## 使用字段提取内容

要使用一个字段作为标记, `FieldStart` 节点应该通过。 最后一个参数 `ExtractContent` 方法将定义是否包括整个字段。 让我们在"FullName"合并字段和文件中的一段之间提取内容。 我们用 [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)方法 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 课。 这个会还给你 **FieldStart** 从合并字段名称中传到它的节点.

就我们而言,让我们设定最后的参数 **ExtractContent** 方法 false 将田地排除在开采之外。 我们将把摘录的内容提交PDF。

以下代码示例显示如何使用 **ExtractContent** 方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

字段和段落之间提取的内容,但不向PDF提供字段和段落标记节点。

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## 从书签中提取内容

在文档中,书签中定义的内容由 `BookmarkStart` 和书签尾节点。 这两个节点之间发现的内容构成了书签. 您可以通过这些节点中的任何一个作为任何标记,甚至来自不同书签的节点,只要起始标记出现在文档的结尾标记之前.

在我们的样本文件中,我们有一个书签,名为"书签1"。 本书签的内容在我们的文件中得到强调:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

我们将使用下面的代码将这个内容摘录到一个新的文档中. 那个 **IsInclusive** 参数选项显示如何保留或丢弃书签。

以下代码示例显示如何使用 **ExtractContent** 方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

与 `IsInclusive` 参数设置为 true。 。 。 。 副本也将保留书签.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

与 **IsInclusive** 参数设置为 false。 。 。 。 副本包含内容,但没有书签.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## 从注释中摘录内容

一个评论由评论朗格Start,评论朗格End和评论节点组成. 所有这些节点都是内在的. 前两个节点封装了注释引用的文档内容,如下图所示。

那个 **Comment** 节点本身是一个 [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) 可以包含段落和运行。 它代表了评论中的信息,被视为审查面板中的评论泡沫. 由于这个节点是内在的,是身体的后代,你也可以从这个信息中提取内容.

在我们的文件里,我们有一个意见。 让我们在评论标签中显示标记:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

注释将标题,第1段和表封在第二节. 让我们把这个评论摘录为一个新的文件。 那个 **IsInclusive** 选项决定评论本身是否被保留或丢弃。

以下代码示例说明如何做到这一点:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx)。 。 。 。

{{% /alert %}}

首先,提取的输出与 `IsInclusive` 参数设置为 true。 。 。 。 副本也将载有评论。

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

第二,提取的输出与 **包含** 设置为 false。 。 。 。 该副本载有内容,但没有评论。

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## 使用文档查看器提取内容

Aspose.Words 不仅可用于创建 Microsoft Word 通过动态构建文档或将模板与数据合并,但也用于解析文档,以便提取单独的文档元素,如页眉、页脚、段落、表格、图像等。 另一个可能的任务是找到所有特定格式或样式的文本.

使用 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 类以执行此使用方案。 这一类对应了著名的"访客"设计模式. 与 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/),可以定义和执行需要从文档树上引用的自定义操作。

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 提供一组 **VisitXXX** 当遇到特定文档元素(节点)时引用的方法。 举例来说, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) 当找到文本段落的开头时,该段落就叫作 [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) 当找到文本段落的结尾时调用。 每个 **DocumentVisitor.VisitXXX** 方法接受它遇到的对应对象,以便您可以根据需要使用(例如检索格式),例如两者 [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) 和 [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) 接受一个 [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) 对象。

每个 **DocumentVisitor.VisitXXX** 方法返回 a **VisitorAction** 用于控制节点的点数的值。 您可以请求继续点数, 跳过当前节点( 但继续点数) , 或者停止点数 。

这些是你们应该采取的步骤,以便从方案上确定和摘录文件的各个部分:

- 创建从 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/)。 。 。 。
- 取代和提供部分或全部 **DocumentVisitor.VisitXXX** 执行一些自定义操作的方法。
- 打电话 [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) 在要开始点数的节点上。 例如,如果要列出整个文档,请使用 [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor)。 。 。 。

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 为所有 **DocumentVisitor.VisitXXX** 方法。 方法。 。 这样就更容易创建新的文件访问者,因为只需要推翻特定访问者所需的方法。 无需推翻所有访问方法。

以下示例显示如何使用访问器模式为您添加新操作 Aspose.Words 对象模型。 在此情况下, 我们创建一个简单的文档转换器:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## 摘录文本 仅

从文档中获取文本的方法有:

- 使用 [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) 与 [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) 以纯文本保存到文件或流中
- 使用 [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) 通过 `SaveFormat.Text` 参数。 内部,此调用为文本保存到内存流中并返回所产生的字符串
- 使用 [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) 以全部获取文本 Microsoft Word 包括字段代码在内的控件字符
- 执行习惯 [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) 进行定制提取

### 使用 `Node.GetText` 和 `Node.ToString`

页:1 单词文档可以包含指定特殊元素的控制字符,如字段,单元格的结尾,段落的结尾等. 可能的 Word 控制字符的完整列表定义于 **ControlChar** 课。 那个 [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) 方法返回带有节点中所有控件字符的文本。

调用 ToString 返回文档的纯文本表达式, 只需没有控制字符 。 关于作为纯文本出口的进一步信息,见 **Using SaveFormat.Text**。 。 。 。

以下代码示例显示调用 **GetText** 和 [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) 节点上的方法:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### 使用 `SaveFormat.Text`

此示例将文档保存如下:

- 过滤字段字符和字段代码、形状、脚注、尾注和注释引用
- 替换段尾 [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) 字符为 [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) 组合
- 使用UTF8编码

以下代码示例显示如何以 TXT 格式保存文档:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## 从形状提取图像

您可能需要提取文档图像来执行一些任务 。 Aspose.Words 让你也这样做。

以下代码示例显示如何从文档中提取图像:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}