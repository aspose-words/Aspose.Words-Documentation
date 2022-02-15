---
title: Working with Paragraphs – Aspose.Words for С++
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Paragraph node manipulation practices using Aspose.Words for C++."
type: docs
weight: 60
url: /cpp/working-with-paragraphs/
---

## Inserting a Paragraph

DocumentBuilder.Writeln inserts a string of text into the document as well but in addition, it adds a paragraph break. Current font formatting is also specified by the DocumentBuilder.Font property and current paragraph formatting is determined by the DocumentBuilder.ParagraphFormat property.The code example given below shows how to insert a paragraph into the document.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Paragraph Formatting

Current paragraph formatting is represented by a ParagraphFormat object that is returned by the DocumentBuilder.ParagraphFormat property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset the paragraph formatting to default to Normal style, left-aligned no indentation, no spacing, no borders and no shading by calling [ParagraphFormat.ClearFormatting](https://apireference.aspose.com/words/cpp/class/aspose.words.paragraph_format#clearformatting). Below example shows how to set paragraph formatting.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Working with Asian Typography

#### Automatically Adjust Space between Asian and Latin text, Numbers

If you are designing a template with both East Asian and Latin text, and you want to enhance the appearance of the form template by controlling the spaces between both types of text, you can configure your form template to automatically adjust the spaces between these two types of text. You can use AddSpaceBetweenFarEastAndAlpha and AddSpaceBetweenFarEastAndDigit properties of ParagraphFormat class to achieve this.

Following code example show how to use ParagraphFormat.AddSpaceBetweenFarEastAndAlpha and ParagraphFormat.AddSpaceBetweenFarEastAndDigit properties.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Set Line Break Options

Asian Typography tab of the Paragraph properties dialog in MS Word has a line break group. The options of this group can be set using FarEastLineBreakControl, WordWrap, HangingPunctuation properties of ParagraphFormat class. The code example given below shows how to use these properties.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

## Applying a Paragraph Style

Some formatting objects like Font or ParagraphFormat support styles. A single built-in or user-defined style is represented by a Style object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the [Style.StyleIdentifier](https://apireference.aspose.com/words/cpp/class/aspose.words.style#get_styleidentifier_const) property that returns a locale-independent style identifier represented by a **Style.StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as Normal , Heading 1 , Heading 2 etc. All user-defined styles are assigned the **StyleIdentifier.User value**. The code example given below shows how to apply a paragraph style.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Inserting Style Separator to Put Different Paragraph Styles

The style separator can be added to the end of a paragraph using the Ctrl + Alt + Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph. If you want to some text from the beginning of a particular heading to appear in a Table of Contents but don't want the entire heading in the Table of Contents, you can use this feature. The code example given below shows how to insert a style separator to put different paragraph styles. 

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identifying Paragraph Style Separator

` `Aspose.Words provides a public property BreakIsStyleSeparator into a Paragraph class allows identifying Style Separator Paragraph as shown in the example given below:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Applying Borders and Shading to a Paragraph

Borders are represented by the BorderCollection. This is a collection of Border objects that are accessed by index or by border type. Border type is represented by the BorderType enumeration. Some values of the enumeration are applicable to several or only one document element. For example, BorderType.Bottom is applicable to a paragraph or table cell while BorderType.DiagonalDown specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from the text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the [Border.ClearFormatting](https://apireference.aspose.com/words/cpp/class/aspose.words.border#clearformatting) method. Note that when border properties are reset to default values, the border is invisible. The [Shading](https://apireference.aspose.com/words/cpp/class/aspose.words.shading) class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a [TextureIndex](https://apireference.aspose.com/words/cpp/namespace/aspose.words#textureindex) enumeration value that allows the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the [TextureIndex.TextureSolid]https://apireference.aspose.com/words/cpp/namespace/aspose.words#textureindexae4cbed1cbf8df80d762b1bac0e7b1f8b) value and set the foreground shading color as appropriate. The code example given below shows how to apply borders and shading to a paragraph.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
