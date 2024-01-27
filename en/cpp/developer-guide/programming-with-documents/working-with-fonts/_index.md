---
title: Working with Fonts in C++
second_title: Aspose.Words for C++
articleTitle: Working with Fonts
linktitle: Working with Fonts
description: "Font formatting in details using C++."
type: docs
weight: 230
url: /cpp/working-with-fonts/
---

A font is a set of characters with a certain size, color, and design. Aspose.Words allows you to work with fonts using the [Fonts](https://reference.aspose.com/words/cpp/aspose.words.fonts/) namespace and the [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) class.

## Font Formatting

The current font formatting is represented by the **Font** object returned by the [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) property. The **Font** class contains a wide variety of font properties, replicating those available in Microsoft Word.

The following code example shows how to set font formatting:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Fill properties now are also available for fonts to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

## Getting Font Line Spacing

Font line spacing is the vertical distance between the baselines of two consecutive lines of text. So line spacing includes the blank space between lines along with the height of the character itself.

The [LineSpacing](https://reference.aspose.com/words/cpp/aspose.words/font/get_linespacing/) property was introduced to the **Font** class to obtain this value, as shown in the example below:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Font EmphasisMark

Some East Asian languages use a special emphasis mark to indicate an emphasis. The **Font** class provides the [EmphasisMark](https://reference.aspose.com/words/cpp/aspose.words/font/get_emphasismark/) property to get or set the `EmphasisMark` enumeration values to be applied when formatting.

The following code example shows how to set the **EphasisMark** property:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
