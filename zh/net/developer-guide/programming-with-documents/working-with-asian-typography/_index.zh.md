---
title: C# 中的亚洲版式
second_title: .NET 格式的 Aspose.Words
articleTitle: 使用亚洲版式
linktitle: 使用亚洲版式
description: "使用 C# 处理亚洲版式。调整 C# 中亚洲文本和拉丁文本之间的间距。"
type: docs
weight: 240
url: /zh/net/working-with-asian-typography/
---

亚洲版式是针对以亚洲语言编写的文档中的文本段落的一组选项。

Aspose.Words 使用 [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) 类及其一些属性支持亚洲版式。

## 自动调整亚洲和拉丁文本或数字之间的间距

如果您正在设计包含东亚和拉丁文本的模板，并且希望通过控制两种类型文本之间的间距来增强表单模板的外观，则可以将表单模板配置为自动调整这两种类型文本之间的间距。为此，您可以使用 `ParagraphFormat` 类的 [AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastandalpha/) 和 [AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/net/aspose.words/paragraphformat/addspacebetweenfareastanddigit/) 属性。

以下代码示例显示如何使用 **AddSpaceBetweenFarEastAndAlpha** 和 **AddSpaceBetweenFarEastAndDigit** 属性：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cs" >}}

## 设置换行选项

Microsoft Word 中段落属性对话框的亚洲版式选项卡具有换行符组。该组的选项可以使用 **ParagraphFormat** 类的 [FarEastLineBreakControl](https://reference.aspose.com/words/net/aspose.words/paragraphformat/fareastlinebreakcontrol/)、[WordWrap](https://reference.aspose.com/words/net/aspose.words/paragraphformat/wordwrap/)、[HangingPunctuation](https://reference.aspose.com/words/net/aspose.words/paragraphformat/hangingpunctuation/) 属性进行设置。

以下代码示例展示了如何使用这些属性：

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cs" >}}
