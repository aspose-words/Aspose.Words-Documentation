---
title: Working with Paragraphs in Java
second_title: Aspose.Words for Java
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Paragraph node manipulation practices using Java."
type: docs
weight: 210
url: /java/working-with-paragraphs/
---

A paragraph is a set of characters combined into a logical block and ending with a special character – a *paragraph break*. In Aspose.Words, a paragraph is represented by the [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) class.

## Inserting a Paragraph

To insert a new paragraph into the document, in fact, you need to insert a paragraph break character into it. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) inserts not only a string of text into the document, but also adds a paragraph break.

The current font formatting is also specified by the [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) property, and the current paragraph formatting is determined by the [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) property. In the next section, we will go into more detail about paragraph formatting.

The following code example shows how to insert a paragraph into a document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Format Paragraph

Current paragraph formatting is represented by the [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) object that is returned by the [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset a paragraph's formatting to its default – Normal style, left-aligned, no indentation, no spacing, no borders, no shading – by calling [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

The following code example shows how to set paragraph formatting:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Apply Paragraph Style

Some formatting objects like Font or ParagraphFormat support styles. A single built-in or user-defined style is represented by a [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) property that returns a locale-independent style identifier represented by a **StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as *Normal*, *Heading 1*, *Heading 2*, etc. All user-defined styles are assigned the **StyleIdentifier.User value**.

The following code example shows how to apply a paragraph style:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Insert Style Separator to Put Different Paragraph Styles

The style separator can be added to the end of a paragraph using the Ctrl + Alt + Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph. If you want to some text from the beginning of a particular heading to appear in a Table of Contents but don't want the entire heading in the Table of Contents, you can use this feature.

The following code example shows how to insert a style separator to accommodate different paragraph styles:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Apply Borders and Shading to a Paragraph

Borders in Aspose.Words are represented by the [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) class – this is a collection of [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objects that are accessed by index or by border type. The Border type is represented by the [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) enumeration. Some values of the enumeration are applicable to several or only one document element. For example, **BorderType.Bottom** is applicable to a paragraph or table cell while **BorderType.DiagonalDown** specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from the text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) method.

{{% alert color="primary" %}}

Note that when border properties are reset to default values, the border is invisible.

{{% /alert %}}

Aspose.Words also has the [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with the [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) enumeration value that allows the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the `TextureIndex.TextureSolid` value and set the foreground shading color as appropriate. The code example given below shows how to apply borders and shading to a paragraph.

The following code example shows how to apply borders and shading to a paragraph:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
