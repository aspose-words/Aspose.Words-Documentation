---
title: 如何在文档节点之间提取内容
second_title: Aspose.Words对于C++
articleTitle: 提取文档中节点之间的内容
linktitle: 在节点之间提取内容
type: docs
description: "使用C++在不同的文档内容中提取."
weight: 140
url: /zh/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

在处理文档时，能够轻松地从文档中的特定范围提取内容非常重要。 然而，内容可以由诸如段落、表格、图像等的复杂元素组成。

无论需要提取什么内容，提取该内容的方法将始终由选择在哪些节点之间提取内容来确定。 这些可以是整个文本正文或简单的文本运行。

有许多可能的情况，因此在提取内容时需要考虑许多不同的节点类型。 例如，您可能希望在:

- 两个具体段落
- 文本的特定运行
- 各种类型的字段，如合并字段
- 书签或注释的开始和结束范围
- 各节所载的各种案文

在某些情况下，您甚至可能需要组合不同的节点类型，例如在段落和字段之间或在运行和书签之间提取内容。

本文提供了在不同节点之间提取文本的代码实现，以及常见场景的示例。

{{% alert color="primary" %}}

这些例子只是许多可能性的几个示范。 我们计划在未来将文本提取功能作为公共API的一部分，并且不需要额外的代码。 同时，请随时在 [Aspose.Words论坛](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## 为什么提取内容

通常，提取内容的目标是将其复制或单独保存在新文档中。 例如，您可以提取内容和:

- 将其复制到单独的文档中
- 将文档的特定部分转换为PDF或图像
- 多次复制文档中的内容
- 使用与文档其余部分分开的提取内容

这可以使用Aspose.Words和下面的代码实现轻松实现。

## 提取内容算法

本节中的代码使用一个通用和可重用的方法解决了上述所有可能的情况。 该技术的总纲涉及:

1. 收集指定将从文档中提取的内容区域的节点。 检索这些节点由用户在其代码中处理，基于他们想要提取的内容。
1. 将这些节点传递给下面提供的**ExtractContent**方法。 您还必须传递一个布尔参数，该参数声明这些作为标记的节点是否应包含在提取中。
1. 检索指定要提取的克隆内容（复制节点）的列表。 您可以以任何适用的方式使用此节点列表，例如，创建仅包含所选内容的新文档。

## 如何提取内容

要从文档中提取内容，您需要调用下面的`ExtractContent`方法并传递适当的参数。 该方法的基础涉及查找块级节点（段落和表）并克隆它们以创建相同的副本。 如果传递的标记节点是块级的，那么该方法能够简单地复制该级别上的内容并将其添加到数组中。

但是，如果标记节点是内联的（段落的子节点），那么情况就会变得更加复杂，因为有必要在内联节点分割段落，无论是运行，书签字段等。 标记之间不存在的克隆父节点中的内容将被删除。 此过程用于确保内联节点仍保留父段落的格式。 该方法还将对作为参数传递的节点运行检查，并在任一节点无效时引发异常。 要传递给此方法的参数是:

1. **StartNode**和**EndNode**。 前两个参数是分别定义内容提取开始和结束的节点。 这些节点可以是块级（段落，表格）或内联级（例如Run，FieldStart，BookmarkStart等）。):
   1. 要传递字段，您应该传递相应的**FieldStart**对象。
   1. 要传递书签，应传递**BookmarkStart**和BookmarkEnd节点。
   1. 要传递注释，应使用CommentRangeStart和CommentRangeEnd节点。
1. **IsInclusive**. 定义标记是否包含在提取中。 如果此选项设置为false，并且传递了相同的节点或连续的节点，则将返回一个空列表:

      1. 如果传递了**FieldStart**节点，则此选项定义是否要包含或排除整个字段。
      1. 如果传递了**BookmarkStart**或**BookmarkEnd**节点，则此选项定义是包含书签还是仅包含书签范围之间的内容。
      1. 如果传递了**CommentRangeStart**或**CommentRangeEnd**节点，则此选项定义是要包含注释本身还是仅包含注释范围中的内容。

你可以找到**ExtractContent**方法的实现 [这里](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). 此方法将在本文的场景中提及。

我们还将定义一个自定义方法，以便从提取的节点轻松生成文档。 此方法用于下面的许多场景，只需创建一个新文档并将提取的内容导入其中。

下面的代码示例演示如何获取节点列表并将它们插入到新文档中。

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## 提取段落之间的内容

这演示了如何使用上面的方法来提取特定段落之间的内容。 在这种情况下，我们要提取在文档的前半部分中找到的字母的正文。 我们可以看出这是在第7段和第11段之间。

下面的代码完成此任务。 使用文档上的[GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/)方法提取适当的段落，并传递指定的索引。 然后，我们将这些节点传递给**ExtractContent**方法，并声明这些节点将包含在提取中。 此方法将返回这些节点之间复制的内容，然后将其插入到新文档中。

下面的代码示例演示如何使用上面的`ExtractContent`方法提取特定段落之间的内容:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## 在不同类型的节点之间提取内容

我们可以在块级或内联节点的任何组合之间提取内容。 在下面的这个场景中，我们将提取第一段和第二部分的表格之间的内容，包括在内。 我们通过在文档的第二部分调用`Body.FirstParagraph`和[GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/)方法来获取标记节点，以检索适当的段落和表节点。 对于轻微的变化，让我们复制内容并将其插入到原始内容下方。

下面的代码示例演示如何使用`ExtractContent`方法提取段落和表之间的内容:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## 根据样式提取段落之间的内容

您可能需要提取相同或不同样式的段落之间的内容，例如标有标题样式的段落之间。 下面的代码显示了如何实现这一点。 这是一个简单的例子，它将提取"标题1"和"标题3"样式的第一个实例之间的内容，而不提取标题。 为此，我们将最后一个参数设置为false，该参数指定不应包含标记节点。

在适当的实现中，这应该在循环中运行，以从文档中提取这些样式的所有段落之间的内容。 提取的内容复制到新文档中。

下面的代码示例演示如何使用`ExtractContent`方法提取具有特定样式的段落之间的内容:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## 在特定运行之间提取内容

您也可以在内联节点之间提取内容，例如[Run](https://reference.aspose.com/words/cpp/aspose.words/run/)。 来自不同段落的**Runs**可以作为标记传递。 下面的代码显示了如何在同一**Paragraph**节点之间提取特定文本。

下面的代码示例演示如何使用**ExtractContent**方法在同一段落的特定运行之间提取内容:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## 使用字段提取内容

要使用字段作为标记，应传递`FieldStart`节点。 `ExtractContent`方法的最后一个参数将定义是否要包含整个字段。 让我们提取"FullName"合并字段和文档中的段落之间的内容。 我们使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)类的[MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/)方法。 这将从传递给它的合并字段的名称返回**FieldStart**节点。

在我们的例子中，让我们将传递给**ExtractContent**方法的最后一个参数设置为false，以从提取中排除字段。 我们将提取的内容呈现为PDF。

下面的代码示例演示如何使用**ExtractContent**方法提取文档中特定字段和段落之间的内容:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## 从书签中提取内容

在文档中，书签中定义的内容由`BookmarkStart`和BookmarkEnd节点封装。 在这两个节点之间找到的内容组成书签。 您可以将这些节点中的任何一个作为任何标记传递，即使是来自不同书签的标记，只要起始标记出现在文档中的结束标记之前。 我们将使用下面的代码将此内容提取到新文档中。 **IsInclusive**参数选项显示如何保留或丢弃书签。

下面的代码示例演示如何使用**ExtractContent**方法提取书签引用的内容:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## 从注释中提取内容

注释由CommentRangeStart、CommentRangeEnd和注释节点组成。 所有这些节点都是内联的。 前两个节点封装了注释引用的文档中的内容，如下面的屏幕截图所示。

**Comment**节点本身是一个InlineStory，可以包含段落和运行。 它表示注释的消息，在预览窗格中被视为注释气泡。 由于此节点是内联的，并且是正文的后代，因此您也可以从该消息中提取内容。

注释封装了标题，第一段和第二部分中的表格。 让我们将此注释提取到一个新文档中。 **IsInclusive**选项指示注释本身是保留还是丢弃。

下面的代码示例演示如何执行此操作:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## 如何使用DocumentVisitor提取内容

使用[DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/)类实现此使用场景。 该类对应于众所周知的访客设计模式。 使用**DocumentVisitor,**，您可以定义和执行需要在文档树上枚举的自定义操作。

**DocumentVisitor**

每个**DocumentVisitor.VisitXXX**方法返回一个[VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/)值，用于控制节点的枚举。 您可以请求继续枚举、跳过当前节点（但继续枚举）或停止节点的枚举。

以下是您应该遵循的步骤，以编程方式确定和提取文档的各个部分:

- 创建从**DocumentVisitor**派生的类
- 重写并提供一些或所有**DocumentVisitor.VisitXXX**方法的实现，以执行一些自定义操作
- 在要从中启动枚举的节点上调用`Node.Accept`。 例如，如果要枚举整个文档，请使用`Document.Accept`

**DocumentVisitor**

此示例演示如何使用访问者模式向Aspose.Words对象模型添加新操作。 在这种情况下，我们创建一个简单的文档转换器为文本格式:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## 如何仅提取文本

从文档中检索文本的方法有:

- 使用[Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/)和[SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)以纯文本形式保存到文件或流中
- 使用[Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/)并传递**SaveFormat.Text**参数。 在内部，这将调用另存为文本到内存流中，并返回结果字符串
- 使用[Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/)检索包含所有Microsoft Word控制字符（包括字段代码）的文本
- 实现自定义[DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/)以执行自定义提取

### 使用`Node.GetText`和`Node.ToString`

Word文档可以包含指定特殊元素的控制字符，如字段、单元格末尾、节末尾等。 可能的单词控制字符的完整列表在[ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/)类中定义。 **Node.GetText**方法返回节点中包含所有控制字符的文本。

调用**ToString**仅返回文档的纯文本表示形式，不包含控制字符。

下面的代码示例演示在节点上调用**GetText**和**ToString**方法之间的区别:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### 使用`SaveFormat.Text`

此示例保存文档，如下所示:

- 过滤掉字段字符和字段代码，形状，脚注，尾注和注释引用
- 用**ControlChar.CrLf**组合替换段落结束的**ControlChar.Cr**字符
- 使用UTF8编码

下面的代码示例演示如何以TXT格式保存文档:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## 从形状中提取图像

您可能需要提取文档图像来执行某些任务。 Aspose.Words也允许你这样做。

下面的代码示例演示如何从文档中提取图像:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
