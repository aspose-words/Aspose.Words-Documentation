---
title: Font FallBack Settings from XML in C++
second_title: Aspose.Words for C++
articleTitle: Font FallBack Settings from XML
linktitle: Font FallBack Settings from XML
description: "The Font fallback mechanism is used when the font is resolved, but it does not contain a specific character. In this case, Aspose.Words tries to use one of the fallback fonts for the character."
type: docs
weight: 14
url: /cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

There are two different mechanisms used in Aspose.Words — Font substitution and Font fallback. Font substitution is used when the font specified in the document could not be found among the font sources as it was described in the above sections. The Font fallback mechanism is used when the font is resolved, but it does not contain a specific character. In this case, Aspose.Words tries to use one of the fallback fonts for the character.

There is a [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) method that automatically builds the fallback settings by scanning available fonts. Since this method may produce a non-optimal fallback setting, you can control the font fallback behavior by using the properties of the [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) class. This class specifies settings of the font fallback mechanism. You can get an instance of the **FontFallbackSettings** class as follows:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Similarly to *Table substitution rule*, this mechanism uses XML tables for configuration. These XML tables can be loaded and saved with the following methods:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

The Aspose.Words release includes two tables: *MsOfficeFallbackSetting.xml* and *NotoFallbackSetting.xml*.

The *MsOfficeFallbackSetting* table defines a replacement strategy for a range of characters, which is similar to the strategy used by Microsoft Word. Thus, the strategy requires the installation of Microsoft Office fonts. *MsOfficeFallbackSetting* can be activated using the following method:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

The *NotoFallbackSetting* table is created especially for use with Google Noto fonts (see more about Google Noto font settings in the next section) and can be enabled as follows:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

The following code example demonstrates how to load font fallback settings from an XML file:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

In the above code example, the following XML file is used:

{{< highlight html >}}
<FontFallbackSettings xmlns="Aspose.Words">
    <FallbackTable>
        <!-- Fallback table consists of the rules. Each rule defines the fallback fonts which Aspose.Words should use for specified Unicode ranges and base fonts. Rules are checked one by one and the first applicable fallback font is used. If none of the rules are applicable then ".notdef" glyph (missing glyph) from the base font will be used. -->
        <!-- This rule defines that "Vijaya" fallback font should be used for "U+0B80..U+0BFF Tamil" Unicode block. -->
        <Rule Ranges="0B80-0BFF" FallbackFonts="Vijaya"/>
        <!-- This rule defines that "Segoe UI Emoji" and "Segoe UI Symbol" fallback fonts should be used for "U+1F300..U+1F5FF Miscellaneous Symbols and Pictographs", "U+1F600..U+1F64F Emoticons" Unicode blocks. If "Segoe UI Emoji" font does not contains the glyph for the requested Unicode code point then "Segoe UI Symbol" will be checked. -->
        <Rule Ranges="1F300-1F64F" FallbackFonts="Segoe UI Emoji, Segoe UI Symbol"/>
        <!-- This rule defines that "Arial" fallback font should be used for "U+2000..U+206F General Punctuation", "U+2070..U+209F Superscripts and Subscripts" Unicode blocks and specific "U+20B9 INDIAN RUPEE SIGN" code point. -->
        <Rule Ranges="2000-206F, 2070-209F, 20B9" FallbackFonts="Arial" />
        <!-- These rules defines that for "U+3040..U+309F Hiragana" Unicode block "MS Gothic" fallback font should be used if base font is "Times New Roman" and "MS Mincho" fallback font for all other base fonts. -->
        <Rule Ranges="3040-309F" FallbackFonts="MS Gothic" BaseFonts="Times New Roman"/>
        <Rule Ranges="3040-309F" FallbackFonts="MS Mincho"/>
        <!-- This rule defines that "Arial Unicode MS" fallback font should be used if applicable fallback font was not found by previous rules. -->
        <Rule FallbackFonts="Arial Unicode MS"/>
    </FallbackTable>
</FontFallbackSettings>
{{< /highlight >}}


