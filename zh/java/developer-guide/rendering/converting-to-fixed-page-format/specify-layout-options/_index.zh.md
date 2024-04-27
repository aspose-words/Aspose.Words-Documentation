---
title: 指定布局选项 Java
second_title: "Aspose.Words (单位:千美元) Java"
articleTitle: 指定布局选项
linktitle: 指定布局选项
description: "根据文档中指定的参数,使用不同的布局创建输出文档 Java。 。 。 。"
type: docs
weight: 10
url: /zh/java/specify-layout-options/
---

Aspose.Words 使您能够创建各种布局的输出文档,取决于 [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 财产和财产 **Document**。 。 。 。 这块地产和一些 Microsoft Word 本文章中描述的用户界面菜单选项。

完整的参数列表,例如: [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) 来计算连续区域中重新启动页码的页码,或 [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) 以忽略"使用打印机参数来显示文档"兼容性选项,参见 [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 类页面。

## 格式化标记

Aspose.Words 允许使用下列属性管理格式标记:

- 怎么样? [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - 一个 `Boolean` 值,它指定隐藏文本是否被渲染。
- 怎么样? [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - 一个 `Boolean` 值,用于指定段落标记字符是否被渲染。

下文举例说明的网页包括三段。 第二显藏. 用户可以更改 **ShowHiddenText** 在页面上显示此隐藏文本。 此外,每一段结尾处都有一个段落标记。 除非 **ShowParagraphMarks** 财产是用来制造的。

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

内 Microsoft Word, 这些参数使用"文件 → 选项 → 显示" 对话框设置如下:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## 评论和修订

与 Aspose.Words, 的文档注释。 Microsoft Word。 。 。 。 为具体说明是否提供了评论意见,请使用 [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) 属性。

内 Microsoft Word, 此参数使用" Track Change 选项"对话框设置,如下所示:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

还有, Aspose.Words 允许您在文档中显示修改。 使用 [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) 财产和财产 **LayoutOptions** 分类以定义文档是否显示修改。 控制其外观(修改突出显示颜色、修订栏颜色等),使用 [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) 课。

您也可以将修改作为对内容的评论。 为此,使用 [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) 财产和 [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) 数值。

以下代码示例显示如何自定义修改显示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

下面的图像显示 Aspose.Words 作出评论,删除订正:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## 高级打字的文本形状

那个 [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) 属性使您能够设置文本塑造功能,以及 `OpenType` 特性支持。

在以下主要情况下使用文本形状处理文档:

- 文档使用Kerning、Numeral Shaping、Numeral形式或Ligatures。
- 文件使用复合脚本,如阿拉伯语、高棉语、泰语等。

{{% alert color="primary" %}}

只有将文档导出到 PDF 或 XPS。 。 。 。

{{% /alert %}}
