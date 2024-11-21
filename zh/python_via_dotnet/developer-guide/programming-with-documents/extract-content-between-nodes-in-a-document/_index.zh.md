---
title: 提取文档节点之间的内容
second_title: Python 格式的 Aspose.Words
articleTitle: 提取文档中节点之间的内容
linktitle: 提取节点之间的内容
description: "如何使用 Python 轻松地从文档内的范围中提取特定内容。"
type: docs
weight: 140
url: /zh/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

处理文档时，能够轻松地从文档中的特定范围中提取内容非常重要。然而，内容可能由复杂的元素组成，例如段落、表格、图像等。

无论需要提取什么内容，提取该内容的方法始终取决于选择哪些节点来提取其间的内容。这些可以是整个文本主体或简单的文本流。

有许多可能的情况，因此在提取内容时需要考虑许多不同的节点类型。例如，您可能想要提取以下内容之间的内容：

- 两个特定段落
- 特定的文本运行
- 各种类型的字段，例如合并字段
- 书签或评论的开始和结束范围
- 不同部分中包含的各种文本主体

在某些情况下，您甚至可能需要组合不同的节点类型，例如提取段落和字段之间，或者运行和书签之间的内容。

本文提供了在不同节点之间提取文本的代码实现，以及常见场景的示例。

{{% alert color="primary" %}}

这些示例只是多种可能性的几个演示。我们计划将来将文本提取功能纳入公共 API 的一部分，并且不需要额外的代码。同时，请随时在 [Aspose.Words论坛](https://forum.aspose.com/c/words/8) 上发布有关此功能的请求。

{{% /alert %}}

## 为什么提取内容

通常，提取内容的目标是将其复制或单独保存在新文档中。例如，您可以提取内容并：

- 将其复制到单独的文档中
- 将文档的特定部分转换为 PDF 或图像
- 多次重复文档中的内容
- 与文档的其余部分分开处理提取的内容

使用 Aspose.Words 和下面的代码实现可以轻松实现这一点。

## 提取内容算法

本节中的代码使用一种通用且可重用的方法解决了上述所有可能的情况。该技术的总体轮廓包括：

1. 收集指示将从文档中提取的内容区域的节点。检索这些节点是由用户根据他们想要提取的内容在其代码中处理的。
1. 将这些节点传递给下面提供的 **ExtractContent** 方法。您还必须传递一个布尔参数，该参数指示这些充当标记的节点是否应包含在提取中。
1. 检索指定要提取的克隆内容（复制节点）的列表。您可以以任何适用的方式使用此节点列表，例如，创建仅包含所选内容的新文档。

## 如何提取内容

要从文档中提取内容，您需要调用下面的 **提取内容** 方法并传递适当的参数。该方法的基本原理涉及查找块级节点（段落和表格）并克隆它们以创建相同的副本。如果传递的标记节点是块级别的，则该方法能够简单地复制该级别上的内容并将其添加到数组中。

但是，如果标记节点是内联的（段落的子节点），则情况会变得更加复杂，因为有必要在内联节点处拆分段落，无论是运行、书签字段等。克隆的父节点中的内容不会标记之间存在的内容被删除。此过程用于确保内联节点仍保留父段落的格式。该方法还将对作为参数传递的节点进行检查，如果任一节点无效，则抛出异常。要传递给该方法的参数是：

1.**起始节点** 和 **结束节点**。前两个参数是分别定义内容提取的开始和结束位置的节点。这些节点可以是块级（[Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)、[Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 或内联级（例如 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)、[FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/)、[BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 等））：
   1. 要传递字段，您应该传递相应的 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 对象。
   1. 传递书签，需要传递[BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/)和[BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/)节点。
   1. 传递评论需要使用[CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)和[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/)节点。
1.**是包容性的**。定义标记是否包含在提取中。如果该选项设置为false并且传递相同的节点或连续的节点，那么将返回一个空列表：
   1. 如果传递 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 节点，则此选项定义是否包含或排除整个字段。
   1. 如果传递 [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 或 [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) 节点，则此选项定义是否包含书签或仅包含书签范围之间的内容。
   1. 如果传递 [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) 或 [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 节点，则此选项定义是否包含注释本身或仅包含注释范围内的内容。

**提取内容**方法的实现你可以找到[这里](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py)。本文的场景中会用到该方法。

我们还将定义一个自定义方法来轻松地从提取的节点生成文档。此方法在下面的许多场景中都会使用，只需创建一个新文档并将提取的内容导入其中即可。

以下代码示例演示如何获取节点列表并将它们插入到新文档中：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## 提取段落之间的内容

这演示了如何使用上述方法提取特定段落之间的内容。在本例中，我们想要提取文档前半部分中找到的信件正文。我们可以看出这是在第7段和第11段之间。

下面的代码完成了这个任务。使用文档上的 [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) 方法并传递指定的索引来提取适当的段落。然后，我们将这些节点传递给 **提取内容** 方法，并声明这些节点将包含在提取中。此方法将返回这些节点之间复制的内容，然后将其插入到新文档中。

以下代码示例展示了如何使用上面的 **提取内容** 方法提取特定段落之间的内容：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 提取不同类型节点之间的内容

我们可以在块级或内联节点的任意组合之间提取内容。在下面的这种情况下，我们将提取第一段和第二部分中的表格之间的内容。我们通过在文档的第二部分调用 [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) 和 [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) 方法来检索适当的 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 和 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 节点来获取标记节点。对于轻微的变化，让我们复制内容并将其插入到原始内容下方。

以下代码示例演示如何使用 **提取内容** 方法提取段落和表格之间的内容：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 根据样式提取段落之间的内容

您可能需要提取相同或不同样式的段落之间的内容，例如标有标题样式的段落之间。

下面的代码展示了如何实现这一点。这是一个简单的示例，它将提取"标题 1"和"标题 3"样式的第一个实例之间的内容，而不提取标题。为此，我们将最后一个参数设置为 false，它指定不应包含标记节点。

在正确的实现中，应该循环运行以从文档中提取这些样式的所有段落之间的内容。提取的内容将复制到新文档中。

以下代码示例展示了如何使用 **提取内容** 方法提取具有特定样式的段落之间的内容：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 在特定运行之间提取内容

您还可以提取内联节点（例如 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/)）之间的内容。不同段落的运行可以作为标记传递。下面的代码显示了如何提取同一 [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) 节点之间的特定文本。

以下代码示例演示如何使用 **提取内容** 方法提取同一段落的特定运行之间的内容：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 使用字段提取内容

要使用字段作为标记，应传递 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 节点。 **提取内容** 方法的最后一个参数将定义是否包含整个字段。让我们提取"FullName"合并字段和文档中的段落之间的内容。我们使用[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)类的[DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/)方法。这将从传递给它的合并字段的名称返回 [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) 节点。

在我们的例子中，我们将传递给 **提取内容** 方法的最后一个参数设置为 `False` 以从提取中排除该字段。我们会将提取的内容呈现为 PDF。

以下代码示例演示如何使用 **提取内容** 方法提取文档中特定字段和段落之间的内容：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 从书签中提取内容

在文档中，书签中定义的内容由 [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) 和 [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) 节点封装。在这两个节点之间找到的内容构成了书签。您可以将这些节点中的任何一个作为任何标记传递，甚至可以是来自不同书签的标记，只要起始标记出现在文档中的结束标记之前即可。我们将使用下面的代码将此内容提取到一个新文档中。 **是包容性的** 参数选项显示如何保留或放弃书签。

以下代码示例演示如何使用 **提取内容** 方法提取引用书签的内容：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 从评论中提取内容

注释由 [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/)、[CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) 和 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 节点组成。所有这些节点都是内联的。前两个节点封装了注释引用的文档中的内容，如下面的屏幕截图所示。 [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) 节点本身是一个 [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/)，可以包含段落和段落。它代表评论的消息，在审阅窗格中显示为评论气泡。由于此节点是内联的并且是正文的后代，因此您也可以从此消息中提取内容。

注释概括了第二部分中的标题、第一段和表格。让我们将此评论提取到一个新文档中。 **是包容性的** 选项指示评论本身是保留还是丢弃。

以下代码示例展示了如何执行此操作：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx) 下载本示例的示例文件。

{{% /alert %}}

## 如何仅提取文本

从文档中检索文本的方法有：

- 使用 [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 将纯文本保存到文件或流中
- 使用[Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/)并传递[SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)参数。在内部，这会调用另存为文本到内存流中并返回结果字符串
- 使用 [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) 检索包含所有 Microsoft Word 控制字符（包括域代码）的文本

### 使用 Node.get_text 和 Node.to_string

Word 文档可以包含指定特殊元素（例如字段、单元格结尾、节结尾等）的控制字符。可能的 Word 控制字符的完整列表在 [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) 类中定义。 [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) 方法返回包含节点中存在的所有控制字符的文本。

调用 [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) 仅返回不带控制字符的文档的纯文本表示形式。有关导出为纯文本的更多信息，请参阅使用 [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)。

以下代码示例显示了在节点上调用 [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) 和 [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) 方法之间的区别：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### 使用 `SaveFormat.Text`

本示例保存文档如下：

- 过滤掉字段字符和字段代码、形状、脚注、尾注和注释引用
- 用 **ControlChar.CrLf** 组合替换 **ControlChar.Cr** 段落末尾字符
- 使用UTF8编码

以下代码示例展示了如何将文档保存为 TXT 格式：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## 从形状中提取图像

您可能需要提取文档图像来执行某些任务。 Aspose.Words 也允许您这样做。

以下代码示例展示了如何从文档中提取图像：

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
