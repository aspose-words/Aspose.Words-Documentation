---
title: 使用PDF/A或PDF/UA
second_title: Aspose.Words对于C++
articleTitle: 使用PDF/A或PDF/UA
linktitle: 使用PDF/A或PDF/UA
description: "转换为PDF/A-1, PDF/A-2, PDF/A-4 和PDF/UA使用C++。 转换为PDF/A文档时存在一些问题，并且 Aspose.Words对于C++ 解决了他们。"
type: docs
weight: 38
url: /zh/cpp/working-with-pdfa-or-pdfua/
timestamp: 2024-01-27-14-07-04
---

PDF/A和PDF/UA格式规定了与文档内容相关的几个要求，这些要求在从Word格式的文档自动转换为PDF期间无法满足。 这些要求应在转换前在Word文档中或转换后在PDF文档中进行验证和更正，以便生成完全符合PDF/A和PDF/UA的文档。

基本要求是PDF/A和PDF/UA文档的结构或字体，我们将在以下部分中考虑这些要求。

{{% alert color="primary" %}}

请注意，PDF/UA-1输出也将符合WCAG2.0和第508节。

{{% /alert %}}

## 文档结构要求

目前的要求是PDF/A-1a, PDF/A-2a, PDF/A-4, 和PDF/UA-1格式。

在转换为各种PDF格式标准时，Aspose.Words的工作方式有一些细微差别。 如果你想得到预期的结果，必须考虑到它们。

{{% alert color="primary" %}}

请注意，PDF/A-4没有逻辑结构要求。 出于这个原因，我们在此"文档结构要求"部分中不考虑PDF/A-4版本。

{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>作者在没有适当验证的情况下使用自动化流程生成结构或语义信息是不可取的。</p>
    <p>ISO 19005-2, 6.7.1</p>
</details>
{{% /alert %}}

下面的小节描述了Aspose.Words在转换为各种PDF格式标准及其解决方案的选项时如何工作的细微差别。

### 结构类型

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF文档是一个块的序列,如标题、段落、表格和其他. 这些块形成一个文档结构–强或弱。

强结构和弱结构对PDF/A都有效。 Microsoft Word文档在设计上有一个弱结构，Aspose.Words分别用弱结构创建PDF，并根据源文档中段落的大纲级别生成标题。

对于具有弱结构的PDF/UA-1文档，还需要标题编号按顺序无间隙。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>块级结构可以遵循两种主要范式之一:</p>
    </ol>
      <li>结构严密。 分组元素根据需要嵌套到尽可能多的级别，以将材料的组织反映到文章、部分、小节等中。 在每个级别上，分组元素的子级应包括标题(H)、用于该级别内容的一个或多个段落(P)，以及可能用于嵌套子节的一个或多个附加分组元素。</li>
      <li>结构薄弱。 该文档相对平坦，可能只有一个或两个级别的分组元素，所有标题，段落和其他BLSEs作为其直接子项。 在这种情况下，材料的组织不会反映在逻辑结构中;但是，它可以通过使用具有特定级别的标题来表达(H1–H6).</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.4.3.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>对于PDF/UA-1文档，规范包含与标题级别相关的添加（展开以查看详细信息）:</summary>
    <p></p>
    <p>如果文档语义需要标题的降序序列，则该序列应以严格的数字顺序进行，并且不得跳过中间的标题级别。 H1H2H3是允许的，而H1H3不是。</p>
    <p>ISO-14289-1, 7.4.2</p>
</details>
{{% /alert %}}

为了确保正确的输出，用户必须确保源文档内容被正确组织，并为段落正确指定大纲级别。 否则，用户应该验证并修复输出PDF文档的结构。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何在Microsoft Word中设置大纲级别或检查并修复输出PDF文档的结构（展开以查看详细信息）。</summary>
    <p></p>
    <p>在Microsoft Word中，默认的"标题X"样式可以用来设置大纲级别:</p>
    <img src="m-w-heading1-2.png" alt="MWHeading1-2" style="width:800px"/>
    <p>此外，可以在"段落"窗口中检查或更改大纲级别:</p>
    <img src="m-w-outline-level.png" alt="MWOutlineLevel" style="width:800px"/>
    <p>在Acrobat中，可以在"标签"窗格中检查或更改文档结构:</p>
    <img src="acrobat-tags-pane.png" alt="AcrobatTagsPane" style="width:800px"/>
</details>
{{% /alert %}}

### 将内容标记为工件

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

目前，Aspose.Words将页眉和页脚，注释分隔符，重复的表头单元格和装饰图像标记为工件。 请注意，此列表可能会在未来更新。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>文档中的图形对象可以分为两类:</p>
    </ol>
      <li>文档的真实内容包括表示文档作者最初引入的材料的对象。</li>
      <li>工件是不属于作者原始内容的图形对象，而是由符合要求的作者在分页、布局或其他严格机械过程中生成的。</li>
    </ol>
    <p></p>
    <p>ISO-32000-1, 14.8.2.2.1</p>
</details>
{{% /alert %}}

如果文档包含应标记为工件的任何其他内容，或者任何人工内容是真实内容，客户应在输出PDF中修复该内容。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何在Microsoft Word中将形状标记为装饰性或在输出PDF文档中将形状标记为工件（展开以查看详细信息）。</summary>
    <p></p>
    <p>例如，形状可以在Microsoft Word中标记为装饰性，因此它们将作为工件导出到PDF:</p>
    <img src="m-w-decorative-shape.png" alt="MWDecorativeShape" style="width:800px"/>
    <p>您可以在输出PDF中将形状标记为工件:</p>
   <img src="acrobat-mark-as-artifact-delete-empty-tag.png" alt="PdfDeleteEmptyTag" style="width:800px"/>
    <p>此外，您还可以将标题中的文本从工件切换到输出PDF中的真实内容:</p>
    <img src="acrobat-switch-text-in-header.png" alt="AcrobatSwitchTextInHeader" style="width:800px"/>
</details>
{{% /alert %}}

### 自然语言规范

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

文本语言在Microsoft Word文档中指定。 Aspose.Words将指定的语言导出到输出PDF，*Lang*属性附加到标记内容序列或Span标记–它由[ExportLanguageToSpanTag](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_exportlanguagetospantag/)属性控制。 通常，当用户通过Microsoft Word输入文本时，没有语言问题。 但是，如果文本是自动生成的，则语言可能不准确。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>文件中所有文本的默认自然语言应由文档目录字典中的Lang条目指定。</p>
    <p>文件中与默认语言不同的所有文本内容都应该通过使用附加到标记内容序列的`Lang`属性或结构元素字典中的Lang条目来指示。..</p>
    <p>ISO-19005-2, 6.7.4</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>此外，对于PDF/UA-1，规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>自然语言应声明......自然语言的变化应声明。</p>
    <p>ISO-14289-1, 7.2</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何确保正确指定语言（展开以查看详细信息）。</summary>
    <p></p>
    <p>用户应确保在源Word文档中正确指定语言:</p>
    <img src="m-w-language.png" alt="MWLanguage" style="width:800px"/>
    <p>或输出PDF文档:</p>
    <img src="acrobat-check-change-language.png" alt="AcrobatCheckChangeLanguage" style="width:800px"/>
</details>
{{% /alert %}}

### 图标题

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word文档允许用户添加图形标题。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>附图的标题应贴上标题标签.</p>
    <p>ISO-14289-1, 7.3</p>
</details>
{{% /alert %}}

目前Aspose.Words无法导出带有Caption标签的字幕，因此必须在输出PDF中标记它们。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何插入标题（展开以查看详细信息）。</summary>
    <p></p>
    <p>在Microsoft Word中，标题可以通过上下文菜单插入:</p>
    <img src="figure-caption-mw.png" alt="figure-caption-mw" style="width:800px"/>
    <p>在Acrobat中，可以通过`Object`属性对话框添加或更改标题:</p>
    <img src="figure-caption-acrobat.png" alt="figure-caption-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

### 替代描述

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Microsoft Word文档允许用户向图像、形状和表格添加替代文本。 Aspose.Words将这样的替代文本导出到输出PDF。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>所有内容不具有自然预定文本类似物的结构元素，例如图像、公式等。，应使用结构元素字典中的Alt条目提供替代文本描述。..</p>
    <p>NOTE替代描述提供文本描述，有助于正确解释不透明的非文本内容。</p>
    <p>ISO-19005-2, 6.7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何确保所有元素都有备用文本（展开以查看详细信息）。</summary>
    <p></p>
    <p>用户应确保所有元素在源Word文档中都有备用文本:</p>
    <img src="m-w-table-alt-text.png" alt="MWTableAltText" style="width:800px"/>
    <p></p>
    <img src="m-w-shape-alt-text.png" alt="MWShapeAltText" style="width:800px"/>
    <p>或输出PDF文档:</p>
    <img src="acrobat-table-alt-text.png" alt="AcrobatTableAltText" style="width:800px"/>
    <p></p>
    <img src="acrobat-shape-alt-text.png" alt="AcrobatShapeAltText" style="width:800px"/>
</details>
{{% /alert %}}

### 超链接的替代描述

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

除了前一点，Microsoft Word文档还允许用户向超链接添加替代文本。 Aspose.Words将这样的替代文本导出到输出PDF。

不幸的是，并非每个应用程序都允许您设置备用描述。 例如，Adobe Acrobat当前不允许为超链接设置此类描述。 但在Microsoft Word中，您可以按如下方式执行此操作:

<img src="alternate-descriptions-hyperlinks-mw.png" alt="alternate-descriptions-hyperlinks-mw" style="width:800px"/>

有时存在一个问题，即无法通过Microsoft WordGUI在内容列表（TOC）中为自动生成的超链接设置alt文本。 Aspose.Words可以更新这些字段并自行生成链接。

按照代码示例使用Aspose.Words文档对象模型(DOM)更新`TOC`字段:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(filename);
auto tocHyperLinks = doc->get_Range()->get_Fields()->
    LINQ_Where([](SharedPtr<Field> f) {return f->get_Type() == FieldType::FieldHyperlink; })->            
    LINQ_Where([](SharedPtr<FieldHyperlink> f) { return f->get_DisplayResult().StartsWith(u"#_Toc"); });

for (const auto& link : tocHyperLinks)
    link->set_ScreenTip(link->get_DisplayResult());

auto opt = MakeObject<PdfSaveOptions>();
opt->set_Compliance(PdfCompliance::PdfUa1);
opt->set_DisplayDocTitle(true);
opt->set_ExportDocumentStructure(true);
opt->get_OutlineOptions()->set_HeadingsOutlineLevels(3);
opt->get_OutlineOptions()->set_CreateMissingOutlineLevels(true);

auto outFile = filename.substr(0, filename.find_last_of('.')) + "_aw.pdf";
doc->Save(outFile, opt);
{{< /highlight >}}

### 表头

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/UA-1 | {{< emoticons/tick >}} |

PDF/UA-1文档中的表必须具有标题–列、行或两者兼而有之。 PDF/A只需要标准表标记，没有额外的限制。 请注意，Aspose.Words会自动生成标准表标记。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>表应该包含标题...表可以包含列标题，行标题或两者兼而有之。</p>
    <p>ISO-14289-1, 7.5</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何设置表头（展开以查看详细信息）。</summary>
    <p></p>
    <p>表头可以设置为源Microsoft Word文档:</p>
    <img src="table-headers-mw.png" alt="table-headers-mw" style="width:800px"/>
    <p>或输出PDF:</p>
    <img src="table-headers-acrobat-header-cell.png" alt="table-headers-acrobat-header-cell" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope1.png" alt="table-headers-acrobat-scope1" style="width:800px"/>
    <p></p>
    <img src="table-headers-acrobat-scope2.png" alt="table-headers-acrobat-scope2" style="width:800px"/>
</details>
{{% /alert %}}

### 替换文本

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>规范告诉我们以下内容:</p>
    <p>所有以非标准方式表示的文本结构元素，例如自定义字符或内联图形，都应使用结构元素字典中的`ActualText`条目提供替换文本。..</p>
    <p>ISO-19005-2, 6.7.7</p>
</details>
{{% /alert %}}

Microsoft Word文档不允许用户设置替换文本。 所以这需要在输出PDF中进行验证和修复:

<img src="acrobat-replacement-text.png" alt="AcrobatReplacementText" style="width:800px"/>

### 缩写和首字母缩写扩展

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>文本内容中的缩写和首字母缩略词的所有实例都应放在带有Span标签的标记内容序列中，该标签的E属性提供了缩写或首字母缩略词的文本扩展。..</p>
<p>ISO-19005-2, 6.7.8</p>
</details>
{{% /alert %}}

Microsoft Word文档不允许用户设置缩写和首字母缩写扩展。 所以这需要在输出PDF中进行验证和修复:

<img src="acrobat-split-add-expansion-text.png" alt="AcrobatSplitAddExpansionText" style="width:800px"/>

## 文件标题

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ------------------------------------------------------------ |
| PDF/A-1a |  |
| PDF/A-2a |  |
| PDF/A-4 |  |
| PDF/UA-1 | {{< emoticons/tick >}}<br />PDF/UA-1中的文档应该有标题。 |

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>规范告诉我们以下内容:</p>
    <p>文档目录字典中的元数据流应包含dc:title条目，其中dc是都柏林核心元数据架构的推荐前缀…</p>
    <p>ISO-14289-1, 7.1</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何设置文档标题（展开以查看详细信息）。</summary>
    <p></p>
    <p>文档标题可以设置为源Microsoft Word文档:</p>
    <img src="document-title-mw.png" alt="document-title-mw" style="width:800px"/>
    <p>或输出PDF:</p>
    <img src="document-title-acrobat.png" alt="document-title-acrobat" style="width:800px"/>
</details>
{{% /alert %}}

## 字体要求

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

在转换为PDF/A-1, PDF/A-2, PDF/A-4 或PDF/UA-1格式使用Aspose.Words。 如果要避免输出文档可能出现的问题，则必须将它们考虑在内。

下面的部分描述了这些细微差别及其解决方案的选项。

### 字体法律要求

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a | {{< emoticons/tick >}} |
| PDF/A-1b | {{< emoticons/tick >}} |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

Aspose.Words不验证使用的字体的法律限制-这取决于用户。 换句话说，用户不应该为使用Aspose.Words的PDF转换提供不适当的字体。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>只能使用合法嵌入到文件中的字体程序，以实现无限的通用渲染。</p>
    <p>ISO-19005-2, 6.2.11.4.1; ISO-14289-1, 7.21.4.1 (两个规格中完全相同的引号）</p>
</details>
{{% /alert %}}

### .诺德夫Glyph

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 | {{< emoticons/tick >}} |

禁止使用`.notdef`字形。 如果文档包含所选字体中不存在的字符，并且也无法通过字体回退机制解析，则将出现`.notdef`字形。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>符合规定的文件不得提及.notdef字形从任何文本显示操作符，无论文本呈现模式，在任何内容流。</p>
    <p>ISO-19005-2, 6.2.11.8; ISO-14289-1, 7.21.8 (两个规格中完全相同的引号）</p>
</details>
{{% /alert %}}

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：如何删除或替换这些字符（展开以查看详细信息）。</summary>
    <p></p>
    <p>用户应删除或替换源Word文档中的这些字符:</p>
    <img src="m-w-notdef-glyph.png" alt="MWNotdefGlyph" style="width:800px"/>
    <p>或使用"编辑PDF"工具输出PDF文档:</p>
    <img src="acrobat-remove-notdef-glyph-edit-pdf-tool.png" alt="AcrobatRemoveNotdefGlyph-EditPdfTool" style="width:800px"/>
</details>
{{% /alert %}}

### 私人用途区(PUA)

| PDFAspose.Words内的标准符合程度 | 要求的存在 |
| -------------------------------------------------- | ----------------------- |
| PDF/A-1a |  |
| PDF/A-1b |  |
| PDF/A-2a | {{< emoticons/tick >}} |
| PDF/A-2b | {{< emoticons/tick >}} |
| PDF/A-4 | {{< emoticons/tick >}} |
| PDF/UA-1 |  |

私人使用区域（PUA）字符主要用于Windows符号字体，如"Symbol"，"Wingdings"，"Webdings"等。 Microsoft Word格式不提供存储字符的实际文本的选项。

{{% alert color="secondary" %}}
<details>
    <summary>规范告诉我们以下内容（展开以查看详细信息）:</summary>
    <p></p>
    <p>仅适用于A级一致性，适用于任何字符。.. 它映射到Unicode私有使用区域(PUA)中的一个或多个代码，即ActualText条目。.. 应存在于该字符或该字符是其一部分的字符序列中。</p>
    <p>ISO-19005-2, 6.2.11.7.3</p>
</details>
{{% /alert %}}

"SegoeUI符号"是一种WindowsUnicode字体，可用作符号字体的替代品。

{{% alert color="secondary" %}}
<details>
    <summary>在此块中，您可以看到示例：用户应该做些什么来解决符号字体的问题（展开以查看详细信息）。</summary>
    <p></p>
    <p>将符号字体替换为源Word文档中的Unicode字体:</p>
    <img src="m-w-insert-symbol.png" alt="MWInsertSymbol" style="width:800px"/>
    <p>或者将ActualText条目添加到输出PDF文档中的有问题的字符:</p>
    <img src="acrobat-span-tag-actual-text.png" alt="AcrobatSpanTagActualText" style="width:800px"/>
</details>
{{% /alert %}}
