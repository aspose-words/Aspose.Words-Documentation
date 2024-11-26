---
title: Java中的亚洲排版
second_title: Aspose.Words为Java
articleTitle: 与亚洲印刷术合作
linktitle: 与亚洲印刷术合作
description: "使用Java处理亚洲排版。 在Java中调整亚洲和拉丁文文本之间的空格。"
type: docs
weight: 240
url: /zh/java/working-with-asian-typography/
timestamp: 2024-01-27-14-07-04
---

亚洲排版是用亚洲语言编写的文档中的文本段落的一组选项。

Aspose.Words支持使用[ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/)类及其某些属性的亚洲排版。

## 自动调整亚洲和拉丁文字或数字之间的空格

如果您正在设计一个同时包含东亚和拉丁文本的模板，并且希望通过控制这两种类型的文本之间的空格来增强表单模板的外观，则可以将表单模板配置为自动调整这两种类型的文本之间的空格。 要实现这一点，可以使用`ParagraphFormat`类的[AddSpaceBetweenFarEastAndAlpha](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndAlpha)和[AddSpaceBetweenFarEastAndDigit](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getAddSpaceBetweenFarEastAndDigit)属性。

下面的代码示例演示如何使用**AddSpaceBetweenFarEastAndAlpha**和**AddSpaceBetweenFarEastAndDigit**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

## 设置换行选项

Microsoft Word中的"段落属性"对话框的"亚洲版式"选项卡具有换行符组。 该组的选项可以使用[FarEastLineBreakControl](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getFarEastLineBreakControl), [WordWrap](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getWordWrap), [HangingPunctuation](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getHangingPunctuation) **ParagraphFormat**类的属性。

下面的代码示例演示如何使用这些属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## 更改亚洲段落间距和缩进

下面的代码示例演示如何更改亚洲区段落间距和缩进:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}
