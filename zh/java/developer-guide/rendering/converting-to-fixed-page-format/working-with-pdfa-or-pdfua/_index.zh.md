---
title: 与PDF/A或PDF/UA合作
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与PDF/A或PDF/UA合作
linktitle: 与PDF/A或PDF/UA合作
description: "使用PDF/A-1、PDF/A-2、PDF/A-4和PDF/UA转换 Java。 。 。 在转换到PDF/A文档时存在一些问题,以及 Aspose.Words (单位:千美元) Java 解决了他们。"
type: docs
weight: 28
url: /zh/java/working-with-pdfa-or-pdfua/
---

PDF/A和PDF/UA格式规定了与文件内容有关的若干要求,这些要求在从Word格式的文档自动转换为PDF时无法满足. 应在转换前在Word文件中或在转换后在PDF文件中核实和纠正这些要求,以便产生完全符合PDF/A和PDF/UA要求的文件。

基本要求是PDF/A和PDF/UA文件的结构或字体,我们将在以下各节审议。

{{% alert color="primary" %}}

请注意,PDF/UA-1的产出也将是WCAG 2.0和第508节符合要求。

{{% /alert %}}

## 文件结构要求

目前所需经费用于PDF/A-1a、PDF/A-2a、PDF/A-4和PDF/UA-1格式。

有一些细微的 如何 Aspose.Words 转换到各种 PDF 格式标准时有效。 如果你想得到预期的结果,就必须考虑这些结果。

{{% alert color="primary" %}}

注意PDF/A-4没有逻辑结构要求。 为此,我们不在本"文件结构要求"部分考虑PDF/A-4版本.

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>作者在不进行适当核查的情况下使用自动程序生成结构或语义信息是不可取的。</p>
    <p>ISO 19005-2, 6.7.1 导弹</p>
</details>
{{% /alert %}}

以下各小节描述了如何在下列方面的细微差别: Aspose.Words 转换为 PDF 格式标准和解决方案选项时起作用。

### 结构类型

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

PDF文档是标题、段落、表格等块的顺序。 这些块构成一个文件结构--强或弱.

强弱结构对PDF/A都是有效的. Microsoft Word 文档设计结构薄弱, Aspose.Words 分别创建结构薄弱的PDF,并根据源文档段落的大纲级别生成标题.

对于结构薄弱的PDF/UA-1文件,还要求标题数字保持无空白。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>区块级结构可能遵循两个主要范式之一:</p>
    </ol>
      <li>结构严谨. 组合元素筑巢到必要程度,以反映材料组织成文章,章节,小节等. 在每一级别上,分组要素的儿童应包括一个标题(H),一个或多个段落(P),用于该级别的内容,以及可能用于嵌入小节的一个或多个额外分组要素。</li>
      <li>结构薄弱. 该文件相对平坦,也许只有一两个层次的分组要素,所有标题、段落和其他BLSE都是其直接子女。 在这种情况下,材料的组织没有在逻辑结构中反映出来;然而,它可能通过使用带有特定等级(H1-H6)的标题来表示.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5 (中文(简体) ).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>对于PDF/UA-1文件,规格中包含一个与标题级别有关的添加(扩展为详细):</summary>
    <p></p>
    <p>如果文档的语义需要向下排列标题的顺序,则这种顺序应按严格的数字顺序进行,并且不得跳过中间标题级别. H1 H2 H3是允许的,而H1 H3是不允许的.</p>
    <p>ISO-14289-1, 7.4.2 (中文(简体) ).</p>
</details>
{{% /alert %}}

为了确保正确的输出,用户必须确保源文档内容有适当的组织,并正确为段落指定大纲级别. 否则,用户应当核查并固定输出PDF文件的结构.

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何设置大纲级别 。 Microsoft Word 或检查并固定输出 PDF 文件的结构(扩展以查看细节)。</summary>
    <p></p>
    <p>内 Microsoft Word 默认" 标题 X" 样式可用于设置大纲级别:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>此外,可以在"段落"窗口中检查或修改大纲级别:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>在 Acrobat 中,文档结构可以在" Tags" 面板中检查或更改:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### 将内容标为艺术

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

现在 Aspose.Words 标记页头和页脚,注释分隔符,重复的表格页头单元格,以及装饰图像。 请注意,这一清单今后可能会更新。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>文档中的图形对象可以分为两个类别:</p>
    </ol>
      <li>文件的真实内容包括代表文件作者最初介绍的材料的物体。</li>
      <li>艺术(Artiffacts)是图形对象,不属于作者的原始内容,而是由符合的作者在标注,布局或其他严格机械过程的过程中产生.</li>
    </ol>
    <p></p>
    <p>ISO-32000-1,14.8.2.2.1 (中文(简体) ).</p>
</details>
{{% /alert %}}

如果文件包含任何其他应标为文物的内容,或者如果任何文物内容是真实内容,客户应当在输出的PDF中予以固定.

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何将形状标记为装饰 。 Microsoft Word 或将形状标记为输出 PDF 文档中的文物(扩展以查看细节)。</summary>
    <p></p>
    <p>例如,形状可以在 Microsoft Word, 因此,它们将被出口到 PDF 作为一件文物:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>您可以在输出 PDF 中将形状标记为文物:</p>
      <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>另外,您还可以在产品标题中将文本切换到输出 PDF 中的真实内容:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 自然语言规格

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

文本语言在 Microsoft Word 文档。 Aspose.Words 导出指定语言到带有 PDF 的输出 *Lang* 附加在标记内容序列或Span标签上的属性 - 由 [ExportLanguageToSpanTag](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportLanguageToSpanTag) 属性。 通常用户通过 Microsoft Word。 。 。 但是,如果文本是自动生成的,语言可能不准确.

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>文件内所有文本的默认自然语言应该由文档目录词典中的朗条目指定.</p>
    <p>文件内与默认语言不同的所有文字内容应通过使用 a 表示 `Lang` 属性附在标记内容序列上,或结构元素词典中的朗条目.</p>
    <p>ISO-19005-2, 6.7.4 (中文(简体) ).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>此外,关于PDF/UA-1,规格说明如下(可详细了解):</summary>
    <p></p>
    <p>自然语言应宣告... 应宣布自然语言的变化。</p>
    <p>ISO-14289-1,7.2 (中文(简体) ).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何确保语言被正确指定(扩展为查看细节).</summary>
    <p></p>
    <p>用户应确保源 Word 文档中的任何一种语言都正确指定:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>或输出 PDF 文档:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 图说明

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |                           |
|  专题报告/A-2a |                           |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

Microsoft Word 文档允许用户添加图表标题。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>数字所附标题必须加贴说明标签。</p>
    <p>ISO-14289-1,7.3 (中文(简体) ).</p>
</details>
{{% /alert %}}

现 Aspose.Words 无法用 Caption 标记导出标题, 因此必须在输出 PDF 中标出 。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何插入标题( 扩展为查看细节) 。</summary>
    <p></p>
    <p>内 Microsoft Word, 通过上下文菜单插入标题:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>在 Acrobat 中,可以通过 `Object` 属性对话框:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### 备选说明

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

Microsoft Word 文档允许用户在图像、形状和表格中添加替代文本。 Aspose.Words 将这样的替代文本导出到输出 PDF 。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>内容没有自然预设的文字模拟,如图像,公式等的所有结构元素,都应使用结构元素词典中的Alt条目提供替代文本描述.</p>
    <p>说明 替代说明提供了文字说明,有助于正确解释本来不透明的非文字内容。</p>
    <p>ISO-19005-2, 6.7.5 (中文(简体) ).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何确保所有元素都有一个替代文本(扩展以查看细节).</summary>
    <p></p>
    <p>用户应确保所有元素在源 Word 文档中的任何一项中都有替代文本:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>或输出 PDF 文档:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### 超链接的替代描述

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |                           |
|  专题报告/A-2a |                           |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

除了前一点, Microsoft Word 文档还允许用户在超链接中添加替代文本。 Aspose.Words 将这样的替代文本导出到输出 PDF 。

不幸的是,并不是每个应用程序都允许您另立一个描述. 举例来说, Adobe Acrobat 目前无法为超链接设置这样的描述。 不过在 Microsoft Word, 您可通过以下方式做到这一点:

<img src="/words/java/working-with-pdfa-or-pdfua/alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

有时有一个问题,即不可能通过目录(TOC)设置自动生成超链接的备选案文。 Microsoft Word 图形用户界面. Aspose.Words 可自行更新这些字段并生成链接。

遵循代码示例进行更新 `TOC` 使用 Aspose.Words Document Object Model (单位:千美元)DOM:

{{< highlight java >}}
Document doc = new Document(fileName);
ArrayList<FieldHyperlink> tocHyperLinks = new ArrayList<>();

for (Field field : doc.getRange().getFields()) {
    if (field.getType() == FieldType.FIELD_HYPERLINK) {
        FieldHyperlink hyperlink = (FieldHyperlink) field;
        if (hyperlink.getFieldCode().startsWith("#_Toc")) {
            tocHyperLinks.add(hyperlink);
        }
    }
}

for (FieldHyperlink link : tocHyperLinks)
    link.setScreenTip(link.getDisplayResult());

PdfSaveOptions opt = new PdfSaveOptions();
opt.setCompliance(PdfCompliance.PDF_UA_1);
opt.setDisplayDocTitle(true);
opt.setExportDocumentStructure(true);
opt.getOutlineOptions().setHeadingsOutlineLevels(3);
opt.getOutlineOptions().setCreateMissingOutlineLevels(true);

String outFile = fileName.substring(0,fileName.lastIndexOf('.')) + "_aw.pdf";
doc.save(outFile, opt);
{{< /highlight >}}

### 表格头

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |                           |
|  专题报告/A-2a |                           |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

PDF/UA-1文档中的表格必须有标题 – 列,行,或两者兼有. PDF/A只需要标准表标注,没有额外的限制. 请注意: Aspose.Words 自动生成标准表格标记。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>表格应包括标题... 表格可以包含列头,行头或两者.</p>
    <p>ISO-14289-1,7.5 (中文(简体) ).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到示例: 如何设置表头(扩展为查看细节) 。</summary>
    <p></p>
    <p>表格头可以设置来源 Microsoft Word 文档:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>或输出 PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
        <img src="/words/java/working-with-pdfa-or-pdfua/table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 替换文本

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>规格告诉我们如下:</p>
    <p>以非标准方式表示的所有文字结构要素,例如自定义字符或内含图形,应使用 `ActualText` 结构元素词典中的条目...</p>
    <p>ISO-19005-2, 6.7.7 (中文(简体) ).</p>
</details>
{{% /alert %}}

Microsoft Word 文档不允许用户设置替换文本。 因此,这需要在输出的 PDF 中被验证和固定:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 简称和缩略语

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |                           |

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>文字内容中的缩略语和缩略语所有实例都应放在标记内容序列中,并带有Span标签,其E属性提供了缩略语或缩略语的文字扩展.</p>
<p>ISO-19005-2,6.7.8 (中文(简体) ).</p>
</details>
{{% /alert %}}

Microsoft Word 文档不允许用户设置缩写和缩写扩展。 因此这需要在输出 PDF 中进行校验和固定:

<img src="/words/java/working-with-pdfa-or-pdfua/acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## 文件标题

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  ------------------------------------------------------------  |
|  专题报告/A-1a |                                                                |
|  专题报告/A-2a |                                                                |
|  专题报告/A-4 |                                                                |
|  PDF/UA-1 地图 |  {{< emoticons/tick >}}<br/>PDF/UA-1号文件应有一个标题。 |

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>规格告诉我们如下:</p>
    <p>文档目录词典中的元数据流应当包含一个 dc:title 条目,其中dc是都柏林核心元数据计划推荐的前缀..</p>
    <p>ISO-14289-1,7.1 (中文(简体) ).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何设置文档标题( 扩展为查看细节) 。</summary>
    <p></p>
    <p>文档标题可以设置为来源 Microsoft Word 文档:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>或输出 PDF:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## 字体要求

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-1b |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  专题报告/A-2b |   {{< emoticons/tick >}}   |
|  专题报告/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

在转换为PDF/A-1、PDF/A-2、PDF/A-4或PDF/UA-1格式时,也有一些细微差别。 Aspose.Words。 。 。 如果要避免输出文档中可能出现的问题,必须将它们考虑在内。

以下各节叙述这些细微差别和解决办法。

### 字体 法律要求

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |   {{< emoticons/tick >}}   |
|  专题报告/A-1b |   {{< emoticons/tick >}}   |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  专题报告/A-2b |   {{< emoticons/tick >}}   |
|  专题报告/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

Aspose.Words 不验证使用过的字体的法律限制 – 取决于用户。 换句话说,用户不应为PDF转换提供不适当的字体 Aspose.Words。 。 。 。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>只能使用合法嵌入到文件中用于无限,通用渲染的字体程序.</p>
    <p>ISO-19005-2,6.2.11.4.1; ISO-14289-1,7.21.4.1(确切地说,两个规格中的引用相同)</p>
</details>
{{% /alert %}}

### .不设防 Glyph

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |                           |
|  专题报告/A-1b |                           |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  专题报告/A-2b |   {{< emoticons/tick >}}   |
|  专题报告/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |   {{< emoticons/tick >}}   |

使用 `.notdef` glyph 禁止进入。 那个 `.notdef` glyph 如果文档中含有选定字体中不存在且无法通过字体折返机制解决的字符,则会出现。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>符合要求的单证不得提及.notdef glyph 从任何文本中显示运算符,无论文本渲染模式如何,在任何内容流中。</p>
    <p>ISO-19005-2,6.2.11.8; ISO-14289-1,7.21.8(确切地说,两个字的引用相同).</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 如何删除或替换这些字符(扩展为查看细节) 。</summary>
    <p></p>
    <p>用户应在源 Word 文档中移除或替换这些字符:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>或使用"编辑 PDF"工具输出 PDF 文件:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### 私用区域( PUA)

|  PDF 内部标准遵守水平 Aspose.Words |  有无要求 |
|  --------------------------------------------------  |  -----------------------  |
|  专题报告/A-1a |                           |
|  专题报告/A-1b |                           |
|  专题报告/A-2a |   {{< emoticons/tick >}}   |
|  专题报告/A-2b |   {{< emoticons/tick >}}   |
|  专题报告/A-4 |   {{< emoticons/tick >}}   |
|  PDF/UA-1 地图 |                           |

私用区域( PUA) 字符主要用于 Windows 符号字体如"Symbol","Wingdings","Webdings"等. Microsoft Word 格式不提供为字符存储实际文本的选项。

{{% alert color="secondary" %}}
<details>
    <summary>该规格告诉我们以下内容(扩展为详细内容):</summary>
    <p></p>
    <p>级别 只针对任何字符的符合性.在Unicode私有使用区(PUA)中映射到一个代码或代码的,该字符或该字符的一部分的字符序列应存在AultalText条目.。</p>
    <p>ISO-19005-2, 6.2.11.7.3 (中文(简体) ).</p>
</details>
{{% /alert %}}

"Segoe UI符号"是一个 Windows 可用作符号字体替代的 Unicode 字体 。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中,您可以看到实例: 用户应该做什么来用符号字体解决问题(扩展以查看细节).</summary>
    <p></p>
    <p>在源 Word 文档中将符号字体替换为 Unicode 1:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>或为输出 PDF 文档中的问题字符添加一个实际图文集条目:</p>
        <img src="/words/java/working-with-pdfa-or-pdfua/acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
