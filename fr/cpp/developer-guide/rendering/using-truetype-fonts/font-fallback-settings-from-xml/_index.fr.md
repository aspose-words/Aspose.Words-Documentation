---
title: Paramètres de police FallBack à partir de XML en C++
second_title: Aspose.Words pour C++
articleTitle: Paramètres de police FallBack à partir de XML
linktitle: Paramètres de police FallBack à partir de XML
description: "Le mécanisme de secours de la police est utilisé lorsque la police est résolue, mais elle ne contient pas de caractère spécifique. Dans ce cas, Aspose.Words essaie d'utiliser l'une des polices de secours pour le caractère."
type: docs
weight: 14
url: /fr/cpp/font-fallback-settings-from-xml/
---

Il existe deux mécanismes différents utilisés dans Aspose.Words - la substitution de police et le repli de police. La substitution de police est utilisée lorsque la police spécifiée dans le document n'a pas pu être trouvée parmi les sources de police telles qu'elles ont été décrites dans les sections ci-dessus. Le mécanisme de secours de la police est utilisé lorsque la police est résolue, mais elle ne contient pas de caractère spécifique. Dans ce cas, Aspose.Words essaie d'utiliser l'une des polices de secours pour le caractère.

Il existe une méthode [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) qui construit automatiquement les paramètres de secours en analysant les polices disponibles. Étant donné que cette méthode peut produire un paramètre de secours non optimal, vous pouvez contrôler le comportement de secours de la police en utilisant les propriétés de la classe [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Cette classe spécifie les paramètres du mécanisme de repli des polices. Vous pouvez obtenir une instance de la classe **FontFallbackSettings** comme suit:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

De la même manière que *Table substitution rule*, ce mécanisme utilise des tables XML pour la configuration. Ces tables XML peuvent être chargées et enregistrées avec les méthodes suivantes:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

La version Aspose.Words comprend deux tables: *MsOfficeFallbackSetting.xml* et *NotoFallbackSetting.xml*.

La table *MsOfficeFallbackSetting* définit une stratégie de remplacement pour une plage de caractères, similaire à la stratégie utilisée par Microsoft Word. Ainsi, la stratégie nécessite l'installation de polices Microsoft Office. *MsOfficeFallbackSetting* peut être activé en utilisant la méthode suivante:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

La table *NotoFallbackSetting* est créée spécialement pour être utilisée avec les polices Google Noto (en savoir plus sur les paramètres de police Google Noto dans la section suivante) et peut être activée comme suit:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

L'exemple de code suivant montre comment charger les paramètres de secours de police à partir d'un fichier XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

Dans l'exemple de code ci-dessus, le fichier XML suivant est utilisé:

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


