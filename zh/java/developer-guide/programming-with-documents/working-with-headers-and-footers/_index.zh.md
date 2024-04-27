---
title: 与页眉和页脚合作 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 与页眉和页脚合作
linktitle: 与页眉和页脚合作
description: "如何使用页眉和页脚 Java。 。 。 。"
type: docs
weight: 150
url: /zh/java/working-with-headers-and-footers/
---

Aspose.Words 允许用户在文档中与页眉和页脚一起工作。 一个页眉是放在页面顶部的文本,一个页脚是放在页面底部的文本. 这些领域通常用于插入文件所有或部分页上应重复的信息,如页码、创建日期、公司信息等。

## 使用文档构建器创建页眉或页脚

如果你想在程序上添加文档页眉或页脚,最简单的方法是使用 [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) 班级来做到这一点。

以下代码示例显示如何为文档页面添加页眉和页脚:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "create-header-footer.java" >}}

## 指定页眉或页脚选项

在文档中添加页眉或页脚时,可以设置一些高级属性. Aspose.Words 为用户提供 [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) 和 [HeaderFooterCollection](https://reference.aspose.com/words/java/com.aspose.words/headerfootercollection/) 课程,以及 [HeaderFooterType](https://reference.aspose.com/words/java/com.aspose.words/headerfootertype/) 点数可以让您对页眉和页脚的定制进程有更多的控制.

### 指定页眉或页脚类型

您可以为一个文档指定三个不同的页眉类型和三个不同的页脚类型:

一、导 言 第一页页页眉和/或页脚
2. 国家 偶数页页眉和/或页脚
3个 奇数页页眉和(或)页脚

以下代码示例显示如何为奇数文档页添加页眉:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "header-footer-type.java" >}}

### 指定是否为第一页显示不同的页眉或页脚

如上所述,也可以为第一页设置不同的页眉或页脚. 要做到这一点,你需要设置 [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) 标记改为 `true` 然后细微的 **HeaderFirst** 或 **FooterFirst** 数值。

以下代码示例显示只设置第一页标题的方法:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "different-first-page.java" >}}

### 指定是否显示奇数或偶数页的不同页眉或页脚

 接下来,您要在文档中为奇数甚至页设置不同的页眉或页脚。 要做到这一点,你需要设置 [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) 标记改为 `true` 然后细化数值 **HeaderPrimary** 和 **HeaderEven**, 或 **FooterPrimary** 和 **FooterEven**。 。 。 。

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "odd-even-pages.java" >}}

### 插入一个绝对位置 图像进入信头

要将图像放在页眉或页脚中,请使用 **HeaderPrimary** 标题类型或 **FooterPrimary** 页脚类型和 [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) 方法。

以下代码示例显示如何将图像添加到标题中:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "insert-image.java" >}}

### 设置页眉或页脚文本的字体和段落属性

与 Aspose.Words 您可以设置字体和段落属性,使用 **HeaderPrimary** 标题类型或 **FooterPrimary** 页脚类型,以及文档正文所用字体和段落的工作方法和属性。

以下的代码示例显示如何将标题中的文本设置为Arial,粗体,大小14和中心对齐:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "font-props.java" >}}

### 在页眉或页脚中插入页码

必要时,可以在页眉或页脚中添加页码. 要做到这一点,使用 **HeaderPrimary** 标题类型或 **FooterPrimary** 页脚类型和 [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) 添加所需字段的方法。

以下代码示例显示如何在右侧页脚上添加页码:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "page-numbers.java" >}}

### 使用上一节定义的页眉或页脚

如果需要从上一节复制页眉或页脚,也可以这样做.

以下代码示例显示如何从上一节复制标题或页脚:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "copy-headers-footers-from-previous-section.java" >}}

### 使用不同的页面方向和页面大小时确保页眉或页脚的显示

Aspose.Words 允许您在使用不同方向和页码时提供页眉或页脚的外观。

以下例子说明如何做到这一点:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "link-to-previous-header-footer.java" >}}

## 如何只删除页眉或页脚

文档中的每个部分最多可有3个页眉和最多3个页脚(第一,偶数和奇数页). 如果您要在文档中移除所有页眉或所有页脚,则需要环绕所有区域,并移除每个相应的页眉节点或页脚节点.

下面的代码示例显示如何从所有章节中移除所有页脚,但保留页脚完整. 您只能以类似方式删除标题:

{{< gist "aspose-words-gists" "58431f54e34e5597f8cbaf97481d5321" "remove-footers.java" >}}

{{% alert color="primary" %}}

您可以下载此示例的样本文件 [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Footer.docx)。 。 。 。

{{% /alert %}}