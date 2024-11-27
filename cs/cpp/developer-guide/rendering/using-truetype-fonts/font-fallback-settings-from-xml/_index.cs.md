---
title: Nastavení písma FallBack od XML v C++
second_title: Aspose.Words pro C++
articleTitle: Nastavení písma FallBack od XML
linktitle: Nastavení písma FallBack od XML
description: "Mechanismus záložního písma se používá, když je písmo vyřešeno, ale neobsahuje konkrétní znak. V tomto případě se Aspose.Words pokusí použít pro znak jedno ze záložních písem."
type: docs
weight: 14
url: /cs/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

V Aspose.Words se používají dva různé mechanismy-substituce písma a fallback písma. Nahrazení písma se používá, když písmo uvedené v dokumentu nebylo možné najít mezi zdroji písma, jak bylo popsáno ve výše uvedených částech. Mechanismus záložního písma se používá, když je písmo vyřešeno, ale neobsahuje konkrétní znak. V tomto případě se Aspose.Words pokusí použít pro znak jedno ze záložních písem.

Existuje metoda [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/), která automaticky vytvoří záložní nastavení skenováním dostupných písem. Protože tato metoda může způsobit neoptimální záložní nastavení, můžete ovládat záložní chování písma pomocí vlastností třídy [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Tato třída určuje nastavení záložního mechanismu písma. Instanci třídy **FontFallbackSettings** můžete získat následujícím způsobem:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Podobně jako *Table substitution rule* používá tento mechanismus pro konfiguraci tabulky XML. Tyto tabulky XML lze načíst a uložit pomocí následujících metod:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Vydání Aspose.Words obsahuje dvě tabulky: *MsOfficeFallbackSetting.xml* a *NotoFallbackSetting.xml*.

Tabulka *MsOfficeFallbackSetting* definuje strategii nahrazení řady znaků, která je podobná strategii používané Microsoft Word. Strategie tedy vyžaduje instalaci kancelářských písem Microsoft. *MsOfficeFallbackSetting* lze aktivovat pomocí následující metody:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabulka *NotoFallbackSetting* je vytvořena speciálně pro použití s písmy Google Noto (více o nastavení písma Google Noto v další části) a lze ji povolit následovně:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Následující příklad kódu ukazuje, jak načíst záložní nastavení písma ze souboru XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Ve výše uvedeném příkladu kódu se používá následující soubor XML:

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


