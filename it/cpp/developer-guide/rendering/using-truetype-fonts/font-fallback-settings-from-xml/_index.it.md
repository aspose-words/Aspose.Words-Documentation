---
title: Impostazioni carattere FallBack da XML in C++
second_title: Aspose.Words per C++
articleTitle: Impostazioni carattere FallBack da XML
linktitle: Impostazioni carattere FallBack da XML
description: "Il meccanismo di fallback del font viene utilizzato quando il font viene risolto, ma non contiene un carattere specifico. In questo caso, Aspose.Words tenta di utilizzare uno dei font di riserva per il carattere."
type: docs
weight: 14
url: /it/cpp/font-fallback-settings-from-xml/
---

Esistono due diversi meccanismi utilizzati in Aspose.Words: la sostituzione del font e il fallback del font. La sostituzione del font viene utilizzata quando il font specificato nel documento non è stato trovato tra le fonti del font come descritto nelle sezioni precedenti. Il meccanismo di fallback del font viene utilizzato quando il font viene risolto, ma non contiene un carattere specifico. In questo caso, Aspose.Words tenta di utilizzare uno dei font di riserva per il carattere.

Esiste un metodo [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) che crea automaticamente le impostazioni di fallback scansionando i font disponibili. Poiché questo metodo può produrre un'impostazione di fallback non ottimale, è possibile controllare il comportamento di fallback dei font utilizzando le proprietà della classe [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Questa classe specifica le impostazioni del meccanismo di fallback dei font. È possibile ottenere un'istanza della classe **FontFallbackSettings** come segue:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Analogamente a *Table substitution rule*, questo meccanismo utilizza tabelle XML per la configurazione. Queste tabelle XML possono essere caricate e salvate con i seguenti metodi:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

La versione Aspose.Words include due tabelle: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

La tabella *MsOfficeFallbackSetting* definisce una strategia di sostituzione per un intervallo di caratteri, che è simile alla strategia utilizzata da Microsoft Word. Pertanto, la strategia richiede l'installazione di font di Microsoft Office. *MsOfficeFallbackSetting* può essere attivato utilizzando il seguente metodo:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

La tabella *NotoFallbackSetting* è stata creata appositamente per l'uso con i font di Google Noto (vedi ulteriori informazioni sulle impostazioni dei font di Google Noto nella sezione successiva) e può essere abilitata come segue:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

Nell'esempio di codice seguente viene illustrato come caricare le impostazioni di fallback dei font da un file XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Nell'esempio di codice precedente, viene utilizzato il seguente file XML:

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


