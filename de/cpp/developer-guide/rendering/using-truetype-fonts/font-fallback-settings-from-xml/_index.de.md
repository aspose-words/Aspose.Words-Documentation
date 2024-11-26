---
title: Schrift FallBack Einstellungen von XML in C++
second_title: Aspose.Words für C++
articleTitle: Schrift FallBack Einstellungen von XML
linktitle: Schrift FallBack Einstellungen von XML
description: "Der Schriftarten-Fallback-Mechanismus wird verwendet, wenn die Schriftart aufgelöst ist, aber kein bestimmtes Zeichen enthält. In diesem Fall versucht Aspose.Words, eine der Fallback-Schriftarten für das Zeichen zu verwenden."
type: docs
weight: 14
url: /de/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

In Aspose.Words werden zwei verschiedene Mechanismen verwendet - Schriftartenersetzung und Schriftartenfallback. Die Schriftartenersetzung wird verwendet, wenn die im Dokument angegebene Schriftart nicht unter den Schriftquellen gefunden werden konnte, wie es in den obigen Abschnitten beschrieben wurde. Der Schriftarten-Fallback-Mechanismus wird verwendet, wenn die Schriftart aufgelöst ist, aber kein bestimmtes Zeichen enthält. In diesem Fall versucht Aspose.Words, eine der Fallback-Schriftarten für das Zeichen zu verwenden.

Es gibt eine [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) -Methode, die die Fallback-Einstellungen automatisch erstellt, indem verfügbare Schriftarten gescannt werden. Da diese Methode möglicherweise eine nicht optimale Fallback-Einstellung erzeugt, können Sie das Fallback-Verhalten für Schriftarten mithilfe der Eigenschaften der Klasse [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings) steuern. Diese Klasse gibt Einstellungen für den Schriftarten-Fallback-Mechanismus an. Sie können eine Instanz der Klasse **FontFallbackSettings** wie folgt abrufen:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Ähnlich wie *Table substitution rule* verwendet dieser Mechanismus XML -Tabellen für die Konfiguration. Diese XML-Tabellen können mit den folgenden Methoden geladen und gespeichert werden:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

Die Aspose.Words-Version enthält zwei Tabellen: *MsOfficeFallbackSetting.xml* und *NotoFallbackSetting.xml*.

Die Tabelle *MsOfficeFallbackSetting* definiert eine Ersetzungsstrategie für einen Zeichenbereich, die der von Microsoft Word verwendeten Strategie ähnelt. Daher erfordert die Strategie die Installation von Microsoft Office-Schriftarten. *MsOfficeFallbackSetting* kann mit der folgenden Methode aktiviert werden:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

Die *NotoFallbackSetting*-Tabelle wurde speziell für die Verwendung mit Google Noto-Schriftarten erstellt (siehe mehr zu den Google Noto-Schriftarteinstellungen im nächsten Abschnitt) und kann wie folgt aktiviert werden:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Das folgende Codebeispiel zeigt, wie Schriftarten-Fallback-Einstellungen aus einer XML-Datei geladen werden:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Im obigen Codebeispiel wird die folgende XML -Datei verwendet:

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


