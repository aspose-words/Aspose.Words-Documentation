---
title: Шрифт FallBack Настройки от XML във C++
second_title: Aspose.Words за C++
articleTitle: Шрифт FallBack Настройки от XML
linktitle: Шрифт FallBack Настройки от XML
description: "Резервният механизъм за шрифта се използва, когато шрифтът е решен, но не съдържа конкретен знак. В този случай Aspose.Words се опитва да използва един от резервните шрифтове за героя."
type: docs
weight: 14
url: /bg/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Има два различни механизма, използвани в Aspose.Words - заместване на шрифта и резервен шрифт. Заместване на шрифта се използва, когато шрифтът, посочен в документа, не може да бъде намерен сред източниците на шрифта, както е описано в горните раздели. Резервният механизъм за шрифта се използва, когато шрифтът е решен, но не съдържа конкретен знак. В този случай Aspose.Words се опитва да използва един от резервните шрифтове за героя.

Има метод [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/), който автоматично изгражда резервните настройки чрез сканиране на наличните шрифтове. Тъй като този метод може да създаде неоптимална резервна настройка, можете да контролирате резервното поведение на шрифта, като използвате свойствата на класа [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Този клас задава настройките на резервния механизъм за шрифтове. Можете да получите екземпляр от класа **FontFallbackSettings**, както следва::

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Подобно на *Table substitution rule*, този механизъм използва XML таблици за конфигуриране. Тези XML таблици могат да бъдат заредени и запазени със следните методи:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Изданието Aspose.Words включва две таблици: *MsOfficeFallbackSetting.xml* и *NotoFallbackSetting.xml*.

Таблицата *MsOfficeFallbackSetting* дефинира стратегия за заместване на набор от знаци, която е подобна на стратегията, използвана от Microsoft Word. По този начин стратегията изисква инсталирането на Microsoft офис шрифтове. *MsOfficeFallbackSetting* може да се активира чрез следния метод:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

*NotoFallbackSetting* таблицата е създадена специално за използване с Google Noto шрифтове (вижте повече за Google Noto настройки на шрифта в следващия раздел) и може да бъде активирана, както следва::

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Следният пример за код показва как да заредите резервните настройки на шрифта от файл XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

В горния пример за код се използва следният файл XML:

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


