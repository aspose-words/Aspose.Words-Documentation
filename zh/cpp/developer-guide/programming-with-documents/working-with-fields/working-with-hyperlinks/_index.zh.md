---
title: 使用C++中的超链接
second_title: Aspose.Words对于C++
articleTitle: 添加或修改超链接
linktitle: 添加或修改超链接
description: "如何使用以下方法将超链接添加到文档中 Aspose.Words对于C++."
type: docs
weight: 180
url: /zh/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word文档中的超链接是`HYPERLINK`字段。 在Aspose.Words中，超链接是通过[FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/)类实现的。

## 插入超链接

使用[InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/)方法将超链接插入到文档中。 此方法接受三个参数:

1. 要在文档中显示的链接的文本
2. 链接目标（URL或文档内书签的名称）
3. 如果`URL`是文档中书签的名称，则应为true的布尔参数

**InsertHyperlink**方法始终在URL的开头和结尾添加撇号。

{{% alert color="primary" %}}

请注意，您需要使用`Font`属性显式指定超链接显示文本的字体格式。

{{% /alert %}}

下面的代码示例演示如何使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)将超链接插入到文档中:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## 替换或修改超链接

Microsoft Word文档中的超链接是一个字段。 Word文档中的字段是由多个节点组成的复杂结构，这些节点包括字段开始、字段代码、字段分隔符、字段结果和字段结束。 字段可以嵌套，包含丰富的内容，并跨越文档中的多个段落或部分。

`FieldHyperlink`类实现`HYPERLINK`字段。

下面的代码示例演示如何查找Word文档中的所有超链接并更改其`URL`和显示名称:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
