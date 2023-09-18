---
title: Working with Paragraphs in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Insert paragraph and specify its formatting in a document using Python."
type: docs
weight: 110
url: /python-net/working-with-paragraphs/
aliases: [/python/working-with-paragraphs/]
---

A paragraph is a set of characters combined into a logical block and ending with a special character – a *paragraph break*. In Aspose.Words, a paragraph is represented by the [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) class.

## Insert a Paragraph

To insert a new paragraph into the document, in fact, you need to insert a paragraph break character into it. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) inserts a string of text into the document as well but in addition, it adds a paragraph break.

The current font formatting is also specified by the [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) property and the current paragraph formatting is determined by the [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) property.

The following code example shows how to insert a paragraph into a document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Format Paragraph

Current paragraph formatting is represented by a [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) object that is returned by the [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset the paragraph formatting to default to Normal style, left aligned, no indentation, no spacing, no borders and no shading by calling [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

The following code example shows how to set paragraph formatting:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Apply a Paragraph Style

Some formatting objects like [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) or [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) support styles. A single built-in or user defined style is represented by a [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) object provides the [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) property that returns a locale-independent style identifier represented by a [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/) enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as Normal , Heading 1 , Heading 2 etc. All user-defined styles are assigned the [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user) value. 

The following code example shows how to apply a paragraph style:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Insert Style Separator to Put Different Paragraph Styles

A style separator can be added to the end of a paragraph using the Ctrl + Alt + Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph. If you want to some text from the beginning of a particular heading to appear in a Table of Contents but don't want the entire heading in the Table of Contents, you can use this feature. 

The following code example shows how to insert a style separator to accommodate different paragraph styles:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identify Paragraph Style Separator

Aspose.Words provides a public property [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) into a [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) class allows identifying Style Separator Paragraph as shown in the example given below:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Apply Borders and Shading to a Paragraph

Borders are represented by the [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). This is a collection of [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) objects that are accessed by index or by border type. Border type is represented by the [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/) enumeration. Some values of the enumeration are applicable to several or only one document element. For example, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) is applicable to a paragraph or table cell while [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) and [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) objects allow you to reset these values to default by calling the [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/) method.

{{% alert color="primary" %}}

Note that when the border properties are reset to their default values, the border becomes invisible.

{{% /alert %}}

Aspose.Words also has the [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) enumeration value that allows the application of various patterns to the [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) object. For example, to set a background color for a document element, use the [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) value and set the foreground shading color as appropriate. Below example shows how to apply borders and shading to a paragraph.

The following code example shows how to apply borders and shading to a paragraph:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
