---
title: Lettertype FallBack instellingen van XML in C++
second_title: Aspose.Words voor C++
articleTitle: Lettertype FallBack instellingen van XML
linktitle: Lettertype FallBack instellingen van XML
description: "Het lettertype fallback mechanisme wordt gebruikt wanneer het lettertype is opgelost, maar het bevat geen specifiek teken. In dit geval probeert Aspose.Words een van de fallback-lettertypen voor het teken te gebruiken."
type: docs
weight: 14
url: /nl/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Er zijn twee verschillende mechanismen gebruikt in Aspose.Words - Font substitutie en Font fallback. Lettertypesubstitutie wordt gebruikt wanneer het in het document gespecificeerde lettertype niet kan worden gevonden tussen de lettertypebronnen zoals beschreven in de bovenstaande secties. Het lettertype fallback mechanisme wordt gebruikt wanneer het lettertype is opgelost, maar het bevat geen specifiek teken. In dit geval probeert Aspose.Words een van de fallback-lettertypen voor het teken te gebruiken.

Er is een [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) - methode die automatisch de fallback-instellingen bouwt door beschikbare lettertypen te scannen. Aangezien deze methode een niet-optimale fallback-instelling kan produceren, kunt u het fallback-gedrag van lettertypen beheren met behulp van de eigenschappen van de klasse [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Deze klasse specificeert de instellingen van het lettertype fallback mechanisme. Je kunt een instantie van de **FontFallbackSettings** klasse als volgt krijgen:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Net als bij *Table substitution rule* gebruikt dit mechanisme XML tabellen voor configuratie. Deze XML tabellen kunnen worden geladen en opgeslagen met de volgende methoden:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

De Aspose.Words release bevat twee tabellen: *MsOfficeFallbackSetting.xml* en *NotoFallbackSetting.xml*.

De tabel *MsOfficeFallbackSetting* definieert een vervangingsstrategie voor een reeks tekens, die vergelijkbaar is met de strategie die door Microsoft Word wordt gebruikt. De strategie vereist dus de installatie van Microsoft Office-lettertypen. *MsOfficeFallbackSetting* kan met de volgende methode worden geactiveerd:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

De *NotoFallbackSetting* tabel is speciaal gemaakt voor gebruik met Google Noto fonts (zie meer over Google Noto font instellingen in de volgende sectie) en kan als volgt worden ingeschakeld:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Het volgende codevoorbeeld laat zien hoe u font fallback-instellingen uit een XML - bestand kunt laden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

In het bovenstaande codevoorbeeld wordt het volgende XML bestand gebruikt:

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


