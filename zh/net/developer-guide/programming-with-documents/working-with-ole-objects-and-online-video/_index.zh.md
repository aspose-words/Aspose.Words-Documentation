---
title: 在 C# 中使用 OLE 对象和在线视频
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用 OLE 对象和在线视频
linktitle: 使用 OLE 对象和在线视频
description: "使用 C# 在文档中创建和修改 OLE 嵌入。"
type: docs
weight: 360
url: /zh/net/working-with-ole-objects/
---

OLE（对象链接和嵌入）是一种技术，用户可以通过该技术处理包含由第三方应用程序创建或编辑的"对象"的文档。也就是说，OLE 允许编辑应用程序将这些"对象"导出到另一个编辑应用程序，然后将它们与附加内容一起导入。

在本文中，我们将讨论插入 OLE 对象并设置其属性，以及将在线视频插入到文档中。

## 插入 OLE 对象

如果您需要 OLE 对象，请调用 [InsertOleObject](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertoleobject/) 方法并将 **ProgId** 与其他参数显式传递给它。

以下代码示例显示如何将 OLE 对象插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertOleObject.cs" >}}

### 插入 OLE 对象时设置文件名和扩展名

如果 OLE 处理程序未知，OLE 包是一种传统且"未记录"的存储嵌入对象的方法。

早期的 Windows 版本（例如 Windows 3.1、95 和 98）具有 Packager.exe 应用程序，可用于将任何类型的数据嵌入到文档中。该应用程序现已从 Windows 中排除，但如果 OLE 处理程序丢失或未知，Microsoft Word 和其他应用程序仍使用它来嵌入数据。 `OlePackage` 类允许用户访问 OLE 包属性。

以下代码示例显示如何设置 OLE 包的文件名、扩展名和显示名称：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.cs" >}}

### 访问 OLE 对象原始数据

用户可以使用 `OleFormat` 类的各种属性和方法访问 OLE 对象数据。例如，可以获得 `OLE` 对象原始数据或链接的 OLE 对象的源文件的路径和名称。

以下代码示例演示如何使用 [GetRawData](https://reference.aspose.com/words/zh/net/aspose.words.drawing/oleformat/getrawdata/) 方法获取 OLE 对象原始数据：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.cs" >}}

### 插入 OLE 对象作为图标

OLE 对象也可以作为图像插入到文档中。

以下代码示例显示如何插入 OLE 对象作为图标。为此，[DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 类公开了 [InsertOleObjectAsIcon](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertoleobjectasicon/) 方法：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cs" >}}

以下代码示例演示如何将嵌入的 OLE 对象作为图标从流插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.cs" >}}

{{% alert color="primary" %}}

为了正确显示，图标的最大尺寸必须为 32x32。

{{% /alert %}}

## 插入在线视频

可以通过*"插入"&gt;"在线视频"*选项卡将在线视频插入到Word文档中。您可以通过调用[InsertOnlineVideo](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertonlinevideo/)方法将在线视频插入到当前位置的文档中。

[DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 类引入了此方法的四个重载。第一个适用于最流行的视频资源，并以视频的 `URL` 作为参数。例如，第一个重载支持从 [YouTube](https://www.youtube.com/) 和 [维梅奥](https://vimeo.com/) 资源简单插入在线视频。

以下代码示例演示如何将 *Vimeo* 中的在线视频插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideo-InsertOnlineVideo.cs" >}}

第二个重载适用于所有其他视频资源，并采用嵌入的 HTML 代码作为参数。用于嵌入视频的 HTML 代码可能因提供商而异，因此请联系相应的提供商了解详细信息。

{{% alert color="primary" %}}

请注意，该文档将自动针对 MS Word 2013 进行优化以显示视频。

{{% /alert %}}

以下代码示例展示了如何使用此类 HTML 代码将在线视频插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Video-InsertOnlineVideoWithEmbedHtml-InsertOnlineVideoWithEmbedHtml.cs" >}}