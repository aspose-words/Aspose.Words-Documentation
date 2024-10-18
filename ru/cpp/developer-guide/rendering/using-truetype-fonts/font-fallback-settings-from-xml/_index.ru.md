---
title: Настройки шрифта FallBack из XML в C++
second_title: Aspose.Words для C++
articleTitle: Настройки шрифта FallBack из XML
linktitle: Настройки шрифта FallBack из XML
description: "Механизм восстановления шрифта используется, когда шрифт разрешен, но он не содержит определенного символа. В этом случае Aspose.Words пытается использовать один из резервных шрифтов для символа."
type: docs
weight: 14
url: /ru/cpp/font-fallback-settings-from-xml/
---

В Aspose.Words используются два разных механизма - подстановка шрифта и резервный вариант шрифта. Подстановка шрифта используется, когда шрифт, указанный в документе, не может быть найден среди источников шрифта, как это было описано в предыдущих разделах. Механизм восстановления шрифта используется, когда шрифт разрешен, но он не содержит определенного символа. В этом случае Aspose.Words пытается использовать один из резервных шрифтов для символа.

Существует метод [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/), который автоматически создает резервные настройки путем сканирования доступных шрифтов. Поскольку этот метод может привести к неоптимальным резервным настройкам, вы можете управлять поведением резервного шрифта, используя свойства класса [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Этот класс определяет настройки резервного механизма font. Вы можете получить экземпляр класса **FontFallbackSettings** следующим образом:

**С++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Аналогично *Table substitution rule*, этот механизм использует XML-таблицы для настройки. Эти XML-таблицы можно загрузить и сохранить следующими способами:

**С++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Версия Aspose.Words содержит две таблицы: *MsOfficeFallbackSetting.xml* и *NotoFallbackSetting.xml*.

Таблица *MsOfficeFallbackSetting* определяет стратегию замены ряда символов, аналогичную стратегии, используемой в Microsoft Word. Таким образом, стратегия требует установки шрифтов Microsoft Office. *MsOfficeFallbackSetting* можно активировать следующим способом:

**С++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Таблица *NotoFallbackSetting* создана специально для использования со шрифтами Google Noto (подробнее о настройках шрифтов Google Noto читайте в следующем разделе) и может быть включена следующим образом:

**С++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

В следующем примере кода показано, как загрузить резервные настройки шрифта из XML-файла:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

В приведенном выше примере кода используется следующий XML-файл:

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


