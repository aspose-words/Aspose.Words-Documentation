---
title: Configuración de fuente FallBack de XML en C++
second_title: Aspose.Words para C++
articleTitle: Configuración de fuente FallBack desde XML
linktitle: Configuración de fuente FallBack desde XML
description: "El mecanismo de respaldo de fuentes se usa cuando se resuelve la fuente, pero no contiene un carácter específico. En este caso, Aspose.Words intenta usar una de las fuentes alternativas para el carácter."
type: docs
weight: 14
url: /es/cpp/font-fallback-settings-from-xml/
timestamp: 2024-09-24-14-35-44
---

Hay dos mecanismos diferentes utilizados en Aspose.Words: Sustitución de fuentes y respaldo de fuentes. La sustitución de fuentes se utiliza cuando la fuente especificada en el documento no se pudo encontrar entre las fuentes como se describió en las secciones anteriores. El mecanismo de respaldo de fuentes se usa cuando se resuelve la fuente, pero no contiene un carácter específico. En este caso, Aspose.Words intenta usar una de las fuentes alternativas para el carácter.

Existe un método [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) que crea automáticamente la configuración alternativa escaneando las fuentes disponibles. Dado que este método puede producir una configuración alternativa no óptima, puede controlar el comportamiento alternativo de la fuente utilizando las propiedades de la clase [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Esta clase especifica la configuración del mecanismo de respaldo de fuentes. Puede obtener una instancia de la clase **FontFallbackSettings** de la siguiente manera:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

De manera similar a *Table substitution rule*, este mecanismo usa tablas XML para la configuración. Estas tablas XML se pueden cargar y guardar con los siguientes métodos:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

La versión Aspose.Words incluye dos tablas: *MsOfficeFallbackSetting.xml* y *NotoFallbackSetting.xml*.

La tabla *MsOfficeFallbackSetting* define una estrategia de reemplazo para un rango de caracteres, que es similar a la estrategia utilizada por Microsoft Word. Por lo tanto, la estrategia requiere la instalación de fuentes de Microsoft Office. *MsOfficeFallbackSetting* se puede activar mediante el siguiente método:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

La tabla *NotoFallbackSetting* se crea especialmente para usarla con fuentes Google Noto (consulte más información sobre la configuración de fuentes de Google Noto en la siguiente sección) y se puede habilitar de la siguiente manera:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

El siguiente ejemplo de código muestra cómo cargar la configuración de respaldo de fuentes desde un archivo XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

En el ejemplo de código anterior, se usa el siguiente archivo XML:

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


