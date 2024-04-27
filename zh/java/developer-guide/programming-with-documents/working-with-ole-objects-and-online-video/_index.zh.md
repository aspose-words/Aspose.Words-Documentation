---
title: 与 Ole 对象合作
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与 Ole 对象合作
linktitle: 与 Ole 对象合作
description: "使用 Java。 。 。 。"
type: docs
weight: 360
url: /zh/java/working-with-ole-objects/
---

OLE代表"对象链接和嵌入". 这是用户可以与包含第三方应用程序创建或编辑的"对象"文档合作的技术. 也就是说,OLE允许一个应用程序将这些"对象"导出到另一个应用程序进行编辑,然后以一些附加内容导入回来.

在本篇文章中,我们将讨论插入OLE对象并将其属性设置在文档中.

## 插入 Ole 对象

如果你想要OLE 对象,请打电话 [InsertOleObject](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObject-java.io.InputStream-java.lang.String-boolean-java.io.InputStream) 方法,并通过它 **ProgId** 与其他参数明确。

以下代码示例显示如何插入 OLE 文档中的对象:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertOleObject-DocumentBuilderInsertOleObject.java" >}}

### 插入 OLE 对象时设定文件名称和扩展名

OLE包是一种遗留和"无记录"的方式,如果一个OLE处理器未知,可以存储嵌入式对象.

早点 Windows 例如, Windows 3.1, 95, 和98有一个包机。 执行可用于将任何类型数据嵌入文档的应用程序。 此申请现已排除在 Windows不过 Microsoft Word 如果OLE 处理器缺失或未知,其他应用程序仍然使用它来嵌入数据. 那个 `OlePackage` 类允许用户访问 OLE 包属性.

以下代码示例显示如何设置 OLE 包的文件名称、扩展名和显示名称:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-InsertOleObjectwithOlePackage.java" >}}

### 获取 OLE 对象原始数据

用户可以使用 OLE 对象数据 使用 OSE 的各种属性和方法 `OleFormat` 课。 例如,有可能获得 `OLE` 对象原始数据或链接的OLE对象的源文件的路径和名称。

以下代码示例显示如何获取 OLE 使用 [GetRawData](https://reference.aspose.com/words/java/com.aspose.words/oleformat/#getRawData) 方法:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertElements-GetAccessToOLEObjectRawData.java" >}}

### 插入 OLE 作为图标的对象

OLE 对象也可以作为图像插入文档中.

以下代码示例显示如何将OLE对象作为图标插入. 为此, **DocumentBuilder** 班级曝光 [InsertOleObjectAsIcon](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOleObjectAsIcon-java.io.InputStream-java.lang.String-java.lang.String-java.lang.String) 方法。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.java" >}}

以下代码示例显示如何从流中将嵌入的OLE对象作为图标插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIconUsingStream.java" >}}

## 插入在线视频

在线视频可以从*"Insert" >"在线视频"*标签插入Word文档. 您可以通过调用: [InsertOnlineVideo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertOnlineVideo-java.lang.String-double-double) 方法:

那个 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 类引入了这种方法的四个超载. 第一个是用最受欢迎的视频资源 拍摄 `URL` 作为参数的视频。 例如,第一个超载支持简单插入来自 [视频](https://www.youtube.com/) 和 [维莫](https://vimeo.com/) 资源。

以下代码示例显示如何插入来自 *Vimeo* 输入文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideo.java" >}}

第二个超载与所有其他视频资源一起工作,并采用嵌入式HTML代码作为参数. 嵌入视频的HTML代码可能因提供方而异,因此联系各自的提供方了解详情.

{{% alert color="primary" %}}

请注意,该文件将为MS Word 2013自动优化显示视频.

{{% /alert %}}

以下代码示例显示如何使用这种HTML代码将在线视频插入文档:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Video-InsertOnlineVideo-InsertOnlineVideoWithEmbedHtml.java" >}}
