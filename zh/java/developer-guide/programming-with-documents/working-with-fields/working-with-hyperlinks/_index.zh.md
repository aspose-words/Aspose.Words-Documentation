---
title: 与超链接一起工作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 添加或修改超链接
linktitle: 添加或修改超链接
description: "如何使用 Java。 。 。 。"
type: docs
weight: 50
url: /zh/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

一个超链接在 Microsoft Word 文档是 `HYPERLINK` 字段。 内 Aspose.Words, 超链接是通过 [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) 课。

## 插入超链接

使用 [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) 在文档中插入超链接的方法。 这种方法接受三个参数:

一、导 言 文档中要显示的链接文本
2. 国家 链接目的地( URL 或文档中书签的名称)
3个 布尔参数应当为 true 如果 `URL` 是文档中书签的名称

那个 **InsertHyperlink** 方法总是在 URL 的开头和结尾添加 aposrophes 。

{{% alert color="primary" %}}

请注意,您需要明确使用超链接显示文本的字体格式 `Font` 属性。

{{% /alert %}}

以下代码示例显示如何使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)编号:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 替换或修改超链接

超链接 Microsoft Word 文档是一个字段。 一个Word文档中的字段,正如我们早些时候说过的,是一个复杂的结构,由多个节点组成,包括字段起始,字段代码,字段分隔符,字段结果和字段结尾. 字段可以嵌入,包含丰富的内容,并跨越文档中的多个段落或段落.

要替换或修改超链接,需要在文档中找到超链接,并替换其文本,URL,或两者兼而有之.

以下代码示例显示如何在 Word 文档中找到所有超链接并更改其 `URL` 并显示名称:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
