---
title: Python 中的亚洲版式
second_title: Python 格式的 Aspose.Words
articleTitle: 使用亚洲版式
linktitle: 使用亚洲版式
description: "使用 Python 处理亚洲版式。调整 Python 中亚洲文本和拉丁文本之间的间距。"
type: docs
weight: 240
url: /zh/python-net/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

亚洲版式是针对以亚洲语言编写的文档中的文本段落的一组选项。

Aspose.Words 使用 [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) 类及其一些属性支持亚洲版式。

## 自动调整亚洲和拉丁文本或数字之间的间距

如果您正在设计包含东亚和拉丁文本的模板，并且希望通过控制两种类型文本之间的间距来增强表单模板的外观，则可以将表单模板配置为自动调整这两种类型文本之间的间距。为此，您可以使用 `ParagraphFormat` 类的 [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_alpha/) 和 [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/add_space_between_far_east_and_digit/) 属性。

以下代码示例显示如何使用 **AddSpaceBetweenFarEastAndAlpha** 和 **AddSpaceBetweenFarEastAndDigit** 属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

## 设置换行选项

Microsoft Word 中段落属性对话框的亚洲版式选项卡具有换行符组。该组的选项可以使用 **ParagraphFormat** 类的 [FarEastLineBreakControl](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/far_east_line_break_control/)、[WordWrap](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/word_wrap/)、[HangingPunctuation](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/hanging_punctuation/) 属性进行设置。

以下代码示例展示了如何使用这些属性：

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}
