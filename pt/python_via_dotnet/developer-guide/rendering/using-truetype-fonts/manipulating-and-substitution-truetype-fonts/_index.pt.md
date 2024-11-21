---
title: Substitua fontes TrueType
second_title: Aspose.Words para Python via .NET
articleTitle: Manipular e substituir fontes TrueType
linktitle: Manipular e substituir fontes TrueType
description: "Aspose.Words para Python via .NET pode incorporar as fontes TrueType corretas no documento resultante para garantir que ele seja exibido com precisão. Se uma fonte ou caractere específico não estiver disponível, o Aspose.Words procura uma substituição de fonte adequada ou usa o mecanismo de fallback de fonte."
type: docs
weight: 10
url: /pt/python-net/manipulating-and-substitution-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words requer fontes TrueType para diversas tarefas, incluindo renderização de documentos em formatos de página fixa, por exemplo, PDF ou XPS. Quando Aspose.Words renderiza um documento, ele precisa realizar a incorporação e subconjunto de fontes TrueType no documento resultante, o que é uma prática normal durante a geração de um documento, incluindo formatos populares PDF ou XPS. Isso garante que o documento terá a mesma aparência para qualquer visualizador. Além disso, a especificação XPS exige que as fontes sejam sempre incorporadas ao documento.

Para garantir que o Aspose.Words meça com precisão os caracteres e incorpore fontes relevantes com sucesso, as seguintes condições devem ser atendidas:

1. Aspose.Words deve ser capaz de localizar e acessar arquivos de fontes TrueType no sistema.
1. Deve haver fontes TrueType suficientes disponíveis para Aspose.Words, de preferência com os mesmos nomes de famílias de fontes usadas no documento.

Observe que a fonte no documento representa uma entidade, como nome de família, estilo, tamanho, cor, que é diferente da entidade fonte `TrueType` (fonte física). Aspose.Words resolve a fonte do documento para uma fonte física em algum estágio do processamento. Isso permite determinadas tarefas, mais comumente a tarefa de calcular o tamanho do texto durante a construção do layout e incorporar/subconfigurar em formatos de página fixa. Uma série de outras tarefas menos populares, como resolução e substituição de fontes ao carregar HTML ou incorporação/subconjunto em alguns formatos de fluxo, também estão habilitadas.

## Manipulação de fontes e problemas de desempenho

Todos os mecanismos de manipulação de fontes disponíveis estão contidos na classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/). Esta classe é responsável por buscar fontes dentro de fontes de fontes definidas, bem como pelo processo de substituição de fontes, conforme descrito abaixo.

As fontes são analisadas em várias etapas:

1. Obtenção de informações sobre a fonte, resolvendo todas as fontes disponíveis.
1. Analisar as fontes resolvidas para obter glyphs e métricas disponíveis (horizontais e verticais).
1. Analisando as fontes resolvidas para incorporação e subconjunto.

Quando o Aspose.Words encontra uma fonte no documento pela primeira vez, ele tenta obter informações básicas da fonte, como nome completo da fonte, nome da família, versão, estilo, dos arquivos de fontes localizados em cada fonte de fonte. Depois que todas as fontes são recuperadas, o Aspose.Words usa esses detalhes para encontrar os dados da fonte necessários ou um substituto adequado para a fonte solicitada.

Como o procedimento descrito acima é demorado, ele pode afetar negativamente o desempenho do aplicativo na primeira inicialização. No entanto, cada instância do [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) possui seu próprio cache, o que pode reduzir o tempo de processamento dos documentos subsequentes. Por exemplo, você pode compartilhar uma instância da classe [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) entre diferentes documentos, o que permite agilizar o carregamento dos documentos. O exemplo a seguir demonstra isso:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsWithLoadOption.py" >}}

No caso em que [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) não é definido explicitamente, o Aspose.Words usa a instância [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) padrão. Esta instância também é compartilhada automaticamente entre documentos e pode ser extraída da seguinte forma:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsDefaultInstance.py" >}}

Se você tiver certeza de que todos os documentos de processamento exigem as mesmas configurações de fonte, é recomendável configurar e utilizar a instância [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) padrão. Suponha que você precise usar as mesmas fontes de fontes para todos os seus documentos. Nesse caso, você pode simplesmente alterar a instância padrão da seguinte forma:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-FontSettingsFontSource.py" >}}

{{% alert color="primary" %}}

O [FontSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontsettings/) personalizado tem prioridade mais alta que a instância padrão.

{{% /alert %}}

## Disponibilidade e substituição de fontes

O texto de um documento pode ser formatado com diversas fontes, como Arial, Times New Roman, Verdana e outras. Quando Aspose.Words renderiza um documento, ele tenta selecionar as fontes especificadas no documento.

No entanto, há situações em que a fonte exata não pode ser encontrada e o Aspose.Words deve substituí-la por uma fonte semelhante. Aspose.Words seleciona a fonte de acordo com o seguinte processo:
1. Aspose.Words tenta encontrar uma fonte entre as fontes de fontes disponíveis com um nome de fonte exato.
1. O Aspose.Words tenta encontrar a fonte necessária entre as fontes incorporadas no documento original. Alguns formatos de documentos, como DOCX, podem conter fontes incorporadas.
1. Se o Aspose.Words não conseguir localizar a fonte necessária com a correspondência exata de nome e a propriedade [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) definida para esta fonte, o Aspose.Words encontrará a fonte definida com [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) na classe [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/), que especifica as informações da fonte.
1. Se Aspose.Words não conseguir localizar a fonte definida e [alt_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/alt_name/) também não estiver definido, as regras de substituição de fonte serão aplicadas uma por uma, conforme descrito abaixo (quando a substituição apropriada for encontrada, o Processo de Substituição de Fonte será interrompido e o próximo passo não é executado):
   1. Primeiro, Aspose.Words tenta processar o nome da fonte para obter a substituição, principalmente tenta remover sufixos com separadores "-" e ",".<br>
      Se esta regra de substituição ocorrer, uma "Fonte '&lt;OriginalFont&gt;' não foi encontrada. Usando a fonte '&lt;SubstitutionFont&gt;'. Motivo: substituição do nome da fonte." aviso aparece.<br>
   1. Em seguida, o Aspose.Words tenta aplicar as configurações de fonte do sistema operacional, se estiverem disponíveis, usando o utilitário **FontConfig**. Este recurso não Windows deve ser usado com um sistema operacional compatível com FontConfig. Quase todos os sistemas operacionais baseados em Unix já possuem uma biblioteca `FontConfig` projetada para fornecer configuração de fontes em todo o sistema, personalização e acesso a aplicativos. Caso contrário, esta biblioteca pode ser facilmente instalada pelo usuário.
      Aspose.Words sabe como consultar dados e interpretar os resultados do FontConfig para seus próprios fins. Por padrão, o utilitário `FontConfig` está desabilitado. Você pode habilitá-lo da seguinte maneira:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_config_substitution.enabled = True
{{< /highlight >}}
   1. A próxima etapa usa um mecanismo simples, mas poderoso, chamado regra de substituição **Table**. Por padrão, esse recurso está ativo e disponível para determinado sistema operacional. Aspose.Words substituirá a fonte por esta regra se ela não for substituída pela regra de substituição `FontConfig`.<br>
      Aspose.Words usa tabelas XML, que definem as regras básicas de substituição para diferentes sistemas operacionais. De acordo com a regra de substituição de tabelas, será utilizada a lista de nomes de fontes substitutas.<br>
      **XML**<br>
{{< highlight html >}}
<TableSubstitutionSettings xmlns="Aspose.Words"> 
<SubstitutesTable> 
<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
… 
</SubstitutesTable> 
</TableSubstitutionSettings>
{{< /highlight >}}
      A principal característica desta regra é a capacidade de carregar suas próprias tabelas de substituição, conforme mostrado no exemplo a seguir:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.load("Table.xml")
{{< /highlight >}}
      Apesar da flexibilidade deste mecanismo, existem alguns casos em que é melhor desativá-lo, conforme mostrado abaixo:<br>
{{< highlight python >}}
fontSettings.substitution_settings.table_substitution.enabled = False
{{< /highlight >}}
   1. A regra de substituição [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) será aplicada se a regra de substituição de tabela não conseguir encontrar a fonte. Este mecanismo está habilitado por padrão. O Aspose.Words encontra a fonte mais adequada de acordo com as informações de fonte contidas em um determinado documento. Essas informações podem ser obtidas na classe [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) conforme mostrado abaixo:<br>
{{< highlight python >}}
fontInfos = doc.font_infos
{{< /highlight >}}
      Os usuários não podem interferir no fluxo de trabalho deste recurso, a menos que decidam desativá-lo em caso de resultados insatisfatórios:<br>
{{< highlight python >}}
fontSettings.substitution_settings.font_info_substitution.enabled = False
{{< /highlight >}}
      Se [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) não estiver disponível para a fonte ausente, o processo será interrompido.<br>
   1. A regra de substituição de [DefaultFont](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/) será aplicada caso a substituição de `FontInfo` também tenha falhado. Esta regra também está habilitada por padrão. De acordo com esta regra, o Aspose.Words tentará usar a fonte padrão especificada na propriedade [default_font_name](https://reference.aspose.com/words/python-net/aspose.words.fonts/defaultfontsubstitutionrule/default_font_name/). Se o usuário não tiver escolhido sua própria fonte padrão, "Times New Roman" será usada como fonte padrão. Esta regra pode ser desativada conforme mostrado abaixo:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.enabled = False
{{< /highlight >}}
      Para verificar a fonte padrão atual, use:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name
{{< /highlight >}}
      Para configurar sua própria opção de substituição, aplique:<br>
{{< highlight python >}}
fontSettings.substitution_settings.default_font_substitution.default_font_name = "Arial"
{{< /highlight >}}
1. Se o Aspose.Words não conseguir realizar a substituição da fonte, ele tentará obter a primeira fonte disponível nas fontes de fontes disponíveis.
1. Finalmente, se o Aspose.Words não conseguir encontrar nenhuma fonte entre as fontes de fontes disponíveis, ele renderiza o documento usando a fonte Fanwood gratuita que está incorporada no pacote Aspose.Words.<br>

Se [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) estiver disponível, a *regra de substituição FontInfo* sempre resolverá a fonte e substituirá a regra de fonte padrão. Se quiser usar a regra de fonte padrão, você deve desabilitar a *regra de substituição FontInfo*. Observe que a *regra de substituição FontConfig* resolverá a fonte na maioria dos casos e, portanto, substituirá todas as outras regras.

## Configurações de FallBack de fonte de XML

Existem dois mecanismos diferentes usados no Aspose.Words – substituição de fonte e fallback de fonte. A substituição de fontes é usada quando a fonte especificada no documento não pode ser encontrada entre as fontes de fontes conforme descrito nas seções acima. O mecanismo de fallback de fonte é usado quando a fonte é resolvida, mas não contém um caractere específico. Nesse caso, Aspose.Words tenta usar uma das fontes substitutas para o caractere.

Existe um método [build_automatic](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/build_automatic/) que cria automaticamente as configurações de fallback verificando as fontes disponíveis. Como esse método pode produzir uma configuração de fallback não ideal, você pode controlar o comportamento de fallback da fonte usando as propriedades da classe [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/). Esta classe especifica as configurações do mecanismo de fallback de fonte. Você pode obter uma instância da classe [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) da seguinte maneira:

{{< highlight python >}}
settings = fontSettings.fallback_settings
{{< /highlight >}}

Da mesma forma que a *Regra de substituição de tabela*, este mecanismo utiliza tabelas XML para configuração. Essas tabelas XML podem ser carregadas e salvas com os seguintes métodos:

{{< highlight python >}}
fontSettings.fallback_settings.load("MyNewFallbackTable.xml")
fontSettings.fallback_settings.save("Current_FallbackTable.xml")
{{< /highlight >}}

A versão Aspose.Words inclui duas tabelas: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

A tabela *MsOfficeFallbackSetting* define uma estratégia de substituição para um intervalo de caracteres, que é semelhante à estratégia usada pelo Microsoft Word. Assim, a estratégia exige a instalação de fontes Microsoft Office. *MsOfficeFallbackSetting* pode ser ativado usando o seguinte método:

{{< highlight python >}}
fontSettings.fallback_settings.load_ms_office_fallback_settings()
{{< /highlight >}}

A tabela *NotoFallbackSetting* é criada especialmente para uso com fontes Google Noto (veja mais sobre configurações de fontes Google Noto na próxima seção) e pode ser habilitada da seguinte forma:

{{< highlight python >}}
fontSettings.fallback_settings.load_noto_fallback_settings()
{{< /highlight >}}

O exemplo de código a seguir demonstra como carregar configurações de fallback de fonte de um arquivo XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetFontFallbackSettings.py" >}}

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

## Configurações predefinidas de fallback de fonte para fontes Google Noto

Aspose.Words fornece configurações de substituição de fonte predefinidas para fontes Google Noto. Estas são fontes gratuitas licenciadas sob a licença SIL Open Font, que podem ser baixadas em Google Noto Fonts. A classe [FontFallbackSettings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/) fornece um método [load_noto_fallback_settings](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontfallbacksettings/load_noto_fallback_settings/). Ele carrega configurações de fallback predefinidas, que usam fontes Google Noto conforme mostrado no exemplo de código abaixo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fonts-SetPredefinedFontFallbackSettings.py" >}}

{{% alert color="primary" %}}

Somente fontes Noto estilo Sans com espessura regular são usadas nas configurações predefinidas.

{{% /alert %}}

## Onde Aspose.Words procura fontes

Aspose.Words tenta encontrar fontes TrueType no sistema de arquivos automaticamente. Normalmente, você pode confiar no comportamento padrão do Aspose.Words para localizar as fontes `TrueType`, mas às vezes você precisa especificar suas próprias pastas contendo fontes TrueType. O tópico [Especifique a localização das fontes TrueType](/words/pt/python-net/specifying-truetype-fonts-location/) descreve como e onde o Aspose.Words procura fontes, bem como como especificar seus próprios locais de fonte.

## Diferenças no processamento de formatos de fonte em Aspose.Words e Microsoft Word

Existem algumas diferenças no processamento de formatos de fonte em Aspose.Words e Microsoft Word conforme mostrado na tabela abaixo:

|  | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Fontes TrueType e fontes OpenType com contornos TrueType | Suportado. | Suportado. |
| Fontes OpenType com contornos PostScript | Compatível com a maioria dos cenários. A incorporação em formatos de página fixa, como PDF e XPS, não é suportada. O texto é substituído por imagens bitmap. | Compatível com a maioria dos cenários, incluindo incorporação em formatos de página fixa. |
| Variações de fonte OpenType | Somente instâncias nomeadas são suportadas. Variações contínuas não suportadas. | Compatível apenas com instância padrão. Instâncias nomeadas e variações contínuas não são suportadas. |
| Fontes Type1 | Compatível com versões Windows anteriores a 2013 e versões MacOS. O suporte foi eliminado nas versões Windows a partir de 2013. | Não suportado. |

## Veja também

- [Fontes Google Noto](https://fonts.google.com/noto) para baixar fontes gratuitas
