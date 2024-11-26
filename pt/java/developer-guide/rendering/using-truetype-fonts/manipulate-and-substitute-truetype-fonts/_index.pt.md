---
title: Manipular e substituir fontes TrueType
second_title: Aspose.Words para Java
articleTitle: Manipular e substituir fontes TrueType
linktitle: Manipular e substituir fontes TrueType
description: "Aspose.Words para Java pode incorporar as fontes corretas TrueType no documento resultante para garantir que ele seja exibido com precisão, ou procurar uma substituição de fonte adequada, ou usar o mecanismo de fallback de fonte."
type: docs
weight: 10
url: /pt/java/manipulate-and-substitute-truetype-fonts/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words requer fontes TrueType para uma variedade de tarefas, incluindo a renderização de documentos em formatos de página fixa, por exemplo, PDF ou XPS. Quando Aspose.Words renderiza um documento, ele precisa realizar a incorporação e a incorporação de subconjuntos de fontes TrueType no documento resultante, o que é uma prática normal durante a geração de um documento, incluindo os formatos populares PDF ou XPS. Isso garante que o documento apareça da mesma forma para qualquer visualizador. Além disso, a especificação XPS exige que as fontes sejam sempre incorporadas no documento.

Para garantir que Aspose.Words mede com precisão os caracteres e incorpora com sucesso fontes relevantes, as seguintes condições devem ser atendidas:

1. Aspose.Words deve ser capaz de encontrar e acessar TrueType arquivos de fonte no sistema.
1. Deve haver fontes TrueType suficientes disponíveis para Aspose.Words, de preferência com os mesmos nomes de família de fontes que os utilizados no documento.

Observe que a fonte no documento representa uma entidade, como nome de família, estilo, tamanho, cor, que é diferente da entidade `TrueType` Fonte (Fonte física). Aspose.Words resolve a fonte no documento para uma fonte física em algum estágio do processamento. Isso permite certas tarefas, mais comumente a tarefa de calcular o tamanho do texto durante a construção do layout e a incorporação/subconjunto em formatos de página fixa. Uma série de outras tarefas menos populares, como resolução e substituição de fontes durante o carregamento HTML ou incorporação/subconjunto em alguns formatos de fluxo, também estão habilitadas.

## Manipulação de fontes e problemas de desempenho

Todos os mecanismos de manipulação de fontes disponíveis estão contidos na classe [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/). Esta classe é responsável por buscar fontes dentro de fontes de fonte definidas, bem como pelo processo de substituição de fontes, conforme descrito abaixo.

As fontes são analisadas em várias etapas:

1. Obtenção de informações para fonte, resolvendo de todas as fontes disponíveis.
1. Analisar as fontes resolvidas para obter glifos e métricas disponíveis (horizontal e vertical).
1. Análise das fontes resolvidas para incorporação e subconjunto.

Quando Aspose.Words encontra uma fonte no documento pela primeira vez, ele tenta obter informações básicas da fonte, como o nome completo da fonte, nome de Família, Versão, estilo, dos arquivos de fonte localizados em cada fonte. Depois que todas as fontes forem recuperadas, Aspose.Words usa esses detalhes para encontrar os dados de fonte necessários ou um substituto adequado para a fonte solicitada.

Uma vez que o procedimento acima descrito é demorado, pode afectar negativamente o desempenho da aplicação no seu primeiro lançamento. No entanto, cada instância de **FontSettings** tem a sua própria cache, o que pode reduzir o tempo de processamento dos documentos subsequentes. Por exemplo, você pode compartilhar uma instância da classe **FontSettings** entre documentos diferentes, o que permite acelerar o carregamento dos documentos. O exemplo a seguir demonstra isso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

No caso em que **FontSettings** não é definido explicitamente, Aspose.Words usa a instância **FontSettings** padrão. Esta instância também é automaticamente partilhada entre documentos e pode ser extraída da seguinte forma:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Se você tiver certeza de que todos os documentos de processamento exigem as mesmas configurações de fonte, é recomendável configurar e utilizar a instância **FontSettings** padrão. Suponha que você precise usar as mesmas fontes de fonte para todos os seus documentos. Nesse caso, você pode simplesmente alterar a instância padrão da seguinte maneira:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

O **FontSettings** personalizado tem prioridade mais alta do que a instância padrão.

{{% /alert %}}

## Disponibilidade e substituição de fontes

Um texto em um documento pode ser formatado com várias fontes, como Arial, Times New Roman, Verdana e outras. Quando Aspose.Words renderiza um documento, ele tenta selecionar as fontes especificadas no documento.

No entanto, existem situações em que a fonte exata não pode ser encontrada e Aspose.Words deve substituí-la por uma fonte semelhante. Aspose.Words seleciona a fonte de acordo com o seguinte processo:

1. Aspose.Words tenta encontrar uma fonte entre as fontes de fonte disponíveis com um nome de fonte exato.
1. Aspose.Words tenta encontrar a fonte necessária entre as fontes incorporadas no documento original. Alguns formatos de documento, como DOCX, podem conter fontes incorporadas.
1. Se Aspose.Words não conseguir localizar a fonte necessária com a correspondência exata do nome e a propriedade [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) definida para essa fonte, Aspose.Words encontrará a fonte definida com **AltName** da classe [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/), que especifica as informações da fonte.
1. Se Aspose.Words não conseguir localizar a fonte definida e **AltName** também não estiver definida, as regras de substituição de fonte serão aplicadas uma a uma, conforme descrito abaixo (quando a substituição apropriada for encontrada, o processo de substituição de fonte será interrompido e a próxima etapa não será executada):
   1. Aspose.Words tentará aplicar as configurações de fonte OS, se estiverem disponíveis, usando o utilitário `FontConfig`. Este recurso nãoWindows deve ser usado com um FontConfig-Compatível OS. Quase todos os OS baseados em Unix já possuem uma biblioteca `FontConfig` projetada para fornecer configuração, personalização e acesso de fontes em todo o sistema a aplicativos. Caso contrário, esta biblioteca pode ser facilmente instalada pelo utilizador.<br>
      Aspose.Words sabe consultar dados e interpretar FontConfig resultados para os seus próprios fins. Por predefinição, o utilitário `FontConfig` está desactivado. Você pode ativá-lo da seguinte maneira:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. O próximo passo é um mecanismo simples, mas incrivelmente poderoso, chamado [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Por predefinição, esta funcionalidade está activa e disponível para qualquer OS. Aspose.Words usa XML tabelas que definem regras básicas de substituição para diferentes OS. De acordo com a regra de substituição de tabelas, será utilizada a lista de nomes de fontes substitutas.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - uma fonte a ser substituída, SubstituteFonts - lista de variantes de substituição, separadas por uma vírgula. A primeira fonte disponível é usada para substituição.<br>
      A principal característica desta regra é a capacidade de carregar suas próprias tabelas de substituição, como é mostrado no exemplo a seguir:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Você pode tomar como base a tabela existente do jar ou salvá-la programaticamente da seguinte maneira:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Apesar da flexibilidade deste mecanismo, existem alguns casos em que é melhor desativá-lo, como mostrado abaixo:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. A regra de substituição **FontInfo** será aplicada se a regra de substituição da tabela não conseguir encontrar a fonte. Este mecanismo está activado por predefinição. Aspose.Words Encontra a fonte mais adequada de acordo com as informações de fonte contidas em um documento específico. Esta informação pode ser obtida a partir da classe **FontInfo**, Como mostrado abaixo:<br>
**Java**
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Os utilizadores não podem interferir no fluxo de trabalho desta funcionalidade, a menos que decidam desativá - la em caso de resultados insatisfatórios:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Se **FontInfo** não estiver disponível para a fonte ausente, o processo será interrompido.
   1. A regra de substituição **DefaultFont** será aplicada no caso em que a substituição `FontInfo` também tenha falhado. Esta regra também está activada por predefinição. De acordo com esta regra, Aspose.Words tentará usar a fonte padrão especificada na propriedade [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName). Se o Usuário não escolheu sua própria fonte padrão, então" Times New Roman " será usado como a fonte padrão. Esta regra pode ser desativada como mostrado abaixo:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Para verificar a fonte padrão atual, use:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Para configurar a sua própria opção de substituição, aplique:<br>
**Java**
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Se Aspose.Words não for possível realizar a substituição da fonte, ele tentará obter a primeira fonte disponível das fontes de fonte disponíveis.
1. Finalmente, se Aspose.Words não puder encontrar nenhuma Fonte entre as fontes de fonte disponíveis, ele renderizará o documento usando a fonte Fanwood livre que está embutida no assembly Aspose.Words.

{{% alert color="primary" %}}

Se **FontInfo** estiver disponível, o *FontInfo substitution rule* sempre resolverá a fonte e substituirá a regra de fonte padrão. Se você quiser usar a regra de fonte padrão, você deve desativar o *FontInfo substitution rule*. Observe que *FontConfig substitution rule* resolverá a fonte na maioria dos casos e, portanto, substituirá todas as outras regras.

{{% /alert %}}

## Como reconhecer que a fonte foi substituída

Às vezes, pode não estar claro por que o layout do documento foi alterado ou por que alguma fonte não parece o esperado. Nesses casos, as mensagens de avisos de substituição de fontes implementadas pela interface [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) são resgatadas. Eles têm o tipo de aviso [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) e o formato de texto de descrição padrão, "a fonte '<OriginalFont>' não foi encontrada. Usando a fonte ' <SubstitutionFont>'. Motivo: <Reason>", com as seguintes razões:

- "nome alternativo do documento" – para substituição por [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "fontconfig replacement" – para substituição por regra de configuração de fonte
- "substituição de mesa" – para substituição pela regra da mesa
- "substituição de informação de fonte" – para substituição por regra de informação de fonte
- "substituição de fonte padrão" – para substituição pela regra de fonte padrão
- "primeira fonte disponível" – para substituição pela primeira fonte disponível

## Fonte FallBack definições de XML

Existem dois mecanismos diferentes usados em Aspose.Words - substituição de fonte e fallback de fonte. A substituição de fonte é utilizada quando a fonte especificada no documento não pôde ser encontrada entre as fontes de fonte, tal como foi descrita nas secções acima. O mecanismo de fallback da fonte é usado quando a fonte é resolvida, mas não contém um caractere específico. Nesse caso, Aspose.Words tenta usar uma das fontes de fallback para o caractere.

Existe um método [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) que cria automaticamente as definições de fallback através da verificação das fontes disponíveis. Como esse método pode produzir uma configuração de fallback não iDEAL, Você pode controlar o comportamento de fallback da fonte usando as propriedades da classe [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/). Essa classe especifica as configurações do mecanismo de fallback da fonte. Você pode obter uma instância da classe **FontFallbackSettings** da seguinte forma:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Da mesma forma que *Table substitution rule*, este mecanismo usa XML tabelas para configuração. Essas tabelas XML podem ser carregadas e salvas com os seguintes métodos:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

A versão Aspose.Words inclui duas tabelas: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

A tabela *MsOfficeFallbackSetting* define uma estratégia de substituição para um intervalo de caracteres, que é semelhante à estratégia utilizada por Microsoft Word. Assim, a estratégia requer a instalação de Microsoft Fontes de escritório. *MsOfficeFallbackSetting* pode ser activado utilizando o seguinte método:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

A tabela *NotoFallbackSetting* é criada especialmente para uso com fontes Google Noto (Veja mais sobre as configurações de fontes Google Noto na próxima seção) e pode ser ativada da seguinte forma:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

O exemplo de código a seguir demonstra como carregar configurações de fallback de fonte de um arquivo XML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-SetFontFallbackSettings.java" >}}

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

## Fonte predefinida FallBack definições para fontes Google Noto

Aspose.Words fornece configurações de fallback de fonte predefinidas para Google Noto fontes. Estas são fontes gratuitas licenciadas sob SIL Open Font License, que podem ser descarregadas a partir de Google Noto Fonts. A classe **FontFallbackSettings** fornece um método [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings). Ele carrega configurações de fallback predefinidas, que usam fontes Google Noto conforme mostrado no exemplo de código abaixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Apenas fontes Noto sem estilo com peso regular são usadas em Configurações predefinidas.

{{% /alert %}}

## Onde Aspose.Words procura fontes

Aspose.Words tenta encontrar fontes TrueType no sistema de ficheiros automaticamente. Normalmente, você pode confiar no comportamento padrão de Aspose.Words para encontrar as fontes `TrueType`, mas às vezes você precisa especificar suas próprias pastas contendo fontes TrueType. O [Especificar TrueType Localiza](/words/java/specify-truetype-fonts-location/) o tópico descreve como e onde Aspose.Words procura fontes, bem como como especificar as suas próprias localizações de fontes.

## Diferenças no processamento dos formatos de fonte em Aspose.Words e Microsoft Word

Existem algumas diferenças no processamento dos formatos de fonte em Aspose.Words e Microsoft Word, conforme mostrado na tabela abaixo:

|  | Microsoft Word | Aspose.Words |
| :- | :- | :- |
| TrueType fontes e OpenType fontes com TrueType contornos | Apoiado. | Apoiado. |
| OpenType fontes com PostScript contornos | Suportado para a maioria dos cenários. A incorporação em formatos de página fixa, como PDF e XPS, não é suportada. O texto é substituído por imagens bitmap. | Suportado para a maioria dos cenários, incluindo a incorporação em formatos de página fixa. |
| OpenType Variações De Fonte | Apenas instâncias nomeadas são suportadas. Variações contínuas não suportadas. | Suportado para a única instância padrão. Instâncias nomeadas e variações contínuas não são suportadas. |
| Fontes Type1 | Suportado em Windows versões anteriores a 2013 e em MacOS versões. O suporte é descartado em Windows versões a partir de 2013. | Não suportado. |

## Ver Também

- [Google Noto Fontes](https://fonts.google.com/noto) para baixar fontes gratuitas


