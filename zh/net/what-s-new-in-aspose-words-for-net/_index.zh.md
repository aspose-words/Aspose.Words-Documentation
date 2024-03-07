---
title: 什么是新的
second_title: .NET 格式的 Aspose.Words
articleTitle: .NET 版 Aspose.Words 的新增功能
linktitle: .NET 版 Aspose.Words 的新增功能
type: docs
description: "Aspose.Words for .NET 每天都在扩展和增强。在此页面上，您可以了解该产品的巨大且最有趣的功能。"
weight: 10
url: /zh/net/what-s-new-in-aspose-words-for-net/
---

本页描述了最近版本中引入的最有趣的新 Aspose.Words 功能。

## .NET 24.1、24.2 的 Aspose.Words

Aspose.Words 24.1 改进了管理笔划颜色的体验，增强了 OLE 对象和 LINQ 报告，并引入了新的书目源公共 API。

Aspose.Words 24.2 扩展了 Charts API、样式管理和 LINQ 选项。 此版本的 Aspose.Words 还引入了在渲染期间指定 SvgSaveOptions 的功能、更灵活的控制加载 Markdown 文件以及使用脚注和尾注的参考文本。

### 渲染和打印

#### 描边颜色控制 <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/zh/net/aspose.words.drawing/stroke/) 类已扩展为一组与管理描边颜色相关的新公共属性：[ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) 和 [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/)、[ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) 和 [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/)。

#### DrawingML图表API扩展 <sup>24.2</sup>

**DrawingML Charts API** 不断扩展。

### 加载和保存文档

#### 渲染期间指定SvgSaveOptions <sup>24.2</sup>

使用 [ShapeRenderer](https://reference.aspose.com/words/zh/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/zh/net/aspose.words.rendering/noderendererbase/save/) 和 [OfficeMathRenderer](https://reference.aspose.com/words/zh/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/zh/net/aspose.words.rendering/noderendererbase/save/) 方法添加了在渲染期间指定 [SvgSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/svgsaveoptions/) 的功能。

#### 加载 Markdown 文件时保留空行 <sup>24.2</sup>

添加了加载 Markdown 文件时保留空行的功能。

### 其他

* 通过向新的 [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) 类添加新的 [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) 属性，引入了修改 `TextBox` OLE 控件文本的功能。 <sup>24.1</sup>
* Bibliography Sources 公共 API 是通过添加新的名称空间 [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) 及其新类和枚举以及通过向 [Document](https://reference.aspose.com/words/zh/net/aspose.words/document/) 类添加新的 [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) 属性来实现的。 <sup>24.1</sup>
* 提供了一个 API，用于使用 LINQ 报告引擎的模板语法来限制对类型成员的访问。 <sup>24.1</sup>
* 用于增强样式管理的新公共属性 [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/)、[UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) 和 [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) 已添加到 [Style](https://reference.aspose.com/words/zh/net/aspose.words/style/) 类中。 <sup>24.2</sup>
- 通过 [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) 属性和 [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) 方法增强了检索脚注和尾注实际引用标记文本的功能。 <sup>24.2</sup>
- 已启用 `LINQ` 报告引擎与 `Word 2016` 图表的兼容性。 <sup>24.2</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for .NET 24.1 发行说明](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 24.2 发行说明](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/) 的更多信息。

{{% /alert %}}

## .NET 23.9、23.10、23.11、23.12 的 Aspose.Words

Aspose.Words 23.9 扩展了渲染选项、图元文件渲染模拟和 markdown 保存选项。

Aspose.Words 23.10 改进了渲染，扩展了加载和保存文档的选项，并允许用户以新的方式合并文档。

Aspose.Words 23.11 通过附加选项增强了图表图例上的修订、XLSX 格式和字体的工作。

Aspose.Words 23.12 引入了用于处理 PDF 和 OOXML 文档的新属性和枚举，以及对 WebP 图像的支持。

### 渲染和打印

#### 自定义 DrawingML 图表中的轴标题<sup>23.9</sup>

通过实施新的公共类 [ChartAxisTitle](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartaxistitle/) 和 [Title](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartaxis/title/) 属性，引入了在 DrawingML 图表中自定义轴标题的功能。

#### 确定段落内字体的垂直位置<sup>23.9</sup>

现在可以使用新的公共 [BaselineAlignment](https://reference.aspose.com/words/zh/net/aspose.words/paragraphformat/baselinealignment/) 属性和新的 [BaselineAlignment](https://reference.aspose.com/words/zh/net/aspose.words/baselinealignment/) 枚举来定义段落内字体的垂直位置。

#### 前景色控制<sup>23.10</sup>

无需修饰符即可检索前景色的功能已通过 **BaseForeColor** 属性添加到 [Fill](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/) 和 [Stroke](https://reference.aspose.com/words/zh/net/aspose.words.drawing/stroke/) 类中。

#### 扩展图表的功能<sup>23.10</sup>

[ChartDataPointCollection](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartseries/) 和 [ChartFormat](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartformat/) 类的功能已通过新方法和属性进行了扩展。

#### 自动调整图像并使其适合形状<sup>23.10</sup>

新的 [FitImageToShape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/imagedata/fitimagetoshape/) 方法提供了一种自动调整图像并使图像适合特定形状的简单方法。

#### DrawingML 图表图例条目的默认字体格式<sup>23.11</sup>

通过 [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/) 属性添加了为 DrawingML 图表的图例条目指定默认字体格式的功能。此功能有助于使图表元素的外观更加精简和一致，从而提高整体文档的美观性。

#### 在 Reader <sup>23.12</sup>中打开 PDF 时指定页面布局

通过向 [PdfSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfsaveoptions/) 类引入新的 [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) 属性以及引入新的 [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) 枚举，添加了指定在 PDF 阅读器中打开文档时要使用的页面布局的功能。

### 加载和保存文档

#### 在 Markdown <sup>23.9</sup>中指定文件夹名称来构造图像 URI

[MarkdownSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/) 类已通过包含 [ImagesFolderAlias](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/) 属性进行了扩展，该属性允许指定用于构造写入 Markdown 文档的图像 URI 的文件夹的名称。

#### 减小 PDF 输出大小<sup>23.10</sup>

已实施各种 PDF 渲染优化，以在使用 [OptimizeOutput](https://reference.aspose.com/words/zh/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) 设置时减少输出大小。

#### 加载TXT文档时识别超链接<sup>23.10</sup>

通过添加新的 [DetectHyperlinks](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) 属性，实现了加载 TXT 文档时识别超链接的功能。

### 其他

* 已实现图元文件渲染仿真来确定光栅化大小，特别是针对 WMF 笔宽度和 EMF 装饰笔宽度。为了实现此目的，**ScaleWmfFontsToMetafileSize** 属性被替换为 [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) 属性，并添加了 [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) 属性。 <sup>23.9</sup>
* 引入了一种使用 [InsertDocumentInline](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertdocumentinline/) 方法将一个文档插入到当前光标位置的另一个文档的简化方法。 <sup>23.10</sup>
* 通过引入新的 [Locked](https://reference.aspose.com/words/zh/net/aspose.words/style/locked/) 属性，添加了访问和修改样式属性的功能。 <sup>23.10</sup>
* [CompositeNode](https://reference.aspose.com/words/zh/net/aspose.words/compositenode/) 类的方法中添加了通用类型参数。 <sup>23.10</sup>
* 使用 [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) 和 [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/) 方法实现了一种控制何时接受/拒绝某个修订的方法。此增强功能使用户能够更好地控制修订过程。 <sup>23.11</sup>
* 通过新的 [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) 枚举类型和新的 [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) 属性提供了将文档的所有部分写入同一 XLSX 工作表的功能。 <sup>23.11</sup>
* 通过 `OoxmlSaveOptions` 类的新 Zip64Mode 属性和新的 Zip64Mode 枚举实现了一种控制 ZIP64 格式扩展如何用于 OOXML 文档的方法。 <sup>23.12</sup>
* 引入了对 WebP 图像的支持。请注意，此功能仅适用于 .NetStandart 和 .NET6+ 版本。 <sup>23.12</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for .NET 23.9 发行说明](/words/net/aspose-words-for-net-23-9-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.10 发行说明](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.11 发行说明](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.12 发行说明](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/) 的更多信息。

{{% /alert %}}

## .NET 23.5、23.6、23.7、23.8 的 Aspose.Words

Aspose.Words 23.5 增强了处理图表系列数据的能力和处理 ODT 文档的能力，并改进了页眉/页脚及其文本换行。

Aspose.Words 23.6 扩展了渲染选项，添加了新的导出格式，改进了 LINQ 报告和 LowCode 工具。

Aspose.Words 23.7 增强了报告功能，添加了新的导出格式，并对表和数字签名的使用进行了更改。

Aspose.Words 23.8 扩展了不同格式的功能，改进了渲染，并添加了用于处理字段的新选项。

### 支持的格式

* 从版本 23.6 开始，可以以 XLSX 格式保存文档。现在您可以将文档转换为 Excel 格式。 <sup>23.6</sup>
* 从版本 23.7 开始，可以将文档页面或形状保存为 EPS 格式。 <sup>23.7</sup>

### 新格式特点

* 引入了自动生成MOBI文档目录(TOC)的功能。 <sup>23.8</sup>
* [PdfEncryptionDetails](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) 构造函数已使用 [PdfPermissions](https://reference.aspose.com/words/zh/net/aspose.words.saving/pdfpermissions/) 进行了扩展。 <sup>23.8</sup>
* EMF 图元文件的垂直文本形状已实现。 <sup>23.8</sup>

### 渲染和打印

#### 获取和修改图表系列数据<sup>23.5</sup>

通过添加以下内容来提供获取和修改图表系列数据的功能：

* 新类：[ChartXValue](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartxvalue/)、[ChartYValue](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartyvalue/)、[ChartXValueCollection](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartxvaluecollection/)、[ChartYValueCollection](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartyvaluecollection/)、[BubbleSizeCollection](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/bubblesizecollection/)、[ChartMultilevelValue](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* 新的枚举类型：[ChartXValueType](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartxvaluetype/)、[ChartYValueType](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartyvaluetype/)

#### 支持高级排版<sup>23.6</sup>

添加了对 WMF、EMF 和 EMF+ 渲染中的高级排版的支持。

#### 页面上的彩色内容<sup>23.6</sup>

添加了公共属性 [PageInfo.Colored](https://reference.aspose.com/words/zh/net/aspose.words.rendering/pageinfo/colored/)，指示页面是否为彩色。

#### 图表数据标签的格式设置<sup>23.6</sup>

已实现为图表数据标签设置填充、描边和标注格式的功能。

### Mail Merge 和报告

#### LINQ Reporting Engine <sup>23.6</sup>的动态 HTML 插入

添加了 LINQ 报告引擎动态 HTML 插入的新方法。

#### Mustache 标签支持<sup>23.7</sup>

[MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/zh/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) 和 [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/zh/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion) 方法现在支持 Mustache 标签。

#### LINQ 报告引擎模板语法更新<sup>23.7</sup>

LINQ 报告引擎模板语法现在支持 `ElementAt` 和 ElementAtOrDefault 扩展方法。

#### 指定渲染图像的大小<sup>23.8</sup>

引入了一个新的公共属性 [ImageSize](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/imagesize/)，用于指定渲染图像的大小（以像素为单位）。

#### 保留 JSON 字符串值的空格 – LINQ <sup>23.8</sup>

LINQ 报告引擎中添加了一个选项来保留 JSON 字符串值的空格。

### LowCode <sup>23.6</sup>

添加了新的 LowCode 方法，旨在将不同类型的文档合并到单个输出文档中。

### 其他

* 已实现对页眉/页脚中文本换行的支持。 <sup>23.5</sup>
* 通过 [RemoveAllSignatures](https://reference.aspose.com/words/zh/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/) 方法添加了从 ODT 文档中删除数字签名的功能。 <sup>23.5</sup>
* 增加了获取拼音指南[Run](https://reference.aspose.com/words/zh/net/aspose.words/run/)的基础文本和拼音文本的公共属性[PhoneticGuide](https://reference.aspose.com/words/zh/net/aspose.words/run/phoneticguide/)。 <sup>23.5</sup>
* 通过引入新的 [SignatureValue](https://reference.aspose.com/words/zh/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) 属性，添加了从数字签名文档中以字节数组形式检索数字签名值的功能。 <sup>23.7</sup>
* [Row](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/) 和 [Cell](https://reference.aspose.com/words/zh/net/aspose.words.tables/cell/) 类已通过新的公共成员进行了扩展 - [Row.NextRow](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/nextrow/)、[Row.PreviousRow](https://reference.aspose.com/words/zh/net/aspose.words.tables/row/previousrow/)、[Cell.NextCell](https://reference.aspose.com/words/zh/net/aspose.words.tables/cell/nextcell/) 和 [Cell.PreviousCell](https://reference.aspose.com/words/zh/net/aspose.words.tables/cell/previouscell/)。 <sup>23.7</sup>
* 添加了对 CITATION 和 BIBLIOGRAPHY 字段的支持。 <sup>23.8</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for .NET 23.5 发行说明](/words/net/aspose-words-for-net-23-5-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.6 发行说明](/words/net/aspose-words-for-net-23-6-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.7 发行说明](/words/net/aspose-words-for-net-23-7-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.8 发行说明](/words/net/aspose-words-for-net-23-8-release-notes/) 的更多信息。

{{% /alert %}}

## .NET 23.1、23.2、23.3、23.4 的 Aspose.Words

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

[Fill](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/) 类已扩展为一组与背景和前景色相关的新公共属性：[ForeThemeColor](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/forethemecolor/) 和 [BackThemeColor](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/backthemecolor/)、[ForeTintAndShade](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/foretintandshade/) 和 [BackTintAndShade](https://reference.aspose.com/words/zh/net/aspose.words.drawing/fill/backtintandshade/)。

#### 使用 `SkiaSharp` Native Shader <sup>23.3 的</sup>径向渐变

已实现使用 .NET Standard 的 `SkiaSharp` 本机着色器渲染径向渐变。

#### 表格与周围文字之间的距离<sup>23.4</sup>

通过向 [Table](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/) 类引入新属性，添加了设置表格与周围文本之间距离的功能：[DistanceLeft](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distanceleft/)、[DistanceRight](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distanceright/)、[DistanceTop](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distancetop/) 和 [DistanceBottom](https://reference.aspose.com/words/zh/net/aspose.words.tables/table/distancebottom/)。

### 加载和保存文档

#### 为 AZW3 文档生成 `TOC` <sup>23.1</sup>

通过使用 [NavigationMapLevel](https://reference.aspose.com/words/zh/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/) 属性，添加了为 AZW3 文档生成 `TOC`（目录）的功能。

#### 将列表项导出到 Markdown <sup>23.1</sup>

通过将 [ListExportMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/listexportmode/) 属性添加到 [MarkdownSaveOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/markdownsaveoptions/) 类，提供了一种控制将列表项导出为 Markdown 格式的方法。

#### 文档保存进度通知<sup>23.3</sup>

已实现 MOBI 和 AZW3 格式的保存进度通知。

#### 句子和字距调整<sup>23.3</sup>

通过引入 [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/zh/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/) 属性，添加了指定是否在文档导入时自动调整句子和单词间距的功能。

### 其他

* 通过 [JustificationMode](https://reference.aspose.com/words/zh/net/aspose.words/document/justificationmode/) 属性实现<sup>23.2</sup>添加了指定文档字符间距调整的功能
* 通过添加 [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/zh/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) 属性，提供了指示 Aspose.Words 字数统计中是否包含文本框、脚注和尾注的方法<sup>23.2</sup>
* 文档样式的新选项，允许指定是否根据适当的值自动重新定义样式，已通过 [AutomaticallyUpdate](https://reference.aspose.com/words/zh/net/aspose.words/style/automaticallyupdate/) 属性<sup>23.2</sup>引入
* 已添加使用 [IsPhoneticGuide](https://reference.aspose.com/words/zh/net/aspose.words/run/isphoneticguide/) 属性确定 [Run](https://reference.aspose.com/words/zh/net/aspose.words/run/) 是否为语音指南运行的功能<sup>23.4</sup>
* 通过引入 [ChartAxisCollection](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chartaxiscollection/) 类并添加 [Chart.Axes](https://reference.aspose.com/words/zh/net/aspose.words.drawing.charts/chart/axes/) 属性，实现了使用组合图表的系列和轴的简单方法<sup>23.4</sup>
* 与形状相对定位和大小相关的新公共属性已添加到 [Shape](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shape/) 类<sup>23.4</sup>中
* 根据最新版本的 Microsoft Word <sup>23.4</sup>改进了自动文本颜色分辨率的颜色亮度计算的准确性和性能

{{% alert color="primary" %}}

了解有关 [Aspose.Words for .NET 23.1 发行说明](/words/net/aspose-words-for-net-23-1-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.2 发行说明](/words/net/aspose-words-for-net-23-2-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.3 发行说明](/words/net/aspose-words-for-net-23-3-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 23.4 发行说明](/words/net/aspose-words-for-net-23-4-release-notes/) 的更多信息。

{{% /alert %}}

## 适用于 .NET 22.9、22.10、22.11、22.12 的 Aspose.Words

Aspose.Words 22.9 扩展了加载和保存文档的选项，并改进了与其他一些选项的交互。

Aspose.Words 22.10 改进了查找和替换选项、增强了 OLE 对象并扩展了列表功能。

Aspose.Words 22.11 通过新选项扩展了其功能，以便更方便地处理已经熟悉的对象：字段、打印、OLE 和结构化文档标签。

Aspose.Words 22.12 增强了渲染功能，并引入了在加载/保存文档时处理边距的选项。

### 性能改进<sup>22.12</sup>

引入了一种优化，可以在渲染为 PDF 时显着减少图形状态嵌套的深度，以保持规范合规性。

### 渲染和打印

#### 在彩色打印机上打印非彩色页面<sup>22.11</sup>

通过向 [ColorPrintMode](https://reference.aspose.com/words/zh/net/aspose.words.rendering/colorprintmode/) 枚举添加新的 **GrayscaleAuto** 值，实现了自定义彩色/灰度打印模式。

如果设备支持彩色打印，新的打印属性允许用户控制非彩色页面的打印方式。如果用户想要仅使用灰度打印模式自动打印非彩色页面，则此功能非常有用。

#### 新边框渲染属性<sup>22.12</sup>

引入了新的公共属性 [ThemeColor](https://reference.aspose.com/words/zh/net/aspose.words/border/themecolor/) 和 [TintAndShade](https://reference.aspose.com/words/zh/net/aspose.words/border/tintandshade/)。

#### DrawingML 渲染的线性趋势线公式<sup>22.12</sup>

已实现 DrawingML 图表的线性趋势线公式渲染。

#### Google Noto 字体的字体回退设置<sup>22.12</sup>

Google Noto 字体的预定义字体后备设置已更新。

### 加载和保存文档

#### 缓存页眉或页脚形状以减小 PDF 大小<sup>22.9</sup>

通过添加新的 **CacheHeaderFooterShapes** 属性，实现了缓存页眉/页脚形状以减小输出 PDF 文件大小的功能。

#### 加载文档时自动编号检测<sup>22.9</sup>

在文本加载时指定 [AutoNumberingDetection](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) 属性的功能已通过 [TxtLoadOptions](https://reference.aspose.com/words/zh/net/aspose.words.loading/txtloadoptions/) 类的扩展实现。

#### 指定特定的保证金类型<sup>22.12</sup>

已经实现了为给定部分指定特定 [Margin](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/margins/) 类型的功能。

### 搜索和比较<sup>22.10</sup>

通过向 [FindReplaceOptions](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/) 类添加新的 [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/zh/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) 属性，可以实现在查找和替换选项时忽略 [StructuredDocumentTag](https://reference.aspose.com/words/zh/net/aspose.words.markup/structureddocumenttag/) 的功能。

### 其他

* 添加了将 FieldEQ 作为 OfficeMath 的新功能。 <sup>22.9</sup>
* 允许在行级别创建 Group 类型的结构化文档标签。 <sup>22.9</sup>
* 将文档转换为 HTML 时，OLE 对象和控件现在被视为图元文件图像。 <sup>22.10</sup>
* 通过在 [List](https://reference.aspose.com/words/zh/net/aspose.words.lists/list/) 类中引入新的 [HasSameTemplate](https://reference.aspose.com/words/zh/net/aspose.words.lists/list/hassametemplate/) 方法，添加了一项新功能，用于检查特定列表是否是从与比较列表相同的模板创建的。 <sup>22.10</sup>
* 添加了创建 [Citation](https://reference.aspose.com/words/zh/net/aspose.words.markup/sdttype/) 类型的新结构化文档标签的功能。 <sup>22.11</sup>
* 提供了跟踪字段更新进度的功能。 <sup>22.11</sup>
* 引入了新的 **EmbedAttachments** 属性，允许用户将源文档中的 OLE 附件嵌入到输出 PDF 文档中。 <sup>22.11</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for .NET 22.9 发行说明](/words/net/aspose-words-for-net-22-9-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 22.10 发行说明](/words/net/aspose-words-for-net-22-10-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 22.11 发行说明](/words/net/aspose-words-for-net-22-11-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 22.12 发行说明](/words/net/aspose-words-for-net-22-12-release-notes/) 的更多信息。

{{% /alert %}}

## 用于 .NET 22.5、22.6、22.7、22.8 的 Aspose.Words

Aspose.Words 22.5 引入了对新加载格式和新打印页面大小的支持，并改进了一些渲染选项。

Aspose.Words 22.6 扩展了将 PDF 转换为其他格式的可能性，并改进了 DrawingML 和纯文本填充效果的工作。

Aspose.Words 22.7 增强了使用渲染功能的可能性，还添加了用于 HTML 导入和导出到 PDF 的新功能。

Aspose.Words 22.8 引入了新的导出格式并改进了各种渲染算法。

API 得到增强，开发更加灵活便捷。

### 支持的格式

* 通过向 [LoadFormat](https://reference.aspose.com/words/zh/net/aspose.words/loadformat/) 枚举添加新值，引入了对加载 EPUB 和 XML 文档的支持。从版本 22.5 开始，可以将 EPUB 和 XML 文档加载到 Aspose.Words 文档模型中，并将其转换为任何 [支持的格式](https://reference.aspose.com/words/zh/net/aspose.words/saveformat/)。 <sup>22.5</sup>
* 从版本 22.8 开始，可以以 AZW3 格式保存文档 - Amazon Kindle 专有的电子书文件格式（KF8 是该格式的另一个名称）。现在您不仅可以加载 AZW3 文档，还可以将文件导出为 AZW3 格式，这本质上是编译后的 EPUB。 <sup>22.8</sup>

### 渲染和打印

#### 新印刷尺寸<sup>22.5</sup>

通过向 [PaperSize](https://reference.aspose.com/words/zh/net/aspose.words/papersize/) 枚举引入新值，添加了对"10 号信封"打印页面尺寸的支持。

#### 渲染 MathML 公式<sup>22.5</sup>

MathML 公式周围边框的渲染以及渲染此类公式的字符时的字体检测均已得到改进。

#### DML 图表改进<sup>22.6</sup>

DrawingML 图表公共 API 已扩展为支持渐变、纹理和图案填充。

#### Glyph 概述了 OpenType <sup>22.7</sup>的解析

Aspose.Words 自己的 OpenType (CFF) 字体 glyph 轮廓解析已经实现。

以前，OpenType (CFF) 字体的 glyph 解析是通过 GDI+ 执行的。因此，现在它可以在 GDI+ 不可用的情况下工作 - Java、.NET Standard 平台、Linux 操作系统等。在艺术字、文本效果、某些 Office 数学功能等特定情况下需要 Glyph 轮廓解析。

#### 设置形状阴影格式<sup>22.7</sup>

通过添加新的 [ShadowFormat](https://reference.aspose.com/words/zh/net/aspose.words.drawing/shapebase/shadowformat/) 属性，提供了设置形状对象的阴影格式的功能。

#### 支持表<sup>22.8</sup>中的单元格间距

布局引擎现在得到了显着改进：表格中非常复杂的单元格间距机制已经实现。

#### 符号的字体替换<sup>22.8</sup>

符号的字体替换已得到改进。

#### 图表轴标签旋转算法<sup>22.8</sup>

图表轴标签的旋转算法已得到改进。

### 加载和保存文档

#### 加载 PDF 并将其转换为固定页面格式，无需布局模型<sup>22.6</sup>

已经实现了以高保真度和高性能加载 PDF 文档并将其转换为固定页面格式的功能。

#### 新的 HTML 导入模式<sup>22.7</sup>

通过向 [HtmlInsertOptions](https://reference.aspose.com/words/zh/net/aspose.words/htmlinsertoptions/) 枚举添加新值，引入了块级元素的新 HTML 导入模式。

#### 使用 WCAG 2.0 <sup>22.7</sup>转换为 PDF/UA-1 CCompliant

添加了对将文档转换为 PDF/UA-1 格式（符合 WCAG 2.0）的支持。

因此，如果客户有一个可访问的 Word 文档，并通过 Aspose.Words 将其转换为 PDF/UA-1，并提及转换细节，则输出将与 WCAG 2.0 兼容。

WCAG（Web 内容可访问性指南）是 W3C 与世界各地的个人和组织合作制定的一套指南。现在，使用 Aspose.Words，您可以将文档转换为输出 PDF/UA-1 格式，该格式适合构建符合 WCAG 2.0 的 PDF 文档。

值得注意的是，WCAG 2.0 还有两个 PDF/UA-1 规范中未指定的附加要求：

* 对比度要求

* 标记多媒体内容的要求

但这两个要求与我们从 Word 转换为 PDF 的情况无关。

### 其他

* 继承模仿 MS Word 行为的实体文本填充效果的例外情况已实现。 <sup>22.6</sup>
* 添加了对 `DATABASE` 字段的支持。例如，使用这种类型的字段，您可以在 Microsoft Word 表中显示数据库查询的结果。 <sup>22.7</sup>

{{% alert color="primary" %}}

了解有关 [Aspose.Words for .NET 22.5 发行说明](/words/net/aspose-words-for-net-22-5-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 22.6 发行说明](/words/net/aspose-words-for-net-22-6-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 22.7 发行说明](/words/net/aspose-words-for-net-22-7-release-notes/) 的更多信息。

了解有关 [Aspose.Words for .NET 22.8 发行说明](/words/net/aspose-words-for-net-22-8-release-notes/) 的更多信息。

{{% /alert %}}

## 也可以看看

{{% alert color="primary" %}}

此页面包含过去 2 年的最新发布消息。有关早期版本的详细信息，请参阅相关部分中的 [发行说明'](/words/net/release-notes/) 页面。

{{% /alert %}}