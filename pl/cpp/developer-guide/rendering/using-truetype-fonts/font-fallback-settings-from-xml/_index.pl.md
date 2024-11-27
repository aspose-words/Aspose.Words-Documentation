---
title: Ustawienia czcionki FallBack z XML w C++
second_title: Aspose.Words dla C++
articleTitle: Ustawienia czcionki FallBack z XML
linktitle: Ustawienia czcionki FallBack z XML
description: "Mechanizm rezerwowy czcionki jest używany, gdy czcionka jest rozwiązywana, ale nie zawiera określonego znaku. W takim przypadku Aspose.Words próbuje użyć jednej z czcionek rezerwowych dla znaku."
type: docs
weight: 14
url: /pl/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Istnieją dwa różne mechanizmy używane w Aspose.Words - zastępowanie czcionek i rezerwowanie czcionek. Podstawienie czcionki jest używane, gdy czcionki określonej w dokumencie nie można znaleźć wśród źródeł czcionek, jak opisano w powyższych sekcjach. Mechanizm rezerwowy czcionki jest używany, gdy czcionka jest rozwiązywana, ale nie zawiera określonego znaku. W takim przypadku Aspose.Words próbuje użyć jednej z czcionek rezerwowych dla znaku.

Istnieje metoda [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/), która automatycznie buduje ustawienia awaryjne, skanując dostępne czcionki. Ponieważ ta metoda może powodować nieoptymalne ustawienie awaryjne, można kontrolować zachowanie rezerwowe czcionki za pomocą właściwości klasy [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Ta klasa określa ustawienia mechanizmu rezerwowego czcionki. Możesz uzyskać instancję klasy **FontFallbackSettings** w następujący sposób:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Podobnie jak *Table substitution rule*, ten mechanizm używa tabel XML do konfiguracji. Te tabele XML można załadować i zapisać za pomocą następujących metod:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Wydanie Aspose.Words zawiera dwie tabele: *MsOfficeFallbackSetting.xml* i *NotoFallbackSetting.xml*.

Tabela *MsOfficeFallbackSetting* definiuje strategię zastępowania dla zakresu znaków, która jest podobna do strategii używanej przez Microsoft Word. Dlatego strategia wymaga instalacji czcionek biurowych Microsoft. *MsOfficeFallbackSetting* można aktywować za pomocą następującej metody:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabela *NotoFallbackSetting* jest tworzona specjalnie do użytku z czcionkami Google Noto (więcej informacji o ustawieniach czcionek Google Noto w następnej sekcji) i można ją włączyć w następujący sposób:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Poniższy przykład kodu pokazuje, jak załadować ustawienia rezerwowe czcionki z pliku XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

W powyższym przykładzie kodu używany jest następujący plik XML:

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


