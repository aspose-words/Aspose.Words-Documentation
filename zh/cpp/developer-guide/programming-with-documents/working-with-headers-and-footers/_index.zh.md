---
title: 使用C++中的页眉和页脚
second_title: Aspose.Words对于C++
articleTitle: 使用页眉和页脚
linktitle: 使用页眉和页脚
description: "如何使用C++操作页眉和页脚。"
type: docs
weight: 150
url: /zh/cpp/working-with-headers-and-footers/
---

Aspose.Words允许用户在文档中使用页眉和页脚。 页眉是放置在页面顶部的文本，页脚是页面底部的文本。 通常，这些区域用于插入应该在文档的所有或某些页面上重复的信息，例如页码、创建日期、公司信息等等。

## 使用DocumentBuilder创建页眉或页脚

如果要以编程方式添加文档页眉或页脚，最简单的方法是使用[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)类来执行此操作。

下面的代码示例演示如何为文档页添加页眉和页脚:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## 指定页眉或页脚选项

向文档添加页眉或页脚时，可以设置一些高级属性。 Aspose.Words为用户提供[HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/)和[HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/)类，以及[HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/)枚举，使您可以更好地控制页眉和页脚自定义过程。

### 指定页眉或页脚类型

您可以为一个文档指定三种不同的页眉类型和三种不同的页脚类型:

1. 首页的页眉和/或页脚
2. 偶数页的页眉和/或页脚
3. 奇数页的页眉和/或页脚

下面的代码示例演示如何为奇数文档页添加标题:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### 指定是否为第一页显示不同的页眉或页脚

如上所述，您还可以为第一页设置不同的页眉或页脚。 为此，您需要将[DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/)标志设置为`true`，然后指定**HeaderFirst**或**FooterFirst**值。

下面的代码示例演示如何仅为第一页设置标头:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### 指定是否为奇数页或偶数页显示不同的页眉或页脚

 接下来，您需要为文档中的奇数页和偶数页设置不同的页眉或页脚。 为此，您需要将[OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/)标志设置为`true`，然后指定值**HeaderPrimary**和**HeaderEven**，或**FooterPrimary**和**FooterEven**。

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### 将绝对定位的图像插入标题

要将图像放置在页眉或页脚中，请使用**HeaderPrimary**页眉类型或**FooterPrimary**页脚类型和`InsertImage`方法。

下面的代码示例演示如何将图像添加到标头:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### 为页眉或页脚文本设置字体和段落属性

使用Aspose.Words，您可以设置字体和段落属性，使用**HeaderPrimary**页眉类型或**FooterPrimary**页脚类型，以及处理用于文档正文的字体和段落的方法和属性。

下面的代码示例演示如何将标题中的文本设置为Arial、bold、size14和center alignment:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### 将页码插入页眉或页脚

如有必要，您可以将页码添加到页眉或页脚。 为此，请使用**HeaderPrimary**页眉类型或**FooterPrimary**页脚类型和[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/)方法添加所需字段。

下面的代码示例演示如何将页码添加到右侧的页脚:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### 使用上一节中定义的页眉或页脚

如果您需要从上一节复制页眉或页脚，您也可以这样做。

下面的代码示例演示如何从上一节复制页眉或页脚:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### 使用不同的页面方向和页面大小时，确保页眉或页脚外观

Aspose.Words允许您在使用不同的方向和页面大小时提供页眉或页脚的外观。

下面的示例演示如何执行此操作:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## 如何仅删除页眉或页脚

文档中的每个部分最多可以有三个页眉和三个页脚（第一页、偶数页和奇数页）。 如果要删除文档中的所有页眉或所有页脚，则需要循环遍历所有部分并删除每个相应的页眉节点或页脚节点。

下面的代码示例演示如何从所有节中删除所有页脚，但保持页眉不变。 您可以通过类似的方式仅删除标题:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

您可以从以下位置下载此示例的示例文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}