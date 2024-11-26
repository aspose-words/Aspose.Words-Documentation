---
title: 使用Java中的字体
second_title: Aspose.Words为Java
articleTitle: 使用字体
linktitle: 使用字体
description: "使用Java详细设置字体格式。"
type: docs
weight: 230
url: /zh/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

字体是一组具有一定大小、颜色和设计的字符。 Aspose.Words允许您使用各种字体相关的类（包括[Font](https://reference.aspose.com/words/java/com.aspose.words/font/)类）处理字体。

## 字体格式

当前字体格式由[Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont)属性返回的**Font**对象表示。 **Font**类包含在Microsoft Word中可能的各种字体属性。

下面的代码示例演示如何设置字体格式:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

填充属性现在也可用于字体设置文本的填充格式。 它提供了改变例如文本填充的前景颜色或透明度的能力。

## 获取字体行间距

字体的行间距是连续两行文本基线之间的垂直距离。 因此，行间距包括行之间的空白空间以及字符本身的高度。

在**Font**类中引入了[LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing)属性以获取此值，如下面的示例所示:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## 字体EmphasisMark

**Font**类提供[EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark)属性以获取或设置要在格式设置中应用的EmphasisMark枚举值。

下面的代码示例演示如何设置**EphasisMark**属性:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
