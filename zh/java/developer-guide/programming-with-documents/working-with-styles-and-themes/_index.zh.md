---
title: 使用样式和主题
second_title: Aspose.Words为Java
articleTitle: 使用样式和主题
linktitle: 使用样式和主题
description: "增强的Microsoft Word格式化功能，使用Java处理样式和主题。"
type: docs
weight: 110
url: /zh/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

[StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/)类用于管理内置设置并将用户定义的设置应用于样式。

## 如何根据样式提取内容

在一个简单的层次上，从Word文档中基于样式检索内容对于识别、列出和计数以特定样式格式化的文本的段落和运行非常有用。 例如，您可能需要识别文档中的特定类型的内容，例如示例、标题、参考文献、关键字、人物名称和案例研究。

为了更进一步，这也可以用来利用文档的结构（由它使用的样式定义），将文档重新用于另一个输出（如HTML）。 这实际上是Aspose文档的构建方式，将Aspose.Words放到测试中。 使用Aspose.Words构建的工具获取源Word文档并将其拆分为特定标题级别的主题。 使用Aspose.Words生成XML文件，该文件用于构建您可以在左侧看到的导航树。 然后Aspose.Words将每个主题转换为HTML。 使用Aspose.Words检索Word文档中使用特定样式格式化的文本的解决方案通常是经济而直接的。

为了说明Aspose.Words如何轻松处理基于样式的检索内容，让我们看一个例子。 在此示例中，我们将从示例Word文档中检索使用特定段落样式和字符样式格式化的文本。

在高层次上，这将涉及:

1. 使用[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)类打开Word文档。
1. 获取文档中所有段落和所有段落的集合。
1. 只选择所需的段落和运行。

具体来说，我们将从这个示例Word文档中检索使用"Heading 1"段落样式和"强烈强调"字符样式格式化的文本。

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

在这个示例文档中，使用"Heading 1"段落样式格式化的文本是"插入选项卡"、"快速样式"和"主题"，而使用"强烈强调"字符样式格式化的文本是蓝色、斜体、粗体文本的几个实例，如"画廊"和"整体外观"。

在Aspose.Words文档对象模型中，基于样式的查询的实现非常简单，因为它只使用已经存在的工具。 为此解决方案实现了两个类方法:

1. **ParagraphsByStyleName**-此方法检索文档中具有特定样式名称的段落的数组。
1. **RunsByStyleName**-此方法检索文档中具有特定样式名称的运行的数组。

这两种方法非常相似，唯一的区别是节点类型以及段落和运行节点中样式信息的表示。 下面是下面给出的代码示例中显示的ParagraphsByStyleName的实现，以查找使用指定样式格式化的所有段落。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

此实现还使用`Document`类的[Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes)方法，该方法返回所有立即子节点的集合。

还值得指出的是，段落集合不会产生即时开销，因为只有当您访问其中的项时，段落才会加载到此集合中。然后，您需要做的就是通过集合，使用标准的foreach运算符并将具有指定样式的段落添加到paragraphsWithStyle数组中。 `Paragraph`样式名称可以在[Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat)对象的[Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName)属性中找到。

RunsByStyleName的实现几乎是相同的，尽管我们显然使用`NodeType.Run`来检索运行节点。 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/)对象的[Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle)属性用于访问**Run**节点中的样式信息。

下面的代码示例查找使用指定样式格式化的所有运行。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

当两个查询都实现时，您需要做的就是传递一个document对象并指定要检索的内容的样式名称:

{{% /alert %}}

下面的代码示例运行查询并显示结果。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

完成所有操作后，运行示例将显示以下输出:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

正如您所看到的，这是一个非常简单的示例，显示了收集的段落的数量和文本，并在示例Word文档中运行。

## 插入样式分隔符以放置不同的段落样式

可以使用Ctrl+Alt+Enter键盘快捷键将样式分隔符添加到段落的末尾MSWord。 此功能允许在一个逻辑打印段落中使用两种不同的段落样式。 如果您希望某个特定标题开头的某些文本出现在内容列表中，但不希望整个标题出现在内容列表中，则可以使用此功能。

下面的代码示例演示如何插入样式分隔符以放置不同的段落样式。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## 从模板复制所有样式

有些情况下，您希望将所有样式从一个文档复制到另一个文档中。 您可以使用`Document.CopyStylesFromTemplate`方法将样式从指定模板复制到文档。 当样式从模板复制到文档时，文档中的类似命名样式将被重新定义以匹配模板中的样式描述。 模板中的唯一样式将复制到文档中。 文档中的唯一样式保持不变。

下面的代码示例演示如何将样式从一个文档复制到另一个文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## 如何操作主题属性

我们在Aspose.Words中添加了basicAPI来访问文档主题属性。 目前，此API包括以下公共对象:

- 主题
- ThemeFonts
- ThemeColors

以下是如何获取主题属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

下面是如何设置主题属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
