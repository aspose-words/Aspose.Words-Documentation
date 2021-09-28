---
title: Working with Fonts
type: docs
weight: 70
url: /cpp/working-with-fonts/
---

## Getting Font Line Spacing

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The LineSpacing property was introduced in the Font class to obtain this value as shown in the example given below:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetFontLineSpacing-GetFontLineSpacing.cpp" >}}

## Font Formatting

Current font formatting is represented by a Font object returned by the DocumentBuilder.Font property. The Font class contains a wide variety of font properties possible in Microsoft Word. The below example demonstrates how to set font formatting.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

Fill properties now are also available for fonts to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

## Font EmphasisMark

The Font class provides EmphasisMark property to get or set EmphasisMark enumeration values to be applied in the formatting. The code example given below shows how to set EphasisMark property.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetFontEmphasisMark.cpp" >}}
