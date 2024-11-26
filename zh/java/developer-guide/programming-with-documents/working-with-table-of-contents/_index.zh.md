---
title: 使用Java中的目录
second_title: Aspose.Words为Java
articleTitle: 使用目录
linktitle: 使用目录
description: "详细内容字段表。 如何使用Java创建和修改`TOC`字段。"
type: docs
weight: 170
url: /zh/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

通常，您将处理包含目录（TOC）的文档。 使用Aspose.Words，您可以插入自己的目录，或者只需几行代码就可以完全重建文档中现有的目录。

本文概述了如何使用目录字段并演示:

- 如何插入一个全新的TOC。
- 更新文档中的新的或现有的TOCs。
- 指定开关以控制TOC的格式和整体结构。
- 如何修改目录的样式和外观.
- 如何从文档中删除整个`TOC`字段以及所有条目。

## 以编程方式插入目录

您可以通过调用[InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String)方法将`TOC`（目录）字段插入到当前位置的文档中。

Word文档中的目录可以通过多种方式构建，并使用多种选项进行格式化。 传递给方法的字段开关控制了在文档中构建和显示表的方式。

在Microsoft Word中插入的`TOC`中使用的默认开关是**"\o "1-3 \h \z \u"**。 这些交换机的描述以及支持的交换机的列表可以在本文后面找到。 您可以使用该指南获得正确的开关，或者如果您已经有一个包含类似`TOC`的文档，您可以显示字段代码（*ALT+F9*）并直接从字段复制开关。

下面的代码示例演示如何将目录字段插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

下面的代码示例演示如何使用标题样式作为条目将目录(TOC)插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

该代码演示将新的目录插入到空白文档中。 然后使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)类插入一些具有适当标题样式的示例内容格式，这些标题样式用于标记要包含在TOC中的内容。 接下来的行通过更新文档的字段和页面布局来填充`TOC`。

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

如果没有示例中使用的方法，当您打开输出文档时，您将找到`TOC`字段，但没有可见的内容。 这是因为`TOC`字段已插入，但在文档中更新之前尚未填充。 有关这方面的进一步信息将在下一节中讨论。

{{% /alert %}}

## 更新目录

Aspose.Words允许您只用几行代码就可以完全更新`TOC`。 这样做可以填充新插入的`TOC`，或者在对文档进行更改后更新现有的`TOC`。

必须使用以下两种方法来更新文档中的`TOC`字段:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

请注意，需要按该顺序调用这两个更新方法。 如果反转，将填充目录，但不会显示页码。 可以更新任意数量的不同TOCs。 这些方法将自动更新文档中找到的所有TOCs。

下面的代码示例演示如何通过调用字段更新来完全重建文档中的`TOC`字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

对[Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields)的第一次调用将构建`TOC`，填充所有文本条目，并且`TOC`看起来几乎完成。 唯一缺少的是现在用"?"显示的页码。

对[Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout)的第二次调用将在内存中构建文档的布局。 这需要做收集条目的页码。 然后将从该调用计算出的正确页码插入TOC中。

## 使用开关控制目录行为

与任何其他字段一样，`TOC`字段可以接受在控制内容列表构建方式的字段代码中定义的开关。 某些开关用于控制包含哪些条目以及在什么级别，而其他开关用于控制TOC的外观。 开关可以组合在一起，以允许产生一个复杂的目录。

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


默认情况下，在文档中插入默认`TOC`时包含上述这些开关。 没有开关的`TOC`将包括内置标题样式中的内容（就像设置了\O开关一样）。

下面列出了Aspose.Words支持的可用`TOC`开关，并详细描述了它们的用途。 它们可以根据类型分为不同的部分。 第一部分中的开关定义要包含在`TOC`中的内容，第二部分中的开关控制TOC的外观。

如果此处未列出交换机，则当前不支持该交换机。 所有交换机将在未来的版本中支持。 我们正在为每个版本增加进一步的支持。

### 进入标记开关

| 开关,开关 | 资料描述 |
| :- | :- |
| **Heading Styles** <br>*(\O开关)* <br> | <p>此开关定义了`TOC`应该在内置标题样式之外构建。 在Microsoft Word中，这些由Heading 1–Heading 9定义。 在Aspose.Words中，这些样式由相应的StyleIdentifier枚举表示。 此枚举表示样式的与区域设置无关的标识符，例如，`StyleIdentifier.Heading1`表示Heading 1样式。 使用此功能，可以从文档的样式集合中检索样式的格式和属性。 可以使用类型StyleIdentifier的索引属性从`Document.Styles`集合中检索相应的样式类。</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>使用这些样式格式化的任何内容都包含在内容列表中。 标题的级别将定义TOC中条目的相应层次级别。 例如，具有Heading 1样式的段落将被视为`TOC`中的第一级，而具有Heading 2的段落将被视为层次结构中的下一级，依此类推。</p> |
| **Outline Levels** <br>*(\U开关)* <br> | <p>每个段落都可以在段落选项下定义大纲级别。</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>此设置指示应在文档层次结构中处理此段落的哪个级别。 这是一种常用的做法，用于轻松构建文档的布局。 可以通过在Microsoft Word中更改为大纲视图来查看此层次结构。 与标题样式类似，除了"正文文本"级别外，还可以有1–9个大纲级别。 大纲级别1–9将出现在层次结构的相应级别中的`TOC`中 <br>任何在段落样式中设置或直接在段落本身上设置大纲级别的内容都包含在TOC中。 在Aspose.Words中，大纲级别由段落节点的`ParagraphFormat.OutlineLevel`属性表示。 段落样式的大纲级别由`Style.ParagraphFormat`属性以相同的方式表示。</p><p>{{% alert color="primary" %}}</p><p>请注意，内置标题样式（如Heading 1）在样式设置中必须设置大纲级别。</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>*(\T开关)* <br> | <p>此开关将允许在收集要在TOC中使用的条目时使用自定义样式。 这通常与\O开关一起使用，以包括自定义样式以及TOC中的内置标题样式。 <br>开关的参数应包含在语音标记内。 可以包括许多自定义样式，对于每个样式，应指定名称后跟逗号，后跟样式应出现在`TOC`as中的级别。 其他样式也用逗号分隔。 <br>例如</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>将使用CustomHeading1样式的内容作为`TOC`中的级别1内容，CustomHeading2作为级别2。</p> |
| 使用TC字段 <br>*(\F和\L开关)* <br> | <p>在旧版本的Microsoft Word中，构建`TOC`的唯一方法是使用TC字段。 即使显示字段代码，这些字段也会隐藏地插入到文档中。 它们包括应该在条目中显示的文本，并从中构建`TOC`。 此功能现在不经常使用，但在某些情况下仍可能有用，以便在`TOC`中包含未缩进以在文档中可见的条目。 <br>插入时，即使显示字段代码，这些字段也会显示为隐藏状态。 如果不显示隐藏的内容，就无法看到它们。 要查看这些字段，必须选择段落格式。</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>这些字段可以像任何其他字段一样在任何位置插入到文档中，并由`FieldType.FieldTOCEntry`枚举表示。<br>`TOC`中的\F开关用于指定TC字段应用作条目。 没有任何额外标识符的开关本身意味着文档中的任何TC字段将被包括在内。 任何额外的参数，通常是一个字母，将指定只有具有匹配\f开关的TC字段将包含在TOC中。 例如 *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>将只包括TC字段，如</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>`TOC`字段也有一个相关的开关，"\L"开关指定只包括级别在指定范围内的TC字段。</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>`TC`字段本身也可以设置`{several, multiple, a few, many, numerous}`个开关。 这些是:</p><p>-\F-上面解释过。*</p><p>–\L-定义此TC字段将出现在`TOC`中的哪个级别。 使用此相同开关的`TOC`仅在指定范围内时才会包含此TC字段。</p><p>-`_\N`-不显示此`TOC`条目的页码。 如何插入TC字段的示例代码可以在下一节中找到。</p> |

### 外观相关开关

| 开关,开关 | 资料描述 |
| :- | :- |
| **Omit Page Numbers** <br>*(\N开关)* | <p>此开关用于隐藏TOC的某些级别的页码。 例如，可以定义</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>第3级和第4级条目上的页码将与领导者点（如果有的话）一起隐藏。 要仅指定一个级别，仍应使用范围，例如，"1-1"将仅排除第一级的页码。 <br>不提供级别范围将省略TOC中所有级别的页码。 这在将文档导出为HTML或类似格式时很有用。 这是因为基于HTML的格式没有任何页面概念，因此不需要任何页面编号。</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| 插入为超链接 <br>*(\H开关)* | <p>此开关指定`TOC`条目作为超链接插入。 在Microsoft Word中查看文档时，这些条目仍将在`TOC`中显示为普通文本，但具有超链接，因此可以使用Microsoft Word中的*Ctrl + Left Click*导航到文档中原始条目的位置。 当包括此开关时，这些链接也以其他格式保留。 例如，在基于HTML的格式（包括EPUB）和呈现的格式（如PDF和XPS）中，这些格式将导出为工作链接。 <br>如果不设置此开关，所有这些输出中的`TOC`将导出为纯文本，并且不会演示此行为。 如果在MSWord中打开文档，则条目的文本也无法以这种方式单击，但页码仍可用于导航到原始条目。</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>*(\P开关)* <br> | <p>此开关允许在TOC中轻松更改分隔条目标题和页码的内容。 要使用的分隔符应在此开关后指定，并用语音标记括起来。 <br>与Office文档中记录的内容相反，只能使用一个字符而不是最多五个字符。 这适用于MSWord和Aspose.Words。 <br>不建议使用此开关，因为它不允许太多控制它用来分隔TOC中的条目和页码。 相反，建议编辑适当的`TOC`样式，如`StyleIdentifier.TOC1`，并从那里编辑领导样式，访问特定的字体成员等。 有关如何执行此操作的更多详细信息，请参阅本文后面的内容。</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>*(\W开关)* | <p>使用此开关将指定具有制表符的任何条目，例如，在行尾具有制表符的标题，在填充TOC时将保留为适当的制表符。 这意味着制表符的功能将出现在`TOC`中，并可用于格式化条目。 例如，某些条目可能使用制表符和制表符来均匀地分隔文本。 只要相应的`TOC`级别定义了等效的选项卡，那么生成的`TOC`条目将以相似的间距出现。 <br><br>在相同的情况下，如果未定义此开关，那么制表符将转换为与不起作用的制表符等效的空白。 输出将不会按预期显示。</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>*(\X开关)* <br> | <p>与上面的开关类似，此开关指定跨越多行的标题（使用换行符，而不是单独的段落）将保留为生成的TOC中的标题。 例如，要跨多行分布的标题可以使用新行字符（Ctrl+Enter或`ControlChar.LineBreak`）跨不同行分隔内容。 指定此开关后，`TOC`中的条目将保留这些新行字符，如下所示。 <br><br>在这种情况下，如果没有定义开关，那么新行字符将转换为单个空格。</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## 插入TC字段

您可以通过调用`DocumentBuilder.InsertField`方法并将字段名称指定为"TC"以及所需的任何开关，在`DocumentBuilder`的当前位置插入新的TC字段。

下面的代码示例演示如何使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)将`TC`字段插入到文档中。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

通常为`TOC`指定特定的文本行，并用`TC`字段标记。 在MSWord中执行此操作的简单方法是突出显示文本并按*ALT+SHIFT+O*。 这会使用所选文本自动创建`TC`字段。 同样的技术可以通过代码来完成。 下面的代码将找到与输入匹配的文本，并在与文本相同的位置插入`TC`字段。 该代码基于文章中使用的相同技术。 下面的代码示例演示如何在文档中的文本中查找并插入`TC`字段。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## 修改目录

### 更改样式的格式

`TOC`中的条目格式不使用标记条目的原始样式，而是使用等效的`TOC`样式对每个级别进行格式设置。 例如，`TOC`中的第一级用**TOC1**样式格式化，第二级用**TOC2**样式格式化等等。 这意味着要更改`TOC`的外观，必须修改这些样式。 在Aspose.Words中，这些样式由与语言环境无关的`StyleIdentifier.TOC1`到`StyleIdentifier.TOC9`表示，可以使用这些标识符从`Document.Styles`集合中检索。

一旦检索到文档的适当样式，就可以修改此样式的格式。 对这些样式的任何更改都将自动反映在文档中的TOCs中。

下面的代码示例更改第一级`TOC`样式中使用的格式化属性。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

还需要注意的是，标记为包含在`TOC`中的段落（在段落本身上定义而不是在样式中定义）的任何直接格式都将复制到TOC中的条目中。 例如，如果Heading 1样式用于标记`TOC`的内容，并且此样式具有粗体格式，而段落也直接应用斜体格式。 生成的`TOC`条目不会是粗体，因为这是样式格式的一部分，但是它将是斜体，因为这是直接在段落上格式化的。

您还可以控制每个条目和页码之间使用的分隔符的格式。 默认情况下，这是一条虚线，使用制表符和靠近右边距的右制表位排列在页面编号上。

使用为要修改的特定`TOC`级别检索的`Style`类，还可以修改这些在文档中的显示方式。

要更改它的显示方式，首先必须调用`Style.ParagraphFormat`来检索样式的段落格式。 由此，可以通过调用`ParagraphFormat.TabStops`检索选项卡停止，并修改相应的选项卡停止。 使用相同的技术，选项卡本身可以完全移动或删除。

下面的代码示例演示如何在`TOC`相关段落中修改右制表符停止的位置。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## 从文档中删除目录

通过删除在`TOC`字段的`FieldStart`和FieldEnd节点之间找到的所有节点，可以从文档中删除目录。

下面的代码演示了这一点。 删除`TOC`字段比普通字段简单，因为我们不跟踪嵌套字段。 相反，我们检查`FieldEnd`节点的类型为`FieldType.FieldTOC`，这意味着我们遇到了当前TOC的结尾。 这种技术可以在这种情况下使用，而不必担心任何嵌套字段，因为我们可以假设任何正确形成的文档在另一个`TOC`字段中没有完全嵌套的`TOC`字段。

首先收集并存储每个`TOC`的`FieldStart`节点。 然后枚举指定的`TOC`，以便访问并存储字段中的所有节点。 然后从文档中删除节点。 下面的代码示例演示如何从文档中删除指定的`TOC`。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## 摘录目录

如果要从任何Word文档中提取目录，可以使用以下代码示例。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
