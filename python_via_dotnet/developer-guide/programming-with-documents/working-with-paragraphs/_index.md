---
title: Working with Paragraphs – Aspose.Words for Python via .NET
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Insert paragraph and speciffy its formatting in a document using python."
type: docs
weight: 110
url: /python-net/working-with-paragraphs/
aliases: [/python/working-with-paragraphs/]
---

## Inserting a Paragraph

**DocumentBuilder.writeln** inserts a string of text into the document as well but in addition, it adds a paragraph break. Current font formatting is also specified by the **DocumentBuilder.font** property and current paragraph formatting is determined by the **DocumentBuilder.paragraph_format** property. Below example shows how to insert a paragraph into the document.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Paragraph Formatting

Current paragraph formatting is represented by a ParagraphFormat object that is returned by the DocumentBuilder.ParagraphFormat property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset the paragraph formatting to default to Normal style, left aligned, no indentation, no spacing, no borders and no shading by calling **ParagraphFormat.clear_formatting**. Below example shows how to set paragraph formatting.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

### Working with Asian Typography

#### Automatically Adjust Space between Asian and Latin text, Numbers

If you are designing a template with both East Asian and Latin text, and you want to enhance the appearance of the form template by controlling the spaces between both types of text, you can configure your form template to automatically adjust the spaces between these two types of text. You can use **add_space_between_far_east_and_alpha** and **add_space_between_far_east_and_digit** properties of **ParagraphFormat** class to achieve this.

Following code example show how to use **ParagraphFormat.add_space_between_far_east_and_alpha** and **ParagraphFormat.add_space_between_far_east_and_digit** properties.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-SpaceBetweenAsianAndLatinText.py" >}}

#### Set Line Break Options

Asian Typography tab of the Paragraph properties dialog in MS Word has line break group. The options of this group can be set using **far_east_line_break_control**, **word_wrap**, **hanging_punctuation** properties of **ParagraphFormat** class. Below code example shows how to use these properties.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-AsianTypographyLineBreakGroup.py" >}}

## Applying a Paragraph Style

Some formatting objects like **Font** or **ParagraphFormat** support styles. A single built-in or user defined style is represented by a Style object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the **Style.style_identifier** property that returns a locale-independent style identifier represented by a **StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as Normal , Heading 1 , Heading 2 etc. All user-defined styles are assigned the **StyleIdentifier.USER** value. Below example shows how to apply a paragraph style.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Inserting Style Separator to Put Different Paragraph Styles

The style separator can be added to the end of a paragraph using the Ctrl + Alt + Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph. If you want to some text from the beginning of a particular heading to appear in a Table of Contents but don't want the entire heading in the Table of Contents, you can use this feature. Below code example shows how to insert style separator to put different paragraph styles. 

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identifying Paragraph Style Separator

Aspose.Words provides a public property **break_is_style_separator** into a **Paragraph** class allows identifying Style Separator Paragraph as shown in the example given below:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Applying Borders and Shading to a Paragraph

Borders are represented by the **BorderCollection**. This is a collection of **Border** objects that are accessed by index or by border type. Border type is represented by the **BorderType** enumeration. Some values of the enumeration are applicable to several or only one document element. For example, **BorderType.BOTTOM** is applicable to a paragraph or table cell while **BorderType.DIAGONALDOWN** specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the **Border.clear_formatting** method. Note that when border properties are reset to default values, the border is invisible. The **Shading** class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a **TextureIndex** enumeration value that allows the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the **TextureIndex.TEXTURE_SOLID** value and set the foreground shading color as appropriate. Below example shows how to apply borders and shading to a paragraph.

Below example shows how to apply borders and shading to a paragraph.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
