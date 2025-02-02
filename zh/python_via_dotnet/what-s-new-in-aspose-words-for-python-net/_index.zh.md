---
title: 什么是新的
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: Python via .NET 版 Aspose.Words 的新增功能
linktitle: Python via .NET 版 Aspose.Words 的新增功能
type: docs
description: "Aspose.Words for Python via .NET 每天都在扩展和增强。在此页面上，您可以了解该产品的巨大且最有趣的功能。"
weight: 10
url: /zh/python-net/what-s-new-in-aspose-words-for-python-net/
timestamp: 2024-11-18-12-56-02
---

本页描述了最近版本中引入的最有趣的新 Aspose.Words 功能。

## 通过 .NET 24.9、24.10、24.11 为 Python 提供 Aspose.Words

Aspose.Words 24.9 通过 DocumentBuilder 引入了组形状插入和 StructuredDocumentTag 插入，增强了带有刻度的径向图表渲染，通过 XAdES-EPES 支持改进了数字签名，添加了 Markdown 下划线识别，并提供了对脚注/尾注分隔符的访问。

Aspose.Words 24.10 引入了增强的 ActiveX 控件支持，包括 CommandButton 创建、新的形状可见性控制、对形状进行分组的能力、改进的表格 Markdown 导出、饼图和环形图的图表格式、更好的 Big5 编码处理以及对过时的台湾字体的支持。

Aspose.Words24.11引入了AI支持的文档摘要、增强的呈现选项、改进的文档属性访问和ActiveX控件字幕。

### AI功能 <sup>24.11</sup>

通过添加[Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/)命名空间及其公共成员，集成了对使用**OpenAI**和**Google**生成语言模型的文档摘要的支持。

### 渲染和打印

#### 径向图表上的刻度 <sup>24.9</sup>

已实现径向图表上刻度的渲染。

#### CommandButton ActiveX 控件 <sup>24.10</sup>

通过添加新的公共方法 [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) 和新的公共类 [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/)，引入了创建 CommandButton ActiveX 控件的能力。

#### 控制形状可见性 <sup>24.10</sup>

添加了新的公共属性 [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) 来控制形状的可见性。

#### 饼图和环形图中的变化 <sup>24.10</sup>

添加了几个新的公共属性来格式化饼图和环形图。

#### 控制PDF选择表单字段边框的呈现 <sup>24.11</sup>

通过添加新的公共选项[render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/)，实现了控制PDF选择表单字段边框呈现的新选项。

#### 获取和设置图表数据的格式代码 <sup>24.11</sup>

通过在[ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/)和[BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/)类中实现[format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/)属性，添加了获取和设置图表数据格式代码的功能。

#### 使用箱和标签渲染直方图图表 <sup>24.11</sup>

通过允许指定数量的容器和标签，直方图图表的呈现得到了改进。

### 转换、加载和保存文档

#### 加载 Markdown 文件时的下划线格式 <sup>24.9</sup>

通过添加新的公共属性 [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/)，已纳入在加载 Markdown 文档时识别下划线格式的选项。

#### 保存为 Markdown 时将表格导出为 HTML <sup>24.10</sup>

通过添加新的公共属性 [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) 和枚举 [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/)，实现了将文档保存为 Markdown 格式时将表格导出为 HTML 的选项。

#### 使用更新的逻辑结构导出PDF <sup>24.11</sup>

通过将表标题属性包含为PDF逻辑结构元素标题，已增强了PDF导出。

### 数字签名

#### 使用 XAdES-EPES 签署文档 <sup>24.9</sup>

通过添加新的公共属性 [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) 和新的公共枚举 [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/)，引入了使用 XAdES-EPES 级别 XML-DSig 签名签署文档的功能。

### 其他

* 添加了新的公共方法 [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) 来分组形状。 <sup>24.9</sup>
* 添加了新的公共方法 [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/)，用于将 **StructuredDocumentTags** 插入文档。 <sup>24.9</sup>
* 通过添加一些公共类和属性，提供了对脚注/尾注分隔符的公共访问。 <sup>24.9</sup>
* 通过添加 [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist) 方法，引入了对单个形状进行分组、将形状组合在一起以及直接对形状和组合形状进行分组的功能。<sup>24.10</sup>
* 改进了 TrueType cmap 表的 Big5 编码处理。<sup>24.10</sup>
* 增强了对过时的台湾字体的支持。<sup>24.10</sup>
* 要访问扩展文档属性，已将只读属性添加到[BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/)类。 <sup>24.11</sup>
* 通过向[Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/)属性添加新的公共setter，已启用ActiveX控件的设置标题。 <sup>24.11</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Python via .NET 24.9 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.10 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.11 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/) 的更多信息。

{{% /alert %}}

## Python via .NET 24.5、24.6、24.7、24.8 的 Aspose.Words

Aspose.Words 24.5 扩展了组件选项，改进了渲染功能，并扩展了一些其他选项。

Aspose.Words 24.6 改进了渲染选项，增强了搜索和比较功能，并扩展了其他几个功能。

Aspose.Words 24.7 改变了您使用 ActiveX 的方式，扩展了渲染功能，并支持导出为 Markdown 和 XLSX 格式。

Aspose.Words 24.8 通过对轴标签的精确控制增强了图表自定义功能，扩展了字体管理，改进了文档结构处理，并增加了 HTML/XAML 导出、PDF 功能、文档转换和数字签名的新功能。

### 支持的格式

从 24.7 版开始，支持导出为 PDF/UA-2，以确保残障用户的可访问性。

### 渲染和打印

#### Charts、Shapes 和 DrawingML 的变化 <sup>24.5</sup>

* 已实现 SVG 图形的 DrawingML 效果渲染，扩展了之前仅限于图像的功能。
* 通过添加 [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) 和 [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) 类以及 [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/) 属性，引入了对创建组合图表和调整属性（例如系列组内的间隙宽度、重叠和气泡比例）的支持。
* 通过添加 [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/) 类，实现了操作形状 SoftEdge 效果的功能。
* 通过添加 **AdjustmentCollection** 和 **Adjustment** 公共类和 [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) 财产。

#### Charts、Shapes 和 DrawingML 中的变化 <sup>24.6</sup>

* 图表功能已得到增强。您现在可以创建更多种类的图表，包括 *Treemaps*、*Sunbursts*、*Histograms*、*Pareto* charts、*Box & Whisker* charts、*Waterfalls* 和 *Funnels*。这使您能够以更加多样化和信息丰富的方式可视化数据。
* 阴影格式的颜色控制已得到改进。您可以通过访问阴影颜色来更精确地控制文档的外观。
* 后台渲染的性能提升已得到改进。借助原生平铺技术，您可以显著加快包含小元素的背景渲染速度。
* 添加了形状的逼真渐变。现在，您可以创建具有非线性渐变的 DML 形状，模仿 Microsoft Word 的视觉风格，以获得更精致的外观。

#### 图表数据标签自定义 <sup>24.7</sup>

添加了自定义图表数据标签（如 **Orientation** 和 **Rotation**）的功能。

#### 列表级别的自定义数字样式 <sup>24.7</sup>

添加了公共属性 [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) 的设置器。您现在可以为列表级别定义自定义数字样式。

#### 使用 ActiveX 时的变化 <sup>24.7</sup>

* 现在可以修改 ActiveX 对象的属性，让您可以更好地控制其行为。
* 添加了修改单选按钮 ActiveX 控件的值以启用动态交互的功能。
* 添加了将 ActiveX 复选框切换为“选中”或“未选中”的功能。

#### 控制图表轴刻度标签方向和旋转 <sup>24.8</sup>

已添加对图表轴刻度标签方向和旋转的精确控制，以便更方便地自定义图表 - [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) 类已扩展为新的 [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) 和 [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/) 属性。

#### 用日元符号替换反斜杠 <sup>24.8</sup>

已改进向后兼容的 HTML 和 XAML 导出，用于用日元符号替换反斜杠字符。为此，已将 **replace_backslash_with_yen_sign** 属性添加到 [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) 和 [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/) 类。

#### 导出为 PDF 时使用 SDT 标签作为表单字段名称 <sup>24.8</sup>

通过向 [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 类添加新的 [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) 属性，增强了使用 SDT 标签作为表单字段名称的 PDF 导出功能。

### 转换、加载和保存文档

#### 将链接导出为 Markdown 格式 <sup>24.7</sup>

通过实现 [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/) 属性，添加了控制以 Markdown 格式导出链接的功能。

#### LowCode <sup>24.8</sup>

引入了新的 [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/) 类，旨在提供一组方法，通过一行代码即可转换各种文档类型。

### 搜索和比较

#### 高级比较选项 <sup>24.6</sup>
添加了通过改进的比较功能简化数据分析工作流程的功能。这包括一个新的 [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) 选项和重新设计的高级比较界面。

### 其他

* 通过添加[remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/)方法实现了删除文档中的空白页的功能。 <sup>24.5</sup>
* 通过添加 [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/) 属性，可以在不加载文档的情况下检查 VBA 宏是否存在。 <sup>24.5</sup>
* 现在支持使用 LINQ 报告引擎插入文档时保留源编号。 <sup>24.5</sup>
* 添加了一个新的 [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) 属性 - 这为评论提供了更精确的时间戳，从而提高了组织性和可追溯性。 <sup>24.6</sup>
* LINQ 报告引擎已得到改进。选择性删除了空段落，并为缺失的对象成员定义了自定义消息，从而生成了更清晰、更具信息量的报告。<sup>24.6</sup>
* 现在可以自动检测日期时间格式，以便无缝导出为 XLSX 格式。 <sup>24.7</sup>
* 添加了公共属性 [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/)，可用于验证 VBA 项目是否受保护。<sup>24.7</sup>
* 扩展了字体信息，向 [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) 和 [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/) 类添加了 **embedding_licensing_rights** 属性。<sup>24.8</sup>
* 添加了一种有效清除节头和页脚同时保留水印的方法，以便更准确地处理文档结构。要清除节头和页脚，请使用新的公共方法 [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default) <sup>24.8</sup>
* 已启用使用 [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) 对 XPS 文档进行数字签名的功能 - 为此添加了新属性 [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/)。<sup>24.8</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Python via .NET 24.5 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.6 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.7 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.8 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/) 的更多信息。

{{% /alert %}}

## Python via .NET 24.1、24.2、24.3、24.4 的 Aspose.Words

Aspose.Words 24.1 改进了管理描边颜色的体验，增强了 OLE 对象，并引入了新的书目源公共 API。

Aspose.Words 24.2 扩展了图表 API 和样式管理。 此版本的 Aspose.Words 还引入了在渲染期间指定 SvgSaveOptions 的功能、更灵活的控制加载 Markdown 文件以及使用脚注和尾注的参考文本。

Aspose.Words 24.3 引入了一个新的TIFF读写器和对WMF元文件的二进制光栅操作模拟。Aspose.Words 24.3 还继续扩展图表API。

Aspose.Words 24.4 增加了保存格式、某些渲染选项的功能，以及改进了与数字签名的处理。

### 支持的格式 <sup>24.4</sup>

现代**WebP**图像格式现已在Aspose.Words .NET Framework 4.6.2及更高版本中得到支持。您现在可以读取和插入WebP图像到文档中，并将图像保存为WebP格式。 

请注意，目前WebP仅在.NET Standard和.NET Framework v4.6.2及以上版本中可用。

### 渲染和打印

#### 描边颜色控制<sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) 类已扩展为一组与管理描边颜色相关的新公共属性：[fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) 和 [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/)、[fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) 和 [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/)。

#### DrawingML图表API扩展 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** 不断扩展。

#### 嵌入在@font-face规则中声明的字体 <sup>24.4</sup>

通过添加名为[support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/)的新属性，现在可以将在@font-face规则中声明的字体嵌入到生成的文档的字体定义中。

#### 处理发光与反射格式 <sup>24.4</sup>

实现了处理图形对象的发光与反射格式的功能。

### 加载和保存文档

#### 渲染期间指定SvgSaveOptions <sup>24.2</sup>

使用 [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions)和 [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions)方法添加了在渲染期间指定 [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) 的功能。

#### 加载 Markdown 文件时保留空行 <sup>24.2</sup>

添加了加载 Markdown 文件时保留空行的功能。

#### 新的TIFF读写器 <sup>24.3</sup>

为Aspose.Words开发了一个新的TIFF读写器。Aspose.Words for .NET 24.3增加了对使用JPEG和Old JPEG压缩类型的TIFF图像的读取支持，并显著改善了读取和写入操作的质量。

### 其他

* 通过向新的 **TextBoxControl** 类添加新的 **Text** 属性，引入了修改 `TextBox` OLE 控件文本的功能。 <sup>24.1</sup>
* Bibliography Sources 公共 API 是通过添加新的名称空间 **Aspose.Words.Bibliography** 及其新类和枚举以及通过向 **Document** 类添加新的 **Bibliography** 属性来实现的。 <sup>24.1</sup>
* 用于增强样式管理的新公共属性 [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/)、[unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) 和 [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) 已添加到 [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) 类中。 <sup>24.2</sup>
* 通过 [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) 属性和 [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default) 方法增强了检索脚注和尾注实际引用标记文本的功能。 <sup>24.2</sup>
* 对WMF元文件的二进制光栅操作模拟已实现。 <sup>24.3</sup>
* 通过添加名为[DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/)的新类，并为[OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words/style/priority/)、[DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/)和[OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/)类添加新属性，启用了在SaveOptions中为文档定义签名选项的功能。 <sup>24.4</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Python via .NET 24.1 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.2 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.3 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 24.4 发行说明](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/) 的更多信息。

{{% /alert %}}

## Python via .NET 23.9、23.10、23.11、23.12 的 Aspose.Words

Aspose.Words 23.9 扩展了渲染选项、图元文件渲染模拟和 markdown 保存选项。

Aspose.Words 23.10 改进了渲染，扩展了加载和保存文档的选项，并允许用户以新的方式合并文档。

Aspose.Words 23.11 通过附加选项增强了图表图例上的修订、XLSX 格式和字体的工作。

Aspose.Words 23.12 引入了用于处理 PDF 和 OOXML 文档的新属性和枚举，以及对 WebP 图像的支持。

### 渲染和打印

#### 自定义 DrawingML 图表中的轴标题<sup>23.9</sup>

通过实施新的公共类 [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) 和 [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) 属性，引入了在 DrawingML 图表中自定义轴标题的功能。

####  确定段落内字体的垂直位置<sup>23.9</sup>

现在可以使用新的公共 [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) 属性和新的 [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) 枚举来定义段落内字体的垂直位置。

#### 前景色控制<sup>23.10</sup>

无需修饰符即可检索前景色的功能已通过 **BaseForeColor** 属性添加到 [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) 和 [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) 类中。

#### 扩展图表的功能<sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) 和 [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) 类的功能已通过新方法和属性进行了扩展。

#### 自动调整图像并使其适合形状<sup>23.10</sup>

新的 [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) 方法提供了一种自动调整图像并使图像适合特定形状的简单方法。

#### DrawingML 图表图例条目的默认字体格式<sup>23.11</sup>

通过 [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/) 属性添加了为 DrawingML 图表的图例条目指定默认字体格式的功能。此功能有助于使图表元素的外观更加精简和一致，从而提高整体文档的美观性。

#### 在 Reader <sup>23.12</sup>中打开 PDF 时指定页面布局

通过向 [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) 类引入新的 [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) 属性以及引入新的 [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) 枚举，添加了指定在 PDF 阅读器中打开文档时要使用的页面布局的功能。

### 加载和保存文档

#### 在 Markdown <sup>23.9</sup>中指定文件夹名称来构造图像 URI

[MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) 类已通过包含 [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/) 属性进行了扩展，该属性允许指定用于构造写入 Markdown 文档的图像 URI 的文件夹的名称。

#### 减小 PDF 输出大小<sup>23.10</sup>

已实施各种 PDF 渲染优化，以在使用 [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) 设置时减少输出大小。

#### 加载TXT文档时识别超链接<sup>23.10</sup>

通过添加新的 [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) 属性，实现了加载 TXT 文档时识别超链接的功能。

### 其他

- 已实现图元文件渲染仿真以确定光栅化大小，特别是针对 WMF 笔宽度和 EMF 装饰笔宽度。为了实现此目的，**ScaleWmfFontsToMetafileSize** 属性被替换为 [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) 属性，并添加了 [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) 属性。 <sup>23.9</sup>
- 引入了一种使用 [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions) 方法将一个文档插入当前光标位置处的另一个文档的简化方法。 <sup>23.10</sup>
- 通过引入新的 [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) 属性，添加了访问和修改样式属性的功能。 <sup>23.10</sup>
- [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) 类的方法中添加了通用类型参数。 <sup>23.10</sup>
- 通过新的 [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) 枚举类型和新的 [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) 属性提供了将文档的所有部分写入同一 XLSX 工作表的功能。 <sup>23.11</sup>
* 通过 `OoxmlSaveOptions` 类的新 Zip64Mode 属性和新的 Zip64Mode 枚举实现了一种控制 ZIP64 格式扩展如何用于 OOXML 文档的方法。 <sup>23.12</sup>
* 引入了对 WebP 图像的支持。请注意，此功能仅适用于 .NetStandart 和 .NET6+ 版本。 <sup>23.12</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Python via .NET 23.9 发行说明](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.10 发行说明](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.11 发行说明](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.12 发行说明](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/) 的更多信息。

{{% /alert %}}

## Python via .NET 23.5、23.6、23.7、23.8 的 Aspose.Words

Aspose.Words 23.5 增强了处理图表系列数据的能力和处理 ODT 文档的能力，并改进了页眉/页脚及其文本换行。

Aspose.Words 23.6 扩展了渲染选项，添加了新的导出格式，改进了 LINQ 报告和 LowCode 工具。

Aspose.Words 23.7 增强了报告功能，添加了新的导出格式，并对表和数字签名的使用进行了更改。

Aspose.Words 23.8 扩展了不同格式的功能，改进了渲染，并添加了用于处理字段的新选项。

### 支持的格式

* 从版本 23.6 开始，可以以 XLSX 格式保存文档。现在您可以将文档转换为 Excel 格式。 <sup>23.6</sup>

* 从版本 23.7 开始，可以将文档页面或形状保存为 EPS 格式。 <sup>23.7</sup>

### 新格式特点

- 引入了自动生成 MOBI 文档目录 (TOC) 的功能。 <sup>23.8</sup>
- [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) 构造函数已使用 [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) 进行了扩展。 <sup>23.8</sup>
- EMF 图元文件的垂直文本形状已实现。 <sup>23.8</sup>

### 渲染

#### 获取和修改图表系列数据<sup>23.5</sup>

通过添加以下内容来提供获取和修改图表系列数据的功能：

- 新类：[ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/)、[ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/)、[ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/)、[BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/)、[ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- 新的枚举类型：[ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/)、[ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### 支持高级排版<sup>23.6</sup>

添加了对 WMF、EMF 和 EMF+ 渲染中的高级排版的支持。

#### 页面上的彩色内容<sup>23.6</sup>

添加了公共属性 [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/)，指示页面是否为彩色。

#### 图表数据标签的格式设置<sup>23.6</sup>

已实现为图表数据标签设置填充、描边和标注格式的功能。

### Mail Merge 和报告

#### LINQ Reporting Engine <sup>23.6</sup>的动态 HTML 插入

添加了 LINQ 报告引擎动态 HTML 插入的新方法。

#### Mustache 标签支持<sup>23.7</sup>

[MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) 和 [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/) 方法现在支持 Mustache 标签。

#### 指定渲染图像的大小<sup>23.8</sup>

引入了一个新的公共属性 [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/)，用于指定渲染图像的大小（以像素为单位）。

#### 保留 JSON 字符串值的空格 – LINQ <sup>23.8</sup>

LINQ 报告引擎中添加了一个选项，用于保留 JSON 字符串值的空格。

### LowCode <sup>23.6</sup>

添加了新的 LowCode 方法，旨在将不同类型的文档合并到单个输出文档中。

### 其他

- 已实现对页眉/页脚中文本换行的支持。 <sup>23.5</sup>
- 通过 [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str) 方法添加了从 ODT 文档中删除数字签名的功能。 <sup>23.5</sup>
- 添加了获取拼音指南[Run](https://reference.aspose.com/words/python-net/aspose.words/run/)的基础文本和拼音文本的公共属性[phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/)。 <sup>23.5</sup>
- 通过引入新的 [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) 属性，添加了从数字签名文档中以字节数组形式检索数字签名值的功能。 <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) 类已通过新的公共成员进行了扩展 - [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/)、[Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/)、[Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) 和 [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/)。 <sup>23.7</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Python via .NET 23.5 发行说明](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.6 发行说明](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.7 发行说明](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.8 发行说明](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/) 的更多信息。

{{% /alert %}}

## Python via .NET 23.1、23.2、23.3、23.4 的 Aspose.Words

Aspose.Words 23.1 提高了光栅操作模拟的性能，并增强了文档导出和渲染质量。

Aspose.Words 23.2 引入了以 MOBI 格式保存文档、改进了图表渲染并对文档外观细节进行了显着更改。

Aspose.Words 23.3 通过新属性增强了文档导入和保存，并且还提高了背景和前景色以及径向渐变的工作质量。

Aspose.Words 23.4 改进了一些参数的计算以及表格和周围文本的定位。

### 性能改进

#### <sup>23.1</sup>光栅操作的仿真

使用图元文件模拟光栅操作的性能和质量已得到显着提高。

### 支持的格式

#### 导出到 MOBI <sup>23.2</sup>

从版本 23.2 开始，可以将文档保存为 MOBI 格式（也称为 PRC、AZW – Amazon Kindle 自己的电子书文件格式）。现在您不仅可以加载 MOBI 文档，还可以将文件导出为 MOBI 格式。

### 渲染

#### 使用着色主题颜色<sup>23.1</sup>

已实现使用阴影主题颜色的功能。

#### DML 图表中 R 平方系数的支持<sup>23.1</sup>

添加了渲染时 DML 图表趋势线标签中 R 平方系数的支持。

#### 图表渲染改进<sup>23.2</sup>

自 23.2 以来，图表渲染得到了显着改进。

#### 背景和前景颜色控制<sup>23.3</sup>

[Fill](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/) 类已扩展为一组与背景和前景色相关的新公共属性：[fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) 和 [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/)、[fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) 和 [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/)。

#### 使用 `SkiaSharp` Native Shader <sup>23.3 的</sup>径向渐变

已实现使用 .NET Standard 的 `SkiaSharp` 本机着色器渲染径向渐变。

#### 表格与周围文字之间的距离<sup>23.4</sup>

通过向 [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) 类引入新属性，添加了设置表格与周围文本之间距离的功能：[distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/)、[distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/)、[distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) 和 [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/)。

### 加载和保存文档

#### 为 AZW3 文档生成 `TOC` <sup>23.1</sup>

通过使用 **epub_navigation_map_level** 属性，添加了为 AZW3 文档生成 `TOC`（目录）的功能。

#### 将列表项导出到 Markdown <sup>23.1</sup>

通过将 [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) 属性添加到 [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) 类，提供了一种控制将列表项导出为 Markdown 格式的方法。

#### 文档保存进度通知<sup>23.3</sup>

已实现 MOBI 和 AZW3 格式的保存进度通知。

#### 句子和字距调整<sup>23.3</sup>

通过引入 [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/) 属性，添加了指定是否在文档导入时自动调整句子和单词间距的功能。

### 其他

- 通过 [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) 属性实现<sup>23.2</sup>添加了指定文档字符间距调整的功能
- 通过添加 [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) 属性提供了指示 Aspose.Words 是否在字数统计中包含文本框、脚注和尾注的方法<sup>23.2</sup>
- 文档样式的新选项，允许指定是否根据适当的值自动重新定义样式，已通过 [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) 属性<sup>23.2</sup>引入
- 已添加使用 [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) 属性<sup>23.4</sup>确定 [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) 是否为语音指南运行的功能
- 通过引入 [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) 类并添加 [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) 属性，实现了使用组合图表的系列和轴的简单方法<sup>23.4</sup>
- 与形状相对定位和尺寸相关的新公共属性已添加到 [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) 类<sup>23.4</sup>中
- 根据最新版本的 Microsoft Word <sup>23.4</sup>改进了自动文本颜色分辨率的颜色亮度计算的准确性和性能

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Python via .NET 23.1 发行说明](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.2 发行说明](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.3 发行说明](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Python via .NET 23.4 发行说明](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/) 的更多信息。

{{% /alert %}}

## 也可以看看

{{% alert color="primary" %}}

此页面包含过去 2 年的最新发布消息。有关早期版本的详细信息，请参阅相关部分中的 [发行说明'](https://releases.aspose.com/words/python/release-notes/) 页面。

{{% /alert %}}
