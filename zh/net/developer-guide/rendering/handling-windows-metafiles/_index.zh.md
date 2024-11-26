---
title: 处理 C# 中的 Windows 图元文件
second_title: .NET 格式的 Aspose.Words
articleTitle: 处理 Windows 图元文件
linktitle: 处理 Windows 图元文件
description: "Aspose.Words for .NET 实现了自己的 Windows 图元文件播放器，可以在所有平台上播放图元文件格式，并支持基本图元文件功能的处理，并且可以使用 C# 执行回退到不同类型的图元文件播放器。"
type: docs
weight: 30
url: /zh/net/handling-windows-metafiles/
timestamp: 2024-07-10-14-38-57
---

Windows 图元文件格式是一种图像文件格式，可以包含矢量和光栅图形。此格式用于将图形数据存储在内存或磁盘文件中。图元文件存储 Windows 图形设备接口 (GDI) 中的函数调用列表，必须执行这些函数调用才能在屏幕上显示图像。系统在显示上下文中解释并执行这些命令。

以前，Windows 图元文件是 Microsoft Word 支持的唯一矢量图像格式。 Microsoft Word 现在也支持 SVG 格式，但图元文件格式在 Word 文档中仍然常用。此外，图元文件还可以是某些其他应用程序（例如 Microsoft Visio）的交换格式。本质上，图元文件的主要目的是确保Windows应用程序之间图形信息的交换。

Windows 图元文件有 3 个版本：

- WMF – 存储对 16 位 GDI 的调用。
- EMF – 存储对 Win32/GDI 的调用。
- EMF+ 图元文件存储对 GDI+ 的调用。 EMF+ 图元文件也可以是双重的，用 EMF 和 EMF+ 部件描述相同的图形。

Windows 图元文件现有的问题是大多数非 Word 格式不支持它，而文档通常保存在这些非 Word 格式中。因此，需要将图元文件格式转换为其他光栅或矢量格式。只需将 Windows 图元文件传递到 GDI+ 即可轻松将其转换为 .NET 上的光栅图像，但在其他平台上则不可能，因为即使 GDI+ 也不提供从图元文件中提取矢量图形的功能。为了解决这些问题，Aspose.Words 实现了自己的 Windows 图元文件播放器，它能够在所有平台上播放矢量和光栅图形图元文件格式。

## 控制 Aspose.Words 图元文件播放器

[MetafileRenderingOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/) 类使您能够控制图元文件播放器。例如，您可以使用 [RenderingMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) 属性确定图元文件图像的呈现方式，该属性在转换为位图时具有特殊含义（另请参阅 [MetafileRenderingOptions](https://reference.aspose.com/words/zh/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/) 属性）。

保存到位图在 .NET 以外的平台上的工作方式有所不同。虽然 .NET GDI+ 渲染是一个即使对于最复杂的图元文件格式也几乎完美工作的参考，但在其他平台上它可能会导致问题或根本不受支持。

## 支持光栅操作

光栅操作是一项复杂的图元文件功能，目前支持有限。光栅操作可用于 WMF 和 EMF 图元文件格式。 EMF+ 图元文件格式不直接使用光栅操作，但可以包含 EMF 部分、嵌入式 WMF 或 EMF 图元文件。

有二元和三元光栅运算：

- 二进制光栅操作应用于钢笔绘图命令，例如绘制直线和曲线。绘制线条时，通过对十六进制颜色值使用指定的按位逻辑运算，将笔颜色与目标位图颜色（设备表面上相应像素的颜色）组合起来。下面的图像示例说明了应用于 20 个不同颜色条的所有 16 种二进制光栅运算的效果。首先绘制垂直颜色条，在应用每个二进制光栅操作后绘制水平条。对于简单情况，R2_BLACK 绘制黑色，R2_NOT 反转颜色，R2_NOP 不更改背景，R2_WHITE 绘制白色。

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="处理-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- 绘制位图图像时应用三元光栅操作。它们通过使用具有指定十六进制颜色值的按位逻辑运算来组合相应位图图像像素、画笔和目标位图的颜色。使用三元光栅运算的最常见目的之一是模拟透明度。下面示例中提供的图像演示了如何模拟图标透明度。位图有两种类型：黑白蒙版位图和彩色位图。首先，使用 SRCAND 光栅操作绘制掩码位图。它将不透明图标区域更改为黑色和白色，透明区域保持不变。然后使用 SRCINVERT 光栅操作绘制第二个位图。它在黑色区域上显示彩色像素，而透明区域保持不变。

<img src="/words/net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="处理-windows-元文件-aspose-words-net-2" style="width:650px"/>

光栅操作不能直接转换为矢量图形。 Aspose.Words 通过部分光栅化受光栅操作影响的设备表面来模拟光栅操作。为此，使用 [EmulateRasterOperations](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) 属性。

{{% alert color="primary" %}}

虽然 Aspose.Words 目前不支持二元光栅操作，并且支持有限数量的三元光栅操作，但它可以直接处理转换为矢量图形的基本情况，例如 R2_BLACK、R2_WHITE、R2_NOP。此外，设备表面的光栅化显着影响性能，尤其是当涉及大量光栅操作记录时。

{{% /alert %}}

下面显示的示例演示了当无法将某些图元文件记录正确渲染为矢量图形时，Aspose.Words 如何将图元文件渲染为位图：

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cs" >}}

## 图元文件后备设置

Aspose.Words 不支持许多最复杂或罕见的图元文件功能。用户可以实现[IWarningCallBack](https://reference.aspose.com/words/zh/net/aspose.words/iwarningcallback/)接口并接收警告消息。如果 Aspose.Words 在图元文件中遇到不受支持的功能，它会发出带有 [WarningSource](https://reference.aspose.com/words/zh/net/aspose.words/warningsource/).**Metafile** 的警告消息。在这种情况下，Aspose.Words 可能会回退到不同类型的图元文件播放器。还发出有关后备的警告消息。

首先，Aspose.Words 执行从矢量图元文件播放器到光栅的回退，这是由 [RenderingMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/renderingmode/) 属性控制的。如果禁用后备功能，Aspose.Words 会尝试渲染一些替代图形，而不是不支持的功能。

Aspose.Words 在 .NET 上使用 GDI+ 成功将图元文件播放为光栅，这使得此回调选项安全。

其次，EMF+ Dual 图元文件有一个选项可以从播放 EMF+ 部分回退到 EMF 部分。它由 [EmfPlusDualRenderingMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/emfplusdualrenderingmode/) 控制。如果播放 EMF 部分时出现一些问题，也可能会执行回退到光栅。

对于光栅操作，如果 [EmulateRasterOperations](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingoptions/emulaterasteroperations/) 被禁用，则光栅操作被视为不支持，如果启用，则会触发回退到位图图元文件播放器。因此，如果您有一个带有光栅操作的图元文件，但您不想使用光栅操作模拟，但又想获得带有替换图形的矢量输出，则选择 [MetafileRenderingMode](https://reference.aspose.com/words/zh/net/aspose.words.saving/metafilerenderingmode/).**Vector**。
