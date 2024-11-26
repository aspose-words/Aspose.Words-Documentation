---
title: 在 C# 中指定布局选项
second_title: .NET 格式的 Aspose.Words
articleTitle: 指定布局选项
linktitle: 指定布局选项
description: "使用 C# 指定各种文档布局的布局选项。"
type: docs
weight: 10
url: /zh/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words 使您能够根据 [LayoutOptions](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/) 类的属性中指定的参数创建具有各种布局的输出文档。其中一些属性类似于一些 Microsoft Word 用户界面菜单选项 – 它们将在本文中进行描述。

有关参数的完整列表，例如用于计算重新启动页码的连续部分中的页码的 [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/)，或用于忽略"使用打印机规格来布局文档"兼容性选项的 [IgnorePrinterMetrics](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/)，请参阅 [LayoutOptions](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/) 类页面。

## 格式标记

Aspose.Words 允许使用以下属性管理格式标记：

- [ShowHiddenText](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/showhiddentext/) – `Boolean` 值，指定是否呈现隐藏文本。
- [ShowParagraphMarks](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – `Boolean` 值，指定是否呈现段落标记字符。

下面示例中描述的页面包含三个段落。第二个是隐藏的。用户可以更改 **ShowHiddenText** 选项以在页面上显示此隐藏文本。此外，每个段落末尾都有一个段落标记。除非设置 **ShowParagraphMarks** 属性来呈现段落标记，否则段落标记通常不可见。

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

在 Microsoft Word 中，使用"文件 → 选项 → 显示"对话框设置这些参数，如下所示：

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## 意见和修改

使用 Aspose.Words，您可以呈现与 Microsoft Word 中外观相同的文档注释。要指定是否呈现注释，请使用 [CommentDisplayMode](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/commentdisplaymode/) 属性。

在Microsoft Word中，该参数是使用"Track Changes Options"对话框来设置的，如下图：

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

此外，Aspose.Words 允许您显示文档中的修订版本。使用 **LayoutOptions** 类的 [RevisionOptions](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/revisionoptions/) 属性来定义是否显示文档修订。要控制它们的外观（修订突出显示颜色、修订栏颜色等），请使用 [RevisonOptions](https://reference.aspose.com/words/zh/net/aspose.words.layout/revisionoptions/) 类。

您还可以将修订显示为内容评论。为此，请使用 [CommentDisplayMode](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/commentdisplaymode/) 属性和 [ShowInBalloons](https://reference.aspose.com/words/zh/net/aspose.words.layout/commentdisplaymode/) 值。

以下代码示例显示如何自定义修订显示：

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

下图显示了 Aspose.Words 如何呈现注释和删除修订：

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## 用于高级版式渲染的文本整形器

[TextShaperFactory](https://reference.aspose.com/words/zh/net/aspose.words.layout/layoutoptions/textshaperfactory/) 属性使您能够设置文本整形功能以及 `OpenType` 功能支持。

在以下主要情况下使用文本整形进行文档处理：

- 文档使用字距调整、数字形状、数字形式或连字。
- 文档使用复杂的文字，例如阿拉伯语、高棉语、泰语等。

{{% alert color="primary" %}}

仅当将文档导出为 PDF 或 XPS 时才会启用文本整形。

{{% /alert %}}
