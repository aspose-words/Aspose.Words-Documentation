---
title: 工作目录 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用目录
linktitle: 使用目录
description: "详细内容栏表. 如何创建和修改 `TOC` 使用 Java。 。 。 。"
type: docs
weight: 170
url: /zh/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

您通常会使用包含目录(TOC)的文件。 使用 Aspose.Words 您可以插入自己的目录,或者仅使用几行代码完全重建文档中现有的目录。

本条概述了如何与目录领域合作,并表明:

- 如何插入一个全新的TOC。
- 更新文件中新的或现有的技术选择委员会。
- 指定控制技术选择委员会格式和总体结构的开关。
- 如何修改目录的样式和外观。
- 如何清除整个 `TOC` 字段以及文档中的所有条目。

## 在程序上插入目录

您可以插入一个 `TOC` (目录)按当前位置在文档中填入 [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) 方法。

Word 文档中的目录可以多种方式构建,并使用多种选项格式化. 字段切换器用于控制文档中表格的构建和显示方式。

a 中使用的默认开关 `TOC` 插入到 Microsoft Word 已经 **"o "1-3\h\z\u"**。 。 。 这些开关的说明以及支持的开关清单可在文章的后面找到。 您可以使用该指南获取正确的开关, 或者您已经拥有包含类似开关的文档 。 `TOC` 您可以直接从字段复制开关。

以下代码示例显示如何在文档中插入目录字段:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

以下代码示例表明如何在文档中以标题样式作为条目插入目录:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

代码显示将新的目录插入空白文档。 那个 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 类然后用于插入一些带有适当标题样式的样本内容格式,这些样式用于标记将列入技术选择委员会的内容。 下一行然后插入 `TOC` 通过更新文档的字段和页面布局。

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

如果没有示例中使用的方法,打开输出文档时,就会找到 `TOC` 字段,但没有可见的内容。 这是因为 `TOC` 字段已被插入,但在文档中更新之前尚未插入。 下一节将讨论这方面的进一步情况。

{{% /alert %}}

## 更新目录

Aspose.Words 允许您完全更新一个 `TOC` 只有几行代码。 用于插入新插入的 `TOC` 或更新现有 `TOC` 在对文档进行修改之后。

以下两种方法必须用于更新 `TOC` 字段:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

请注意,需要按此顺序使用这两种更新方法。 如果翻转目录,则会包含内容,但不会显示页码。 任何不同TOC的数量都可以更新. 这些方法将自动更新文档中找到的所有 TOC 。

以下代码示例显示如何完全重建 `TOC` 字段更新:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

第一个呼叫 [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) 将建立 `TOC`",> 所有文本条目都包含在内, `TOC` 似乎几乎完成了。 唯一缺少的是目前用"?" 显示的页码。

第二次通话 [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) 将构建内存中的文档布局。 这项工作需要收集条目的页码。 从这个呼叫中计算出的正确的页码随后插入到TOC中.

## 使用切换到内容行为控制表

与任何其他领域一样, `TOC` 字段可以接受控制目录构建方式的字段代码中定义的开关。 某些开关用于控制包含哪些条目,以及控制哪些级别,而其他开关用于控制技术选择委员会的外观。 开关可以合并在一起,以便制作一个复杂的目录。

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


默认情况下,在插入默认时包含以上这些开关 `TOC` 文档中。 页:1 `TOC` 没有切换器将包含内置标题样式的内容(如设置了\O切换器).

现有 `TOC` 由 Aspose.Words 下文列出这些用途。 它们可以根据其类型分为单独的部分. 第一节中的开关定义了应在 `TOC` 而第二节的开关控制TOC的外观.

如果此处没有列出开关, 那么它目前是不支持的 。 未来版本将支持所有开关。 我们将进一步支持每一份新闻稿。

### 条目标记开关

|  切换 | 说明 |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O 切换)* <br/> | <p>此开关定义 `TOC` 应当从内置标题样式中构建。 内 Microsoft Word, 由标题 1 - 标题定义 9. 在 Aspose.Words 这些样式由相应的样式标识符列表来代表。 此列表代表一个样式的本地化独立标识符, 例如, `StyleIdentifier.Heading1` 代表标题1样式。 使用此选项,样式的格式和属性可以从文档的样式收藏中检索。 相应的样式类可以从 `Document.Styles` 通过使用类型样式标识符的索引属性来收集。</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>任何带有这些样式的内容都包含在目录中. 标题的级别将定义TOC中条目的相应等级级别. 例如,标题1样式的段落将被视为 `TOC` 而标题2的一款将被视为等级中的下一个层次等等。</p>
 |
| **Outline Levels** <br/> *(\U切换) * <br/> | <p>每个段落可以在段落选项下定义大纲级别.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>这一设定决定了应在文件等级中处理该段的级别。 这是一种常用的做法,用于方便地构建文档的布局. 可以通过在 Microsoft Word。 。 。 与标题样式类似,除了"Body Text"级别之外,还可以有1–9个大纲级别. 1 - 9级大纲将出现在 `TOC` 在等级的相应级别中 <br/>在段落样式中设定或直接在段落本身上设定的大纲级别的任何内容都包含在技术选择委员会中。 内 Aspose.Words 大纲级别以 `ParagraphFormat.OutlineLevel` 段落节点的属性。 段落样式的大纲级别以同样的方式由 `Style.ParagraphFormat` 属性。</p>

<p>{{% alert color="primary" %}}</p>

<p>注意,像Heading 1这样的内置标题样式在样式设置中有一个大纲级强制设置.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T切换) * <br/> | <p>此切换可以让自定义样式在收集条目时用于TOC. 这常与\O开关结合使用,在TOC中包含自定义样式和内置标题样式. <br/>开关的参数应置于语音标记内。 许多自定义样式可以包含其中,对于每种样式,名称后面应指定一个逗号,然后是样式出现在 `TOC` 犹如. 进一步的风格也用逗号分隔. <br/>比如说</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>将使用自定义标题1的格式内容作为第一级内容 `TOC` 自定义标题2为二级。</p>
 |
| 使用 TC 字段 <br/> *(\F和\L开关)* <br/> | <p>旧版本 Microsoft Word, 唯一的办法 `TOC` 使用TC字段。 即使显示字段代码,这些字段也会被插入到文档中。 它们包括应在条目和 `TOC` 由他们建造。 这一功能现在没有经常使用,但在某些情况下可能仍然有用,以便将条目列入 `TOC` 在文档中不可见的缩进。 <br/>插入时, 这些字段即使显示字段代码也会显示隐藏 。 不显示隐藏内容就无法看到它们。 要看到这些字段,必须选择段落格式。</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>这些字段可以像其他字段一样插入到任何位置的文档中,由以下字段代表: `FieldType.FieldTOCEntry` 计数.<br/>切换在 a `TOC` 用于指定TC字段应用作条目。 自动开关没有附加任何标识符,意味着文档中的任何TC字段都将包含在内. 任何额外的参数,往往是单个字母,都会指定只有具有匹配\f切换的TC字段才会被包含在TOC中. 例如, *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>将只包含诸如</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>那个 `TOC` 字段也有一个相关的开关,"\L"开关指定只包含指定范围内的TC字段。</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>那个 `TC` 字段本身也可以有 `{several, multiple, a few, many, numerous}` 开关设定 。 它们是:</p>

<p>- 上面已经解释过了 * 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。</p>

<p>- L - 定义 `TOC` 此 TC 字段将会出现 。 页:1 `TOC` 使用同一开关的字段将仅在指定范围内包含此 TC 字段。</p>

<p>- _\ - 此的页码 `TOC` 未显示条目。 如何插入TC字段的样本代码见下一节.</p>
 |

### 外观相关开关

|  切换 | 说明 |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N 切换)* | <p>此开关用于隐藏 TOC 的某些级别的页码. 例如,你可以定义</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>并且第3级和第4级条目的页码会和头号点一起隐藏(如果有的话). 仅指定一个级别仍应使用一个范围,例如,"1-1"将只排除第一个级别的页码。 <br/>提供任何关卡范围都会省略TOC中所有关卡的页码. 用于将文档导出到 HTML 或类似格式时设置 。 这是因为基于HTML的格式没有任何页面概念,因此不需要任何页面编号。</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| 插入为超链接 <br/> *(\H 切换)* | <p>此开关指定 `TOC` 条目作为超链接插入。 查看文档时 Microsoft Word 这些条目仍将作为普通文本出现在 `TOC` 但带有超文本链接,因此可以使用 *Ctrl + left 点击 * 在文档中导航到原始条目的位置 Microsoft Word。 。 。 当包含这个开关时,这些链接也会以其他格式保存. 例如,在基于HTML的格式中,包括EPUB和诸如PDF和PDF等渲染格式 XPS, 它们将作为工作链接导出。 <br/>没有这个开关, `TOC` 在所有这些输出中,将导出为纯文本,而不显示这种行为。 如果在 MS Word 中打开一个文档,则条目的文本也将无法以这种方式点击,但页码仍可用于导航到原始条目。</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P切换) * <br/> | <p>此切换可以方便地在TOC中更改将条目标题和页码分开的内容. 应在此开关之后指定要使用的分隔符,并在语音标记中加注。 <br/>与办公室文件记录的情况相反,只能使用一个字符,而不是最多五个字符。 这既适用于MS Word,也适用于 Aspose.Words。 。 。 。 <br/>不建议使用这个开关,因为它无法控制它用来在TOC中分出条目和页码的多少. 相反,建议编辑适当的 `TOC` 样式例如 `StyleIdentifier.TOC1` 然后从那里编辑领导者样式,并访问特定的字体成员等。 如何做到这一点的进一步细节可在文章的后面找到。</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W 切换)* | <p>使用此切换符将指定任何具有标签字符的条目,例如,在行尾有标签标题的条目,在输入 TOC 时会被保留为适当的标签字符 。 这意味着标签字符的功能将在 `TOC` 并可用于格式化条目。 例如,某些条目可能使用制表符和制表符来平缓文本的间隔. 只要是相应的 `TOC` 级别定义相应的制表位然后生成 `TOC` 条目将显示类似间隔。 <br/><br/>在同一情况下,如果不定义这个开关,那么制表符将转换为白色空格等同为非功能制表符. 这样产出就不会如预期的那样出现。</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(X+切换) * <br/> | <p>与上面的开关类似,这个开关规定,跨越多行的标题(使用新行字符,而不是单独的段落)将保留在生成的TOC中. 例如,一个要分布在多个行之间的标题可以使用新的行字符(Ctrl + Enter 或 `ControlChar.LineBreak`)将内容分出不同行. 在指定此切换器后, `TOC` 将保留下文所示的这些新行字符。 <br/><br/>在这种情况下,如果开关没有被定义,那么新的行字符会转换为单一的白色空间.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## 插入 TC 字段

您可以在当前位置插入一个新的 TC 字段 `DocumentBuilder` 通过呼叫 `DocumentBuilder.InsertField` 方法,并指定字段名称为"TC"以及需要的任何开关。

以下代码示例显示如何插入一个 `TC` 字段进入文档 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)。 。 。 。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

通常为 `TOC` 并标记为 `TC` 字段。 在MS Word中做到这一点的简单方法是突出文本并按下*ALT+SHIFT+O*. 自动创建 `TC` 字段使用选定的文本。 同样的技术可以通过代码实现. 以下代码将找到匹配输入的文本并插入一个 `TC` 字段与文本位置相同。 该代码基于文章中所使用的相同技术. 以下代码示例显示如何找到并插入 `TC` 字段中的文字。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## 修改目录

### 更改样式的格式

表格中条目的格式 `TOC` 不使用标记条目的原始样式,相反,每个关卡都使用等效格式 `TOC` 样式。 例如,第一级 `TOC` 格式化为 **技选 1** 样式,以 **技选2** 样式等。 这就是说为了改变 `TOC` 这些样式必须修改。 内 Aspose.Words 这些风格由本地独立代表 `StyleIdentifier.TOC1` 通过至 `StyleIdentifier.TOC9` 并可从 `Document.Styles` 使用这些标识符收集。

一旦文档的适当样式被检索出来,这种样式的格式就可以修改。 对这些样式的任何修改都将自动反映在文档中的TOCs中.

以下代码示例更改了第一个关卡中使用的格式属性 `TOC` 样式。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

还应指出,任何直接格式化的段落(在段落本身上下定义,而不是在风格上),都应标注在 `TOC` 将在 TOC 条目中复制。 例如,如果标题 1 样式用于标记内容 `TOC` 而这种样式有粗体格式,而段落也有直接应用的斜体格式。 结果 `TOC` 条目将不粗体,因为这属于样式格式的一部分,但将采用斜体字,因为这直接在段落上格式。

也可以控制每个条目和页码之间所使用的分隔符的格式。 默认情况下,这是一条用标签字符和右标签站排列到右边距的线条,在页面编号上分布.

使用 `Style` 分类 `TOC` 级别,您也可以修改文档中这些内容的显示方式。

来改变这个样子 `Style.ParagraphFormat` 必须调用以获取样式的段落格式。 从这里,标签站可以通过拨打来检索 `ParagraphFormat.TabStops` 并修改了相应的标签站。 使用同样的技术,标签本身可以完全移动或删除。

以下代码示例显示如何修改右标签站的位置 `TOC` 有关段落。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## 从文档中删除目录

从文档中删除一个目录,可以删除在 `FieldStart` 和字段尾节点 `TOC` 字段。

下面的代码表明了这一点。 删去 `TOC` 字段比普通字段简单,因为我们没有跟踪嵌套字段。 相反,我们检查 `FieldEnd` 节点是类型 `FieldType.FieldTOC` 这意味着我们已经遇到 结束目前的TOC。 这种技术可以在这里使用,而不必担心任何筑巢场,因为我们可以假设任何适当的成型文件都不会完全筑巢. `TOC` 在另一个字段内 `TOC` 字段。

首先是 `FieldStart` 每个节点 `TOC` 收集并储存。 指定的 `TOC` 然后列出字段内的所有节点,以便访问和存储。 然后从文档中删除节点。 以下代码示例显示如何删除指定的 `TOC` 从文档。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## 目录摘录

如果要从任何Word文档中提取目录,可以使用以下代码样本.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
