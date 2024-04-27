---
title: 在转换为 PDF 时指定渲染选项
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 在转换为 PDF 时指定渲染选项
linktitle: 在转换为 PDF 时指定渲染选项
description: "将带有高级选项的文档转换为 PDF 。 使用 PdfSave 选项将文档保存结果更改为 PDF 格式 Java。 。 。 。"
type: docs
weight: 20
url: /zh/java/specify-rendering-options-when-converting-to-pdf/
---

PDF格式是一种固定的页面格式,在用户中非常流行,并得到广泛各种应用程序的支持,因为PDF文档在任何设备上看起来都是一样的. 为此原因,转换为PDF是: Aspose.Words。 。 。 。

PDF是一种复杂的格式. 在将一个文档转换为PDF的过程中需要几个阶段的计算,包括布局计算. 由于这些阶段包括复杂的计算,因此它们很耗时. 此外,PDF格式本身相当复杂。 它有一个特定的文件结构,图形模型和字体嵌入. 此外,它还具有一些复杂的输出功能,例如文件结构标记、加密、数字签名和可编辑的形式。

Aspose.Words 布局引擎仿制方式 Microsoft Word页面布局引擎工作. 因此, Aspose.Words 使 PDF 输出文档看起来尽可能接近您可以看到的内容 Microsoft Word。 。 。 有时需要指定额外的选项,这可能影响将文档保存到PDF格式的结果. 这些选项可以通过使用 [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) 类,包含决定如何显示 PDF 输出的属性。

一些使用实例 **PdfSaveOptions** 见下文。

{{% alert color="primary" %}}

目前,可以保存到PDF 1.7,PDF 2.0,PDF/A-1a,PDF/A-1b,PDF/A-2a,PDF/A-2u,以及PDF/UA-1格式. 使用 [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) 点数设置 PDF 标准遵守水平 。 请注意,使用PDF/A格式,输出文件大小大于普通PDF文件大小.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) 和 [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) 被标记为过时。

关于PDF/A的更多信息,见下一篇"转换为PDF/A的学习特征".

{{% /alert %}}

## 创建 PDF 带有填充表单的文档

还有可能从下列表格中导出可填表: Microsoft Word 文档输入输出 PDF,它有可填充的表格而不是纯文本。 使用 [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) 属性将文档保存为带有可填充表格的PDF。

请注意,与 <span notrans="<span notrans=" Microsoft Word"=""></span>",> PDF 格式的可编辑格式选项数量有限,例如文本框、组合框和复选框。 Microsoft Word 拥有更多类型的形式,例如日历日期采集器。 一般来说,不可能完全模仿 Microsoft Word 行为在PDF中. 因此,在一些复杂的情况下,PDF产出可能不同于你所看到的 Microsoft Word。 。 。 。

下面的代码示例显示如何将文档保存为带有可填充表单的具有指定Jpeg压缩和质量的PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## 导出文档结构和自定义属性

那个 [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) 属性可以将文档结构导出为 PDF 输出。

PDF逻辑结构设施提供了一个将文件内容结构信息纳入PDF文件的机制。 Aspose.Words 从 Microsoft Word 文档,如段落、清单、表格、脚注/尾注等。

以下例子说明如何将文档保存到PDF格式,并保留文档结构:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words 也允许您将文档自定义属性导出到 PDF , 以下示例可以证明:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## 从 PDF 输出中的书签和标题导出大纲

如果您想要导出书签作为输出 PDF 中的大纲, 您可以使用 [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) 属性。 此属性在文档大纲中指定默认级别, 其中 Microsoft Word 显示书签。 如果文档在文档页眉/页脚中包含书签,您可以设置 [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) 属性改为 [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) 或 [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) ,以指定它们如何在输出 PDF 中导出。 当页眉/页脚中的书签值为 **HeaderFooterBookmarksExportMode** 这是 [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE)。 。 。 。

下面的代码示例显示如何从一个部分的第一个头/脚导出书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

此示例的产出PDF如下:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

何时 **HeaderFooterBookmarksExportMode** 设置为 [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) 而文档有偶数和奇数头/脚或不同的首页头/脚,书签会导出某一节中第一个独有头/脚.

也可以使用 [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) 属性。 此属性指定了文件大纲中包含多少级标题 。

下面的代码示例显示如何以三个级别导出标题:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

这一实例的产出PDF描述如下:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

一个书签或标题导航在各种PDF查看器中可能具有不同的外观. 此外,在一些应用中,UI中没有书签和标题导航.

{{% /alert %}}

## 下取样图像以减少文档大小

Aspose.Words 提供对图像进行下取样的能力,以减少输出 PDF 大小,使用 [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) 属性。 在默认情况下启用了下采样 [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) 属性。

请注意,也可以在下文中规定一项具体决议。 [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) 属性,或 [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) 属性。 在第二种情况下,如果图像分辨率低于阈值,则下采样将不适用.

下面的代码示例显示在输出 PDF 文档中如何改变图像分辨率:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

分辨率根据页面上的真实图像大小计算.

## 在 Adobe PDF 格式中嵌入字体

Aspose.Words 还可以控制字体如何嵌入到产生的 PDF 文档中。 字体需要嵌入到任何 Adobe PDF 文档中,以确保文档能够在任何机器上正确渲染(参见关于该部分字体渲染的更多细节) [使用真 类型字体](/words/zh/java/using-truetype-fonts/)) (中文(简体) ). 默认 Aspose.Words 将文档中使用的字体子集嵌入生成的PDF。 在这种情况下,只有 glyphs(字符)在文档中被保存到PDF。

### 何时使用完整字体, 何时使用子集

可以指定一个选项,用于 Aspose.Words 以嵌入完整字体。 详情以及每种设置的一些利弊,见下表。

| 嵌入字体模式 |  优点 | 缺点 |
|  :-  |  :-  |  :-  |
|  `Full`  | 当您想要通过添加或修改文本来编辑由此产生的 PDF 时有用 。 包含所有字体, 因此全部 glyphs 在场。 | 由于一些字体是大字体(几兆字节),在不进行子设置的情况下嵌入它们可以产生大输出文件. |
|  `Subset`  | 如果想要使输出文件大小保持小一些, 子设置是有用的 。 | <p>用户不能使用输出 PDF 文档中的子集字体完全添加或编辑文本. 这是因为不是所有的 glyph含有字体的 s 。</p>

<p>如果用子集字体保存多个PDF并组装在一起,那么合并的PDF文档可能有一个包含许多不必要的子集的字体.</p>
 |

### 在 PDF 中嵌入完整字体

那个 [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) 属性允许您指定如何 Aspose.Words 将字体嵌入输出 PDF 文档。

- 怎么样? 要将完整字体嵌入输出 PDF 文件, 设置 **EmbedFullFonts** 改为 true
- 怎么样? 保存到 PDF 时的子集字体, 设置 **EmbedFullFonts** 改为 false

以下例子说明如何在输出的 PDF 文档中嵌入完整字体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

以下例子说明如何设置 Aspose.Words 至输出 PDF 中的子集字体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

您可以下载这些示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% /alert %}}

## 如何控制嵌入核心字体和 Windows 标准字体

核心字体和 Windows 标准字体是"标准"的字体集,通常出现在目标机上或由文档阅读器提供,因此它们不需要嵌入输出PDF中. 通过不嵌入这些字体,您可以缩小已渲染的 PDF 文档的大小,但保持可移植性 。

Aspose.Words 提供了选择字体如何导出到 PDF 的选项。 您可以选择将核心字体和标准字体嵌入输出 PDF 或跳过嵌入,并在目标机上使用标准核心 PDF 字体或系统字体. 使用其中任一选项,通常会导致 PDF 文档的文件大小显著缩小,因为 PDF 生成的文件 Aspose.Words。 。 。 。

- 由于这些选择是相互排斥的,你应该一次只选择一个.
- 在使用 PDF/A-1 遵守程序保存时,所有使用的字体必须嵌入 PDF 文档。 在保存遵守时, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) 属性必须设置为 false 页:1 [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) 属性必须设置为 [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### 嵌入核心字体

嵌入核心字体的选项可以通过使用 [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) 属性。 当它被设定为 true, 以下最受欢迎的"True Type"字体(Base 14字体)没有嵌入到输出 PDF 文档中:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

这些字体被相应的核心类型1字体取代,PDF打开时由阅读器提供.

下面的例子说明如何设置 Aspose.Words 避免嵌入核心字体,让读者用 PDF 替换 类型 1 字体:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的模板文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx)。 。 。 。

{{% /alert %}}

由于PDF查看器在任何被支持的平台上提供核心字体,当需要更大的文档可移植性时,这个选项也是有用的. 然而,核心字体可能与系统字体不同.

{{% alert color="primary" %}}

此设置只对 ANSI 有效(Windows-1252 编码文本。 将一个非ANSI文本写入PDF将总是需要嵌入相应的字体.

{{% /alert %}}

### 嵌入系统字体

此选项可以通过使用 [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) 属性。 当此属性设定为 [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), "军事"和"时代新罗马" true 类型字体不嵌入到 PDF 文档。 在这种情况下,客户端查看器依赖于安装在客户端操作系统中的字体. 当 **FontEmbeddingMode** 属性设定为 [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words 不嵌入任何字体。

下面的例子说明如何设置 Aspose.Words 将 Arial 和 Times 新罗马字体插入到 PDF 文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

当您希望在同一平台查看您的文档时, 此模式最为有用, 保留输出 PDF 中字体的确切外观 。

{{% alert color="primary" %}}

此设置只对 ANSI 有效(Windows-1252 编码文本。 将非ANSI文本写入PDF需要嵌入相应的字体.

{{% /alert %}}
