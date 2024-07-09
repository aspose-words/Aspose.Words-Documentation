---
title: 使用样式和主题
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用样式和主题
linktitle: 使用样式和主题
description: "增强 Microsoft Word 格式化特性,使用样式和主题 Java。 。 。 。"
type: docs
weight: 110
url: /zh/java/working-with-styles-and-themes/
---

那个 [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) 类用于管理内置,并将用户定义的设置应用于样式。

## 如何根据样式提取内容

在简单的层面上,从Word文档中检索基于样式的内容,对于识别,列出和计数段落和带有特定样式的文本运行是有用的. 例如,您可能需要在文档中识别特定种类的内容,例如实例,标题,参考文献,关键词,图名,以及案例研究.

要进一步采取这些步骤,还可以利用它所使用的样式所定义的文档结构,重新将文档用于另一个输出,如HTML. 事实上,Apose文档就是这样构建的, 设置 Aspose.Words 测试。 使用 Aspose.Words 将源 Word 文档拆分为某些标题级别的主题。 使用 XML 文件生成 Aspose.Words 用于构建左侧可见的导航树。 礛 Aspose.Words 将每个话题转换为 HTML。 在 Word 文档中以特定样式格式检索文本的解决方案通常经济且直接 Aspose.Words。 。 。 。

以说明如何容易 Aspose.Words 处理基于样式的检索内容,让我们看看一个例子。 在这个例子中,我们将从Word文档样本中检索一个带有特定段落样式和字符样式的文本格式。

在高级别,这将涉及:

一、导 言 使用 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 课。
一、导 言 在文档中获取所有段落和全部的集合 。
一、导 言 只选择所需的段落并运行。

具体地说,我们将从这个Word样本文件中检索以 " 标题1 " 段落样式和 " 强烈强调 " 字符样式格式编写的文本。

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

在此样本文件中,采用 " 标题1 " 段落样式格式的文字是 " Insert Tab " 、 " 快速样式 " 和 " Theme " ,而采用 " 强烈强调 " 字符样式格式的文字是 " Gallies " 和 " 总体看 " 等蓝色、斜体、粗体文字的若干实例。

基于样式的查询在 Aspose.Words 文档对象模型,因为它只是使用已经设置的工具。 为这一解决方案采用了两种分类方法:

一、导 言 **ParagraphsByStyleName** - 说吧 这种方法可以检索文档中具有特定样式名称的段落。
一、导 言 **RunsByStyleName** - 说吧 这种方法可以检索文档中具有特定样式名称的运行数组。

这两种方法都非常相似,唯一的区别是节点类型以及段落和运行节点内的样式信息的代表. 以下是在下面给出的代码示例中显示的段落ByStyleName的实现,以查找所有以指定样式格式格式化的段落.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

此项实施工作还采用了下列方法: [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) 方法 `Document` 类,它返回所有直接子节点的集合。

也值得指出的是, 段落集不会产生直接的间接费用, 因为段落只有在访问其中的项目时才会被加载到此集中。 然后,你只需要通过收集,使用标准的每个运算符,并在段落中添加具有指定样式的段落 与Style阵列. 那个 `Paragraph` 样式名称可见于 [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) 财产和财产 [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) 对象。

RunsByStyleName的执行几乎相同,尽管我们显然在使用 `NodeType.Run` 以获取运行的节点。 那个 [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) 财产的产权 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 对象用于访问 **Run** 节点。

以下代码示例查找所有以指定样式格式格式化的运行 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

当两个查询都执行时,你只需要通过一个文档对象并指定要检索的内容的样式名称:

{{% /alert %}}

以下代码示例运行查询和显示结果.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

当一切完成后,运行样本将显示以下输出:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

如你所见,这是一个非常简单的例子,显示收集段落的数量和文字,并在Word样本文档中运行.

## 插入样式分隔符以放置不同的段落样式

样式分隔符可以使用 Ctrl + Alt + 输入键盘快捷键加入 MS Word 在段落末尾添加. 这个特性允许在一个逻辑打印的段落中使用两种不同的段落样式. 如果您希望某个标题开头的文字出现在目录中,但不希望目录中的全部标题,您可以使用此特性

下面的代码示例显示如何插入样式分隔符来放置不同的段落样式

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## 从模板复制所有样式

想要将所有样式从一个文档复制到另一个文档时,会有这样的情况。 你可以用这个 `Document.CopyStylesFromTemplate` 从指定的模板复制样式到文档的方法。 当样式从模板复制到文档时,重新定义文档中的类似名称样式,以匹配模板中的样式描述. 模板中的独特样式会被复制到文档中. 文档中的独特样式仍然完好无损

以下代码示例显示如何将样式从一个文档复制到另一个文档。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## 如何操纵 主题属性

我们增加了基础 API 输入 Aspose.Words 访问文档主题属性。 现在,这个 API 包括下列公共目标:

- 怎么样? 主题
- 主题
- 主题

以下是您如何获得主题属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

您如何设定主题属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
