---
title: 使用Java中的超链接
second_title: Aspose.Words为Java
articleTitle: 添加或修改超链接
linktitle: 添加或修改超链接
description: "如何使用Java将超链接添加到文档中."
type: docs
weight: 50
url: /zh/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文档中的超链接是`HYPERLINK`字段。 在Aspose.Words中，超链接是通过[FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/)类实现的。

## 插入超链接

使用[InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean)方法将超链接插入到文档中。 此方法接受三个参数:

1. 要在文档中显示的链接的文本
2. 链接目标（URL或文档内书签的名称）
3. 如果`URL`是文档中书签的名称，则应为true的布尔参数

**InsertHyperlink**方法始终在URL的开头和结尾添加撇号。

{{% alert color="primary" %}}

请注意，您需要使用`Font`属性显式指定超链接显示文本的字体格式。

{{% /alert %}}

下面的代码示例演示如何使用[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)将超链接插入到文档中:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## 替换或修改超链接

Microsoft Word文档中的超链接是一个字段。 Word文档中的字段，正如我们前面所说，是一个复杂的结构，由多个节点组成，包括字段开始，字段代码，字段分隔符，字段结果和字段结束。 字段可以嵌套，包含丰富的内容，并跨越文档中的多个段落或部分。

要替换或修改超链接，需要在文档中找到超链接并替换它们的文本、URLs或两者。

下面的代码示例演示如何查找Word文档中的所有超链接并更改其`URL`和显示名称:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
