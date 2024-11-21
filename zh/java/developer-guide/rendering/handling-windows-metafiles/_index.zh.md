---
title: 处理 Windows 元文件在 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 处理 Windows 元文件
linktitle: 处理 Windows 元文件
description: "Aspose.Words (单位:千美元) Java 执行自己的 Windows Metafile播放器在所有平台上播放Metafile格式,并支持处理基本的 metafile 特性,并且可以执行倒置到另一种类型的 metafile播放器."
type: docs
weight: 30
url: /zh/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Metafile格式是一种可以同时包含矢量和光栅图形的图像文件格式. 该格式用于存储内存或磁盘文件中的图形数据. 元文件存储函数调用列表 Windows 要在屏幕上显示图像,必须执行的图形设备接口(GDI)。 系统在显示上下文中解释并执行这些命令.

以前, Windows Metafile 是支持的唯一向量图像格式 Microsoft Word。 。 。 。 Microsoft Word 现在也支持SVG格式,但Word文档仍然普遍使用元文件格式. 另外,Metafile也可以是一些其它应用程序的交换格式,例如: Microsoft 维修. 基本上,Metafile的主要目的是确保图形信息的交流。 Windows 应用。

有三个版本 Windows 元文件:

-WMF – 商店呼叫16bit GDI.
-EMF – 商店呼叫Win32/GDI.
- EMF+Metafile商店呼叫GDI+. EMF+Metafile也可能是双重的,描述相同的图形与EMF和EMF+两个部分.

目前的问题与 Windows Metafile是它没有被大多数非Word格式支持,文档通常被保存到其中. 因此,它需要将Metafile格式转换成其他光栅或矢量格式. 很容易转换 Windows 调制文件到光栅图像 .NET ,但是在其他平台上是不可能的,因为即使是GDI+也没有提供功能从Metafile中提取矢量图形. 为了解决这些问题, Aspose.Words 执行自己的 Windows Metafile播放器,它可以在所有平台上同时播放Metafile格式的矢量和光栅图形.

## 控制 Aspose.Words 元文件播放器

那个 [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) 类可以控制元文件播放器。 例如,您可以确定如何使用 [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) 属性,在转换为位图时具有特殊含义(另见 [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) )).

## 支持拉斯特业务

Raster操作是一个复杂的元文件功能,目前支持有限. RAST操作以WMF和EMF metafile格式提供. EMF+元文件格式不直接使用光栅操作,但可以包含EMF部件,嵌入式WMF或EMF元文件.

有二进制和三进制光栅操作:

- 二进制光栅操作适用于笔画命令,例如绘图线和曲线。 绘制线条时,笔色与目的地位图颜色(设备表面对应像素的颜色)结合,使用指定位点逻辑操作,并带有六元色值. 下面的图像示例说明了适用于20个不同色条的所有16个二进制光栅操作的效果. 垂直的颜色条首先绘制,水平条在每次二进制光栅操作应用后绘制. 简单来说, R2_BLACK 画黑色, R2反向颜色, R2_NOP 不改变背景,以及 R2_WHITE 画白.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- 在绘制位图图像时应用三级光栅操作。 它们通过使用带有指定的六角色值的位图逻辑操作,将相应的位图图像像素,刷子,以及目的地位图的颜色结合起来. 使用三角光栅操作的最常见目的之一是模仿透明度。 以下实例中提供的形象表明,如何可以效仿图标的透明度。 位图有两种类型:b/w 面具位图和颜色位图. 首先,面具位图与SRCAND光栅操作一起绘制. 它将不透明的图标区域改为黑白,使透明区域保持不变. 然后用SRCINVERT光栅操作绘制第二个位图. 它显示了黑色区域上的颜色像素,使得透明区域保持不变.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Raster操作不能直接转换成矢量图形. Aspose.Words 通过部分光栅化受光栅操作影响的设备表面来模拟光栅操作. 为此, [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) 属性被使用。

{{% alert color="primary" %}}

虽然目前不支持二进制光栅操作,但支持三进制光栅操作的次数有限 Aspose.Words, 例如,它可以直接处理转换成矢量图形的基本情况, R2_BLACK, R2_WHITE, R2_NOP。 。 。 另外,设备表面的光栅化也严重影响性能,特别是在涉及大量光栅操作记录时.

{{% /alert %}}

下面的例子说明: Aspose.Words 当无法将一些元文件记录正确转换为矢量图形时, 将元文件变成位图:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
