---
title: OLE 对象和在线视频
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 使用 OLE 对象和在线视频
linktitle: 使用 OLE 对象和在线视频
description: "使用 Python 将 ole 对象或在线视频插入文档中。"
type: docs
weight: 360
url: /zh/python-net/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE（对象链接和嵌入）是一种技术，用户可以通过该技术处理包含由第三方应用程序创建或编辑的"对象"的文档。也就是说，OLE 允许编辑应用程序将这些"对象"导出到另一个编辑应用程序，然后将它们与附加内容一起导入。

在本文中，我们将讨论插入 OLE 对象并设置其属性，以及将在线视频插入到文档中。

## 插入 OLE 对象

如果您需要 OLE 对象，请调用 [insert_ole_object](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object/) 方法并将 **ProgId** 与其他参数显式传递给它。

以下代码示例显示如何将 OLE 对象插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-DocumentBuilderInsertOleObject.py" >}}

### 插入 OLE 对象时设置文件名和扩展名

如果 OLE 处理程序未知，OLE 包是一种传统且"未记录"的存储嵌入对象的方法。

早期的 Windows 版本（例如 Windows 3.1、95 和 98）具有 Packager.exe 应用程序，可用于将任何类型的数据嵌入到文档中。该应用程序现已从 Windows 中排除，但如果 OLE 处理程序丢失或未知，Microsoft Word 和其他应用程序仍使用它来嵌入数据。 `OlePackage` 类允许用户访问 OLE 包属性。

以下代码示例显示如何设置 OLE 包的文件名、扩展名和显示名称：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOleObjectwithOlePackage.py" >}}

### 访问 OLE 对象原始数据

用户可以使用 `OleFormat` 类的各种属性和方法访问 OLE 对象数据。例如，可以获得 `OLE` 对象原始数据或链接的 OLE 对象的源文件的路径和名称。

以下代码示例演示如何使用 [get_raw_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/oleformat/get_raw_data/) 方法获取 OLE 对象原始数据：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-GetAccessToOLEObjectRawData.py" >}}

### 插入 OLE 对象作为图标

OLE 对象也可以作为图像插入到文档中。

以下代码示例显示如何插入 OLE 对象作为图标。为此，[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 类公开了 [insert_ole_object_as_icon](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_ole_object_as_icon/) 方法：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

以下代码示例演示如何将嵌入的 OLE 对象作为图标从流插入到文档中：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIconUsingStream.py" >}}

## 插入在线视频

可以通过*"插入"&gt;"在线视频"*选项卡将在线视频插入到Word文档中。您可以通过调用[insert_online_video](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_online_video/)方法将在线视频插入到当前位置的文档中。

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) 类引入了此方法的四个重载。第一个适用于最流行的视频资源，并以视频的 `URL` 作为参数。例如，第一个重载支持从 [YouTube](https://www.youtube.com/) 和 [维梅奥](https://vimeo.com/) 资源简单插入在线视频。

以下代码示例演示如何将 *Vimeo* 中的在线视频插入到文档中：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Pass direct url from youtu.be.
url = "https://www.youtube.com/watch?v=t_1LYZ102RA"

width = 360
height = 270

shape = builder.insert_online_video(url, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video.docx")
{{< /highlight >}}

第二个重载适用于所有其他视频资源，并采用嵌入的 HTML 代码作为参数。用于嵌入视频的 HTML 代码可能因提供商而异，因此请联系相应的提供商了解详细信息。

{{% alert color="primary" %}}

请注意，该文档将自动针对 MS Word 2013 进行优化以显示视频。

{{% /alert %}}

以下代码示例展示了如何使用此类 HTML 代码将在线视频插入到文档中：

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

# Shape width/height.
width = 360
height = 270

# Poster frame image.
f = open(docs_base.images_dir + "Logo.jpg", "rb")
imageBytes = f.read()
f.close()

# Visible url
vimeoVideoUrl = "https://vimeo.com/52477838"

# Embed Html code.
vimeoEmbedCode = ""

builder.insert_online_video(vimeoVideoUrl, vimeoEmbedCode, imageBytes, width, height)

doc.save(docs_base.artifacts_dir + "WorkingWithOleObjectsAndActiveX.insert_online_video_with_embed_html.docx")
{{< /highlight >}}
