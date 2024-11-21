---
title: C++中的亚洲排版
second_title: Aspose.Words对于C++
articleTitle: 与亚洲印刷术合作
linktitle: 与亚洲印刷术合作
description: "使用C++处理亚洲排版。 在C++中调整亚洲和拉丁文文本之间的空格。"
type: docs
weight: 240
url: /zh/cpp/working-with-asian-typography/
timestamp: 2024-02-01-16-17-05
---

亚洲排版是用亚洲语言编写的文档中的文本段落的一组选项。

Aspose.Words支持使用[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)类及其某些属性的亚洲排版。

## 自动调整亚洲和拉丁文字或数字之间的空格

如果您正在设计一个同时包含东亚和拉丁文本的模板，并且希望通过控制这两种类型的文本之间的空格来增强表单模板的外观，则可以将表单模板配置为自动调整这两种类型的文本之间的空格。 要实现这一点，可以使用`ParagraphFormat`类的[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastandalpha/)和[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_addspacebetweenfareastanddigit/)属性。

下面的代码示例演示如何使用**AddSpaceBetweenFarEastAndAlpha**和**AddSpaceBetweenFarEastAndDigit**属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

## 设置换行选项

Microsoft Word中的"段落属性"对话框的"亚洲版式"选项卡具有换行符组。 该组的选项可以使用[FarEastLineBreakControl](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_fareastlinebreakcontrol/), [WordWrap](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_wordwrap/), [HangingPunctuation](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_hangingpunctuation/) **ParagraphFormat**类的属性。

下面的代码示例演示如何使用这些属性:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}
