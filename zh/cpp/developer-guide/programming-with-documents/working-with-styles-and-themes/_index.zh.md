---
title: 使用C++中的样式
second_title: Aspose.Words对于C++
articleTitle: 使用样式
linktitle: 使用样式
description: "增强了 Microsoft Word 格式化功能，可使用 C++ 处理样式和主题。"
type: docs
weight: 110
url: /zh/cpp/working-with-styles-and-themes/
---

[StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/)类用于管理内置设置并将用户定义的设置应用于样式。

## 如何根据样式提取内容

在一个简单的层面上，从Word文档中检索基于样式的内容对于识别，列出和计数使用特定样式格式化的文本的段落和运行非常有用。 例如，您可能需要识别文档中的特定类型的内容，例如示例、标题、参考文献、关键字、人物名称和案例研究。

为了更进一步，这也可以用来利用文档的结构（由它使用的样式定义），将文档重新用于另一个输出（如HTML）。 这实际上是Aspose文档的构建方式，将Aspose.Words放到测试中。 使用Aspose.Words构建的工具获取源Word文档并将其拆分为某些标题级别的主题。 使用Aspose.Words生成XML文件，该文件用于构建您可以在左侧看到的导航树。 然后Aspose.Words将每个主题转换为HTML。

在Word文档中检索使用特定样式格式化的文本的解决方案通常使用Aspose.Words既经济又简单。

### 解决方案

为了说明Aspose.Words如何轻松处理基于样式的检索内容，让我们看一个例子。 在此示例中，我们将从示例Word文档中检索使用特定段落样式和字符样式格式化的文本。 在高层次上，这将涉及:
- 使用`Document`类打开Word文档。
- 获取文档中所有段落和所有段落的集合。
- 只选择所需的段落和运行。 具体来说，我们将从这个示例Word文档中检索使用"标题1"段落样式和"强烈强调"字符样式格式化的文本。

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


在这个示例文档中，使用"标题1"段落样式格式化的文本是"插入选项卡"、"快速样式"和"主题"，而使用"强烈强调"字符样式格式化的文本是蓝色、斜体、粗体文本的几个实例，如"画廊"和"整体外观"。

### 守则

在Aspose.Words文档对象模型中，基于样式的查询的实现非常简单，因为它只使用已经存在的工具。 为此解决方案实现了两个类方法：#**ParagraphsByStyleName**-此方法检索文档中具有特定样式名称的段落的数组。#**RunsByStyleName**–此方法检索文档中具有特定样式名称的运行的数组。 这两种方法非常相似，唯一的区别是节点类型以及段落和运行节点中样式信息的表示。 下面是ParagraphsByStyleName的实现。 下面的示例查找使用指定样式格式化的所有段落。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

此实现还使用`Document`类的`Document.GetChildNodes`方法，该方法返回具有指定类型的所有节点的集合，在本例中为所有段落。

请注意，**Document.GetChildNodes**方法的第二个参数设置为true。 这迫使**Document.GetChildNodes**方法递归地从所有子节点中进行选择，而不是仅选择直接子节点。

{{% /alert %}}

还值得指出的是，段落集合不会产生即时开销，因为只有当您访问其中的项时，段落才会加载到此集合中。 然后，您需要做的就是通过集合，使用每个运算符的标准，并将具有指定样式的段落添加到paragraphsWithStyle数组中。 可以在样式中找到`Paragraph`样式名称。 `Paragraph.ParagraphFormat`对象的Name属性。 RunsByStyleName的实现几乎是相同的，尽管我们显然使用`NodeType.Run`来检索运行节点。 `Run`对象的`Font.Style`属性用于访问**Run**节点中的样式信息。 Below code示例查找使用指定样式格式化的所有运行。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


当两个查询都实现时，您需要做的就是传递一个document对象并指定要检索的内容的样式名称：下面的示例运行查询并显示结果。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### 最终结果

完成所有操作后，运行示例将显示以下输出:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


正如您所看到的，这是一个非常简单的示例，显示了收集的段落的数量和文本，并在示例Word文档中运行。

## 如何插入和使用目录字段

通常，您将处理包含目录（TOC）的文档。 使用Aspose.Words，您可以插入自己的目录，或者只需几行代码就可以完全重建文档中现有的目录。 本文概述了如何使用目录字段并演示:

- 如何插入一个全新的`TOC`
- 更新文档中的新的或现有的TOCs。
- 指定开关以控制TOC的格式和整体结构。
- 如何修改目录的样式和外观.
- 如何从文档中删除整个`TOC`字段以及所有条目。

### 插入TC字段

通常为`TOC`指定特定的文本行，并用`TC`字段标记。 在MSWord中执行此操作的简单方法是突出显示文本并按*ALT+SHIFT+O*。 这会使用所选文本自动创建`TC`字段。 同样的技术可以通过代码来完成。 下面的代码将找到与输入匹配的文本，并在与文本相同的位置插入`TC`字段。 该代码基于文章中使用的相同技术。 下面的示例演示如何在文档中的文本中查找和插入`TC`字段。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### 修改目录

#### 更改样式的格式

`TOC`中的条目格式不使用标记条目的原始样式，而是使用等效的`TOC`样式对每个级别进行格式设置。 例如，`TOC`中的第一级用**TOC1**样式格式化，第二级用**TOC2**样式格式化等等。 这意味着要更改`TOC`的外观，必须修改这些样式。 在Aspose.Words中，这些样式由区域设置独立的`StyleIdentifier.TOC1`到`StyleIdentifier.TOC9`表示，可以使用这些标识符从`Document.Styles`集合中检索。 一旦检索到文档的适当样式，就可以修改该样式的格式。 对这些样式的任何更改都将自动反映在文档中的TOCs上。 Below code示例更改第一级`TOC`样式中使用的格式属性。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

还需要注意的是，标记为包含`TOC`的段落的任何直接格式（定义在段落本身而不是样式中）将被复制到TOC的条目中。 例如，如果标题1样式用于标记`TOC`的内容，并且此样式具有粗体格式，而段落也直接应用斜体格式。 生成的`TOC`条目不会是粗体，因为这是样式格式的一部分，但是它将是斜体，因为这是直接在段落上格式化的。 您还可以控制每个条目和页码之间使用的分隔符的格式。 默认情况下，这是一条虚线，使用制表符和靠近右边距的右制表位排列在页面编号上。

使用为要修改的特定`TOC`级别检索的`Style`类，还可以修改这些在文档中的显示方式。 要更改它的显示方式，首先必须调用`Style.ParagraphFormat`来检索样式的段落格式。 由此，可以通过调用`ParagraphFormat.TabStops`检索选项卡停止，并修改相应的选项卡停止。 使用相同的技术，选项卡本身可以完全移动或删除。 Below code示例演示如何修改`TOC`相关段落中右制表符停止的位置。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### 从文档中删除目录

通过删除`TOC`字段的`FieldStart`和FieldEnd节点之间找到的所有节点，可以从文档中删除目录。 下面的代码演示了这一点。 删除`TOC`字段比普通字段简单，因为我们不跟踪嵌套字段。 相反，我们检查`FieldEnd`节点的类型为`FieldType.FieldTOC`，这意味着我们遇到了当前TOC的结尾。 在这种情况下可以使用这种技术，而不必担心任何嵌套字段，因为我们可以假设任何正确形成的文档在另一个`TOC`字段中没有完全嵌套的`TOC`字段。 首先收集并存储每个`TOC`的`FieldStart`节点。 然后枚举指定的`TOC`，以便访问并存储字段中的所有节点。 然后从文档中删除节点。 Below code示例演示如何从文档中删除指定的`TOC`。 您可以从这里下载此示例的模板文件。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## 插入样式分隔符以放置不同的段落样式

可以使用Ctrl+Alt+Enter键盘快捷键将样式分隔符添加到段落的末尾MS字。 此功能允许在一个逻辑打印段落中使用两种不同的段落样式。 如果您希望某个特定标题开头的某些文本出现在内容列表中，但不希望整个标题出现在内容列表中，则可以使用此功能。 Below code示例演示如何插入样式分隔符以放置不同的段落样式。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## 从模板复制所有样式

有些情况下，您希望将所有样式从一个文档复制到另一个文档中。 您可以使用`Document.CopyStylesFromTemplate`方法将样式从指定模板复制到文档。 当样式从模板复制到文档时，文档中的类似命名样式将被重新定义以匹配模板中的样式描述。 模板中的唯一样式将复制到文档中。 文档中的唯一样式保持不变。 Below code示例演示如何将样式从一个文档复制到另一个文档中。

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
