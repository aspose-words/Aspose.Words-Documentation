---
title: Working with Fonts in Java
second_title: Aspose.Words for Java
articleTitle: Working with Fonts
linktitle: Working with Fonts
description: "Font formatting in details using Java."
type: docs
weight: 230
url: /java/working-with-fonts/
---

A font is a set of characters with a certain size, color, and design. Aspose.Words allows you to work with fonts using various font-related classes, including the [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) class.

## Font Formatting

Current font formatting is represented by a **Font** object returned by the [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) property. The **Font** class contains a wide variety of font properties possible in Microsoft Word.

The following code example shows how to set font formatting:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Fill properties now are also available for fonts to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

## Getting Font Line Spacing

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) property was introduced in the **Font** class to obtain this value as shown in the example given below:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Font EmphasisMark

The **Font** class provides [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) property to get or set EmphasisMark enumeration values to be applied in the formatting.

The following code example shows how to set the **EphasisMark** property:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
