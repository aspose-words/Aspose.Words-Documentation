---
title: 在C++中处理Windows元文件
second_title: Aspose.Words对于C++
articleTitle: 处理Windows元文件
linktitle: 处理Windows元文件
description: "Aspose.Words对于C++ 实现自己的Windows元文件播放器在所有平台上播放元文件格式，并支持基本元文件功能的处理，并可以执行回退到不同类型的元文件播放器。"
type: docs
weight: 30
url: /zh/cpp/handling-windows-metafiles/
---

Windows元文件格式是一种图像文件格式，可以包含矢量和光栅图形。 此格式用于将图形数据存储在内存或磁盘文件中。 图元文件存储Windows图形设备接口(GDI)中必须执行以在屏幕上显示图像的函数调用列表。 系统在显示上下文中解释和执行这些命令。

以前，Windows元文件是Microsoft Word支持的唯一矢量图像格式。 Microsoft Word现在也支持SVG格式，但图元文件格式仍然常用于Word文档。 此外，图元文件可能是某些其他应用程序（如Microsoft Visio）的交换格式。 本质上，元文件的主要目的是确保Windows应用程序之间的图形信息交换。

Windows元文件有3个版本:

- WMF–存储对16位GDI的调用。
- EMF–存储对Win32/GDI的调用。
- EMF+元文件存储调用GDI+。 EMF+元文件也可以是双重的，用EMF和EMF+部分描述相同的图形。

Windows元文件存在的问题是，大多数非Word格式不支持它，通常会保存文档。 因此，需要将图元文件格式转换为其他栅格或矢量格式。 将Windows元文件转换为.NET上的光栅图像很容易，只需将其传递给GDI+，但在其他平台上是不可能的，因为即使GDI+也不提供从元文件中提取矢量图形的功能。 为了解决这些问题，Aspose.Words实现了自己的Windows元文件播放器，它能够在所有平台上播放矢量和光栅图形的元文件格式。

## 控制Aspose.Words元文件播放器

[MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/)类使您能够控制图元文件播放器。 例如，您可以使用[RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/)属性确定元文件图像应如何呈现，该属性在转换为位图时具有特殊含义（另请参阅[MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)属性）。

保存到位图在.NET以外的平台上的工作方式不同。 虽然.NETGDI+渲染是一个即使对于最复杂的图元文件格式也几乎完美工作的引用，但在其他平台上它可能会导致问题或根本不支持。

## 支持栅格操作

栅格操作是一个复杂的图元文件功能，目前支持有限。 栅格操作有WMF和EMF元文件格式。 EMF+元文件格式不直接使用栅格操作，但可以包含EMF部分、嵌入的WMF或EMF元文件。

有二元和三元栅格操作:

- 二进制栅格操作应用于笔绘图命令，例如绘制线条和曲线。 在绘制线条时，通过使用具有十六进制颜色值的指定按位逻辑运算，将笔颜色与目标位图颜色（设备表面上相应像素的颜色）组合。 下图示例说明了应用于20个不同颜色条的所有16个二进制栅格操作的效果。 首先绘制垂直颜色条，在应用每个二进制栅格操作后绘制水平条。 对于简单的情况，R2_BLACK绘制黑色，R2_NOT反转颜色，R2_NOP不改变背景，R2_WHITE绘制白色。

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- 绘制位图图像时应用三元栅格操作。 它们通过使用具有指定十六进制颜色值的按位逻辑运算来组合相应位图图像像素、画笔和目标位图的颜色。 使用三元栅格操作的最常见目的之一是模拟透明度。 下面的示例中提供的图像演示了如何模拟图标透明度。 有两种类型的位图：b/w掩码位图和颜色位图。 首先，使用SRCAND栅格操作绘制掩码位图。 它将不透明图标区域更改为黑色和白色，使透明区域保持不变。 然后用SRCINVERT栅格操作绘制第二个位图。 它显示黑色区域上的彩色像素，而保持透明区域不变。

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

栅格操作不能直接转换为矢量图形。 Aspose.Words通过对受栅格操作影响的设备表面进行部分栅格化来模拟栅格操作。 为此，使用[EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/)属性。

{{% alert color="primary" %}}

虽然目前不支持二进制栅格操作，并且Aspose.Words支持有限数量的三元栅格操作，但它可以直接处理转换为矢量图形的基本情况，例如, R2_BLACK, R2_WHITE, R2_NOP. 此外，设备表面的光栅化会显着影响性能，特别是当涉及大量的光栅操作记录时。

{{% /alert %}}

下面显示的示例演示了Aspose.Words在无法将某些图元文件记录正确呈现为矢量图形时如何将图元文件呈现为位图:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## 元文件回退设置

Aspose.Words不支持许多最复杂或最罕见的元文件功能。 用户可以实现[IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/)接口并接收警告消息。 如果Aspose.Words在图元文件中遇到不受支持的功能，它会发出带有[WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/)的警告消息。**Metafile**. 在这种情况下，Aspose.Words可以执行回退到不同类型的元文件播放器。 还会发出有关回退的警告消息。

首先，Aspose.Words执行从矢量图元文件播放器到栅格的回退，栅格由[RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/)属性控制。 如果禁用了回退功能，Aspose.Words会尝试呈现一些替代图形，而不是不支持的功能。

Aspose.Words使用.NET上的GDI+成功将图元文件播放到栅格，这使得此回调选项安全。

其次，EMF+双元文件有一个选项，可以从播放EMF+部分回退到EMF部分。 它由[EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/)控制。 如果在播放EMF部分时出现一些问题，则也可以执行回退到栅格。

至于栅格操作，如果禁用[EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/)，则将栅格操作视为不支持，如果启用，则会触发回退到bitmap图元文件播放器。 因此，如果您有一个包含栅格操作的图元文件，但您不想使用栅格操作仿真，但又想获取包含替换图形的矢量输出，则选择[MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/)。**Vector**.
