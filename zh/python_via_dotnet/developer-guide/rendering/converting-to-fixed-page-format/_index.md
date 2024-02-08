---
title: 转换为固定页面格式
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 转换为固定页面格式
linktitle: 转换为固定页面格式
description: "使用 Python 将文档保存为 PDF、XPS、HTML、XAML、PostScript 和 PCL 格式。"
type: docs
weight: 10
url: /zh/python-net/converting-to-fixed-page-format/
---

Aspose.Words 实现了自己的页面布局引擎。在深入研究其规范之前，有必要首先对文档进行高层讨论。当考虑文档时，用户通常会想象许多包含文字、图像、表格和图表的纸张。文档可以有多种类型，例如文本、电子表格、幻灯片、CAD 绘图、流程图，因此可以具有本质上不同的布局。大多数应用程序允许将文档发送到打印机；此时用户可以实际查看文档的最终预期外观。

## 在各种应用程序中显示文档

各种文档查看或发布应用程序允许用户打开（Adobe Acrobat、XPS Viewer），有时甚至编辑（Adobe InDesign）特定格式的文档。这些应用程序通常生成所谓的"固定页面"格式文档。这种文档格式精确地描述了文档内容在每个页面上的放置位置。在内部，PDF 或 XPS 格式包含每个页面的描述以及绘图说明，指定页面上内容的布局。这与图像格式类似，描述内容以光栅或矢量形式显示的位置。

相反，某些文本编辑应用程序不支持查看文档页面。例如，Microsoft 记事本除了简单地显示、编辑和打印文本之外，支持的功能很少。这里重要的观察是，此类应用程序既不能显示文档的页面，也不能告诉用户将打印多少页，而只允许查看文档内容。该文档可以以纯文本格式保存，并且可以由许多其他应用程序打开。使用允许查看任意文件的二进制内容的应用程序，我们可以看到文档文件中存储的内容 - 它只是纯文本，其中没有其他内容。

稍微复杂一点的文本编辑应用程序（例如 Microsoft WordPad）将文档保存为富文本格式（RTF），该格式支持更多格式设置功能，例如插入图像、字符格式设置、段落边距和间距。然而，RTF 格式也只包含文档的内容，没有有关页面的信息。

Microsoft Word 是当今最先进的 Windows 文本编辑应用程序。它将文件格式化为 DOCX 格式，该格式灵活而广泛地描述文档的内容，允许用户指定页面大小、文档部分的方向，并且作为所见即所得的应用程序，甚至可以在屏幕上显示文档页面。尽管如此，仍然没有关于如何在文档文件中的可用页面上显示文档内容的信息。文档文件仅描述内容本身，以及文档对象彼此之间的关系，以及一些几何约束。因此，在显示文档之前，Microsoft Word 会自行计算该信息。这就是页面布局发挥作用的地方。

## 什么是页面布局

文档页面布局是一种数据结构，描述特定对象在所有文档对象的页面上的位置。此外，由于对象具有影响其外观的属性，例如字体大小、阴影或绘图效果，因此您不仅需要知道对象在哪里，还需要知道它占据页面的哪些区域，以及它是否会占据页面的区域。应用于多个页面，以便其他对象不会与相同区域重叠。

Aspose.Words 在内部实现页面布局功能，使其能够生成所有固定页面格式，例如 PDF、XPS 和各种图像格式。如果没有页面布局，固定页面文档文件中存储的信息将不可用，并且所有这些格式都将不受支持。

文档和页面布局之间的关系非常简单。文档描述内容，而相应的页面布局则描述该内容的几何形状。请注意，没有文档就无法存在页面布局，因为没有用于计算几何的内容，但没有页面布局也可以存在文档。例如，当 DOCX 文档转换为 RTF 文档时，通常不需要知道几何形状，因为两种格式都不会存储几何形状。

## 创建页面布局

无论是在速度还是内存方面，创建页面布局都是一个成本高昂的过程。这是由于以下几个原因：

- 文档可能有大量内容，可能需要在数千页上显示。每个页面上每个对象的几何形状都需要描述，这会消耗内存资源。
- 该文档可能有许多规则，对几何形状施加限制。可能会花费大量的计算时间来确保满足每个约束。
- 某些文档功能（例如 `NUMPAGES` 字段）会为未来的属性值创建递归依赖关系，而这些属性值在计算时不可用。这会导致重复计算并增加计算时间。

由于上述原因，Aspose.Words 仅在必要时才会创建页面布局。出现这种情况的典型原因是请求呈现文档页面或获取取决于页面布局中可用信息的字段值。一个不太明显的原因可能是将文档导出为 HTML。尽管 HTML 不是固定页面格式并且它不描述内容对象的几何形状，但它仍然支持图像。此类图像可能采用在 Microsoft Word 中创建的形状的形式，其中包含文本。例如，带有轴标签的图表可以作为图像导出到 HTML 中，但在此之前 Aspose.Words 需要渲染该图像，因此需要知道在哪里显示标签。请参阅下面的图表示例：

<img src="/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="转换为固定页面格式_1" style="width:800px"/>

### 非几何属性

除了处理几何信息之外，页面布局还负责计算颜色和边框样式。在 Microsoft Word 中，文本颜色可以指定为自动，这意味着颜色选择应基于单元格或段落的底纹颜色，或者基于文本出现的页面颜色。

页面布局计算文本将出现的位置以及文本后面将呈现的内容，从而启用颜色计算。页面布局还执行其他特定计算。例如，表格中的水平边框取决于表格行是否位于文本列的最后，以及是否跨列分隔。如果行在列中最后呈现，则使用底部边框而不是水平边框。

![converting-to-fixed-page-format_2](/words/python-net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

在 Aspose.Words 中，用户可以请求是否构建新的页面布局或更新现有的页面布局。这两者都可以通过 [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) 类提供的 [update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) 方法来执行。如果页面布局不存在，但需要它（例如，当文档导出为固定页面格式时），Aspose.Words 将自动调用此方法。但是，如果页面布局已经存在，Aspose.Words 将使用现有的页面布局，以避免消耗更新它所需的资源。在这种情况下，用户需要调用[update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)方法，以确保页面布局与文档模型保持同步。

### 动态结构

创建页面布局的过程包括以下步骤：

- *Conversion* – 枚举文档模型的内容并准备相应的布局对象。
- *Build* – 排列布局对象以表示页面上文档的内容。
- *Reflow* – 更新对象排列以满足几何约束。
- *将布局对象投影到固定页面演示中并最终确定颜色信息*。
- *形状内容的构建和重排* – 如果文档包含带有嵌套文本内容的形状，则需要执行此步骤。

请注意，页面布局是动态结构，可以部分重建。当无法在不重建文档布局结构的情况下计算字段值时，尤其需要这样做。字段可以引用页面上某个对象的位置，同时字段值本身也会渲染在页面上，影响被引用对象的位置。页面布局无法一次性构建，因为在页面上定位时字段值可能尚不可用。

考虑 `NUMPAGES` 字段出现在文档首页页脚中的典型场景。该字段的值是总页数。为了在页面上定位字段，应该知道它的值。如果当前仅构建第一页，则尚不知道页面总数。在这种情况下，页面布局必须使用默认值，然后返回该字段并根据实际计算更改其值。然而，更改字段值可能会影响页面上的其他文档内容，并最终导致附加新页面或删除现有页面，从而使计算值过时。这个问题可以通过更新现有的页面布局来解决。

创建布局时，还可以设置影响页面上文档输出的 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 属性。

## 保存为固定页面格式

构建页面布局并计算对象的几何形状及其在页面上的位置后，可以将文档保存为 Aspose.Words 支持的固定页面格式。将文档保存为固定页面格式时，可以使用所有这些格式通用的呈现选项。它们允许控制：

- 输出文档 ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/page_set/)) 中包含的页数和范围。
- 一组用于数字渲染的字符 ([numeral_format](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/numeral_format/))。
- 图元文件播放器 ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/metafile_rendering_options/))。更多详细信息，请参阅 [处理 Windows 图元文件](/words/zh/python-net/handling-windows-metafiles/) 文章。
- 重新压缩 JPEG 图像的质量率，其值可能略有不同，具体取决于所选的保存格式 ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/jpeg_quality/))。
- 优化 Aspose.Words 输出 ([optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/)) 中的矢量图形。
- 保存为 Tiff、Png、Bmp、Jpeg、Emf 格式（[use_anti_aliasing](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_anti_aliasing/)、[use_high_quality_rendering](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/use_high_quality_rendering/)）时的图形选项。
- 以灰度 ([color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/color_mode/)) 保存文档。
- 在 DrawingML 形状和后备形状 ([dml_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_rendering_mode/)) 的渲染之间切换。
- 在 DML 效果渲染模式 ([dml_effects_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/dml_effects_rendering_mode/)) 之间切换。

下面的示例演示了如何使用 [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) 方法和渲染选项将文档保存为 JPEG 格式：

{{< highlight python >}}
# Open the document
doc = aw.Document(docs_base.my_dir + "Rendering.docx")
# Save as a JPEG image file with default options
doc.save(docs_base.artifacts_dir + "Rendering.JpegDefaultOptions.jpg")

# Save document to stream as a JPEG with default options
docStream = io.BytesIO()
doc.save(docStream, aw.SaveFormat.JPEG)
# Rewind the stream position back to the beginning, ready for use
docStream.seek(0)

# Save document to a JPEG image with specified options.
# Render the third page only and set the JPEG quality to 80%
# In this case we need to pass the desired SaveFormat to the ImageSaveOptions constructor 
# to signal what type of image to save as.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
imageOptions.page_index = 2
imageOptions.page_count = 1
imageOptions.jpeg_quality = 80
doc.save(docs_base.artifacts_dir + "Rendering.JpegCustomOptions.jpg", imageOptions)
{{< /highlight >}}
