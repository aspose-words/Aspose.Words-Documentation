---
title: 使用Ole对象
second_title: Aspose.Words为Java
articleTitle: 使用Ole对象
linktitle: 使用Ole对象
description: "使用Java在文档中创建和修改OLE嵌入。"
type: docs
weight: 360
url: /zh/java/working-with-ole-objects/
timestamp: 2024-01-27-14-07-04
---

OLE代表"对象链接和嵌入"。 这是用户可以使用包含由第三方应用程序创建或编辑的"对象"的文档的技术。 也就是说，OLE允许应用程序将这些"对象"导出到另一个应用程序进行编辑，然后将它们与一些附加内容一起导入。

在本文中，我们将讨论插入OLE对象并将其属性设置到文档中。

## 插入Ole对象

如果您想要OLE对象，请调用[InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream)方法并将**ProgId**与其他参数显式传递给它。

下面的代码示例演示如何将OLE对象插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### 插入OLE对象时设置文件名和扩展名

如果OLE处理程序未知，OLE包是存储嵌入对象的传统和"未记录"方式。

早期的Windows版本（如Windows 3.1、95和98）有一个Packager.exe应用程序，可用于将任何类型的数据嵌入到文档中。 此应用程序现在从Windows中排除，但Microsoft Word和其他应用程序仍然使用它来嵌入数据，如果OLE处理程序丢失或未知。 `OlePackage`类允许用户访问OLE Package属性。

下面的代码示例演示如何为OLE Package设置文件名、扩展名和显示名称:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### 访问OLE对象原始数据

用户可以使用`OleFormat`类的各种属性和方法访问OLE对象数据。 例如，可以获取`OLE`对象原始数据或链接的OLE对象的源文件的路径和名称。

下面的代码示例演示如何使用[GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData)方法获取OLE对象原始数据:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### 插入OLE对象作为图标

OLE对象也可以作为图像插入到文档中。

下面的代码示例演示如何将OLE对象作为图标插入。 为此，**DocumentBuilder**类公开[InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String)方法。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

下面的代码示例演示如何将嵌入的OLE对象作为流中的图标插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## 插入在线视频

在线视频可以从*"Insert" > "Online Video"*选项卡插入Word文档。 您可以通过调用[InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double)方法将在线视频插入到当前位置的文档中:

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)类引入了此方法的四个重载。 第一个使用最流行的视频资源，并将视频的`URL`作为参数。 例如，第一个重载支持从简单的插入在线视频 [YouTube](https://www.youtube.com/) 和 [维梅奥](https://vimeo.com/) 资源。

下面的代码示例演示如何将*Vimeo*中的在线视频插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

第二个重载与所有其他视频资源一起工作，并将嵌入的HTML代码作为参数。 嵌入视频的HTML代码可能因提供商而异，因此请联系相应的提供商以获取详细信息。

{{% alert color="primary" %}}

请注意，文档将自动优化为MSWord2013显示视频。

{{% /alert %}}

下面的代码示例演示如何使用这样的HTML代码将在线视频插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
