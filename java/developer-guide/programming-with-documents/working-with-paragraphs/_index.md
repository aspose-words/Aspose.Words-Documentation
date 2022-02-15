---
title: Working with Paragraphs – Aspose.Words for Java
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Paragraph node manipulation practices using Aspose.Words for Java."
type: docs
weight: 80
url: /java/working-with-paragraphs/
---

## Inserting a Paragraph

DocumentBuilder.Writeln inserts a string of text into the document as well but in addition, it adds a paragraph break. Current font formatting is also specified by the DocumentBuilder.Font property and current paragraph formatting is determined by the DocumentBuilder.ParagraphFormat property.The code example given below shows how to insert a paragraph into the document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Paragraph Formatting

Current paragraph formatting is represented by a ParagraphFormat object that is returned by the DocumentBuilder.ParagraphFormat property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset the paragraph formatting to default to Normal style, left-aligned, no indentation, no spacing, no borders and no shading by calling ParagraphFormat.ClearFormatting. The code example given below shows how to set paragraph formatting.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

### Working with Asian Typography

#### Automatically Adjust Space between Asian and Latin text, Numbers

If you are designing a template with both East Asian and Latin text, and you want to enhance the appearance of the form template by controlling the spaces between both types of text, you can configure your form template to automatically adjust the spaces between these two types of text. You can use AddSpaceBetweenFarEastAndAlpha and AddSpaceBetweenFarEastAndDigit properties of ParagraphFormat class to achieve this.

Following code example show how to use ParagraphFormat.AddSpaceBetweenFarEastAndAlpha and ParagraphFormat.AddSpaceBetweenFarEastAndDigit properties.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetSpaceBetweenAsianAndLatinText.java" >}}

#### Change Asian Paragraph Spacing and Indents

The following code example demonstrates how to change Asian paragraph spacing and indents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ChangeAsianParagraphSpacingandIndents.java" >}}

#### Set Line Break Options

Asian Typography tab of the Paragraph properties dialog in MS Word has a line break group. The options of this group can be set using FarEastLineBreakControl, WordWrap, HangingPunctuation properties of ParagraphFormat class. The code example given below shows how to use these properties.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetAsianTypographyLinebreakGroupProp.java" >}}

## Applying a Paragraph Style

Some formatting objects like Font or ParagraphFormat support styles. A single built-in or user-defined style is represented by a Style object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the Style.StyleIdentifier property that returns a locale-independent style identifier represented by a **Style.StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as Normal , Heading 1 , Heading 2 etc. All user-defined styles are assigned the **StyleIdentifier.User value**. The code example given below shows how to apply a paragraph style.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Inserting Style Separator to Put Different Paragraph Styles

The style separator can be added to the end of a paragraph using the Ctrl + Alt + Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph. If you want to some text from the beginning of a particular heading to appear in a Table of Contents but don't want the entire heading in the Table of Contents, you can use this feature. The code example given below shows how to insert a style separator to put different paragraph styles. 

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Applying Borders and Shading to a Paragraph

Borders are represented by the BorderCollection. This is a collection of Border objects that are accessed by index or by border type. Border type is represented by the BorderType enumeration. Some values of the enumeration are applicable to several or only one document element. For example, BorderType.Bottom is applicable to a paragraph or table cell while BorderType.DiagonalDown specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from the text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the Border.ClearFormatting method. Note that when border properties are reset to default values, the border is invisible. The Shading class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a TextureIndex enumeration value that allows the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the TextureIndex.TextureSolid value and set the foreground shading color as appropriate. The code example given below shows how to apply borders and shading to a paragraph.

The code example given below shows how to apply borders and shading to a paragraph.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
