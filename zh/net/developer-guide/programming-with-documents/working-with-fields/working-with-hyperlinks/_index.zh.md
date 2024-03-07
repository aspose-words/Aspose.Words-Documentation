---
title: 使用 C# 中的超链接
second_title: .NET 格式的 Aspose.Words
articleTitle: 添加或修改超链接
linktitle: 添加或修改超链接
description: "如何使用 Aspose.Words for .NET 将超链接添加到 C# 文档中。"
type: docs
weight: 50
url: /zh/net/working-with-hyperlinks/
---

Microsoft Word 文档中的超链接是 `HYPERLINK` 字段。在 Aspose.Words 中，超链接是通过 [FieldHyperlink](https://reference.aspose.com/words/zh/net/aspose.words.fields/fieldhyperlink/) 类实现的。

## 插入超链接

使用 [InsertHyperlink](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/inserthyperlink/) 方法将超链接插入到文档中。该方法接受三个参数：

1. 文档中显示的链接文本
2. 链接目的地（文档内的 URL 或书签名称）
3.布尔参数，如果`URL`是文档内书签的名称，则应为true

**InsertHyperlink** 方法始终在 URL 的开头和结尾添加撇号。

{{% alert color="primary" %}}

请注意，您需要使用 `Font` 属性显式指定超链接显示文本的字体格式。

{{% /alert %}}

以下代码示例演示如何使用 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 将超链接插入到文档中：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## 替换或修改超链接

Microsoft Word 文档中的超链接是一个字段。正如我们前面所说，Word文档中的字段是一个由多个节点组成的复杂结构，这些节点包括字段开始、字段代码、字段分隔符、字段结果和字段结束。字段可以嵌套、包含丰富的内容并跨越文档中的多个段落或部分。

要替换或修改超链接，需要在文档中查找超链接并替换其文本、URL 或两者。

以下代码示例演示如何查找Word文档中的所有超链接并更改其`URL`和显示名称：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
