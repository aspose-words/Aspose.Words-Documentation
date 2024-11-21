---
title: 最新消息
second_title: Aspose.Words为C++
articleTitle: 最新消息 Aspose.Words为C++
linktitle: 最新消息 Aspose.Words为C++
type: docs
description: "Aspose.Words为C++ 每天扩展和增强。 在这个页面上，您可以了解该产品的巨大和最有趣的功能。"
weight: 2
url: /zh/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

本页介绍了最近版本中引入的最有趣的Aspose.Words新特性。

## Aspose.Words为C++ 24.9

Aspose.Words24.9通过DocumentBuilder引入group shape插入和StructuredDocumentTag插入，用渐变增强径向图表渲染，用XAdES-EPES 支持，添加Markdown下划线识别，并提供对脚注/尾注分隔符的访问。

### 渲染和打印

#### 径向图表上的毕业

已经实现了在径向图表上绘制毕业图。

### 转换、加载和保存文档

#### 加载Markdown文件时的下划线格式

加载Markdown文档时识别下划线格式的选项已通过添加新的公共属性[ImportUnderlineFormatting]()合并。

### 数码签署

#### 签署文件XAdES-EPES

与签署文件的能力XAdES-EPES 通过添加一个新的公共属性[XmlDsigLevel]()和一个新的公共枚举[XmlDsigLevel]()，级别XML-DSig签名已被引入。

### 其他

* 一个新的公共方法[InsertGroupShape]()已添加到group shapes。
* 添加了一个新的公共方法[InsertStructuredDocumentTag]()以将**StructuredDocumentTags**插入到文档中。
* 通过添加一些公共类和属性，提供了对脚注/尾注分隔符的公共访问。

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为C++ 24.9发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words为C++ 24.5, 24.6, 24.7

Aspose.Words24.5扩展了程序集的选项，改进了渲染功能，并扩展了一些其他选项。

Aspose.Words24.6改进了渲染选项，增强了搜索和比较功能，并扩展了其他几个功能。

Aspose.Words24.7更改您使用ActiveX的方式，扩展渲染功能，以及导出为Markdown和XLSX格式。

### 支持的格式

从版本24.7开始，支持导出到PDF/UA-2，以确保残疾用户的可访问性。

### 渲染和打印

#### 图表，形状和绘图的变化 <sup>24.5</sup>

- 为SVG图形绘制的DrawingML效果渲染,扩展了以前仅限于图像的功能,已经实现.
- 通过添加**ChartSeriesGroup**和**ChartSeriesGroupCollection**类以及**SeriesGroups**属性，支持在序列组中创建组合图和调整间隙宽度、重叠和气泡比例等属性。
- 通过添加**SoftEdgeFormat**类实现了操作形状SoftEdge效果的功能。
- 通过添加**AdjustmentCollection**和**Adjustment**公共类以及**Adjustments**属性，实现了修改形状调整值的功能。

#### 图表、形状和绘图的变化 <sup>24.6</sup>

- 制图能力得到了增强。 您现在可以创建更多种类的图表，包括*Treemaps*, *Sunbursts*, *Histograms*, *Pareto* 图表，*Box & Whisker*图表，*Waterfalls*和*Funnels*。 这使您能够以更加多样化和信息丰富的方式可视化数据。
- 阴影格式的颜色控制已得到改进。 通过访问阴影颜色，您可以更精确地控制文档的外观。
- 改进了后台渲染的性能提升。 借助原生平铺技术，您可以显着加快包含小元素的背景的渲染速度。
- 已添加形状的逼真渐变。 您现在可以创建具有非线性渐变的DML形状，模仿Microsoft Word的视觉样式以获得更抛光的外观。

#### 图表数据标签定制 <sup>24.7</sup>

添加了自定义图表数据标签（如**Orientation**和**Rotation**）的功能。

#### 列表级别的自定义数字样式 <sup>24.7</sup>

已添加公共属性[CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/)的setter。 您现在可以为列表级别定义自定义数字样式。

#### 使用ActiveX的变化 <sup>24.7</sup>

- 现在可以修改ActiveX对象的属性，使您可以更好地控制其行为。
- 添加了修改单选按钮ActiveX控件的值以启用动态交互的功能。
- 添加了将ActiveX复选框切换为"已选中"或"未选中"的功能。

### 加载和保存文档

#### 将链接导出为Markdown格式 <sup>24.7</sup>

通过实现[LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/)属性，添加了控制Markdown格式链接导出的功能。

### 搜索和比较

#### 高级比较选项 <sup>24.6</sup>

增加了通过改进的比较功能简化数据分析工作流的能力。 这包括一个新的**IgnoreStoreItemId**选项和一个重新设计的高级比较界面。

### 其他

- 通过添加[RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/)方法实现了从文档中消除空页的功能。 <sup>24.5</sup>
- 通过添加**HasMacros**属性，可以在不加载文档的情况下检查VBA宏是否存在。 <sup>24.5</sup>
- 添加了一个新的**DateTimeUtc**属性-这为注释提供了更精确的时间戳，改善了组织和可追溯性。 <sup>24.6</sup>
- 现在会自动检测datetime格式，以便无缝导出为XLSX格式。 <sup>24.7</sup>
- 已添加公共属性[IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/)，它允许您验证VBA项目是否受保护。 <sup>24.7</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为C++ 24.5发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

了解更多关于 [Aspose.Words为C++ 24.6发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

了解更多关于 [Aspose.Words为C++ 24.7发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words为C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words24.1改进了管理笔划颜色的体验，增强了OLE对象，并引入了一个新的参考书目来源公共API。

Aspose.Words24.2扩展图表API和样式管理。 此版本的Aspose.Words还引入了在渲染期间指定SvgSaveOptions的功能，更灵活地控制加载Markdown文件，以及处理脚注和尾注的参考文本。

Aspose.Words24.3引入了对WMF元文件的二进制栅格操作的仿真，并继续扩展图表API。

Aspose.Words24.4增强了一些渲染选项，并改进了数字签名的工作。

### 渲染和打印

#### 笔画颜色控制 <sup>24.1</sup>

[Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/)类已扩展为一组与管理笔划颜色相关的新公共属性：[ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/)和[BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/)，[ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/)和[BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/)。

#### DrawingML图表API扩展 <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API**继续扩展。

#### 嵌入@font-face规则中声明的字体 <sup>24.4</sup>

添加了将在@font-face规则中声明的字体嵌入到结果文档的字体定义中的功能，通过添加新的[SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/)属性引入。

#### 使用发光和反射格式 <sup>24.4</sup>

已经实现了使用绘图对象的发光和反射格式的能力。

### 加载和保存文档

#### 在渲染期间指定SvgSaveOptions <sup>24.2</sup>

使用[ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/)添加了在渲染期间指定[SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/)的功能。[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)和[OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/)。[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/)方法。

#### 加载Markdown文件时保留空行 <sup>24.2</sup>

添加了加载Markdown文件时保留空行的功能。

### 其他

- 通过向新的**TextBoxControl**类添加新的**Text**属性，引入了修改`TextBox`OLE控件文本的功能。 <sup>24.1</sup>
- 参考书目源publicAPI是通过添加新的命名空间[Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/)及其新的类和枚举以及向[Document](https://reference.aspose.com/words/cpp/aspose.words/document/)类添加新的[Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/)属性来实现的。 <sup>24.1</sup>
- 已将用于增强样式管理的新公共属性[Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/)、[UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/)和[SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/)添加到[Style](https://reference.aspose.com/words/cpp/aspose.words/style/)类中。 <sup>24.2</sup>
- 使用[ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/)属性和[UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/)方法增强了检索脚注和尾注的实际参考标记文本的功能。 <sup>24.2</sup>
- 已经实现了对WMF元文件的二进制栅格操作的仿真。 <sup>24.3</sup>
- 通过添加具有新公共成员的新**DigitalSignatureDetails**类以及向[OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/)、[DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/)和[OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/)类添加新属性，启用了为**SaveOptions**内文档定义签名选项的功能。 <sup>24.4</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为C++ 24.1发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

了解更多关于 [Aspose.Words为C++ 24.2发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

了解更多关于 [Aspose.Words为C++ 24.3发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

了解更多关于 [Aspose.Words为C++ 24.4发行说明](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words为C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words23.9扩展渲染选项、图元文件渲染仿真和markdown保存选项。

Aspose.Words23.10改进了渲染，扩展了加载和保存文档的选项，并允许用户以新的方式合并文档。

Aspose.Words23.11通过其他选项增强图表图例上的修订、XLSX格式和字体的工作。

Aspose.Words23.12引入了用于处理PDF和OOXML文档的新属性和枚举，以及对WebP图像的支持。

### 渲染和打印

#### 在DrawingML图表中自定义轴标题 <sup>23.9</sup>

通过实现新的公共类**ChartAxisTitle**和[Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/)属性，引入了在DrawingML图表中自定义轴标题的功能。

#### 确定字体在段落中的垂直位置 <sup>23.9</sup>

现在可以使用新的public[BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/)属性和新的[BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/)枚举来定义段落中字体的垂直位置。

#### 前景色控制 <sup>23.10</sup>

通过**BaseForeColor**属性，在[Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/)和[Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/)类中添加了不使用修饰符检索前景色的功能。

#### 扩展图表的功能 <sup>23.10</sup>

使用新的方法和属性扩展了[ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/)、[ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/)和[ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/)类的功能。

#### 自动调整图像并使其适合形状 <sup>23.10</sup>

通过新的[FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/)方法提供了一种在特定形状内自动调整和拟合图像的简单方法。

#### DrawingML图表图例条目的默认字体格式 <sup>23.11</sup>

通过[Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/)属性添加了为DrawingML图表的图例条目指定默认字体格式的功能。 此功能有助于为图表元素提供更精简和一致的外观，从而提高整体文档美观度。

#### 在Reader中打开PDF时指定页面布局 <sup>23.12</sup>

通过向[PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/)类引入新的**PageLayout**属性和引入新的**PdfPageLayout**枚举，添加了在PDF阅读器中打开文档时指定要使用的页面布局的功能。

### 加载和保存文档

#### 在Markdown中指定要构造图像URIs的文件夹名称 <sup>23.9</sup>

通过包含[ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/)属性扩展了[MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/)类，该属性允许指定用于构造写入Markdown文档中的图像URIs的文件夹的名称。

#### 减小PDF输出大小 <sup>23.10</sup>

已经实现了各种PDF渲染优化，以减少使用[OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)设置时的输出大小。

#### 加载TXT文档时识别超链接 <sup>23.10</sup>

加载TXT文档时识别超链接的功能已通过添加新的[DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/)属性来实现。

### 其他

- 已经实现了用于确定光栅化大小的图元文件渲染仿真，专门针对WMF笔宽和EMF笔宽。 为此，将**ScaleWmfFontsToMetafileSize**属性替换为[EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/)属性，并添加[EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/)属性。 <sup>23.9</sup>
* 使用[InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/)方法引入了将一个文档插入当前光标位置的另一个文档的简化方法。 <sup>23.10</sup>
* 通过引入新的[Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/)属性，添加了访问和修改样式属性的功能。 <sup>23.10</sup>
* 泛型类型参数已添加到[CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/)类的方法中。 <sup>23.10</sup>
* 通过使用[Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/)和[Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/)方法实现了一种控制何时应该接受/拒绝某个修订的方法。 此增强功能允许用户更好地控制修订过程。 <sup>23.11</sup>
* 通过新的[XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/)枚举类型和新的[SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/)属性提供了将文档的所有部分写入同一个XLSX工作表的能力。 <sup>23.11</sup>
* 通过`OoxmlSaveOptions`类的新Zip64Mode属性和新的Zip64Mode枚举实现了一种控制ZIP64格式扩展如何用于OOXML文档的方法。 <sup>23.12</sup>
* 已经引入了对WebP图像的支持。 请注意，此功能仅适用于。NetStandart和。NET6+版本。 <sup>23.12</sup>

{{% alert color="primary" %}}

了解更多关于 [Aspose.Words为C++ 23.9发行说明](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
了解更多关于 [Aspose.Words为C++ 23.10发行说明](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
了解更多关于 [Aspose.Words为C++ 23.11发行说明](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
了解更多关于 [Aspose.Words为C++ 23.12发行说明](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## 请参阅

{{% alert color="primary" %}}

本页包含过去2年的最新发布消息。 有关早期版本的详细信息，请参阅 [发行通知书'](/words/cpp/release-notes/) 相关部分中的页面。

{{% /alert %}}
