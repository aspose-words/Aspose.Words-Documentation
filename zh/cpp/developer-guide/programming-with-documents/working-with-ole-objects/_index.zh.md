---
title: 在C++中使用OLE对象
second_title: Aspose.Words对于C++
articleTitle: 使用OLE对象
linktitle: 使用OLE对象
description: "使用C++在文档中创建和修改OLE嵌入。"
type: docs
weight: 360
url: /zh/cpp/working-with-ole-objects/
---

OLE（对象链接和嵌入）是一种技术，用户可以使用包含由第三方应用程序创建或编辑的"对象"的文档。 也就是说，OLE允许编辑应用程序将这些"对象"导出到另一个编辑应用程序，然后将它们与附加内容一起导入。

在本文中，我们将讨论插入OLE对象并将其属性设置到文档中。

## 插入OLE对象

如果您想要OLE对象，请调用[InsertOleObject](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobject/)方法并将**ProgId**与其他参数显式传递给它。

下面的代码示例演示如何将OLE对象插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-DocumentBuilderInsertOleObject.h" >}}

### 插入OLE对象时设置文件名和扩展名

如果OLE处理程序未知，OLE包是存储嵌入对象的传统和"未记录"方式。

早期的Windows版本，如Windows3.1，95和98有一个Packager。exe应用程序，可用于将任何类型的数据嵌入到文档中。 此应用程序现在从Windows中排除，但Microsoft Word和其他应用程序仍然使用它来嵌入数据，如果OLE处理程序丢失或未知。 `OlePackage`类允许用户访问OLE包属性。

下面的代码示例演示如何设置OLE包的文件名、扩展名和显示名称:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOleObjectwithOlePackage.h" >}}

### 获取对OLE对象原始数据的访问

用户可以使用`OleFormat`类的各种属性和方法访问OLE对象数据。 例如，可以获取`OLE`对象原始数据或链接的OLE对象的源文件的路径和名称。

下面的代码示例演示如何使用[GetRawData](https://reference.aspose.com/words/cpp/aspose.words.drawing/oleformat/getrawdata/)方法获取OLE对象原始数据:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-GetAccessToOLEObjectRawData.h" >}}

### 插入Ole对象作为图标

OLE对象也可以作为图像插入到文档中。

下面的代码示例演示如何将OLE对象作为图标插入。 为此，[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)类公开[InsertOleObjectAsIcon](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertoleobjectasicon/)方法:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIcon.h" >}}

下面的代码示例演示如何将嵌入的OLE对象作为流中的图标插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with OleObjects and ActiveX-InsertOLEObjectAsIconUsingStream.h" >}}

## 插入在线视频

在线视频可以从*"Insert" > "Online Video"*选项卡插入到Word文档中。 您可以通过调用[InsertOnlineVideo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertonlinevideo/)方法将在线视频插入到当前位置的文档中。

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)类引入了此方法的四个重载。 第一个使用最流行的视频资源，并将视频的`URL`作为参数。 例如，第一个重载支持从简单的插入在线视频 [YouTube](https://www.youtube.com/) 和 [维梅奥](https://vimeo.com/) 资源。

下面的代码示例演示如何将*Vimeo*中的在线视频插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideo.h" >}}

第二个重载与所有其他视频资源一起工作，并将嵌入的HTML代码作为参数。 嵌入视频的HTML代码可能因提供商而异，因此请联系相应的提供商以获取详细信息。

{{% alert color="primary" %}}

请注意，文档将自动优化为MSWord2013显示视频。

{{% /alert %}}

下面的代码示例演示如何使用这样的HTML代码将在线视频插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertOnlineVideoWithEmbedHtml.h" >}}