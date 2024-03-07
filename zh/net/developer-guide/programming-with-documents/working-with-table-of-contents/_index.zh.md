---
title: 使用 C# 中的目录
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用目录
linktitle: 使用目录
description: "详细内容表字段。如何使用 C# 创建和修改 `TOC` 字段。插入 `TOC` C#。"
type: docs
weight: 170
url: /zh/net/working-with-table-of-contents/
---

您经常会使用包含目录 (TOC) 的文档。使用 Aspose.Words，您可以插入自己的目录或仅使用几行代码完全重建文档中的现有目录。本文概述了如何使用目录字段并演示：

- 如何插入全新的`TOC`
- 更新文档中新的或现有的目录。
- 指定开关来控制目录的格式和整体结构。
- 如何修改目录的样式和外观。
- 如何删除整个 `TOC` 字段以及文档中的所有条目。

## 以编程方式插入目录

您可以通过调用 [InsertTableOfContents](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/inserttableofcontents/) 方法将 `TOC`（目录）字段插入到文档的当前位置。

Word 文档中的目录可以通过多种方式构建并使用多种选项进行格式化。您传递给方法的字段开关控制表格的构建方式以及在文档中的显示方式。

插入到 Microsoft Word 中的 `TOC` 中使用的默认开关是 **"\o"1-3\h\z\u"**。这些开关的描述以及支持的开关列表可以在本文后面找到。您可以使用该指南获取正确的开关，或者如果您已有包含所需的类似 `TOC` 的文档，则可以显示字段代码 (*ALT+F9*) 并直接从字段复制开关。

以下代码示例演示如何将目录字段插入到文档中：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

以下代码示例演示如何使用标题样式作为条目将目录 (TOC) 插入到文档中。

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

如果没有示例中使用的方法，当您打开输出文档时，您将找到 `TOC` 字段，但没有可见的内容。这是因为 `TOC` 字段已插入，但在文档中更新之前尚未填充。有关此内容的更多信息将在下一节中讨论。

{{% /alert %}}

## 更新目录

Aspose.Words 允许您仅用几行代码即可完全更新 `TOC`。可以执行此操作来填充新插入的 `TOC` 或在对文档进行更改后更新现有 `TOC`。必须使用以下两种方法来更新文档中的 `TOC` 字段：

1. [UpdateFields](https://reference.aspose.com/words/zh/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/zh/net/aspose.words/document/updatepagelayout/)

请注意，这两个更新方法需要按顺序调用。如果反转，将填充目录，但不会显示页码。可以更新任意数量的不同目录。这些方法将自动更新文档中找到的所有目录。

以下代码示例展示了如何通过调用字段更新来完全重建文档中的 `TOC` 字段：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

第一次调用 **UpdateFields** 将构建 `TOC`，所有文本条目均已填充，并且 `TOC` 看起来几乎完整。唯一缺少的是页码，目前显示为"？"。对 **UpdatePageLayout** 的第二次调用将在内存中构建文档的布局。需要这样做来收集条目的页码。然后将从该调用计算出的正确页码插入到目录中。

## 使用开关控制目录行为

与任何其他字段一样，`TOC` 字段可以接受字段代码中定义的开关，这些开关控制目录的构建方式。某些开关用于控制包含哪些条目以及处于什么级别，而其他开关则用于控制 TOC 的外观。开关可以组合在一起以生成复杂的目录。

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


默认情况下，在文档中插入默认 `TOC` 时会包含上述这些开关。没有开关的 `TOC` 将包含内置标题样式的内容（就像设置了 \O 开关一样）。下面列出了 Aspose.Words 支持的可用 `TOC` 开关，并详细描述了它们的用途。它们可以根据其类型分为单独的部分。第一部分中的开关定义 `TOC` 中包含的内容，第二部分中的开关控制 TOC 的外观。如果此处未列出某个开关，则当前不支持该开关。未来版本将支持所有交换机。我们会在每个版本中添加更多支持。

### 入口标记开关

|  转变 | 描述 |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O 开关)* | <p>此开关定义 `TOC` 应基于内置标题样式构建。在 Microsoft Word 中，这些样式由标题 1 – 标题 9 定义。在 Aspose.Words 中，这些样式由相应的 StyleIdentifier 枚举表示。此枚举表示样式的区域设置独立标识符，例如 `StyleIdentifier.Heading1` 表示标题 1 样式。使用它，可以从文档的 Style 集合中检索样式的格式和属性。可以使用 StyleIdentifier 类型的索引属性从 `Document.Styles` 集合中检索相应的 Style 类。</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>使用这些样式格式化的任何内容都包含在目录中。标题的级别将定义目录中条目的相应层次级别。例如，标题 1 样式的段落将被视为 `TOC` 中的第一级，而标题 2 的段落将被视为层次结构中的下一个级别，依此类推。</p> |
| **Outline Levels**<br>*(\U 开关)* | <p>每个段落都可以在段落选项下定义大纲级别。</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>此设置指示应在文档层次结构中处理该段落的哪个级别。这是用于轻松构建文档布局的常用做法。可以通过更改为 Microsoft Word 中的大纲视图来查看此层次结构。与标题样式类似，除了"正文"级别之外，还可以有 1 – 9 个大纲级别。大纲级别 1 – 9 将出现在层次结构相应级别的 `TOC` 中<br>任何具有在段落样式中设置或直接在段落本身上设置的大纲级别的内容都包含在目录中。在 Aspose.Words 中，大纲级别由段落节点的 `ParagraphFormat.OutlineLevel` 属性表示。段落样式的轮廓级别由 `Style.ParagraphFormat` 属性以相同的方式表示。</p>

<p>{{% alert color="primary" %}}</p>

<p>请注意，内置标题样式（例如标题 1）在样式设置中强制设置了大纲级别。</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*（\T开关）* | <p>此开关将允许在收集要在目录中使用的条目时使用自定义样式。这通常与 \O 开关结合使用，以在目录中包含自定义样式和内置标题样式。<br>开关的参数应包含在语音标记内。可以包含许多自定义样式，对于每种样式，应指定名称，后跟一个逗号，后跟该样式应在 `TOC` 中显示的级别。其他样式也用逗号分隔。<br>例如</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>将使用 CustomHeading1 样式的内容作为 `TOC` 中的 1 级内容，将 CustomHeading2 样式作为 2 级内容。</p> |
| **Use TC Fields**<br>*（\F 和 \L 开关）* | <p>在旧版本的 Microsoft Word 中，构建 `TOC` 的唯一方法是使用 TC 字段。即使显示域代码，这些字段也会隐藏地插入到文档中。它们包括应在条目中显示的文本，并且 `TOC` 是根据它们构建的。此功能现在不经常使用，但在某些情况下仍然有用，可以在 `TOC` 中包含未缩进在文档中可见的条目。<br>插入后，即使显示域代码，这些字段也会显示为隐藏。如果不显示隐藏内容，就无法看到它们。要查看这些字段，必须选择"显示段落格式"。</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p>这些字段可以像任何其他字段一样插入到文档中的任何位置，并由 `FieldType.FieldTOCEntry` 枚举表示。<br>`TOC` 中的 \F 开关用于指定 TC 字段应用作条目。开关本身没有任何额外的标识符，这意味着文档中的任何 TC 字段都将被包含在内。任何额外的参数（通常是单个字母）将指定只有具有匹配的 \f 开关的 TC 字段才会包含在 TOC 中。例如 *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>将仅包含 TC 字段，例如</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>`TOC` 字段还有一个相关的开关，"\L"开关指定仅包含级别在指定范围内的 TC 字段。</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>`TC` 字段本身也可以设置 {several, `multiple`, a few, `many`, numerous} 开关。这些都是：</p>

<p>- *\F – 如上所述。*</p>

<p>- *\L – 定义此 TC 字段将出现在 `TOC` 中的哪个级别。使用此相同开关的 `TOC` 仅在指定范围内包含此 TC 字段。*</p>

<p>- _\N – 不显示此 `TOC` 条目的页码。如何插入 TC 字段的示例代码可以在下一节中找到。</p> |

### 外观相关开关

|  转变 | 描述 |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N 开关)* | <p>此开关用于隐藏目录某些级别的页码。例如你可以定义</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>第 3 级和第 4 级条目上的页码将与前导点（如果有）一起隐藏。要仅指定一个级别，仍应使用范围，例如"1-1"将仅排除第一级别的页码。<br>不提供级别范围将省略目录中所有级别的页码。将文档导出为 HTML 或类似格式时，此设置非常有用。这是因为基于 HTML 的格式没有任何页面概念，因此不需要任何页码。</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H 开关)* | <p>此开关指定 `TOC` 条目作为超链接插入。在 Microsoft Word 中查看文档时，这些条目仍将显示为 `TOC` 中的普通文本，但带有超链接，因此可通过在 Microsoft Word 中使用 *Ctrl + 左键单击* 导航到文档中原始条目的位置。当包含此开关时，这些链接也会以其他格式保留。例如，在基于 HTML 的格式（包括 EPUB）和渲染格式（如 PDF 和 XPS）中，这些格式将作为工作链接导出。<br>如果没有设置此开关，所有这些输出中的 `TOC` 都将导出为纯文本，并且不会演示此行为。如果在 MS Word 中打开文档，则条目的文本也将无法通过这种方式单击，但仍可以使用页码导航到原始条目。</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P 开关)* | <p>此开关允许在目录中轻松更改分隔条目标题和页码的内容。要使用的分隔符应在此开关之后指定并包含在语音标记中。<br>与 Office 文档中记录的相反，只能使用 1 个字符，而不是最多 5 个字符。这适用于 MS Word 和 Aspose.Words。<br>不建议使用此开关，因为它不允许对用于分隔目录中的条目和页码的内容进行太多控制。相反，建议编辑适当的 `TOC` 样式（例如 `StyleIdentifier.TOC1`），然后通过访问特定字体成员等来编辑引线样式。有关如何执行此操作的更多详细信息，请参阅本文后面的内容。</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W 开关)* | <p>使用此开关将指定任何具有制表符的条目（例如在行末尾具有制表符的标题）将在填充目录时保留为正确的制表符。这意味着制表符的功能将出现在 `TOC` 中并可用于格式化条目。例如，某些条目可能使用制表位和制表符来均匀地间隔文本。只要相应的 `TOC` 级别定义了等效的制表位，那么生成的 `TOC` 条目将以相似的间距显示。<br><br>在相同的情况下，如果未定义此开关，则制表符将转换为相当于非功能制表符的空白。那么输出将不会按预期出现。</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X 开关)* | <p>与上面的开关类似，此开关指定跨多行的标题（使用换行符而不是单独的段落）将按照生成的目录中的样子保留。例如，跨多行的标题可以使用换行符（Ctrl + Enter 或 `ControlChar.LineBreak`）来分隔不同行的内容。指定此开关后，`TOC` 中的条目将保留这些换行符，如下所示。<br><br>在这种情况下，如果未定义开关，则新行字符将转换为单个空格。</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## 插入 TC 字段

您可以通过调用 [InsertField](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertfield/) 方法并将字段名称指定为"TC"以及所需的任何开关，在 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 的当前位置插入新的 TC 字段。

以下代码示例演示如何使用 **DocumentBuilder** 将 `TC` 字段插入到文档中：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

通常，为 `TOC` 指定特定的文本行，并用 `TC` 字段标记。在 Microsoft Word 中执行此操作的简单方法是突出显示文本并按 *ALT+SHIFT+O*。这将使用所选文本自动创建 `TC` 字段。相同的技术可以通过代码来完成。下面的代码将查找与输入匹配的文本，并在与文本相同的位置插入 `TC` 字段。该代码基于本文中使用的相同技术。

以下代码示例演示如何在文档中的文本处查找并插入 `TC` 字段：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## 修改目录

`TOC` 中条目的格式不使用标记条目的原始样式，而是使用等效的 `TOC` 样式对每个级别进行格式化。例如，`TOC` 中的第一级采用 **总有机碳1** 样式格式化，第二级采用 **总有机碳2** 样式格式化，等等。这意味着要更改 `TOC` 的外观，必须修改这些样式。在 Aspose.Words 中，这些样式由独立于区域设置的 `StyleIdentifier.TOC1` 到 `StyleIdentifier.TOC9` 表示，并且可以使用这些标识符从 [Styles](https://reference.aspose.com/words/zh/net/aspose.words/documentbase/styles/) 集合中检索。

一旦检索到文档的适当样式，就可以修改该样式的格式。对这些样式的任何更改都会自动反映在文档的目录中。

以下代码示例更改第一级 `TOC` 样式中使用的格式化属性：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

值得注意的是，任何标记为包含在 `TOC` 中的段落的直接格式（在段落本身定义，而不是在样式中定义）都将被复制到目录的条目中。例如，如果标题 1 样式用于标记 `TOC` 的内容，并且该样式具有粗体格式，而段落也具有直接应用于其的斜体格式。生成的 `TOC` 条目不会是粗体，因为这是样式格式的一部分，但它会是斜体，因为这是直接在段落上格式化的。

您还可以控制每个条目和页码之间使用的分隔符的格式。默认情况下，这是一条虚线，使用制表符和靠近右边距排列的右制表位扩展到页码。

使用为要修改的特定 `TOC` 级别检索的 [Style](https://reference.aspose.com/words/zh/net/aspose.words/style/) 类，您还可以修改它们在文档中的显示方式。要更改其显示方式，必须首先调用 [ParagraphFormat](https://reference.aspose.com/words/zh/net/aspose.words/style/paragraphformat/) 来检索样式的段落格式。由此可以通过调用 [TabStops](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/tabstops/) 检索制表位并修改相应的制表位。使用相同的技术，标签本身可以一起移动或移除。

以下代码示例展示了如何修改 `TOC` 相关段落中右侧制表位的位置：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## 从文档中删除目录

通过删除在 `TOC` 字段的 `FieldStart` 和 FieldEnd 节点之间找到的所有节点，可以从文档中删除目录。下面的代码演示了这一点。 `TOC` 字段的删除比普通字段更简单，因为我们不跟踪嵌套字段。相反，我们检查 [FieldEnd](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldend/) 节点的类型为 [FieldType.FieldTOC](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldtype/)，这意味着我们遇到了当前 TOC 的末尾。在这种情况下可以使用此技术，而不必担心任何嵌套字段，因为我们可以假设任何正确形成的文档在另一个 `TOC` 字段内不会有完全嵌套的 `TOC` 字段。

首先收集并存储每个`TOC`的[FieldStart](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldstart/)节点。然后枚举指定的 `TOC`，以便访问并存储该字段内的所有节点。然后从文档中删除节点。

以下代码示例演示如何从文档中删除指定的 `TOC`：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## 摘录目录

如果您想从任何 Word 文档中提取目录，可以使用以下代码示例：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
