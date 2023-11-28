---
title: Working with Paragraphs in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Insert a paragraph into a document C#. Set paragraph styles in C#. Work with paragraph style separator C#. Manipulate paragraph node using C#."
type: docs
weight: 210
url: /net/working-with-paragraphs/
---

A paragraph is a set of characters combined into a logical block and ending with a special character – a *paragraph break*. In Aspose.Words, a paragraph is represented by the [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) class.

## Insert a Paragraph

To insert a new paragraph into the document, in fact, you need to insert a paragraph break character into it. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) inserts not only a string of text into the document, but also adds a paragraph break.

The current font formatting is also specified by the [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) property, and the current paragraph formatting is determined by the [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) property. In the next section, we will go into more detail about paragraph formatting.

The following code example shows how to insert a paragraph into a document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Format Paragraph

Current paragraph formatting is represented by the [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) object that is returned by the [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/) property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset a paragraph's formatting to its default – Normal style, left-aligned, no indentation, no spacing, no borders, no shading – by calling [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

The following code example shows how to set paragraph formatting:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Apply Paragraph Style

Some formatting objects, such as **Font** or **ParagraphFormat**, support styles. One built-in or user-defined style is represented by a [Style](https://reference.aspose.com/words/net/aspose.words/style/) object, which contains the appropriate style properties like name, base style, font, style paragraph formatting, and so on.

In addition, the **Style** object exposes the [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/) property, which returns the locale-independent style identifier represented by the [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/) enumeration value. The fact is that the names of the built-in styles in Microsoft Word are localized for different languages. Using the style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the built-in Microsoft Word styles such as *Normal*, *Heading 1*, *Heading 2*  and so on. All user-defined styles are set to the **StyleIdentifier.User** enumeration value.

The following code example shows how to apply a paragraph style:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Insert Style Separator to Put Different Paragraph Styles

A style separator can be added to the end of a paragraph using the keyboard shortcut Ctrl+Alt+Enter in Microsoft Word. This feature allows you to use two different paragraph styles in the same logical printed paragraph. If you want some text from the beginning of a particular heading to appear in the table of contents, but do not want the entire heading to show in the table of contents, you can use this function.

The following code example shows how to insert a style separator to accommodate different paragraph styles:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identify Paragraph Style Separator

Aspose.Words exposes the [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) public property on the Paragraph class to identify a paragraph with a style separator, as shown in the example below:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Apply Borders and Shading to a Paragraph

Borders in Aspose.Words are represented by the [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/) class – this is a collection of [Border](https://reference.aspose.com/words/net/aspose.words/border/) objects that are accessed by index or by border type. The border type is in turn represented by the [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/) enumeration. Some enumeration values apply to multiple or only one document element. For example, **BorderType.Bottom** applies to a paragraph or table cell, while **BorderType.DiagonalDown** specifies a diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes such as color, line style, line width, distance from text, and optional shadow. They are represented by properties of the same name. You can get different border types by combining property values. In addition, the **BorderCollection** and **Border** objects allow you to reset these values to their default values by calling the [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/) method.

{{% alert color="primary" %}}

Note that when the border properties are reset to their default values, the border becomes invisible.

{{% /alert %}}

Aspose.Words also has the [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) class that contains shading attributes for document elements. You can set the desired shading texture and colors that are applied to the background and foreground of an element using the [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/) enumeration value. **TextureIndex** also allows you to apply different patterns to the **Shading** object. For example, to set the background color for a document element, use the **TextureIndex.TextureSolid** value and set the foreground shading color as appropriate.

The following code example shows how to apply borders and shading to a paragraph:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Count Paragraph Lines

If you want to count the number of lines in a paragraph for any Word document, the following code sample can be used:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}