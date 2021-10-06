---
title: Working with Fonts
type: docs
weight: 120
url: /pythonnet/working-with-fonts/
---

## Getting Font Line Spacing

The line spacing of a font is the vertical distance between the baselines of two consecutive lines of text. Thus, the line spacing includes the blank space between lines along with the height of the character itself.

The **line_spacing** property was introduced in the Font class to obtain this value as shown in the example given below:

{{< gist "aspose-com-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-GetFontLineSpacing.py" >}}

## Font Formatting

Current font formatting is represented by a Font object returned by the DocumentBuilder.Font property. The Font class contains a wide variety of font properties possible in Microsoft Word. The below example shows how to set font formatting.

{{< gist "aspose-com-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-DocumentBuilderSetFontFormatting.py" >}}

Fill properties now are also available for fonts to set fill formatting of text. It gives an ability to change, for example, the foreground color or transparency of text fill.

## Font EmphasisMark

The Font class provides EmphasisMark property to get or set EmphasisMark enumeration values to be applied in the formatting. The code example given below demonstrates how to set EphasisMark property.

{{< gist "aspose-com-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontEmphasisMark.py" >}}
