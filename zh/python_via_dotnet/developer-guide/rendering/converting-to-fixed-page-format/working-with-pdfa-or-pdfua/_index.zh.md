---
title: 使用 PDF/A 或 PDF/UA
second_title: Python 格式的 Aspose.Words
articleTitle: 使用 PDF/A 或 PDF/UA
linktitle: 使用 PDF/A 或 PDF/UA
description: "使用 Python 转换为 PDF/A-1、PDF/A-2、PDF/A-4 和 PDF/UA。转换为 PDF/A 文档时存在一些问题，Aspose.Words for Python 解决了这些问题。"
type: docs
weight: 28
url: /zh/python-net/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A 和 PDF/UA 格式提出了一些与文档内容相关的要求，而这些要求在从 Word 格式的文档自动转换为 PDF 的过程中无法满足。应在转换前的 Word 文档中或转换后的 PDF 文档中验证和更正这些要求，以便生成完全符合 PDF/A 和 PDF/UA 标准的文档。

基本要求是 PDF/A 和 PDF/UA 文档的结构或字体，我们将在以下部分中考虑。

{{% alert color="primary" %}}

请注意，PDF/UA-1 输出也将符合 WCAG 2.0 和第 508 条规定。

{{% /alert %}}

## 文件结构要求

当前要求适用于 PDF/A-1a、PDF/A-2a、PDF/A-4 和 PDF/UA-1 格式。

在转换为各种 PDF 格式标准时，Aspose.Words 的工作方式存在一些细微差别。如果您想获得预期的结果，则必须考虑到它们。

{{% alert color="primary" %}}

请注意，PDF/A-4 没有逻辑结构要求。因此，我们在本"文档结构要求"部分中不考虑 PDF/A-4 版本。

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>不建议作者在没有适当验证的情况下使用自动化流程生成结构或语义信息。</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

以下小节描述了 Aspose.Words 在转换为各种 PDF 格式标准时工作原理的细微差别及其解决方案的选项。

### 结构类型

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

PDF 文档是一系列块，例如标题、段落、表格等。这些块形成了一个文档结构--强或弱。

强结构和弱结构对于 PDF/A 都有效。 Microsoft Word 文档在设计上具有弱结构，Aspose.Words 分别创建具有弱结构的 PDF，并根据源文档中段落的大纲级别生成标题。

对于结构较弱的 PDF/UA-1 文档，还要求标题编号按顺序排列且无间隙。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>块级结构可以遵循两个主要范例之一：</p>
    </ol>
      <li>结构性强。分组元素嵌套到所需的多个级别，以反映将材料组织为文章、章节、小节等的情况。在每一级别，分组元素的子元素应包含一个标题 (H)、该级别内容的一个或多个段落 (P)，以及可能包含一个或多个用于嵌套小节的附加分组元素。</li>
      <li>结构弱。该文档相对扁平，可能只有一层或两层分组元素，所有标题、段落和其他 BLSE 作为它们的直接子级。在这种情况下，材料的组织并没有体现在逻辑结构上；然而，它可以通过使用特定级别的标题（H1-H6）来表达。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1、14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>对于 PDF/UA-1 文档，规范包含与标题级别相关的附加内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>如果文档语义需要标题的降序序列，则此类序列应按严格的数字顺序进行，并且不应跳过中间的标题级别。 H1 H2 H3 是允许的，而 H1 H3 是不允许的。</p>
    <p>ISO-14289-1、7.4.2</p>
</details>
{{% /alert %}}

为了确保正确的输出，用户必须确保正确组织源文档内容并正确指定段落的大纲级别。否则，用户应验证并修复输出 PDF 文档的结构。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何在 Microsoft Word 中设置轮廓级别或检查和修复输出 PDF 文档的结构（展开以查看详细信息）。</summary>
    <p></p>
    <p>在 Microsoft Word 中，默认的"标题 X"样式可用于设置大纲级别：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MW标题1-2" style="width:800px"/>
    <p>此外，可以在"段落"窗口中检查或更改大纲级别：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MW大纲级别" style="width:800px"/>
    <p>在 Acrobat 中，可以在"标签"窗格中检查或更改文档结构：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="Acrobat 标签" style="width:800px"/>
</details>
{{% /alert %}}

### 将内容标记为工件

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

目前，Aspose.Words 将页眉和页脚、注释分隔符、重复的表头单元格和装饰图像标记为工件。请注意，此列表将来可能会更新。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>文档中的图形对象可以分为两类：</p>
    </ol>
      <li>文档的真实内容包括表示文档作者最初介绍的材料的对象。</li>
      <li>工件是图形对象，它们不属于作者原始内容的一部分，而是由符合标准的作者在分页、布局或其他严格机械过程中生成的。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1、14.8.2.2.1</p>
</details>
{{% /alert %}}

如果文档包含应标记为工件的任何其他内容，或者任何工件内容是真实内容，则客户应在输出 PDF 中修复该问题。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何在 Microsoft Word 中将形状标记为装饰性或在输出 PDF 文档中将形状标记为工件（展开以查看详细信息）。</summary>
    <p></p>
    <p>例如，形状可以在 Microsoft Word 中标记为装饰性，因此它们将作为工件导出到 PDF：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MW装饰形状" style="width:800px"/>
    <p>您可以在输出 PDF 中将形状标记为工件：</p>
   <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="Pdf删除空标签" style="width:800px"/>
    <p>此外，您还可以将标题中的文本从工件切换为输出 PDF 中的真实内容：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="Acrobat切换标题中的文本" style="width:800px"/>
</details>
{{% /alert %}}

### 自然语言规范

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

文本语言在 Microsoft Word 文档中指定。 Aspose.Words 将指定的语言导出为输出 PDF，并将 *Lang* 属性附加到标记内容序列或 Span 标记 - 它由 [export_language_to_span_tag](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_language_to_span_tag/) 属性控制。通常，用户通过 Microsoft Word 输入文本时不存在语言问题。但如果文本是自动生成的，则语言可能不准确。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>文件中所有文本的默认自然语言应由文档目录词典中的 Lang 条目指定。</p>
    <p>文件中与默认语言不同的所有文本内容应通过使用附加到标记内容序列的 `Lang` 属性或通过结构元素字典中的 Lang 条目来指示...</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>此外，对于 PDF/UA-1，规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>应声明自然语言……应声明自然语言的变化。</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何确保正确指定语言（展开以查看详细信息）。</summary>
    <p></p>
    <p>用户应确保在源 Word 文档中正确指定语言：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-language.png" alt="MW语言" style="width:800px"/>
    <p>或者输出 PDF 文档：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="Acrobat检查更改语言" style="width:800px"/>
</details>
{{% /alert %}}

### 替代描述

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Microsoft Word 文档允许用户向图像、形状和表格添加替代文本。 Aspose.Words 将此类替代文本导出到输出 PDF。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>所有内容不具有自然预定文本类似物的结构元素（例如图像、公式等）应使用结构元素字典中的 Alt 条目提供替代文本描述...</p>
    <p>注：替代描述提供文本描述，有助于正确解释其他不透明的非文本内容。</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何确保所有元素都有替代文本（展开以查看详细信息）。</summary>
    <p></p>
    <p>用户应确保所有元素在源 Word 文档中都有替代文本：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>或者输出 PDF 文档：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="Acrobat表格替代文本" style="width:800px"/>
    <p></p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="Acrobat形状替代文本" style="width:800px"/>
</details>
{{% /alert %}}

### 替换文本

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>该规范告诉我们以下内容：</p>
    <p>所有以非标准方式表示的文本结构元素（例如自定义字符或内联图形）应使用结构元素字典中的 `ActualText` 条目提供替换文本...</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word文档不允许用户设置替换文本。因此，这需要在输出 PDF 中进行验证和修复：

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="Acrobat 替换文本" style="width:800px"/>

### 缩写词和首字母缩略词扩展

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>文本内容中缩写词和首字母缩略词的所有实例都应放置在带有 Span 标记的标记内容序列中，该标记的 E 属性提供缩写词或首字母缩略词的文本扩展...</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word文档不允许用户设置缩写词和首字母缩略词扩展名。因此，这需要在输出 PDF 中进行验证和修复：

<img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplit添加扩展文本" style="width:800px"/>

## 字体要求

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

使用 Aspose.Words 转换为 PDF/A-1、PDF/A-2、PDF/A-4 或 PDF/UA-1 格式时，使用字体还存在许多细微差别。如果您想避免输出文档可能出现问题，则必须考虑它们。

以下各节描述了其解决方案的细微差别和选项。

### 字体法律要求

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |   {{< emoticons/tick >}}   |
|  PDF/A-1b |   {{< emoticons/tick >}}   |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

Aspose.Words 不验证所使用字体的法律限制--这取决于用户。换句话说，用户不应为使用 Aspose.Words 的 PDF 转换提供不合适的字体。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>只能使用可合法嵌入文件以进行无限通用渲染的字体程序。</p>
    <p>ISO-19005-2、6.2.11.4.1； ISO-14289-1, 7.21.4.1（两个规范中的报价完全相同）</p>
</details>
{{% /alert %}}

### .notdef Glyph

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |   {{< emoticons/tick >}}   |

禁止使用 `.notdef` glyph。如果文档包含所选字体中不存在且也无法通过字体后备机制解析的字符，则会显示 `.notdef` glyph。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>合格文档不得包含任何内容流中显示运算符的任何文本对 .notdef glyph 的引用，无论文本呈现模式如何。</p>
    <p>ISO-19005-2、6.2.11.8； ISO-14289-1, 7.21.8（两个规范中的报价完全相同）</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何删除或替换这些字符（展开以查看详细信息）。</summary>
    <p></p>
    <p>用户应删除或替换源 Word 文档中的这些字符：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>或者使用"编辑 PDF"工具输出 PDF 文档：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### 私人使用区 (PUA)

|  Aspose.Words 中的 PDF 标准合规级别 |  存在要求 |
|  --------------------------------------------------  |  -----------------------  |
|  PDF/A-1a |                           |
|  PDF/A-1b |                           |
|  PDF/A-2a |   {{< emoticons/tick >}}   |
|  PDF/A-2b |   {{< emoticons/tick >}}   |
|  PDF/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 |                           |

专用区域 (PUA) 字符主要出现在 Windows 符号字体中，例如"Symbol"、"Wingdings"、"Webdings"等。 Microsoft Word 格式不提供存储字符实际文本的选项。

{{% alert color="secondary" %}}
<details>
    <summary>该规范告诉我们以下内容（展开以查看详细信息）：</summary>
    <p></p>
    <p>仅对于 A 级一致性，对于映射到 Unicode 专用区域 (PUA) 中的一个或多个代码的任何字符...，应为该字符或包含此类字符的字符序列提供 ActualText 条目...一个角色是一个部分。</p>
    <p>ISO-19005-2、6.2.11.7.3</p>
</details>
{{% /alert %}}

"Segoe UI Symbol"是一种 Windows Unicode 字体，可用作符号字体的替代品。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：用户应该如何解决符号字体的问题（展开以查看详细信息）。</summary>
    <p></p>
    <p>将源 Word 文档中的符号字体替换为 Unicode 字体：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MW插入符号" style="width:800px"/>
    <p>或者向输出 PDF 文档中的有问题的字符添加 ActualText 条目：</p>
    <img src="/words/python-net/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTag 实际文本" style="width:800px"/>
</details>
{{% /alert %}}
