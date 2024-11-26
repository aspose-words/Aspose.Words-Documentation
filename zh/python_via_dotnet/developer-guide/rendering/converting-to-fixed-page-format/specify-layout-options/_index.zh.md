---
title: 在 Python 中指定布局选项
second_title: Python via .NET 格式的 Aspose.Words
articleTitle: 指定布局选项
linktitle: 指定布局选项
description: "使用 Python 指定各种文档布局的布局选项。"
type: docs
weight: 10
url: /zh/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words 使您能够创建具有各种布局的输出文档，具体取决于 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 类的属性中指定的参数。其中一些属性类似于一些 Microsoft Word 用户界面菜单选项 – 它们将在本文中进行描述。

有关参数的完整列表，例如用于计算重新启动页码的连续部分中的页码的 [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/)，或用于忽略"使用打印机规格来布局文档"兼容性选项的 [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/)，请参阅 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 类页面。

## 格式标记

Aspose.Words 允许使用以下属性管理格式标记：

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – `Boolean` 值，指定是否呈现隐藏文本。
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – `Boolean` 值，指定是否呈现段落标记字符。

下面示例中描述的页面包含三个段落。第二个是隐藏的。用户可以更改 [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) 选项以在页面上显示此隐藏文本。此外，每个段落末尾都有一个段落标记。除非设置 [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) 属性来呈现段落标记，否则段落标记通常不可见。

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

在 Microsoft Word 中，使用"文件 → 选项 → 显示"对话框设置这些参数，如下所示：

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## 意见和修改

使用 Aspose.Words，您可以呈现与 Microsoft Word 中外观相同的文档注释。要指定是否呈现注释，请使用 [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) 属性。

在Microsoft Word中，该参数是使用"Track Changes Options"对话框来设置的，如下图：

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

此外，Aspose.Words 允许您显示文档中的修订版本。使用 [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) 类的 [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) 属性来定义是否显示文档修订。要控制它们的外观（修订突出显示颜色、修订栏颜色等），请使用 [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/) 类。

您还可以将修订显示为内容评论。为此，请使用 [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) 属性和 [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons) 值。

以下代码示例展示了如何自定义修订显示：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

下图显示了 Aspose.Words 如何呈现注释和删除修订：

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
