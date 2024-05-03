---
title: 使用书签工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 使用书签
linktitle: 使用书签
description: "理解书签概念以及如何使用书签用于您的程序 Java。 。 。 。"
type: docs
weight: 180
url: /zh/java/working-with-bookmarks/
---

书签标识在 a Microsoft Word 记录您命名和识别的地址或碎片,供今后参考。 例如,您可能使用书签来识别您想要稍后修改的文本 。 与其在文档中滚动以定位文本,不如使用书签对话框来查看.

与 Aspose.Words, 您可以在报表或文档中使用书签将一些数据插入书签或对其内容应用特殊格式。 也可以使用书签从文档中的某个位置获取文本.

使用书签可以执行的动作 Aspose.Words 与您可以使用的相同 Microsoft Word。 。 。 您可以插入新的书签, 删除, 移动到书签上, 获取或设置书签名称, 获取或设置其中的文本 。

## 插入书签

使用 [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) 和 [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) 以分别标记其开始和结束来创建书签。 别忘了将同一个书签名称传给两种方法. 文档中的书签可以重叠,跨越任意范围. 不良形成的书签或带有重复名称的书签在保存文档时会被忽略.

{{% alert color="primary" %}}

书签上的所有白色空间都换成了下划线. 这个限制来自MS Word格式,因为MS Word格式的书签,如DOCX或DOC,不能有白空格. 然而,PDF允许这种书签. 所以,现在,如果你需要使用书签 在PDF, XPS 或 SWF 轮廓, 您可以用白色的空格 。

{{% /alert %}}

以下代码示例显示如何创建新书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## 获取书签

有时需要通过书签或其他目的获得书签收藏. 使用 **节点. get Range** 返回 a 的文档节点所显示的属性 **Range** 对象代表此节点中文档的部分。 使用此对象获取 a **BookmarkCollection** ,然后使用收藏索引器获取特定的书签.

{{% alert color="primary" %}}

您可以下载以下示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)。 。 。 。

{{% /alert %}}

以下代码示例说明了如何从书签收藏中获取书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

以下代码示例显示如何获得或设置书签名称和文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

以下代码示例显示如何对表格进行书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

如果将书签名称改为文档中已经存在的名称,则不会产生错误,在保存文档时只存储第一个书签.

请注意,文档中的一些书签被指定组成字段. 移动到这样的书签并插入文字,将文字插入窗体字段代码。 虽然这不会使窗体字段无效,但插入的文本不会被可见,因为它成为字段代码的一部分.

以下代码示例显示如何访问书签表格的列:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## 移动到书签

如果需要将内容丰富的内容(不仅仅是纯文本)插入书签,应当使用 [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) 将光标移动到书签,然后使用 **DocumentBuilder** 插入内容的方法和属性。

## 显示隐藏书签内容

整个书签(* 包括书签内容*)可以封装在真实部分 `IF` 使用 Aspose.Words。 。 。 。 这可能是这样的方式, `IF` 字段包含表达式中的嵌入式合并字段(*Left of Operator *),并视合并字段的值而定, `IF` 字段显示或隐藏Word文档中的书签内容。

以下代码示例显示如何显示/隐藏书签.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
