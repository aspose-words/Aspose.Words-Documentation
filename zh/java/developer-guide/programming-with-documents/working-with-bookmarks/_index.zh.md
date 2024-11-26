---
title: 使用Java中的书签
second_title: Aspose.Words为Java
articleTitle: 使用书签
linktitle: 使用书签
description: "了解书签概念以及如何使用Java在程序中使用书签。"
type: docs
weight: 180
url: /zh/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

书签在Microsoft Word文档中标识您命名并标识以供将来参考的位置或片段。 例如，您可以使用书签来标识要稍后修改的文本。 您可以使用"书签"对话框来查找文本，而不是滚动文档以查找文本。

使用Aspose.Words，您可以使用报表或文档中的书签将一些数据插入书签或对其内容应用特殊格式。 您还可以使用书签从文档中的某个位置检索文本。

使用Aspose.Words可以使用书签执行的操作与使用Microsoft Word可以执行的操作相同。 您可以插入新书签，删除，移动到书签，获取或设置书签名称，获取或设置包含在其中的文本。

## 插入书签

使用[startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String)和[endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String)通过分别标记书签的开始和结束来创建书签。 不要忘记将相同的书签名称传递给这两种方法。 文档中的书签可以重叠并跨越任何范围。 保存文档时，格式错误的书签或名称重复的书签将被忽略。

{{% alert color="primary" %}}

书签中的所有空格都替换为下划线。 此限制来自MSWord格式，因为MSWord格式的书签（如DOCX或DOC）不能有空格。 但是，PDF允许这样的书签。 所以现在，如果您需要在PDF，XPS或SWF轮廓中使用书签，则可以将它们与空格一起使用。

{{% /alert %}}

下面的代码示例演示如何创建新书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## 获取书签

有时需要获取书签集合以遍历书签或用于其他目的。 使用返回表示此节点中包含的文档部分的**Range**对象的任何文档节点公开的**Node.getRange**属性。 使用此对象检索**BookmarkCollection**，然后使用集合索引器获取特定书签。

{{% alert color="primary" %}}

您可以从以下位置下载以下示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

下面的代码示例演示如何从书签集合中获取书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

下面的代码示例演示如何获取或设置书签名称和文本:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

下面的代码示例演示如何为表添加书签:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

如果将书签的名称更改为文档中已存在的名称，则不会生成错误，并且在保存文档时只存储第一个书签。

请注意，文档中的某些书签被分配给表单字段。 移动到这样的书签并在那里插入文本将文本插入表单字段代码中。 虽然这不会使表单字段无效，但插入的文本将不可见，因为它成为字段代码的一部分。

下面的代码示例演示如何访问已添加书签的表的列:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## 移动到书签

如果您需要将丰富内容（不仅仅是纯文本）插入书签，则应使用[moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String)将光标移动到书签，然后使用**DocumentBuilder**方法和属性插入内容。

## 显示隐藏书签内容

整个书签（*including the bookmarked content*）可以使用Aspose.Words封装在`IF`字段的真实部分中。 `IF`字段在表达式(*Left of Operator*)中包含嵌套的合并字段，并且根据合并字段的值，`IF`字段显示或隐藏Word文档中的书签内容。

下面的代码示例演示如何显示/隐藏书签。

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
