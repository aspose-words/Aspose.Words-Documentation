---
title: 在Java中指定布局选项
second_title: Aspose.Words为Java
articleTitle: 指定布局选项
linktitle: 指定布局选项
description: "创建具有各种布局的输出文档，具体取决于使用Java在文档中指定的参数。"
type: docs
weight: 10
url: /zh/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words使您能够创建具有各种布局的输出文档，具体取决于**Document**的[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)属性中指定的参数。 此属性类似于本文中描述的一些Microsoft Word用户界面菜单选项。

有关参数的完整列表，如[ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart)计算重新启动页码的连续部分中的页码，或[IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics)忽略"使用打印机度量来布局文档"兼容性选项，请参阅[LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)类页。

## 格式化标记

Aspose.Words允许使用以下属性管理格式化标记:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText)-一个`Boolean`值，指定是否呈现隐藏文本。
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks)-一个`Boolean`值，指定是否呈现段落标记字符。

下面示例中描述的页面包含三个段落。 第二个是隐藏的。 用户可以更改**ShowHiddenText**选项以在页面上显示此隐藏文本。 此外，每个段落在末尾都有一个段落标记。 段落标记通常不可见，除非**ShowParagraphMarks**属性设置为呈现它。

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

在Microsoft Word中，使用"文件→选项→显示"对话框设置这些参数，如下所示:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## 意见及修订

使用Aspose.Words，您可以呈现与Microsoft Word中看起来相同的文档注释。 若要指定是否呈现注释，请使用[ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/)属性。

在Microsoft Word中，使用"跟踪更改选项"对话框设置此参数，如下所示:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

此外，Aspose.Words允许您在文档中显示修订。 使用**LayoutOptions**类的[RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions)属性来定义是否显示文档修订。 控制它们的外观(修订突出显示颜色、修订栏颜色等).），使用[RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/)类。

您还可以将修订显示为内容的注释。 为此，请使用[CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode)属性和[ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/)值。

下面的代码示例演示如何自定义修订显示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

下图显示了Aspose.Words如何呈现注释和删除修订:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## 用于高级排版渲染的文本成形器

[TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/)属性使您能够设置文本整形功能，以及`OpenType`功能支持。

在以下主要情况下使用文本整形进行文档处理:

- 文档使用字距、数字形状、数字形式或连字。
- 文档使用复杂的脚本，如阿拉伯语，高棉语，泰语等。

{{% alert color="primary" %}}

只有将文档导出为PDF或XPS时，才会启用文本整形。

{{% /alert %}}
