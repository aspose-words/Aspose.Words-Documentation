---
title: 最新消息
second_title: Aspose.Words为Java
articleTitle: Aspose.WordsJava有什么新消息？
linktitle: Aspose.WordsJava有什么新消息？
type: docs
description: "Aspose.WordsforJava每天扩展和增强。 在这个页面上，您可以了解该产品的巨大和最有趣的功能。"
weight: 2
url: /zh/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

本页介绍了最近版本中引入的最有趣的Aspose.Words新特性。

## Aspose.Words为Java 24.9, 24.10

Aspose.Words24.9通过DocumentBuilder引入group shape插入和StructuredDocumentTag插入，使用渐变增强径向图表呈现，使用XAdES-EPES支持改进数字签名，添加Markdown下划线识别，并提供对脚注/尾注分隔符的访问。

Aspose.Words24.10引入了增强的ActiveX控件支持CommandButton创建，新的形状可见性控制，group shapes的能力，改进的表格Markdown导出，Pie和Doughnut图表的图表格式，更好的Big5编码处理，以及对过时的台湾字体的支持。

### 渲染和打印

#### 径向图表上的毕业 <sup>24.9</sup>

已经实现了在径向图表上绘制毕业图。

#### CommandButtonActiveX控件 <sup>24.10</sup>

通过添加新的公共方法[InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl)和新的公共类[Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/)，引入了创建CommandButtonActiveX控件的功能。

#### 控制形状可见性 <sup>24.10</sup>

添加了一个新的公共属性[Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden)来控制形状的可见性。

#### Pie和Doughnut图表的变化 <sup>24.10</sup>

为Pie和Doughnut图表的格式添加了几个新的公共属性。

### 转换、加载和保存文档

#### 加载Markdown文件时的下划线格式 <sup>24.9</sup>

加载Markdown文档时识别下划线格式的选项已通过添加新的公共属性[ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting)合并。

#### 保存到Markdown时，将表导出为HTML <sup>24.10</sup>

通过添加新的公共属性[ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml)和枚举[MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/)，实现了在将文档保存为Markdown格式时将表导出为HTML的选项。

### 数码签署

#### 用XAdES-EPES签署文件 <sup>24.9</sup>

通过添加一个新的公共属性[XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel)和一个新的公共枚举[XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)，可以使用XAdES-EPES级别XML-DSig签名对文档进行签名

### 其他

* 一个新的公共方法[InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...)已添加到group shapes。 <sup>24.9</sup>
* 添加了一个新的公共方法[InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int)以将**StructuredDocumentTags**插入到文档中。 <sup>24.9</sup>
* 通过添加一些公共类和属性，提供了对脚注/尾注分隔符的公共访问。 <sup>24.9</sup>
* 通过添加[InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...)方法，引入了将单个形状（group shapes组合在一起，以及直接将形状和group shapes组合在一起的功能。 <sup>24.10</sup>
* 改进了TrueTypecmap表的Big5编码处理。 <sup>24.10</sup>
* 增强了对过时的台湾字体的支持。 <sup>24.10</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为Java24.9发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

了解更多关于 [Aspose.Words为Java24.10发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words为Java 24.5, 24.6, 24.7, 24.8

Aspose.Words24.5扩展了程序集的选项，改进了呈现功能，并扩展了一些其他选项。

Aspose.Words24.6改进了渲染选项，增强了搜索和比较功能，并扩展了其他几个功能。

Aspose.Words24.7更改您使用ActiveX的方式，扩展渲染功能，以及导出为Markdown和XLSX格式。

Aspose.Words24.8通过对轴标签的精确控制来增强图表自定义，扩展字体管理，改进文档结构处理，并为HTML/XAML导出、PDF功能、文档转换和数字签名添加新功能。

### 支持的格式

从版本24.7开始，支持导出到PDF/UA-2，以确保残疾用户的可访问性。

### 渲染和打印

#### 图表、形状和DrawingML的变化 <sup>24.5</sup>

- 已经实现了SVG图形的DrawingML效果渲染，扩展了以前仅限于图像的功能。
- 通过添加[ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/)和[ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/)类以及[SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups)属性，支持在序列组中创建组合图和调整间隙宽度、重叠和气泡比例等属性。
- 通过添加[SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/)类实现了操作形状SoftEdge效果的功能。
- 通过添加[AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/)和[Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/)公共类以及[Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments)属性，实现了修改形状调整值的功能。

#### 图表、形状和绘图的变化 <sup>24.6</sup>

- 制图能力得到了增强。 您现在可以创建更多种类的图表，包括*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* 图表，*Box & Whisker*图表，*Waterfalls*和*Funnels*。 这使您能够以更加多样化和信息丰富的方式可视化数据。
- 阴影格式的颜色控制已得到改进。 通过访问阴影颜色，您可以更精确地控制文档的外观。
- 改进了后台渲染的性能提升。 借助原生平铺技术，您可以显着加快包含小元素的背景的渲染速度。
- 添加了形状的逼真渐变。 您现在可以创建具有非线性渐变的DML形状，模仿Microsoft Word的视觉样式以获得更抛光的外观。

#### 图表数据标签定制 <sup>24.7</sup>

添加了自定义图表数据标签（如**Orientation**和**Rotation**）的功能。

#### 列表级别的自定义数字样式 <sup>24.7</sup>

已添加公共属性[CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat)的setter。 您现在可以为列表级别定义自定义数字样式。

#### 使用ActiveX的变化 <sup>24.7</sup>

* 现在可以修改ActiveX对象的属性，使您可以更好地控制其行为。
* 添加了修改单选按钮ActiveX控件的值以启用动态交互的功能。
* 添加了将ActiveXcheckbox切换为"已选中"或"未选中"的功能。

#### 控制图表轴刻度标签的方向和旋转 <sup>24.8</sup>

添加了对图表轴刻度标签的方向和旋转的精确控制，以便更方便的图表自定义-[AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/)类已扩展为新的**Orientation**和**Rotation**属性。

#### 用日元符号替换反斜杠 <sup>24.8</sup>

改进了向后兼容的HTML和XAML导出，用于用日元符号替换反斜杠字符。 为此，**ReplaceBackslashWithYenSign**属性已添加到[HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/)和[XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)类中。

#### 导出到PDF时使用SDT标记作为表单字段名称 <sup>24.8</sup>

通过向[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)类添加新的**UseSdtTagAsFormFieldName**属性，增强了支持使用SDT标记作为表单字段名称的PDF导出。

### 转换、加载和保存文档

#### 将链接导出为Markdown格式 <sup>24.7</sup>

通过实现[LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode)属性，添加了控制Markdown格式链接导出的功能。

#### LowCode 24.8 <sup>24.8</sup>

引入了一个新的**LowCode.Converter**类，旨在提供一组用一行代码转换各种文档类型的方法。

### 搜索和比较

#### 高级比较选项 <sup>24.6</sup>

增加了通过改进的比较功能简化数据分析工作流的能力。 这包括一个新的[IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId)选项和一个重新设计的高级比较界面。

### 其他

* 通过添加[RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages)方法实现了从文档中消除空页的功能。 <sup>24.5</sup>
* 通过添加[HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros)属性，可以在不加载文档的情况下检查VBA宏是否存在。 <sup>24.5</sup>
* 现在支持在使用LINQ报告引擎插入文档时保持源编号。 <sup>24.5</sup>
* 添加了一个新的[DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc)属性-这为注释提供了更精确的时间戳，改善了组织和可追溯性。 <sup>24.6</sup>
* LINQ报告引擎已得到改进。 已经对空段落进行了选择性删除，并为缺少的对象成员定义了自定义消息，从而产生了更清洁和更具信息性的报告。 <sup>24.6</sup>
* 现在会自动检测datetime格式，以便无缝导出为XLSX格式。 <sup>24.7</sup>
* 已添加公共属性[IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected)，它允许您验证VBA项目是否受保护。 <sup>24.7</sup>
* 字体信息已扩展，**EmbeddingLicensingRights**属性添加到[FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/)和[PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/)类。 <sup>24.8</sup>
* 添加了一种在保留水印的同时有效清除部分页眉和页脚的方法，以更准确地使用文档结构。 要清除节页眉和页脚，请使用新的公共方法**ClearHeadersFooters**。 <sup>24.8</sup>
* 已启用使用[XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/)对XPS文档进行数字签名–为此添加了一个新属性**DigitalSignatureDetails**。 <sup>24.8</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为Java24.5发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

了解更多关于 [Aspose.Words为Java24.6发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

了解更多关于 [Aspose.Words为Java24.7发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

了解更多关于 [Aspose.Words为Java24.8发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words为Java 24.1, 24.2, 24.3, 24.4

Aspose.Words24.1改进了管理笔划颜色的体验，增强了OLE对象和LINQ报告，并引入了新的参考书目来源publicAPI。

Aspose.Words24.2展开图表API、样式管理和LINQ选项。 此版本的Aspose.Words还引入了在渲染期间指定SvgSaveOptions的功能，更灵活地控制加载Markdown文件，以及处理脚注和尾注的参考文本。

Aspose.Words24.3为WMF元文件引入了一个新的TIFF读取器/写入器和二进制栅格操作的仿真。 Aspose.Words24.3也继续扩展图表API。

Aspose.Words24.4增强了保存格式，一些渲染选项，以及改进了数字签名的工作。

### 支持的格式 <sup>24.4</sup>

Aspose.Words现在支持现代**WebP**图像格式。 您现在可以读取WebP图像并将其插入到文档中，以及以WebP格式保存图像。

### 渲染和打印

#### 笔画颜色控制 <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/)类已扩展为一组与管理笔划颜色相关的新公共属性：[ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor)和[BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor)，[ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade)和[BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade)。

#### DrawingML图表API扩展 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API**继续扩展。

#### 嵌入在@font-face规则中声明的字体 <sup>24.4</sup>

添加了将在@font-face规则中声明的字体嵌入到结果文档的字体定义中的功能，通过添加新的[SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules)属性引入。

#### 使用发光和反射格式 <sup>24.4</sup>

已经实现了使用绘图对象的发光和反射格式的能力。

### 加载和保存文档

#### 在渲染期间指定SvgSaveOptions <sup>24.2</sup>

使用[ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)添加了在渲染期间指定[SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/)的功能。[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions)和[OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/)。[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions)方法。

#### 加载Markdown文件时保留空行 <sup>24.2</sup>

添加了加载Markdown文件时保留空行的功能。

#### 一个新的TIFF读者/作家 <sup>24.3</sup>

一个新的TIFF读者/作家为Aspose.Words为.NET Standard，.NET6及以后已经开发。 Aspose.Wordsfor.NET 24.3增加了对使用JPEG和旧的JPEG压缩类型读取TIFF图像的支持，并且还显着提高了读写操作的质量。

### 其他

* 通过向新的[TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/)类添加新的[Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText)属性，引入了修改`TextBox`OLE控件文本的功能。 24.1 <sup>24.1</sup>
* 参考书目来源公共API是通过添加一些新的[Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) 和[Person](https://reference.aspose.com/words/java/com.aspose.words/person/)类和[SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/)枚举，以及通过向[Document](https://reference.aspose.com/words/java/com.aspose.words/document/)类添加新的[Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography)属性。 <sup>24.1</sup>
* 为LINQ报告引擎提供了使用模板语法限制对类型成员的访问的API。 <sup>24.1</sup>
* 已将用于增强样式管理的新公共属性[Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/)、[UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/)和[SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/)添加到[Style](https://reference.aspose.com/words/net/aspose.words/style/)类中。 <sup>24.2</sup>
* 使用[ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/)属性和[UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/)方法增强了检索脚注和尾注的实际参考标记文本的功能。 <sup>24.2</sup>
* 已启用与`LINQ Reporting Engine`的`Word 2016`图表的兼容性。 <sup>24.2</sup>
* 已经实现了对WMF元文件的二进制栅格操作的仿真。 <sup>24.3</sup>
* 通过添加具有新公共成员的新[DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/)类以及向[OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/)、[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/)和[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/)类添加新属性，启用了为**SaveOptions**内文档定义签名选项的功能。 <sup>24.4</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为Java24.1发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

了解更多关于 [Aspose.Words为Java24.2发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

了解更多关于 [Aspose.Words为Java24.3发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

了解更多关于 [Aspose.Words为Java24.4发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words为Java 23.9, 23.10, 23.11, 23.12

Aspose.Words23.9扩展渲染选项、图元文件渲染仿真和markdown保存选项。

Aspose.Words23.10改进了渲染，扩展了加载和保存文档的选项，并允许用户以新的方式合并文档。

Aspose.Words23.11通过其他选项增强了图表图例上的修订、XLSX格式和字体的工作。

Aspose.Words23.12引入了新的属性和枚举，用于处理PDF文档，支持WebP图像和更新的充气城堡库。

### 渲染和打印

#### 在DrawingML图表中自定义轴标题 <sup>23.9</sup>

通过实现新的公共类[ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/)和[Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle)属性，引入了在DrawingML图表中自定义轴标题的功能。

#### 确定字体在段落中的垂直位置 <sup>23.9</sup>

现在可以使用新的public[BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment)属性和新的[BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/)枚举来定义段落中字体的垂直位置。

#### 前景色控制 <sup>23.10</sup>

通过**BaseForeColor**属性，在[Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/)和[Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/)类中添加了不使用修饰符检索前景色的功能。

#### 扩展图表的功能 <sup>23.10</sup>

使用新的方法和属性扩展了[ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/)和[ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/)类的功能。

#### 自动调整图像并使其适合形状 <sup>23.10</sup>

通过新的[FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape)方法提供了一种在特定形状内自动调整和拟合图像的简单方法。

#### DrawingML图表图例条目的默认字体格式 <sup>23.11</sup>

通过**Font**属性添加了为DrawingML图表的图例条目指定默认字体格式的功能。 此功能有助于为图表元素提供更精简和一致的外观，从而提高整体文档美观度。

#### 在Reader中打开PDF时指定页面布局 <sup>23.12</sup>

通过向[PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)类引入新的[PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout)属性和引入新的[PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/)枚举，添加了在PDF阅读器中打开文档时指定要使用的页面布局的功能。

### 加载和保存文档

#### 在Markdown中指定要构造ImageURIs的文件夹名称 <sup>23.9</sup>

通过包含[ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias)属性扩展了[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)类，该属性允许指定用于构造写入Markdown文档的图像URIs的文件夹的名称。

#### 减小PDF输出大小 <sup>23.10</sup>

已经实现了各种PDF渲染优化，以减少使用[OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput)设置时的输出大小。

#### 加载TXT文档时识别超链接 <sup>23.10</sup>

加载TXT文档时识别超链接的功能已通过添加新的[DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks)属性来实现。

### 其他

- 已经实现了用于确定光栅化大小的图元文件渲染仿真，专门针对WMF笔宽和EMF笔宽。 为此，将**ScaleWmfFontsToMetafileSize**属性替换为[EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage)属性，并添加[EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution)属性。 <sup>23.9</sup>
- 使用[InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions)方法引入了将一个文档插入当前光标位置的另一个文档的简化方法。 <sup>23.10</sup>
- 通过引入新的[Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked)属性，添加了访问和修改样式属性的功能。 <sup>23.10</sup>
- 泛型类型参数已添加到[CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)类的方法中。 <sup>23.10</sup>
- 通过使用[Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria)和[Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria)方法实现了一种控制何时应该接受/拒绝某个修订的方法。 此增强功能允许用户更好地控制修订过程。 <sup>23.11</sup>
- 通过新的[XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/)枚举类型和新的[SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode)属性提供了将文档的所有部分写入同一个XLSX工作表的能力。 <sup>23.11</sup>
- 已经引入了对WebP图像的支持。 请注意，此功能仅适用于。NetStandart和.NET6+版本。 <sup>23.12</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为Java23.9发行说明](/words/java/aspose-words-for-java-23-9-release-notes/).

了解更多关于 [Aspose.Words为Java23.10发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

了解更多关于 [Aspose.Words为Java23.11发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

了解更多关于 [Aspose.Words为Java23.12发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words为Java 23.5, 23.6, 23.7, 23.8

Aspose.Words23.5增强了处理图表系列数据的能力和处理ODT文档的能力，以及改进页眉/页脚及其文本包装。

Aspose.Words23.6扩展渲染选项，添加新的导出格式，改进LINQ报告和LowCode工具。

Aspose.Words23.7增强了报告功能，添加了新的导出格式，并引入了对表和数字签名的处理更改。

Aspose.Words23.8扩展了不同格式的功能，改进了渲染，并添加了用于处理字段的新选项。

### 支持的格式

* 从版本23.6开始，可以以XLSX格式保存文档。 现在您可以将文档转换为Excel格式。 <sup>23.6</sup>

* 从版本23.7开始，可以以EPS格式保存文档页面或形状。 <sup>23.7</sup>

* ###新格式功能

  - 介绍了为MOBI文档自动生成目录(TOC)的功能。 <sup>23.8</sup>
  - [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String)构造函数已用[PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/)展开。 <sup>23.8</sup>
  - 已经实现了EMF元文件的垂直文本整形。 <sup>23.8</sup>

### 渲染图

#### 获取和修改图表系列数据 <sup>23.5</sup>

获取和修改图表系列数据的功能是通过添加:

- 新课程: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- 新枚举类型：[ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/),[ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### 支持高级排版 <sup>23.6</sup>

在WMF，EMF和EMF+渲染中添加了对高级排版的支持。

#### 页面上的彩色内容 <sup>23.6</sup>

已添加公共属性[PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored)，指示页面是否着色。

#### 图表数据标签的格式设置 <sup>23.6</sup>

已经实现了为图表数据标签设置填充、描边和标注格式的功能。

### Mail Merge和报告

#### 动态HTML插入LINQ报告引擎 <sup>23.6</sup>

为LINQ报告引擎添加了动态HTML插入的新方法。

#### Mustache标签支持 <sup>23.7</sup>

[MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy)和[MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String)方法现在支持Mustache标记。

#### LINQ报告引擎模板语法更新 <sup>23.7</sup>

LINQ报告引擎模板语法现在支持`ElementAt`和ElementAtOrDefault扩展方法。

#### 指定渲染图像的大小 <sup>23.8</sup>

引入了一个新的公共属性**ImageSize**，用于指定以像素为单位的渲染图像的大小。

#### 为JSON字符串值保留空白空间-LINQ <sup>23.8</sup>

已向LINQ报告引擎添加了一个选项，用于为JSON字符串值保留空白空间。

### LowCode <sup>23.6</sup>

添加了用于将不同类型的文档合并为单个输出文档的新LowCode方法。

### 其他

- 已经实现了对页眉/页脚中的文本包装的支持。 <sup>23.5</sup>
- 通过[RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream)方法添加了从ODT文档中删除数字签名的功能。 <sup>23.5</sup>
- 添加了获取语音指南[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)的基础和ruby文本的公共属性[PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide)。 <sup>23.5</sup>
- 通过引入新的[SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue)属性，添加了以字节数组形式从数字签名文档中检索数字签名值的功能。 <sup>23.7</sup>
- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/)和[Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/)类已扩展为新的公共成员– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), 和[Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell)。 <sup>23.7</sup>
- 已添加对CITATION和BIBLIOGRAPHY字段的支持。 <sup>23.8</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为Java23.5发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

了解更多关于 [Aspose.Words为Java23.6发行说明](/words/java/aspose-words-for-java-23-6-release-notes/).

了解更多关于 [Aspose.Words为Java23.7发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

了解更多关于 [Aspose.Words为Java23.8发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words为Java 23.1, 23.2, 23.3, 23.4

Aspose.Words23.1提高了栅格操作仿真的性能，并增强了文档导出和呈现质量。

Aspose.Words23.2引入以MOBI格式保存文档，改进图表呈现，并对文档外观细节进行显着更改。

Aspose.Words23.3使用新属性增强了文档的导入和保存，并且还提高了背景和前景颜色以及径向渐变的工作质量。

Aspose.Words23.4改进了一些参数的计算以及表格和周围文本的定位。

### 改善工作表现

#### 模拟栅格操作 <sup>23.1</sup>

使用元文件模拟栅格操作的性能和质量得到了显着提高。

### 支持的格式

#### 导出到MOBI <sup>23.2</sup>

从版本23.2开始，可以以MOBI格式保存文档（也称为PRC, AZW – Amazon Kindle自己的电子书文件格式）。 现在，您不仅可以加载MOBI文档，还可以将文件导出为MOBI格式。

### 渲染图

#### 使用底纹主题颜色 <sup>23.1</sup>

已经实现了使用阴影主题颜色的能力。

#### 在DML图表中支持R平方系数 <sup>23.1</sup>

在添加渲染时,支持DML图表趋势线标签中的R平方系数.

#### 图表渲染改进 <sup>23.2</sup>

自23.2以来，图表渲染得到了显着改善。

#### 背景和前景颜色控制 <sup>23.3</sup>

[Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/)类已扩展为一组与背景和前景颜色相关的新公共属性：**ForeThemeColor**和**BackThemeColor**，**ForeTintAndShade**和**BackTintAndShade**。

#### 带有`SkiaSharp`本机着色器的径向渐变 <sup>23.3</sup>

已经实现了使用.NET Standard的`SkiaSharp`本机着色器渲染径向渐变。

#### 表格与周围文本之间的距离 <sup>23.4</sup>

通过向[Table](https://reference.aspose.com/words/java/com.aspose.words/table/)类引入新属性，增加了设置表格与周围文本之间距离的功能: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), 和[DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)。

### 加载和保存文档

#### 为AZW3文档生成`TOC` <sup>23.1</sup>

通过使用[EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel)属性添加了为AZW3文档生成`TOC`（目录）的功能。

#### 将列表项导出到Markdown <sup>23.1</sup>

通过将[ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode)属性添加到[MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/)类，提供了一种控制列表项导出为Markdown格式的方法。

#### 文档保存进度通知 <sup>23.3</sup>

已实现MOBI和AZW3格式的保存进度通知。

#### 句子和Word间距调整 <sup>23.3</sup>

通过引入**AdjustSentenceAndWordSpacing**属性，可以指定是否在文档导入时自动调整句子和单词间距。

### 其他

- 通过[JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode)属性实现添加了指定文档字符间距调整的功能 <sup>23.2</sup>
- 通过添加[IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat)属性，提供了指示Aspose.Words是否在字数统计中包含文本框、脚注和尾注的方法 <sup>23.2</sup>
- 通过[AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate)属性引入了文档样式的新选项，该选项允许指定是否根据适当的值自动重新定义样式 <sup>23.2</sup>
- 使用**IsPhoneticGuide**属性添加了确定[Run](https://reference.aspose.com/words/java/com.aspose.words/run/)是否为语音指南运行的功能 <sup>23.4</sup>
- 通过引入**ChartAxisCollection**类并添加**Chart.Axes**属性，实现了使用组合图系列和轴的简单方法 <sup>23.4</sup>
- 连接到形状相对定位和大小调整的新公共属性已添加到[Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/)类 <sup>23.4</sup>
- 根据Microsoft Word的最新版本，自动文本颜色分辨率的颜色亮度计算的准确性和性能得到了改进 <sup>23.4</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为Java23.1发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

了解更多关于 [Aspose.Words为Java23.2发行说明](/words/java/aspose-words-for-java-23-2-release-notes/).

了解更多关于 [Aspose.Words为Java23.3发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

了解更多关于 [Aspose.Words为Java23.4发行说明](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## 请参阅

{{% alert color="primary" %}}

本页包含过去2年的最新发布消息。 有关早期版本的详细信息，请参阅 [发行通知书'](https://releases.aspose.com/words/java/release-notes/) 相关部分中的页面。

{{% /alert %}}
