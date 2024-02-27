---
title: 在 C# 中使用样式和主题
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用样式和主题
linktitle: 使用样式和主题
description: "高级 Microsoft Word 格式化功能，使用 C# 处理样式和主题。"
type: docs
weight: 110
url: /zh/net/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) 类用于管理内置样式并将用户定义的设置应用于样式。

## 访问样式

您可以使用 [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) 属性获取文档中定义的样式集合。该集合包含文档中的内置样式和用户定义样式。特定样式可以通过其名称/别名、样式标识符或索引来获取。以下代码示例演示如何访问文档中定义的样式集合。

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## 如何根据样式提取内容

简单地说，从 Word 文档中检索基于样式的内容对于识别、列出和计数段落以及使用特定样式格式化的文本很有用。例如，您可能需要识别文档中特定类型的内容，例如示例、标题、参考文献、关键字、图形名称和案例研究。

更进一步，这还可以用于利用由其使用的样式定义的文档结构，将文档重新用于其他输出，例如 HTML。事实上，这就是 Aspose 文档的构建方式，将 Aspose.Words 进行测试。使用 Aspose.Words 构建的工具获取源 Word 文档并将它们分成特定标题级别的主题。 XML 文件是使用 Aspose.Words 生成的，用于构建您可以在左侧看到的导航树。然后 Aspose.Words 将每个主题转换为 HTML。

使用 Aspose.Words 来检索 Word 文档中特定样式的文本格式的解决方案通常既经济又简单。

### 解决方案

为了说明 Aspose.Words 如何轻松地处理基于样式的内容检索，让我们看一个示例。在此示例中，我们将从示例 Word 文档中检索使用特定段落样式和字符样式格式化的文本。在较高级别上，这将涉及：# 使用 [Document](https://reference.aspose.com/words/net/aspose.words/document/) 类打开 Word 文档。# 获取集合文档中的所有段落和所有运行。# 仅选择所需的段落和运行。具体来说，我们将从这个示例 Word 文档中检索使用"标题 1"段落样式和"强烈强调"字符样式格式化的文本。

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


在此示例文档中，使用"标题 1"段落样式格式化的文本是"插入选项卡"、"快速样式"和"主题"，使用"强烈强调"字符样式格式化的文本是蓝色、斜体、粗体文本，例如"画廊"和"整体外观"。

### 代码

在 Aspose.Words 文档对象模型中，基于样式的查询的实现非常简单，因为它只使用已有的工具。此解决方案实现了两个类方法：# **ParagraphsByStyleName** – 此方法检索这些段落的数组具有特定样式名称的文档。# **RunsByStyleName** – 此方法检索文档中具有特定样式名称的运行的数组。这两种方法非常相似，唯一的区别是节点类型和样式的表示形式段落和运行节点中的信息。这是 ParagraphsByStyleName 的实现：下面的示例查找使用指定样式格式化的所有段落。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

此实现还使用 `Document` 类的 `Document.GetChildNodes` 方法，该方法返回具有指定类型的所有节点的集合，在本例中为所有段落。

请注意，**Document.GetChildNodes** 方法的第二个参数设置为 true。这迫使 **Document.GetChildNodes** 方法递归地从所有子节点中进行选择，而不是仅选择直接子节点。

{{% /alert %}}

还值得指出的是，段落集合不会立即产生开销，因为只有当您访问其中的项目时，段落才会加载到该集合中。然后，您需要做的就是使用标准 foreach 运算符遍历集合，并将具有指定样式的段落添加到 paragraphsWithStyle 数组中。 `Paragraph` 样式名称可以在 [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/) 对象的 [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) 属性中找到。尽管我们显然使用 [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) 来检索运行节点，但 RunsByStyleName 的实现几乎相同。 [Run](https://reference.aspose.com/words/net/aspose.words/run/) 对象的 [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) 属性用于访问 **Run** 节点中的样式信息。下面的示例查找使用指定样式格式化的所有运行。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


当两个查询都实现时，您所需要做的就是传递一个文档对象并指定要检索的内容的样式名称：下面的示例运行查询并显示结果。您可以从[这里](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx)下载本示例的模板文件。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### 最终结果

一切完成后，运行示例将显示以下输出：

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


正如您所看到的，这是一个非常简单的示例，显示了示例 Word 文档中收集的段落和运行的数量和文本。

## 从模板复制所有样式

有时您想要将一个文档中的所有样式复制到另一个文档中。您可以使用 `Document.CopyStylesFromTemplate` 方法将指定模板中的样式复制到文档中。将样式从模板复制到文档时，会重新定义文档中类似名称的样式以匹配模板中的样式描述。模板中的独特样式将复制到文档中。文档中的独特样式保持不变。 Below code 示例展示了如何将样式从一个文档复制到另一个文档中。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## 如何操作主题属性

我们在 Aspose.Words 中添加了基本的 API 来访问文档主题属性。目前，该 API 包含以下公共对象：

- 主题
- 主题字体
- 主题颜色

以下是获取主题属性的方法：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

以下是设置主题属性的方法：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
