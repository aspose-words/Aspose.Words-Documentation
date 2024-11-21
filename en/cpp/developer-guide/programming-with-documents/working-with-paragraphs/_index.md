---
title: Working with Paragraphs in C++
second_title: Aspose.Words for C++
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Paragraph node manipulation practices using C++."
type: docs
weight: 210
url: /cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

A paragraph is a set of characters combined into a logical block and ending with a special character – a *paragraph break*. In Aspose.Words, a paragraph is represented by the [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) class.

## Insert a Paragraph

To insert a new paragraph into the document, in fact, you need to insert a paragraph break character into it. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) inserts not only a string of text into the document, but also adds a paragraph break.

The current font formatting is also specified by the [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) property, and the current paragraph formatting is determined by the [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/) property. In the next section, we will go into more detail about paragraph formatting.

The following code example shows how to insert a paragraph into a document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Format Paragraph

Current paragraph formatting is represented by a **ParagraphFormat** object that is returned by the **ParagraphFormat** property. This object encapsulates various paragraph formatting properties available in Microsoft Word. You can easily reset the paragraph formatting to default to Normal style, left-aligned no indentation, no spacing, no borders and no shading by calling [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

The following code example shows how to set paragraph formatting:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Apply Paragraph Style

Some formatting objects like Font or ParagraphFormat support styles. A single built-in or user-defined style is represented by a `Style` object that contains the corresponding style properties like name, base style, font and paragraph formatting of the style, and so on.

Furthermore, a **Style** object provides the [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) property that returns a locale-independent style identifier represented by the **StyleIdentifier** enumeration value. The point is that the names of built-in styles in Microsoft Word are localized for different languages. Using a style identifier, you can find the correct style regardless of the document language. The enumeration values correspond to the Microsoft Word built-in styles such as *Normal*, *Heading 1*, *Heading 2* etc. All user-defined styles are assigned the **StyleIdentifier.User** value.

The following code example shows how to apply a paragraph style:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Insert Style Separator to Put Different Paragraph Styles

The style separator can be added to the end of a paragraph using the Ctrl + Alt + Enter Keyboard Shortcut into MS Word. This feature allows for two different paragraph styles used in one logical printed paragraph. If you want to some text from the beginning of a particular heading to appear in a Table of Contents but don't want the entire heading in the Table of Contents, you can use this feature.

The following code example shows how to insert a style separator to accommodate different paragraph styles:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identify Paragraph Style Separator

` `Aspose.Words provides a public property [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) into a `Paragraph` class allows identifying Style Separator Paragraph as shown in the example given below:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Apply Borders and Shading to a Paragraph

Borders in Aspose.Words are represented by the [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) class – this is a collection of [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) objects that are accessed by index or by border type. Border type is represented by the `BorderType` enumeration. Some values of the enumeration are applicable to several or only one document element. For example, **BorderType.Bottom** is applicable to a paragraph or table cell while **BorderType.DiagonalDown** specifies the diagonal border in a table cell only.

Both the border collection and each separate border have similar attributes like color, line style, line width, distance from the text, and optional shadow. They are represented by properties of the same name. You can achieve different border types by combining the property values. In addition, both **BorderCollection** and **Border** objects allow you to reset these values to default by calling the [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/) method.

{{% alert color="primary" %}}

Note that when the border properties are reset to their default values, the border becomes invisible.

{{% /alert %}}

Aspose.Words also has the [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) class contains shading attributes for document elements. You can set the desired shading texture and the colors that are applied to the background and foreground of the element.

The shading texture is set with a [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) enumeration value that allows the application of various patterns to the **Shading** object. For example, to set a background color for a document element, use the [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) value and set the foreground shading color as appropriate.

The following code example shows how to apply borders and shading to a paragraph:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
