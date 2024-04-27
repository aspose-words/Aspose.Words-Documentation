---
title: Manipular e Substituir Fontes TrueType
second_title: Aspose.Words para Java
articleTitle: Manipular e Substituir Fontes TrueType
linktitle: Manipular e Substituir Fontes TrueType
description: "Aspose.Words para Java pode incorporar as fontes TrueType corretas no documento resultante para garantir que ele exibe com precisão, ou procurar por uma substituição de fonte adequada, ou usa o mecanismo de retorno de fonte."
type: docs
weight: 10
url: /pt/java/manipulate-and-substitute-truetype-fonts/
---

Aspose.Words Exigência Digite fontes para uma variedade de tarefas, incluindo renderizar documentos para formatos de página fixa, por exemplo, PDF ou XPS. Quando Aspose.Words renderiza um documento, ele precisa executar incorporação e subconjunto de fontes TrueType no documento resultante, que é uma prática normal durante uma geração de documentos, incluindo PDF popular ou XPS formatos. Isso garante que o documento aparecerá o mesmo a qualquer espectador. Além disso, XPS especificação requer fontes para ser sempre incorporado no documento.

Para garantir Aspose.Words mede com precisão os caracteres e incorpora fontes relevantes com sucesso, as seguintes condições devem ser atendidas:

1. Aspose.Words deve ser capaz de encontrar e acessar arquivos de fonte TrueType no sistema.
1. Deve haver fontes TrueType suficientes disponíveis para Aspose.Words, preferencialmente com os mesmos nomes de família de fontes que os usados no documento.

Note que a fonte no documento representa uma entidade, como nome da família, estilo, tamanho, cor, que é diferente da `TrueType` font (physical font) entidade. Aspose.Words resolve a fonte no documento para uma fonte física em alguma fase de processamento. Isso permite que certas tarefas, mais comumente a tarefa de calcular o tamanho do texto durante a construção do layout e incorporação/subconfiguração a formatos de página fixa. Uma série de outras tarefas menos populares, como resolução de fontes e substituição ao carregar HTML ou incorporação/subconfiguração a alguns formatos de fluxo, são igualmente habilitados.

## Manipulação de fontes e problemas de desempenho

Todos os mecanismos de manipulação de fontes disponíveis estão contidos no [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) classe. Esta classe é responsável por buscar fontes dentro de fontes de fonte definidas, bem como para o processo de Substituição de Fonte, conforme descrito abaixo.

As fontes são analisadas em vários passos:

1. Obter informações para fonte, resolver de todas as fontes disponíveis.
1. Parsing as fontes resolvidas para ficar disponível glyphs e métricas (horizontal e vertical).
1. Parsing as fontes resolvidas para incorporação e subconfiguração.

Quando Aspose.Words encontra uma fonte no documento pela primeira vez, ele tenta obter informações básicas de fonte, como o nome completo da fonte, nome da família, versão, estilo, a partir dos arquivos de fonte localizados em cada fonte de fonte. Depois que todas as fontes são recuperadas, Aspose.Words usa estes detalhes para encontrar os dados de fonte necessários ou um substituto adequado para a fonte solicitada.

Uma vez que o procedimento descrito acima é demorado, pode afetar negativamente o desempenho da aplicação em seu primeiro lançamento. No entanto, cada instância de **FontSettings** tem seu próprio cache, que poderia reduzir o tempo de processamento de documentos subsequentes. Por exemplo, você pode compartilhar uma instância do **FontSettings** classe entre diferentes documentos, que permite acelerar o carregamento dos documentos. O exemplo a seguir demonstra isso:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsWithLoadOptions.java" >}}

No caso em que **FontSettings** não é definido explicitamente, Aspose.Words usa o padrão **FontSettings** instância. Esta instância também é compartilhada automaticamente entre documentos e pode ser extraída da seguinte forma:

**Java**

{{< highlight csharp >}}
FontSettings fontSettings = FontSettings.getDefaultInstance();
{{< /highlight >}}

Se você tem certeza de que todos os documentos de processamento exigem as mesmas configurações de fonte, então é recomendável configurar e utilizar o padrão **FontSettings** instância. Suponha que você precisa usar as mesmas fontes de fonte para todos os seus documentos. Neste caso, você pode alterar a instância padrão da seguinte forma:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithFontSettings-FontSettingsFontSource.java" >}}

{{% alert color="primary" %}}

O costume **FontSettings** tem maior prioridade do que a instância padrão.

{{% /alert %}}

## Disponibilidade e Substituição da fonte

Um texto em um documento pode ser formatado com várias fontes, como Arial, Times New Roman, Verdana e outros. Quando Aspose.Words renderiza um documento, ele tenta selecionar as fontes especificadas no documento.

No entanto, existem situações em que a fonte exata não pode ser encontrada e Aspose.Words deve substituí-lo por uma fonte semelhante em vez. Aspose.Words seleciona a fonte de acordo com o seguinte processo:

1. Aspose.Words tenta encontrar uma fonte entre as fontes de fonte disponíveis com um nome de fonte exato.
1. Aspose.Words tenta encontrar a fonte necessária entre as fontes incorporadas no documento original. Alguns formatos de documentos como o DOCX podem conter fontes incorporadas.
1. Se Aspose.Words é incapaz de localizar a fonte necessária com o nome exato match, e o [AltName](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/#getAltName) propriedade definida para esta fonte, então Aspose.Words irá encontrar a fonte definida com **AltName** do [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) classe, que especifica as informações da fonte.
1. Se Aspose.Words é incapaz de localizar a fonte definida, e **AltName** não é também definido, então as regras de substituição de fonte são aplicadas one-by-one, como descrito abaixo (quando a substituição apropriada é encontrada, o Processo de Substituição de Fonte pára e o próximo passo não é executado):
   1. Aspose.Words tentará aplicar as configurações de fonte do sistema operacional, se estiverem disponíveis, usando o `FontConfig` utilidade. Este não...Windows recurso deve ser usado com um sistema operacional compatível com FontConfig. Quase qualquer sistema operacional baseado em Unix já tem um `FontConfig` biblioteca que é projetada para fornecer configuração de fonte em todo o sistema, personalização e acesso a aplicativos. Caso contrário, esta biblioteca pode ser facilmente instalada pelo usuário.<br/>
      Aspose.Words sabe como consultar dados e interpretar os resultados do FontConfig para seus próprios propósitos. Por padrão, o `FontConfig` O utilitário está desativado. Você pode habilitar o seguinte:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontConfigSubstitution()().setEnabled(true);
      {{< /highlight >}}
   1. O próximo passo é um mecanismo simples, mas incrivelmente poderoso chamado [TableSubstitutionRule](https://reference.aspose.com/words/java/com.aspose.words/tablesubstitutionrule/). Por padrão, este recurso está ativo e disponível para qualquer sistema operacional. Aspose.Words usa tabelas XML que definem regras básicas de substituição para diferentes sistemas operacionais. De acordo com a regra de substituição da Tabela, a lista de nomes de fontes substitutos será usada.<br/>
      **XML**<br/>
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - uma fonte a ser substituída, SubstituteFonts - lista de variantes de substituição, separada por uma vírgula. A primeira fonte disponível é usada para substituição.<br/>
      A característica principal desta regra é a capacidade de carregar suas próprias tabelas de substituição, como é mostrado no seguinte exemplo:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().load("Table.xml");
      {{< /highlight >}}
      Você pode tomar como base a tabela existente do jarro ou salvá-lo programaticamente da seguinte maneira:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().save("MyTable.xml");
      {{< /highlight >}}
      Apesar da flexibilidade deste mecanismo, existem alguns casos quando é melhor desabilitá-lo, como mostrado abaixo:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getTableSubstitution().setEnabled(false);
      {{< /highlight >}}
   1. O **FontInfo** regra de substituição será aplicada se a regra de substituição da tabela não puder encontrar a fonte. Este mecanismo é ativado por padrão. Aspose.Words encontra a fonte mais adequada de acordo com as informações de fonte contidas em um documento particular. Esta informação pode ser obtida a partir de **FontInfo** classe como mostrado abaixo:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      FontInfoCollection fontInfos = doc.getFontInfos();
      {{< /highlight >}}
      Os usuários não podem interferir no fluxo de trabalho deste recurso a menos que eles decidam desabilitá-lo em caso de resultados insatisfatórios:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getFontInfoSubstitution().setEnabled(false);
      {{< /highlight >}}
      Se **FontInfo** não está disponível para a fonte ausente, então o processo pára.
   1. **DefaultFont** regra de substituição será aplicada no caso de `FontInfo` a substituição também falhou. Esta regra também é ativada por padrão. De acordo com esta regra, Aspose.Words tentará usar a fonte padrão especificada no [DefaultFontName](https://reference.aspose.com/words/java/com.aspose.words/defaultfontsubstitutionrule/#getDefaultFontName) propriedade. Se o usuário não tiver escolhido sua própria fonte padrão, então "Times New Roman" será usado como fonte padrão. Esta regra pode ser desativada como mostrado abaixo:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setEnabled(false);
      {{< /highlight >}}
      Para verificar a fonte padrão atual, use:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().getDefaultFontName();
      {{< /highlight >}}
      Para configurar sua própria opção de substituição, aplique:<br/>
      **Java**<br/>
      {{< highlight csharp >}}
      fontSettings.getSubstitutionSettings().getDefaultFontSubstitution().setDefaultFontName("Arial");
      {{< /highlight >}}
1. Se Aspose.Words é incapaz de executar a substituição de fonte, ele tenta obter a primeira fonte disponível de fontes de fonte disponíveis.
1. Finalmente, se Aspose.Words não pode encontrar quaisquer fontes entre as fontes de fonte disponíveis, ele renderiza o documento usando a fonte livre de Fanwood que é incorporado no Aspose.Words montagem.

{{% alert color="primary" %}}

Se **FontInfo** está disponível, a regra de substituição *FontInfo* sempre resolverá a fonte e substituirá a regra de fonte padrão. Se você quiser usar a regra de fonte padrão, você deve desativar a regra de substituição *FontInfo*. Note que a regra de substituição *FontConfig* irá resolver a fonte na maioria dos casos, e assim substitui todas as outras regras.

{{% /alert %}}

## Como Reconhecer Que a fonte foi substituída

Às vezes, pode não ser claro por que o layout do documento mudou, ou por que alguma fonte não parece tão esperada. Nesses casos, mensagens de aviso de substituição de fonte implementadas pelo [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/) interface vem para resgatar. Eles têm o [FontSubstitution](https://reference.aspose.com/words/java/com.aspose.words/warningtype/#FONT-SUBSTITUTION) tipo de aviso e o formato de texto de descrição padrão, "Font '<originalfont>Não foi encontrado. Usando '<substitutionfont>Fonte em vez disso. Razão: <reason>", com as seguintes razões:</reason></substitutionfont></originalfont>

- "nome alternativo do documento" - para substituição por [AltName](https://reference.aspose.com/words/java/com.aspose.words/Fontinfo#AltName)
- "substituição defontconfig" – para substituição pela regra de configuração de fonte
- "substituição de tabela" - para substituição por regra de tabela
- "substituição de informação de fonte" – para substituição por fonte info regra
- "substituição de fonte padrão" – para substituição por regra de fonte padrão
- "primeira fonte disponível" – para substituição com a primeira fonte disponível

## Configurações do FallBack da fonte de XML

Existem dois mecanismos diferentes utilizados Aspose.Words - Substituição da fonte e recuo da fonte. A substituição da fonte é usada quando a fonte especificada no documento não pôde ser encontrada entre as fontes de fonte como foi descrita nas seções acima. O mecanismo de retorno de fonte é usado quando a fonte é resolvida, mas não contém um caracter específico. Neste caso, Aspose.Words tenta usar uma das fontes de fallback para o personagem.

Há um [BuildAutomatic](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#buildAutomatic) método que automaticamente constrói as configurações de fallback digitalizando fontes disponíveis. Uma vez que este método pode produzir uma configuração de fallback não-optimal, você pode controlar o comportamento de fallback da fonte usando as propriedades do [FontFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/) classe. Esta classe especifica as configurações do mecanismo de retorno de fonte. Você pode obter uma instância do **FontFallbackSettings** classe como segue:

**Java**

{{< highlight csharp >}}
FontFallbackSettings settings = fontSettings.getFallbackSettings();
{{< /highlight >}}

Similarmente à regra de substituição *Table, este mecanismo usa tabelas XML para configuração. Estas tabelas XML podem ser carregadas e salvas com os seguintes métodos:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().load("MyNewFallbackTable.xml");
fontSettings.getFallbackSettings().save("Current_FallbackTable.xml");
{{< /highlight >}}

O Aspose.Words lançamento inclui duas tabelas: *MsOfficeFallbackSetting.xml* e *NotoFallbackSetting.xml*.

O *MsOfficeFallbackSetting* tabela define uma estratégia de substituição para uma variedade de caracteres, que é semelhante à estratégia usada por Microsoft Word. Assim, a estratégia requer a instalação de Microsoft Fontes de escritório. *MsOfficeFallbackSetting* pode ser ativado usando o seguinte método:

**.Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadMsOfficeFallbackSettings();
{{< /highlight >}}

O *NotoFallbackSetting* tabela é criada especialmente para uso com Google Noto fontes (veja mais sobre Google Noto configurações de fonte na próxima seção) e pode ser ativado da seguinte forma:

**Java**

{{< highlight csharp >}}
fontSettings.getFallbackSettings().loadNotoFallbackSettings();
{{< /highlight >}}

O exemplo de código a seguir demonstra como carregar as configurações de fallback de fontes de um arquivo XML:

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

## Configurações de FallBack de fonte predefinidas para Google Noto Fontes

Aspose.Words fornece configurações de retorno de fonte predefinidas para Google Noto fontes. Estas são fontes gratuitas licenciadas em SIL Open Font License, que podem ser baixadas a partir de Google Noto Fontes. O **FontFallbackSettings** classe fornece uma [LoadNotoFallbackSettings](https://reference.aspose.com/words/java/com.aspose.words/fontfallbacksettings/#loadNotoFallbackSettings) método. Ele carrega configurações de fallback predefinidas, que usam Google Noto fontes como mostrado no exemplo de código abaixo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SetFontSettings-setPredefinedFontFallbackSettings.java" >}}

{{% alert color="primary" %}}

Apenas fontes de estilo Sans Noto com peso regular são usadas em configurações predefinidas.

{{% /alert %}}

## Onde? Aspose.Words Procura Fontes

Aspose.Words tentativas de encontrar fontes TrueType no sistema de arquivos automaticamente. Normalmente, você pode confiar no comportamento padrão de Aspose.Words para encontrar o `TrueType` fontes, mas às vezes você precisa especificar suas próprias pastas contendo fontes TrueType. O [Lista de produtos relacionados](/words/pt/java/specify-truetype-fonts-location/) tópico descreve como e onde Aspose.Words procura fontes, bem como como como especificar seus próprios locais de fonte.

## Diferenças no processamento de formatos de fonte em Aspose.Words e Microsoft Word

Existem algumas diferenças no processamento de formatos de fonte em Aspose.Words e Microsoft Word como mostrado na tabela abaixo:

| | Microsoft Word | Aspose.Words |
|  :-  |  :-  |  :-  |
| Fontes TrueType e fontes OpenType com contornos TrueType | Apoiado. | Apoiado. |
| Fontes OpenType com contornos PostScript | Apoiado para a maioria dos cenários. Incorporação a formatos de página fixa, como PDF e XPS não são suportados. O texto é substituído por imagens bitmap. | Suportado para a maioria dos cenários, incluindo incorporação a formatos de página fixa. |
| Variações de fonte OpenType | Apenas as instâncias nomeadas são suportadas. Variações contínuas não suportadas. | Suportado para a única instância padrão. Exemplos nomeados e variações contínuas não são suportados. |
| Tipo1 fontes | Apoiado em Windows versões anteriores a 2013 e em versões do MacOS. O suporte é descartado Windows versões a partir de 2013. | Não suportado. |

## Ver também

- Não. [Google Noto Fontes](https://fonts.google.com/noto) para baixar fontes grátis


