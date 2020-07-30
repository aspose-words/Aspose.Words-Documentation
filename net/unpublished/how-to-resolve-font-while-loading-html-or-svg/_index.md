---
title: How to Resolve Font While Loading HTML or SVG
type: docs
weight: 50
url: /net/how-to-resolve-font-while-loading-html-or-svg/
---

[This article is not related to rendering. It is related to HTML loading. It should be moved to the corresponding section and reviewed by Conversions: HTML team]

Previously while loading HTML or SVG documents, font families were resolved against fonts installed in the local system. If a font family couldn't be resolved to an installed font, it was stored in the model as is. This led to situations where resolved font names depended on the local system and were not affected by FontSettings specified by users.

For example, if ‘UnknownFont1’ was not installed on the system, the following font family declaration resolved to "Arial" ("Arial" is the font name we use for "san-serif" generic font name.)

This is a paragraph.

Now FontSettings are taken into account while importing HTML and SVG documents and customers can set up FontSettings before loading a document (add substitution rule, specify fonts folder, etc) in order to change fonts available for font resolution.

The following example shows how to add a font substitution rule while loading a document.



{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontResolution-FontSettingsWithLoadOptions.cs" >}}



If "myfile.html" contains the same HTML paragraph as above, it will be imported with the "UnknownFont1" font. Although "UnknownFont1" is not installed on the local machine, it is still considered available, because it is substituted with "Comic Sans MS". Previously, as explained above, substitution rules were ignored and the paragraph was imported with the "Arial" (sans-serif) font.

Additionally, customers can now use FontSettings to specify folders where Aspose.Words looks for TrueType fonts while loading HTML and SVG documents.



{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithFontResolution-SetFontsFolder.cs" >}}

The resulting model will contain "UnknownFont1" as resolved font name for the paragraph from the example if the "UnknownFont1" font file exists in the folder "MyDir\Fonts".
