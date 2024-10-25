---
title: Fonte FallBack configurações de XML Em C++
second_title: Aspose.Words para C++
articleTitle: Fonte FallBack definições de XML
linktitle: Fonte FallBack definições de XML
description: "O mecanismo de fallback da fonte é usado quando a fonte é resolvida, mas não contém um caractere específico. Nesse caso, Aspose.Words tenta usar uma das fontes de fallback para o caractere."
type: docs
weight: 14
url: /pt/cpp/font-fallback-settings-from-xml/
---

Existem dois mecanismos diferentes usados em Aspose.Words - substituição de fonte e fallback de fonte. A substituição de fonte é utilizada quando a fonte especificada no documento não pôde ser encontrada entre as fontes de fonte, tal como foi descrita nas secções acima. O mecanismo de fallback da fonte é usado quando a fonte é resolvida, mas não contém um caractere específico. Nesse caso, Aspose.Words tenta usar uma das fontes de fallback para o caractere.

Existe um método [BuildAutomatic](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontfallbacksettings/buildautomatic/) que cria automaticamente as definições de fallback através da verificação das fontes disponíveis. Como esse método pode produzir uma configuração de fallback não iDEAL, Você pode controlar o comportamento de fallback da fonte usando as propriedades da classe [FontFallbackSettings](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_fallback_settings). Essa classe especifica as configurações do mecanismo de fallback da fonte. Você pode obter uma instância da classe **FontFallbackSettings** da seguinte forma:

**C++**

{{< highlight cpp >}}
System::SharedPtr<FontFallbackSettings> settings = fontSettings->get_FallbackSettings();
{{< /highlight >}}

Da mesma forma que *Table substitution rule*, este mecanismo usa XML tabelas para configuração. Essas tabelas XML podem ser carregadas e salvas com os seguintes métodos:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->Load(u"MyNewFallbackTable.xml");
fontSettings->get_FallbackSettings()->Save(u"Current_FallbackTable.xml");
{{< /highlight >}}

A versão Aspose.Words inclui duas tabelas: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

A tabela *MsOfficeFallbackSetting* define uma estratégia de substituição para um intervalo de caracteres, que é semelhante à estratégia utilizada por Microsoft Word. Assim, a estratégia requer a instalação de fontes do Microsoft Office. *MsOfficeFallbackSetting* pode ser activado utilizando o seguinte método:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadMsOfficeFallbackSettings();
{{< /highlight >}}

A tabela *NotoFallbackSetting* é criada especialmente para uso com fontes Google Noto (Veja mais sobre as configurações de fontes Google Noto na próxima seção) e pode ser ativada da seguinte forma:

**C++**

{{< highlight cpp >}}
fontSettings->get_FallbackSettings()->LoadNotoFallbackSettings();
{{< /highlight >}}

O exemplo de código a seguir demonstra como carregar configurações de fallback de fonte de um arquivo XML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithFontSettings-SetFontFallbackSettings.cpp" >}}

No exemplo de código acima, o seguinte arquivo XML é usado:

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


