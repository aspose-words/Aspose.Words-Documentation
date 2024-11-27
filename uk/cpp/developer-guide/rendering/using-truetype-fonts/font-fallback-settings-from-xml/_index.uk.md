---
title: Налаштування шрифту FallBack від XML до C++
second_title: Aspose.Words для C++
articleTitle: Налаштування шрифту FallBack з XML
linktitle: Налаштування шрифту FallBack з XML
description: "Механізм відновлення шрифту використовується, коли шрифт дозволений, але він не містить певного символу. У цьому випадку Aspose.Words намагається використовувати один із резервних шрифтів для символу."
type: docs
weight: 14
url: /uk/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

В Aspose.Words використовуються два різних механізму - підстановка шрифту і резервний варіант шрифту. Заміна шрифту використовується, коли шрифт, зазначений у документі, не може бути знайдений серед джерел шрифту, як це було описано в попередніх розділах. Механізм відновлення шрифту використовується, коли шрифт дозволений, але він не містить певного символу. У цьому випадку Aspose.Words намагається використовувати один із резервних шрифтів для символу.

Існує метод [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/), який автоматично створює резервні налаштування шляхом сканування доступних шрифтів. Оскільки цей метод може призвести до неоптимальних налаштувань резервного копіювання, ви можете керувати поведінкою резервного шрифту, використовуючи властивості класу [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Цей клас визначає налаштування резервного механізму font. Ви можете отримати екземпляр класу **FontFallbackSettings** наступним чином:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Аналогічно *Table substitution rule*, цей механізм використовує XML таблиці для налаштування. Ці XML таблиці можна завантажити та зберегти наступними способами:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Версія Aspose.Words містить дві таблиці: *MsOfficeFallbackSetting.xml* і *NotoFallbackSetting.xml*.

Таблиця *MsOfficeFallbackSetting* визначає стратегію заміни для діапазону символів, яка схожа на стратегію, що використовується в Microsoft Word. Таким чином, стратегія вимагає встановлення шрифтів Office Microsoft. *MsOfficeFallbackSetting* можна активувати наступним способом:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Таблиця *NotoFallbackSetting* створена спеціально для використання зі шрифтами Google Noto (докладніше про налаштування шрифту Google Noto читайте в наступному розділі) і може бути включена наступним чином:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Наступний приклад коду показує, як завантажити резервні Налаштування шрифту з файлу XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

У наведеному вище прикладі коду використовується наступний файл XML:

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


