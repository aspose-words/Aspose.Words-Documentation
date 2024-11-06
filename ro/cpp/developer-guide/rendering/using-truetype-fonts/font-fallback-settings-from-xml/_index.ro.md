---
title: Font FallBack Setări din XML în C++
second_title: Aspose.Words pentru C++
articleTitle: Font FallBack Setări din XML
linktitle: Font FallBack Setări din XML
description: "Mecanismul de rezervă a fontului este utilizat atunci când fontul este rezolvat, dar nu conține un caracter specific. În acest caz, Aspose.Words încearcă să utilizeze unul dintre fonturile de rezervă pentru personaj."
type: docs
weight: 14
url: /ro/cpp/font-fallback-settings-from-xml/
---

Există două mecanisme diferite utilizate în Aspose.Words - substituirea fontului și rezerva fontului. Substituirea fontului este utilizată atunci când fontul specificat în document nu a putut fi găsit printre sursele de font așa cum a fost descris în secțiunile de mai sus. Mecanismul de rezervă a fontului este utilizat atunci când fontul este rezolvat, dar nu conține un caracter specific. În acest caz, Aspose.Words încearcă să utilizeze unul dintre fonturile de rezervă pentru personaj.

Există o metodă [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) care construiește automat setările de rezervă prin scanarea fonturilor disponibile. Deoarece această metodă poate produce o setare de rezervă non-optimă, puteți controla comportamentul de rezervă a fontului utilizând proprietățile clasei [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Această clasă specifică setările mecanismului de rezervă a fontului. Puteți obține o instanță a clasei **FontFallbackSettings** După cum urmează:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

În mod similar cu *Table substitution rule*, acest mecanism utilizează tabele XML pentru configurare. Aceste tabele XML pot fi încărcate și salvate cu următoarele metode:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Versiunea Aspose.Words include două tabele: *MsOfficeFallbackSetting.xml* și *NotoFallbackSetting.xml*.

Tabelul *MsOfficeFallbackSetting* definește o strategie de înlocuire pentru o serie de caractere, care este similară cu strategia utilizată de Microsoft Word. Astfel, strategia necesită instalarea fonturilor Microsoft Office. *MsOfficeFallbackSetting* poate fi activat folosind următoarea metodă:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Tabelul *NotoFallbackSetting* este creat special pentru utilizarea cu fonturi Google Noto (vezi mai multe despre setările fontului Google Noto în secțiunea următoare) și poate fi activat după cum urmează:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Următorul exemplu de cod demonstrează cum să încărcați setările de rezervă ale fontului dintr-un fișier XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

În exemplul de cod de mai sus, se utilizează următorul fișier XML:

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


