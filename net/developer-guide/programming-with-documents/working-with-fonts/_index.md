---
title: Working with Fonts – Aspose.Words for .NET
articleTitle: Working with Fonts
linktitle: Working with Fonts
description: "Font formatting in details using Aspose.Words for .Net."
type: docs
weight: 120
url: /net/working-with-fonts/
---

## Getting Font Line Spacing

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The LineSpacing property was introduced in the Font class to obtain this value as shown in the example given below:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cs" >}}

## Font Formatting

Current font formatting is represented by a Font object returned by the DocumentBuilder.Font property. The Font class contains a wide variety of font properties possible in Microsoft Word. The below example shows how to set font formatting.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cs" >}}

Fill properties now are also available for fonts to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

## Font EmphasisMark

The Font class provides EmphasisMark property to get or set EmphasisMark enumeration values to be applied in the formatting. The code example given below demonstrates how to set EphasisMark property.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cs" >}}
