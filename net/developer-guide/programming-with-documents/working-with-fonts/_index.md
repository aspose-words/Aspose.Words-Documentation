---
title: Working with Fonts in C#
second_title: Aspose.Words for .NET
articleTitle: Working with Fonts
linktitle: Working with Fonts
description: "Font formatting in details using C#. Emphasis mark in C#. Get font line spacing using C#."
type: docs
weight: 120
url: /net/working-with-fonts/
---

A font is a set of characters with a certain size, color, and design. Aspose.Words allows you to work with fonts using the [Fonts](https://reference.aspose.com/words/net/aspose.words.fonts/) namespace and the [Font](https://reference.aspose.com/words/net/aspose.words/font/) class.

## Font Formatting

The current font formatting is represented by the **Font** object returned by the [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) property. The **Font** class contains a wide variety of font properties, replicating those available in Microsoft Word.

The following code example shows how to set font formatting:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Fill properties are also available for fonts to set text fill formatting. This makes it possible to change, for example, the foreground color or the transparency of the text fill.

## Getting Font Line Spacing

Font line spacing is the vertical distance between the baselines of two consecutive lines of text. So line spacing includes the blank space between lines along with the height of the character itself.

The [LineSpacing](https://reference.aspose.com/words/net/aspose.words/font/linespacing/) property was introduced to the **Font** class to obtain this value, as shown in the example below:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Font EmphasisMark

Some East Asian languages use a special emphasis mark to indicate an emphasis. The **Font** class provides the [EmphasisMark](https://reference.aspose.com/words/net/aspose.words/font/emphasismark/) property to get or set the EmphasisMark enumeration values to be applied when formatting.

The following code example shows how to set the **EphasisMark** property:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
