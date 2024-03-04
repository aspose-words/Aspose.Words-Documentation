---
title: 在 C# 中使用页眉和页脚
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用页眉和页脚
linktitle: 使用页眉和页脚
description: "如何使用 C# 操作页眉和页脚。创建页眉和页脚 C#。删除页眉或页脚 C#。"
type: docs
weight: 150
url: /zh/net/working-with-headers-and-footers/
---

Aspose.Words 允许用户在文档中使用页眉和页脚。页眉是放置在页面顶部的文本，页脚是放置在页面底部的文本。通常，这些区域用于插入应在文档的所有页面或某些页面上重复的信息，例如页码、创建日期、公司信息等。

## 使用 DocumentBuilder 创建页眉或页脚

如果您想以编程方式添加文档页眉或页脚，最简单的方法是使用 [DocumentBuilder](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/) 类来完成。

以下代码示例演示如何为文档页面添加页眉和页脚：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "create-header-footer.cs" >}}

## 指定页眉或页脚选项

当您向文档添加页眉或页脚时，您可以设置一些高级属性。 Aspose.Words 为用户提供了 [HeaderFooter](https://reference.aspose.com/words/zh/net/aspose.words/headerfooter/) 和 [HeaderFooterCollection](https://reference.aspose.com/words/zh/net/aspose.words/headerfootercollection/) 类以及 [HeaderFooterType](https://reference.aspose.com/words/zh/net/aspose.words/headerfootertype/) 枚举，使您可以更好地控制页眉和页脚自定义过程。

### 指定页眉或页脚类型

您可以为一个文档指定三种不同的页眉类型和三种不同的页脚类型：
1. 第一页的页眉和/或页脚
2. 偶数页的页眉和/或页脚
3. 奇数页的页眉和/或页脚

以下代码示例显示如何为奇数文档页面添加页眉：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "header-footer-type.cs" >}}

### 指定是否为首页显示不同的页眉或页脚

如上所述，您还可以为首页设置不同的页眉或页脚。为此，您需要将 [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/differentfirstpageheaderfooter/) 标志设置为 `true`，然后指定 **HeaderFirst** 或 **FooterFirst** 值。

以下代码示例显示如何仅设置第一页的标题：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "different-first-page.cs" >}}

### 指定奇数页或偶数页是否显示不同的页眉或页脚

 接下来，您需要为文档中的奇数页和偶数页设置不同的页眉或页脚。为此，您需要将 [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/zh/net/aspose.words/pagesetup/oddandevenpagesheaderfooter/) 标志设置为 `true`，然后指定值 **HeaderPrimary** 和 **HeaderEven**，或 **FooterPrimary** 和 **FooterEven**。

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "odd-even-pages.cs" >}}

### 将绝对定位的图像插入标题中

要将图像放置在页眉或页脚中，请使用 **HeaderPrimary** 页眉类型或 **FooterPrimary** 页脚类型和 [InsertImage](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertimage/) 方法。

以下代码示例展示了如何将图像添加到标题：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "insert-image.cs" >}}

### 设置页眉或页脚文本的字体和段落属性

使用 Aspose.Words，您可以设置字体和段落属性，使用 **HeaderPrimary** 页眉类型或 **FooterPrimary** 页脚类型，以及用于处理文档正文所用字体和段落的方法和属性。

以下代码示例演示如何将标题中的文本设置为 Arial、粗体、字号 14 和居中对齐：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "font-props.cs" >}}

### 将页码插入页眉或页脚

如有必要，您可以将页码添加到页眉或页脚。为此，请使用 **HeaderPrimary** 标头类型或 **FooterPrimary** 页脚类型和 [InsertField](https://reference.aspose.com/words/zh/net/aspose.words/documentbuilder/insertfield/) 方法来添加所需字段。

以下代码示例演示如何将页码添加到右侧页脚：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "page-numbers.cs" >}}

### 使用上一节中定义的页眉或页脚

如果您需要复制上一节中的页眉或页脚，您也可以这样做。

以下代码示例演示如何复制上一节中的页眉或页脚：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "copy-headers-footers-from-previous-section.cs" >}}

### 使用不同的页面方向和页面大小时确保页眉或页脚的外观

Aspose.Words 允许您在使用不同方向和页面大小时提供页眉或页脚的外观。

以下示例展示了如何执行此操作：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "link-to-previous-header-footer.cs" >}}

## 如何仅删除页眉或仅删除页脚

文档中的每个部分最多可以有三个页眉和三个页脚（对于第一页、偶数页和奇数页）。如果要删除文档中的所有页眉或所有页脚，则需要循环遍历所有部分并删除每个相应的页眉节点或页脚节点。

以下代码示例演示如何从所有部分中删除所有页脚，但保持页眉完好无损。您可以以类似的方式仅删除标头：

{{< gist "aspose-words-gists" "84cab3a22008f041ee6c1e959da09949" "remove-footers.cs" >}}

{{% alert color="primary" %}}

您可以从 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx) 下载本示例的示例文件。

{{% /alert %}}