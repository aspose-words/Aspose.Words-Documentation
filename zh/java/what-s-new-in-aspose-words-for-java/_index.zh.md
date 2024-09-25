---
title: 或
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: "有什么新鲜的 Aspose.Words (单位:千美元) Java"
linktitle: "有什么新鲜的 Aspose.Words (单位:千美元) Java"
type: docs
description: "Aspose.Words (单位:千美元) Java 每日扩大和增强。 在这个页面上,你可以了解产品的巨大和最有趣的特征."
weight: 2
url: /zh/java/what-s-new-in-aspose-words-for-java/
---

此页面描述最有趣的新 Aspose.Words 近期发布时引入的特征。

## Aspose.Words for Java 24.9

Aspose.Words 24.9 通过 DocumentBuilder 引入了组形状插入和 StructuredDocumentTag 插入，增强了带有刻度的径向图表渲染，通过 XAdES-EPES 支持改进了数字签名，添加了 Markdown 下划线识别，并提供了对脚注/尾注分隔符的访问。

### 渲染和打印

#### 径向图表上的刻度

已实现径向图表上刻度的渲染。

### 转换、加载和保存文档

#### 加载 Markdown 文件时的下划线格式

通过添加新的公共属性 [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting)，已纳入在加载 Markdown 文档时识别下划线格式的选项。

### 数字签名

#### 使用 XAdES-EPES 签署文档

通过添加新的公共属性 [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) 和新的公共枚举 [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)，引入了使用 XAdES-EPES 级别 XML-DSig 签名签署文档的功能。

### 其他

* 添加了新的公共方法 [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) 来分组形状。
* 添加了新的公共方法 [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int)，用于将 **StructuredDocumentTags** 插入文档。
* 通过添加一些公共类和属性，提供了对脚注/尾注分隔符的公共访问。

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Java 24.9 发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/) 的更多信息。

{{% /alert %}}

## Aspose.Words for Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 扩展了组件选项，改进了渲染功能，并扩展了一些其他选项。

Aspose.Words 24.6 改进了渲染选项，增强了搜索和比较功能，并扩展了其他几个功能。

Aspose.Words 24.7 改变了您使用 ActiveX 的方式，扩展了渲染功能，并支持导出为 Markdown 和 XLSX 格式。

Aspose.Words 24.8 通过对轴标签的精确控制增强了图表自定义功能，扩展了字体管理，改进了文档结构处理，并增加了 HTML/XAML 导出、PDF 功能、文档转换和数字签名的新功能。

### 支持的格式

从 24.7 版开始，支持导出为 PDF/UA-2，以确保残障用户的可访问性。

### 渲染和打印

#### Charts、Shapes 和 DrawingML 中的变化 <sup>24.5</sup>

- 已实现 SVG 图形的 DrawingML 效果渲染，扩展了以前仅限于图像的功能。
- 通过添加 [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) 和 [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) 类和 [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups) 属性，引入了对创建组合图表和调整系列组内间隙宽度、重叠和气泡比例等属性的支持。
- 通过添加 [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/) 类，实现了操纵形状的 SoftEdge 效果的功能。
- 通过添加 [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) 和 [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) 公共类和 [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments) 属性，实现了修改形状调整值的功能。

#### Charts、Shapes 和 DrawingML 中的变化 <sup>24.6</sup>

* 图表功能已得到增强。您现在可以创建更多种类的图表，包括 *Treemaps*、*Sunbursts*、*Histograms*、*Pareto* charts、*Box & Whisker* charts、*Waterfalls* 和 *Funnels*。这使您能够以更加多样化和信息丰富的方式可视化数据。
* 阴影格式的颜色控制已得到改进。您可以通过访问阴影颜色来更精确地控制文档的外观。
* 后台渲染的性能提升已得到改进。借助原生平铺技术，您可以显著加快包含小元素的背景渲染速度。
* 添加了形状的逼真渐变。现在，您可以创建具有非线性渐变的 DML 形状，模仿 Microsoft Word 的视觉风格，以获得更精致的外观。

#### 图表数据标签自定义 <sup>24.7</sup>

添加了自定义图表数据标签（如 **Orientation** 和 **Rotation**）的功能。

#### 列表级别的自定义数字样式 <sup>24.7</sup>

添加了公共属性 [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) 的设置器。您现在可以为列表级别定义自定义数字样式。

#### 使用 ActiveX 时的变化 <sup>24.7</sup>

* 现在可以修改 ActiveX 对象的属性，让您可以更好地控制其行为。
* 添加了修改单选按钮 ActiveX 控件的值以启用动态交互的功能。
* 添加了将 ActiveX 复选框切换为“选中”或“未选中”的功能。

#### 控制图表轴刻度标签方向和旋转 <sup>24.8</sup>

已添加对图表轴刻度标签方向和旋转的精确控制，以便更方便地自定义图表 - [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) 类已扩展为新的 **Orientation** 和 **Rotation** 属性。

#### 用日元符号替换反斜杠 <sup>24.8</sup>

已改进向后兼容的 HTML 和 XAML 导出，用于用日元符号替换反斜杠字符。为此，已将 **ReplaceBackslashWithYenSign** 属性添加到 [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) 和 [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) 类。

#### 导出为 PDF 时使用 SDT 标签作为表单字段名称 <sup>24.8</sup>

通过向 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 类添加新的 **UseSdtTagAsFormFieldName** 属性，增强了使用 SDT 标签作为表单字段名称的 PDF 导出功能。

### 转换、加载和保存文档

#### 将链接导出为 Markdown 格式 <sup>24.7</sup>

通过实现 [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode) 属性，添加了控制以 Markdown 格式导出链接的功能。

#### LowCode <sup>24.8</sup>

引入了新的 **LowCode.Converter** 类，旨在提供一组方法，通过一行代码即可转换各种文档类型。

### 搜索和比较

#### 高级比较选项 <sup>24.6</sup>
添加了通过改进的比较功能简化数据分析工作流程的功能。这包括一个新的 [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) 选项和重新设计的高级比较界面。

### 其他

* 通过添加 [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages) 方法，实现了从文档中删除空白页的功能。 <sup>24.5</sup>
* 通过添加 [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) 属性，无需加载文档即可检查 VBA 宏是否存在。 <sup>24.5</sup>
* 现在支持在使用 LINQ 报告引擎插入文档时保留源编号。 <sup>24.5</sup>
* 添加了一个新的 [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) 属性 - 这为评论提供了更精确的时间戳，从而提高了组织性和可追溯性。 <sup>24.6</sup>
* LINQ 报告引擎已得到改进。选择性删除了空段落，并为缺失的对象成员定义了自定义消息，从而生成了更清晰、更具信息量的报告。<sup>24.6</sup>
* 现在可以自动检测日期时间格式，以便无缝导出为 XLSX 格式。 <sup>24.7</sup>
* 添加了公共属性 [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected)，可用于验证 VBA 项目是否受保护。<sup>24.7</sup>
* 扩展了字体信息，向 [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) 和 [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/) 类添加了 **EmbeddingLicensingRights** 属性。<sup>24.8</sup>
* 添加了一种有效清除节头和页脚同时保留水印的方法，以便更准确地处理文档结构。要清除节头和页脚，请使用新的公共方法 **ClearHeadersFooters**。 <sup>24.8</sup>
* 已启用使用 [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) 对 XPS 文档进行数字签名的功能 - 为此添加了新属性 **DigitalSignatureDetails**。<sup>24.8</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for Java 24.5 发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Java 24.6 发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Java 24.7 发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/) 的更多信息。

了解有关 [Aspose.Words for Java 24.8 发行说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/) 的更多信息。

{{% /alert %}}

## Java 24.1、24.2、24.3、24.4 的 Aspose.Words

Aspose.Words 24.1 改进管理中风颜色方面的经验,加强OLE对象和LINQ报告,并推出新的参考书目来源 API。

Aspose.Words 24.2 扩大的图表 API, 样式管理,以及 LINQ 选项。 这个版本 Aspose.Words 还引入了在渲染时指定 Svg Save 选项的能力, 更灵活的控制加载 Markdown 文档,并使用脚注和尾注的参考文本。

Aspose.Words 24.3 为WMF元文件引入了一个新的TIFF Reader/Writer和模拟二进制光栅操作. Aspose.Words 24.3 还继续扩大图表 API。 

Aspose.Words 24.4 增加了保存格式、某些渲染选项的功能，以及改进了与数字签名的处理。

### 支持的格式 <sup>24.4</sup>

Aspose.Words 现在支持现代 WebP 图像格式。 您现在可以读取 WebP 图像并将其插入到文档中，以及以 WebP 格式保存图像。

### 制作和印刷

#### 划线颜色控件 <sup>24.1 国家</sup>

那个 [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) 类被扩展为一组与管理中风颜色相关的新公共属性: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) 和 [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) 和 [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade)。

#### 绘图ML 图表 API 延长 <sup>24.2 / 24.3 / 24.4</sup>

那个 **DrawingML Charts API** 继续扩大。

#### 嵌入在@font-face规则中声明的字体 <sup>24.4</sup>

通过添加名为[SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules)的新属性，现在可以将在@font-face规则中声明的字体嵌入到生成的文档的字体定义中。

#### 处理发光与反射格式 <sup>24.4</sup>

实现了处理图形对象的发光与反射格式的功能。

### 装入和保存文档

#### 在渲染时指定 Svg 保存选项 <sup>24.2 国家</sup>

具体能力 [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) 使用 [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)。[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) 和 [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/)。[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) 方法。 方法。 

#### 装入时保留空行 Markdown 文件 <sup>24.2 国家</sup>

装入时保留空行的能力 Markdown 文件已被添加。

#### 一个新的TIFF 阅读器/写器 <sup>24.3 联合国</sup>

新的 TIFF 阅读器/撰写器 Aspose.Words (单位:千美元) .NET Standard, .NET 6,后来开发. Aspose.Words (单位:千美元) .NET 24.3 增加了对使用JPEG和Old JPEG压缩类型读取TIFF图像的支持,也大大提高了读写操作的质量.

### 其他人员

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 修改案文的能力 `TextBox` 增加了一个新的操作LE控制。 [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) 属性 [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) 课。 24.1 国家 <sup>24.1 国家</sup>
* 《文献目录》来源 API 通过增加几个新的 [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) 和 [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) 类和 a [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) 列举,以及增加一个新的 [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) 属性 [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) 课。 <sup>24.1 国家</sup>
* 一个 API 为 LINQ 报告引擎提供了使用模板语法限制类型成员的访问。 <sup>24.1 国家</sup>
* 新的公共财产 [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), 和 [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) 用于加强样式管理的内容已添加到 [Style](https://reference.aspose.com/words/net/aspose.words/style/) 课。 <sup>24.2 国家</sup>
* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 检索脚注和尾注实际参考标记文本的功能已随着 [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) 财产和财产 [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) 方法。 <sup>24.2 国家</sup>
* 与 `Word 2016` 图表 `LINQ Reporting Engine` 已启用。 <sup>24.2 国家</sup>
* 对WMF元文件的二进制光栅操作进行了模拟。 <sup>24.3 联合国</sup>
* 通过添加名为[DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/)的新类，并为[OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/)、[DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) 和[OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/)类添加新属性，启用了在**SaveOptions**中为文档定义签名选项的功能。 <sup>24.4</sup>

{{% alert color="primary" %}}

学习更多 [Aspose.Words (单位:千美元) Java 24.1 发布说明](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/)

学习更多 [Aspose.Words (单位:千美元) Java 24.2 发布说明。](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

学习更多 [Aspose.Words (单位:千美元) Java 24.3 发布说明。](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

学习更多 [Aspose.Words (单位:千美元) Java 24.4 发布说明。](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words (单位:千美元) Java 第23.9、23.10、23.11、23.12段

Aspose.Words 23.9 扩展渲染选项、元文件渲染模拟,以及 markdown 保存选项。

Aspose.Words 23.10 改进渲染,扩展文档加载和保存的选项,允许用户以新方式合并文档.

Aspose.Words 23.11 在图表图例上用修改,XLSX格式和字体加强工作,并附加选项.

Aspose.Words 23.12 为PDF文档工作引入了新的属性和点数,支持 WebP 图像 和更新的邦西城堡图书馆。

### 制作和印刷

#### 自定义绘图ML中的轴标题 图表 <sup>第23.9条</sup>

在绘图ML图中自定义轴标题的能力已经通过实施新的公共类而引入 [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) 和 [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) 属性。

#### 确定字体在段落中的垂直位置 <sup>第23.9条</sup>

现在可以使用新公众定义某一段落中字体的垂直位置 [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) 财产和新财产 [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) 计数.

#### 前景颜色控制 <sup>23.10 联合国</sup>

已添加了在没有修改器的情况下检索前景颜色的能力 [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) 和 [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) 通过课程 **BaseForeColor** 属性。

#### 扩展图表的功能 <sup>23.10 联合国</sup>

功能 [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), 和 [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) 课程已随着新方法和特性而扩大。

#### 自动调整图像并将其配置到形状 <sup>23.10 联合国</sup>

通过新的图像提供了一种在某个特定形状内自动调整和装配图像的简单方法。 [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) 方法。

#### 绘图的默认字体格式 货币 图表图例条目 <sup>第23.11条</sup>

为图例中的图例条目指定默认字体格式的能力已经通过 **Font** 属性。 这一特点有利于图表元素的外观更加精简和一致,改善了整体文件美学.

#### 在阅读器中打开 PDF 时指定页面布局 <sup>第23.12条</sup>

通过引入新文件,增加了在PDF阅读器中打开文档时指定的页面布局的能力 [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) 属性 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 课程和引入新的课程 [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) 计数.

### 装入和保存文档

#### 指定用于构建图像 URI 的文件夹名称 Markdown <sup>第23.9条</sup>

那个 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 类别已扩大,包括 [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) 属性,它允许指定用于构建写入图像的 URI 文件夹的名称 Markdown 文档。

#### 减少 PDF 输出大小 <sup>23.10 联合国</sup>

各种 PDF 渲染优化以在使用时缩小输出大小 [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) 设置已经执行。

#### 装入 TXT 文档时识别超链接 <sup>23.10 联合国</sup>

在加载 TXT 文档时识别超链接的功能已经通过添加新的程序实现 。 [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) 属性。

### 其他人员

- 已实施Metafile渲染模拟以确定光栅化大小,特别是用于WMF笔宽和EMF化妆笔宽。 为了实现这一目标, **ScaleWmfFontsToMetafileSize** 属性替换为 [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) 财产和财产 [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) 添加了属性。 <sup>第23.9条</sup>
- 在光标当前位置将一个文档插入另一个文档的简化方法已经采用 [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) 方法。 <sup>23.10 联合国</sup>
- 怎么样? 通过引入新的 [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) 属性。 <sup>23.10 联合国</sup>
- 在方法中增加了一个通用类型参数。 [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) 课。 <sup>23.10 联合国</sup>
- 采用下列方法控制何时应接受/拒绝某项修订或未执行: [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) 和 [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) 方法。 方法。 。 这一改进使用户能够更精细地控制修订进程。 <sup>第23.11条</sup>
- 怎么样? 通过新的程序提供了将文件的所有部分写入同一 XLSX 工作表的能力 [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) 计数类型和新 [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) 属性。 <sup>第23.11条</sup>
- 支助 WebP 图像已被引入 。 请注意,该功能仅供 .Net铁板和 .NET6+版本. <sup>第23.12条</sup>

{{% alert color="primary" %}}

学习更多 [Aspose.Words (单位:千美元) Java 23.9 发行说明](/words/java/aspose-words-for-java-23-9-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.10 发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.11 发行说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.12 发布说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/)。

{{% /alert %}}

## Aspose.Words (单位:千美元) Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 提高与图表系列数据合作的能力和与ODT文档合作的能力,以及改进头/脚及其文本包装。

Aspose.Words 23.6 扩大渲染选项,增加新的出口格式,改进LINQ报告, LowCode 工具。

Aspose.Words 23.7 提高报告能力,增加新的出口格式,并修改表格和数字签名。

Aspose.Words 23.8 扩展不同格式的能力,改进渲染,并增加与字段合作的新选项

### 支持的格式

* 从23.6版本开始,可以保存XLSX格式的文档. 现在可以将文档转换为Excel格式. <sup>23.6 国家</sup>

* 从第23.7版开始,有可能以EPS格式保存一个文档页面或形状. <sup>23.7 (中文(简体) ).</sup>

* 《大会正式记录,第五十八届会议,补编第5号》(A/C.6/61/Rev.1)。 QQ 新格式特性

  - 引入了为MOBI文件自动生成目录的功能。 <sup>23.8 联合国</sup>
  - 那个 [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) 已用 [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/)。 <sup>23.8 联合国</sup>
  - 已实施EMF元文件的纵向文本配置。 <sup>23.8 联合国</sup>

### 渲染

#### 获取和修改 图表序列数据 <sup>第23.5条</sup>

获取和修改图表系列数据的功能是通过添加:

- 新课: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- 新烟囱类型: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### 支持高级打字 <sup>23.6 国家</sup>

增加了对WMF,EMF和EMF+渲染的高级类型学的支持.

#### 页面上的彩色内容 <sup>23.6 国家</sup>

公共财产 [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), 显示页面是否为颜色,已添加。

#### 图表数据标签格式 <sup>23.6 国家</sup>

设置图表数据标签的填充、中键和点名格式的能力已经实施。

### Mail Merge 报告

#### LINQ 报告引擎的动态 HTML 插入 <sup>23.6 国家</sup>

为 LINQ 报告引擎添加了一种新的动态 HTML 插入方式。

#### Mustache 标记支持 <sup>23.7 (中文(简体) ).</sup>

Mustache 标记现在支持在 [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) 和 [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) 方法。 方法。 。

#### LINQ 报告引擎模板语法更新 <sup>23.7 (中文(简体) ).</sup>

LINQ 报告引擎模板语法现在支持 `ElementAt` 和 ElementAtOrDefault 扩展方法。

#### 指定图像的大小 <sup>23.8 联合国</sup>

新的公共财产 **ImageSize** 用于指定像素中渲染图像的大小。

#### 保留 JSON 字符串值的空白 – LINQ <sup>23.8 联合国</sup>

在 LINQ 报告引擎中添加了一个选项,以保存 JSON 字符串值的空白空间.

### LowCode <sup>23.6 国家</sup>

新设 LowCode 添加了将不同类型文件合并为单一产出文件的方法。

### 其他人员

- 支持在页眉/页脚中进行文字包装。 <sup>第23.5条</sup>
- 怎么样? 从ODT文档中删除数字签名的能力已经通过 [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) 方法。 <sup>第23.5条</sup>
- 怎么样? 公共财产 [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) 以获取语音指南的基础文本和红宝石文本 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 已添加。 <sup>第23.5条</sup>
- 怎么样? 通过引入一个新的字节数组,增加了从数字签名文件检索数字签名值的能力。 [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) 属性。 <sup>23.7 (中文(简体) ).</sup>
- 那个 [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) 和 [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) 新的公共成员已经扩大了课程范围。 [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), 和 [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell)。 。 。 。 <sup>23.7 (中文(简体) ).</sup>
- 增加了对计算机应用和生物物理领域的支持。 <sup>23.8 联合国</sup>

{{% alert color="primary" %}}

学习更多 [Aspose.Words (单位:千美元) Java 23.5 发布说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.6 发布说明](/words/java/aspose-words-for-java-23-6-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.7 发布说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.8 发布说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/)。

{{% /alert %}}

## Aspose.Words (单位:千美元) Java 23.1、23.2、23.3、23.4

Aspose.Words 23.1 改进光栅操作模拟的性能,提高文件出口和渲染质量。

Aspose.Words 23.2 采用MOBI格式保存文档,改进图表渲染,并对文档的外观细节作出显著修改。

Aspose.Words 23.3 以新的属性增强文件的导入和保存,并用背景和前景颜色及射线梯度提高工作质量。

Aspose.Words 23.4 改进了一些参数的计算以及表格和周围文本的定位。

### 业绩改进

#### 模拟Raster操作 <sup>23.1 (中文(简体) ).</sup>

用元文件模拟光栅作业的性能和质量已大为提高。

### 支持的格式

#### 导出为 MOBI <sup>23.2 联合国</sup>

从23.2版本开始,可以保存MOBI格式的文档(也叫PRC,AZW - Amazon Kindle自己的电子书文件格式). 现在您不仅可以加载MOBI文档,还可以将您的文件导出为MOBI格式.

### 渲染

#### 用阴影主题颜色工作 <sup>23.1 (中文(简体) ).</sup>

已实施使用阴影主题颜色的工作能力。

#### 在 DML 图表中支持 R- 平方系数 <sup>23.1 (中文(简体) ).</sup>

在渲染时支持 DML 图表趋势线标签中的 R 平方系数 。

#### 图表渲染改进 <sup>23.2 联合国</sup>

自23.2年起,图的渲染有了很大的改进.

#### 背景和前景颜色控制 <sup>23.3 联合国</sup>

那个 [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) 类被扩展为一组与背景和前景颜色相关的新公共属性: **ForeThemeColor** 和 **BackThemeColor**, **ForeTintAndShade** 和 **BackTintAndShade**。

#### 带有 `SkiaSharp` 原始阴影 <sup>23.3 联合国</sup>

带光度梯度 `SkiaSharp` 本地阴影 .NET Standard 已经执行。

#### 表格和周边文本之间的距离 <sup>23.4 国家</sup>

通过在表格中引入新的属性,增加了设定表格和周围文本之间距离的能力。 [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) 类: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), 和 [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom)。 

### 装入和保存文档

#### 生成 `TOC` AZW3 文档 <sup>23.1 (中文(简体) ).</sup>

生成能力 `TOC` AZW3文件(目录)通过使用 [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) 属性。

#### 导出列表项目到 Markdown <sup>23.1 (中文(简体) ).</sup>

控制清单物项出口至 Markdown 格式已经通过添加 [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) 属性 [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) 课。

#### 文档保存进度通知 <sup>23.3 联合国</sup>

MOBI和AZW3格式的保存进度通知已经执行。

#### 句子和单词间距调整 <sup>23.3 联合国</sup>

通过引入 **AdjustSentenceAndWordSpacing** 属性。

### 其他人员

- 怎么样? 通过下列方式增加了指定文档字符间隔调整的能力: [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) 财产执行 <sup>23.2 联合国</sup>
- 如何指导 Aspose.Words 在字数统计中是否添加了文本框、脚注和尾注。 [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) 属性 <sup>23.2 联合国</sup>
- 文档样式的新选项,允许指定样式是否根据适当的值自动重新定义,已经通过 [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) 属性 <sup>23.2 联合国</sup>
- 怎么样? 确定是否 [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) 已使用 **IsPhoneticGuide** 属性 <sup>23.4 国家</sup>
- 通过采用组合图系列和组合图轴,采用了一种简单的方法。 **ChartAxisCollection** 分类和添加 **Chart.Axes** 属性 <sup>23.4 国家</sup>
- 增加了与形状相对定位和大小有关的新的公共属性。 [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) 类 <sup>23.4 国家</sup>
- 根据最新版本改进了自动文本色分辨率的颜色亮度计算准确性和性能 Microsoft Word <sup>23.4 国家</sup>

{{% alert color="primary" %}}

学习更多 [Aspose.Words (单位:千美元) Java 23.1 发布说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.2 发行说明](/words/java/aspose-words-for-java-23-2-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.3 发布说明](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/)。

学习更多 [Aspose.Words (单位:千美元) Java 23.4 发行说明](/words/java/aspose-words-for-java-23-4-release-notes/)。

{{% /alert %}}

## 另见

{{% alert color="primary" %}}

本页面收录了过去两年最新发布的新闻. 有关先前释放的详情,请参见: [发布注释 '](https://releases.aspose.com/words/java/release-notes/) 有关章节中各页。

{{% /alert %}}
