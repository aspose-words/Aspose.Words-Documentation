---
title: Working with Fonts in Python
second_title: Aspose.Words for Python via .NET
articleTitle: Working with Fonts
linktitle: Working with Fonts
description: "Customize font settings using Python."
type: docs
weight: 230
url: /python-net/working-with-fonts/
aliases: [/python/working-with-fonts/]
---

A font is a set of characters with a certain size, color, and design. Aspose.Words allows you to work with fonts using the [fonts](https://reference.aspose.com/words/python-net/aspose.words.fonts/) module and the [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) class.

## Font Formatting

The current font formatting is represented by the **Font** object returned by the [Font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) property. The **Font** class contains a wide variety of font properties, replicating those available in Microsoft Word.

The following code example shows how to set font formatting:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Fill properties now are also available for fonts to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

## Getting Font Line Spacing

Font line spacing is the vertical distance between the baselines of two consecutive lines of text. So line spacing includes the blank space between lines along with the height of the character itself.

The [line_spacing](https://reference.aspose.com/words/python-net/aspose.words/font/line_spacing/) property was introduced in the [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) class to obtain this value as shown in the example given below:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Font EmphasisMark

Some East Asian languages use a special emphasis mark to indicate an emphasis. The **Font** class provides the [emphasis_mark](https://reference.aspose.com/words/python-net/aspose.words/font/emphasis_mark/) property to get or set [EmphasisMark](https://reference.aspose.com/words/python-net/aspose.words/emphasismark/) enumeration values to be applied in the formatting.

The following code example shows how to set the **EphasisMark** property:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
