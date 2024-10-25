---
title: Font FallBack Instellings van XML in C++
second_title: Aspose.Words vir C++
articleTitle: Font FallBack Instellings van XML
linktitle: Font FallBack Instellings van XML
description: "Die Lettertipe terugval meganisme word gebruik wanneer die lettertipe opgelos word, maar dit bevat nie'n spesifieke karakter nie. In hierdie geval, Aspose.Words probeer om een van die terugval lettertipes vir die karakter te gebruik."
type: docs
weight: 14
url: /af/cpp/font-fallback-settings-from-xml/
---

Daar is twee verskillende meganismes wat gebruik word in Aspose.Words - Lettertipe vervanging en Lettertipe terugval. Lettertipe vervanging word gebruik wanneer die lettertipe wat in die dokument gespesifiseer is nie onder die lettertipe bronne gevind kon word soos dit in die bogenoemde afdelings beskryf is nie. Die Lettertipe terugval meganisme word gebruik wanneer die lettertipe opgelos word, maar dit bevat nie'n spesifieke karakter nie. In hierdie geval, Aspose.Words probeer om een van die terugval lettertipes vir die karakter te gebruik.

Daar is'n [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) metode wat outomaties die terugslaginstellings bou deur beskikbare lettertipes te skandeer. Aangesien hierdie metode'n nie-optimale terugslag instelling kan produseer, kan jy die lettertipe terugslag gedrag beheer deur die gebruik van die eienskappe van die [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) klas. Hierdie klas spesifiseer instellings van die font fallback meganisme. Jy kan'n voorbeeld van die **FontFallbackSettings** klas soos volg kry:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Net soos *Table substitution rule*, gebruik hierdie meganisme XML tabelle vir konfigurasie. Hierdie XML tabelle kan gelaai en gestoor word met die volgende metodes:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Die Aspose.Words vrystelling sluit twee tabelle in: *MsOfficeFallbackSetting.xml* en *NotoFallbackSetting.xml*.

Die *MsOfficeFallbackSetting* tabel definieer'n vervanging strategie vir'n reeks van karakters, wat soortgelyk is aan die strategie wat gebruik word deur Microsoft Word. Die strategie vereis dus die installering van Microsoft Kantoor lettertipes. *MsOfficeFallbackSetting* kan geaktiveer word deur die volgende metode te gebruik:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Die *NotoFallbackSetting* tabel is spesiaal geskep vir gebruik met Google Noto lettertipes (sien meer oor Google Noto lettertipe instellings in die volgende afdeling) en kan soos volg geaktiveer word:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Die volgende kode voorbeeld demonstreer hoe om font fallback instellings van'n XML lêer te laai:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

In die bogenoemde kode voorbeeld, is die volgende XML lêer gebruik:

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


