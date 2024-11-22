---
title: Trabalhando com índice em C#
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com Índice
linktitle: Trabalhando com Índice
description: "Campo Índice em detalhes. Como criar e modificar campos `TOC` usando C#. Insira `TOC`C#."
type: docs
weight: 170
url: /pt/net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Freqüentemente, você trabalhará com documentos que contêm um sumário (TOC). Usando Aspose.Words você pode inserir seu próprio índice ou reconstruir completamente o índice existente no documento usando apenas algumas linhas de código. Este artigo descreve como trabalhar com o campo de índice e demonstra:

- Como inserir um novo `TOC`
- Atualizar índices novos ou existentes no documento.
- Especifique opções para controlar a formatação e a estrutura geral do sumário.
- Como modificar os estilos e a aparência do sumário.
- Como remover um campo `TOC` inteiro junto com todas as entradas do documento.

## Insira o índice programaticamente

Você pode inserir um campo `TOC` (índice) no documento na posição atual chamando o método [InsertTableOfContents](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserttableofcontents/).

Um índice analítico em um documento do Word pode ser criado de várias maneiras e formatado usando uma variedade de opções. As opções de campo que você passa para o método controlam a forma como a tabela é construída e exibida em seu documento.

As opções padrão usadas em um `TOC` inserido em Microsoft Word são **"\o "1-3 \h \z \u"**. Descrições dessas opções, bem como uma lista de opções suportadas, podem ser encontradas posteriormente neste artigo. Você pode usar esse guia para obter as opções corretas ou, se já tiver um documento contendo o `TOC` semelhante que deseja, pode mostrar os códigos de campo (*ALT+F9*) e copiar as opções diretamente do campo.

O exemplo de código a seguir mostra como inserir um campo Índice em um documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-DocumentBuilderInsertTOC.cs" >}}

O exemplo de código a seguir mostra como inserir um sumário (TOC) em um documento usando estilos de título como entradas.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertTableOfContents.cs" >}}

{{% alert color="primary" %}}

Sem os métodos usados no exemplo, ao abrir o documento de saída, você encontraria o campo `TOC`, mas sem conteúdo visível. Isso ocorre porque o campo `TOC` foi inserido, mas ainda não está preenchido até ser atualizado no documento. Mais informações sobre isso são discutidas na próxima seção.

{{% /alert %}}

## Atualizar índice

Aspose.Words permite atualizar completamente um `TOC` com apenas algumas linhas de código. Isso pode ser feito para preencher um `TOC` recém-inserido ou para atualizar um `TOC` existente após terem sido feitas alterações no documento. Os dois métodos a seguir devem ser usados para atualizar os campos `TOC` no documento:

1. [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/)
1. [UpdatePageLayout](https://reference.aspose.com/words/net/aspose.words/document/updatepagelayout/)

Observe que esses dois métodos de atualização devem ser chamados nessa ordem. Se invertido, o índice será preenchido, mas nenhum número de página será exibido. Qualquer número de TOCs diferentes pode ser atualizado. Esses métodos atualizarão automaticamente todos os índices encontrados no documento.

O exemplo de código a seguir mostra como reconstruir completamente os campos `TOC` no documento invocando a atualização do campo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTOC-UpdateFields.cs" >}}

A primeira chamada para **UpdateFields** criará o `TOC`, todas as entradas de texto serão preenchidas e o `TOC` aparecerá quase completo. A única coisa que falta são os números das páginas que por enquanto são exibidos com "?". A segunda chamada para **UpdatePageLayout** construirá o layout do documento na memória. Isso precisa ser feito para reunir os números das páginas das entradas. Os números de página corretos calculados a partir desta chamada são então inseridos no sumário.

## Use opções para controlar o comportamento do índice

Como acontece com qualquer outro campo, o campo `TOC` pode aceitar opções definidas no código do campo que controlam como o índice é construído. Certas opções são usadas para controlar quais entradas são incluídas e em que nível, enquanto outras são usadas para controlar a aparência do sumário. Os switches podem ser combinados para permitir a produção de índices complexos.

![working-with-table-of-contents-aspose-words-net](/words/net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Por padrão, essas opções acima são incluídas ao inserir um `TOC` padrão no documento. Um `TOC` sem opções incluirá conteúdo dos estilos de título integrados (como se a opção \O estivesse definida). Os switches `TOC` disponíveis suportados pelo Aspose.Words estão listados abaixo e seus usos são descritos em detalhes. Eles podem ser divididos em seções separadas com base em seu tipo. As opções na primeira seção definem qual conteúdo incluir no `TOC` e as opções na segunda seção controlam a aparência do TOC. Se uma opção não estiver listada aqui, ela não será suportada no momento. Todos os switches serão suportados em versões futuras. Estamos adicionando mais suporte a cada lançamento.

### Chaves de marcação de entrada

|  Trocar | Descrição |
|  :-  |  :-  |
| **Heading Styles**<br>*(\O Interruptor)* | <p>Essa opção define que `TOC` deve ser construído a partir dos estilos de título integrados. Em Microsoft Word eles são definidos pelo Título 1 – Título 9. Em Aspose.Words esses estilos são representados pela enumeração StyleIdentifier correspondente. Esta enumeração representa um identificador independente de localidade de um estilo, por exemplo `StyleIdentifier.Heading1` representa o estilo Título 1. Usando isso, a formatação e as propriedades do estilo podem ser recuperadas da coleção Style do documento. A classe Style correspondente pode ser recuperada da coleção `Document.Styles` usando a propriedade indexada do tipo StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Qualquer conteúdo formatado com esses estilos será incluído no índice. O nível do título definirá o nível hierárquico correspondente da entrada no TOC. Por exemplo, um parágrafo com estilo Título 1 será tratado como o primeiro nível no `TOC` enquanto um parágrafo com Título 2 será tratado como o próximo nível na hierarquia e assim por diante.</p> |
| **Outline Levels**<br>*(\U switch)* | <p>Cada parágrafo pode definir um nível de estrutura de tópicos nas opções de parágrafo.</p>

<p>![working-with-table-of-contents-paragraph](/words/net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Esta configuração determina qual nível este parágrafo deve ser tratado na hierarquia do documento. Esta é uma prática comumente usada para estruturar facilmente o layout de um documento. Esta hierarquia pode ser visualizada mudando para Outline View em Microsoft Word. Semelhante aos estilos de título, pode haver de 1 a 9 níveis de contorno além do nível "Corpo do texto". Os níveis de estrutura de tópicos 1 a 9 aparecerão no `TOC` no nível correspondente da hierarquia<br>Qualquer conteúdo com um nível de estrutura de tópicos definido no estilo de parágrafo ou diretamente no próprio parágrafo é incluído no sumário. No Aspose.Words, o nível de estrutura de tópicos é representado pela propriedade `ParagraphFormat.OutlineLevel` do nó Parágrafo. O nível de estrutura de tópicos de um estilo de parágrafo é representado da mesma forma pela propriedade `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Observe que os estilos de título integrados, como Título 1, têm um nível de estrutura de tópicos obrigatório definido nas configurações de estilo.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(\T interruptor)* | <p>Essa opção permitirá que estilos personalizados sejam usados ao coletar entradas a serem usadas no sumário. Isso geralmente é usado em conjunto com a opção \O para incluir estilos personalizados junto com estilos de título integrados no sumário.<br>Os parâmetros do switch devem ser colocados entre marcas de fala. Muitos estilos personalizados podem ser incluídos, para cada estilo o nome deve ser especificado seguido por uma vírgula seguida do nível em que o estilo deve aparecer no `TOC`. Outros estilos também são separados por vírgula.<br>Por exemplo</p>

<p>{{< highlight csharp >}}

<p>  { TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"} </p><p>{{< /highlight >}}</p>

<p>usará conteúdo estilizado com CustomHeading1 como conteúdo de nível 1 no `TOC` e CustomHeading2 como nível 2.</p> |
| **Use TC Fields**<br>*(\F e \L Chaves)* | <p>Nas versões mais antigas do Microsoft Word, a única forma de construir um `TOC` era utilizando campos TC. Esses campos são inseridos ocultos no documento mesmo quando os códigos dos campos são mostrados. Eles incluem o texto que deve ser exibido na entrada e o `TOC` é construído a partir deles. Esta funcionalidade agora não é usada com muita frequência, mas ainda pode ser útil em algumas ocasiões para incluir entradas no `TOC` que não são recuadas para serem visíveis no documento.<br>Quando inseridos, esses campos aparecem ocultos mesmo quando os códigos dos campos são exibidos. Eles não podem ser vistos sem mostrar conteúdo oculto. Para ver esses campos, Mostrar formatação de parágrafo deve estar selecionado.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Esses campos podem ser inseridos em um documento em qualquer posição como qualquer outro campo e são representados pela enumeração `FieldType.FieldTOCEntry`.<br>A opção \F em um `TOC` é usada para especificar que os campos TC devem ser usados como entradas. A mudança por si só, sem qualquer identificador extra, significa que qualquer campo TC no documento será incluído. Qualquer parâmetro extra, geralmente uma única letra, designará que apenas os campos TC que possuem uma opção \f correspondente serão incluídos no TOC. Por exemplo *</p>

<p>{{< highlight csharp >}}

<p>  { TOC \f t } </p><p>{{< /highlight >}}</p>

<p>incluirá apenas campos TC, como</p>

<p>{{< highlight csharp >}}
p> {   TC \f t }</p><p>{{< /highlight >}}</p>

<p>O campo `TOC` também possui uma chave relacionada, a chave "\L" especifica que apenas o campo TC com níveis dentro do intervalo especificado são incluídos.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Os próprios campos `TC` também podem ter opções `{several, multiple, a few, many, numerous}` definidas. Estes são:</p>

<p>- *\F – Explicado acima.*</p>

<p>- *\L – Define em qual nível do `TOC` este campo TC aparecerá. Um `TOC` que utilize esta mesma opção só incluirá este campo TC se estiver dentro do intervalo especificado.*</p>

<p>- `_\N` – A numeração de páginas para esta entrada `TOC` não é exibida. Um exemplo de código de como inserir campos TC pode ser encontrado na próxima seção.</p> |

### Switches relacionados à aparência

|  Trocar | Descrição |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(\N Alternar)* | <p>Essa opção é usada para ocultar números de página para determinados níveis do sumário. Por exemplo, você pode definir</p>

<p>{{< highlight csharp >}}
<p>  {TOC \o "1-4" \n "3-4" } </p><p>{{< /highlight >}}</p>

<p>e os números das páginas nas entradas dos níveis 3 e quatro ficarão ocultos junto com os pontos iniciais (se houver). Para especificar apenas um nível, um intervalo ainda deve ser usado, por exemplo "1-1" excluirá números de página apenas para o primeiro nível.<br>Não fornecer nenhum intervalo de níveis omitirá os números de página de todos os níveis do sumário. Isto é útil para definir ao exportar um documento para HTML ou formato semelhante. Isso ocorre porque os formatos baseados em HTML não possuem nenhum conceito de página e, portanto, não precisam de numeração de página.</p>

<p>![todo:image_alt_text](/words/net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\H Interruptor)* | <p>Essa opção especifica que as entradas `TOC` são inseridas como hiperlinks. Ao visualizar um documento em Microsoft Word, essas entradas ainda aparecerão como texto normal dentro do `TOC`, mas possuem hiperlinks e, portanto, podem ser usadas para navegar até a posição da entrada original no documento usando *Ctrl + Clique com o botão esquerdo* em Microsoft Word. Quando essa opção é incluída, esses links também são preservados em outros formatos. Por exemplo, em formatos baseados em HTML, incluindo EPUB e formatos renderizados como PDF e XPS, estes serão exportados como links funcionais.<br>Sem essa opção definida, o `TOC` em todas essas saídas será exportado como texto simples e não demonstrará esse comportamento. Se um documento for aberto no MS Word, o texto das entradas também não será clicável desta forma, mas os números das páginas ainda poderão ser usados para navegar até a entrada original.</p>

<p>![working-with-table-of-contents-titles](/words/net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(\P Interruptor)* | <p>Essa opção permite que o conteúdo que separa o título da entrada e a numeração da página seja facilmente alterado no sumário. O separador a ser usado deve ser especificado após essa opção e colocado entre marcas de fala.<br>Ao contrário do que está documentado na documentação do Office, apenas um caractere pode ser usado em vez de cinco. Isso se aplica tanto ao MS Word quanto ao Aspose.Words.<br>O uso dessa opção não é recomendado, pois não permite muito controle sobre o que é usado para separar entradas e números de página no sumário. Em vez disso, é recomendado editar o estilo `TOC` apropriado, como `StyleIdentifier.TOC1`, e a partir daí editar o estilo de chamada de detalhe com acesso a membros de fonte específicos, etc. Mais detalhes sobre como fazer isso podem ser encontrados posteriormente neste artigo.</p>

<p>![working-with-table-of-contents-toc](/words/net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\W Interruptor)* | <p>O uso dessa opção especificará que quaisquer entradas que possuam um caractere de tabulação, por exemplo, um cabeçalho que possua uma tabulação no final da linha, serão retidas como um caractere de tabulação adequado ao preencher o TOC. Isso significa que a função do caractere de tabulação estará presente no `TOC` e pode ser usada para formatar a entrada. Por exemplo, certas entradas podem usar paradas de tabulação e caracteres de tabulação para espaçar uniformemente o texto. Contanto que o nível `TOC` correspondente defina as paradas de tabulação equivalentes, as entradas `TOC` geradas aparecerão com espaçamento semelhante.<br><br>Na mesma situação, se essa opção não fosse definida, os caracteres de tabulação seriam convertidos em espaços em branco equivalentes a guias não funcionais. A saída não apareceria conforme o esperado.</p>

<p>![working-with-table-of-contents-aspose](/words/net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\X Interruptor)* | <p>Semelhante à opção acima, esta opção especifica que os títulos que abrangem várias linhas (usando caracteres de nova linha e não parágrafos separados) serão preservados como estão no sumário gerado. Por exemplo, um título que deve ser espalhado por várias linhas pode usar o caractere de nova linha (Ctrl + Enter ou `ControlChar.LineBreak`) para separar o conteúdo em linhas diferentes. Com esta opção especificada, a entrada no `TOC` preservará esses novos caracteres de linha conforme mostrado abaixo.<br><br>Nesta situação, se a opção não estiver definida, os caracteres da nova linha serão convertidos em um único espaço em branco.</p>

<p>![working-with-table-of-contents-aspose-words](/words/net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Inserir campos TC

Você pode inserir um novo campo TC na posição atual do [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) chamando o método [InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) e especificando o nome do campo como "TC" junto com quaisquer opções necessárias.

O exemplo de código a seguir mostra como inserir um campo `TC` no documento usando **DocumentBuilder**:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCField-DocumentBuilderInsertTCField.cs" >}}

Freqüentemente, uma linha específica de texto é designada para `TOC` e marcada com um campo `TC`. A maneira fácil de fazer isso em Microsoft Word é destacar o texto e pressionar *ALT+SHIFT+O*. Isso cria automaticamente um campo `TC` usando o texto selecionado. A mesma técnica pode ser realizada por meio de código. O código abaixo encontrará o texto correspondente à entrada e inserirá um campo `TC` na mesma posição do texto. O código é baseado na mesma técnica usada no artigo.

O exemplo de código a seguir mostra como localizar e inserir um campo `TC` no texto de um documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cs" >}}

## Modificar índice

A formatação das entradas no `TOC` não utiliza os estilos originais das entradas marcadas, mas cada nível é formatado usando um estilo `TOC` equivalente. Por exemplo, o primeiro nível no `TOC` é formatado com o estilo **TOC1**, o segundo nível é formatado com o estilo **TOC2** e assim por diante. Isso significa que para alterar a aparência do `TOC` esses estilos devem ser modificados. No Aspose.Words, esses estilos são representados pelo `StyleIdentifier.TOC1` independente de localidade até o `StyleIdentifier.TOC9` e podem ser recuperados da coleção [Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/) usando esses identificadores.

Depois que o estilo apropriado do documento for recuperado, a formatação desse estilo poderá ser modificada. Quaisquer alterações nesses estilos serão refletidas automaticamente nos sumários do documento.

O exemplo de código a seguir altera uma propriedade de formatação usada no estilo `TOC` de primeiro nível:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cs" >}}

Também é útil observar que qualquer formatação direta de um parágrafo (definida no próprio parágrafo e não no estilo) marcada para ser incluída no `TOC` será copiada na entrada do sumário. Por exemplo, se o estilo Título 1 for usado para marcar conteúdo para `TOC` e este estilo tiver formatação em negrito, enquanto o parágrafo também tiver formatação em itálico aplicada diretamente a ele. A entrada `TOC` resultante não estará em negrito, pois faz parte da formatação do estilo, mas estará em itálico, pois está formatado diretamente no parágrafo.

Você também pode controlar a formatação dos separadores usados entre cada entrada e número de página. Por padrão, esta é uma linha pontilhada que é espalhada pela numeração da página usando um caractere de tabulação e uma parada de tabulação à direita alinhada perto da margem direita.

Usando a classe [Style](https://reference.aspose.com/words/net/aspose.words/style/) recuperada para o nível `TOC` específico que você deseja modificar, você também pode modificar a forma como eles aparecem no documento. Para alterar a forma como isso aparece, primeiro o [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/style/paragraphformat/) deve ser chamado para recuperar a formatação do parágrafo para o estilo. A partir disso, as paradas de tabulação podem ser recuperadas chamando [TabStops](https://reference.aspose.com/words/net/aspose.words/paragraphformat/tabstops/) e a parada de tabulação apropriada modificada. Usando esta mesma técnica, a própria guia pode ser movida ou removida completamente.

O exemplo de código a seguir mostra como modificar a posição da parada de tabulação direita em parágrafos relacionados a `TOC`:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cs" >}}

## Remover índice do documento

Um índice pode ser removido do documento removendo todos os nós encontrados entre o nó `FieldStart` e FieldEnd do campo `TOC`. O código abaixo demonstra isso. A remoção do campo `TOC` é mais simples do que um campo normal, pois não monitoramos os campos aninhados. Em vez disso, verificamos se o nó [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) é do tipo [FieldType.FieldTOC](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/), o que significa que encontramos o final do sumário atual. Esta técnica pode ser usada neste caso sem se preocupar com campos aninhados, pois podemos assumir que qualquer documento formado corretamente não terá nenhum campo `TOC` totalmente aninhado dentro de outro campo `TOC`.

Primeiramente os nós [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) de cada `TOC` são coletados e armazenados. O `TOC` especificado é então enumerado para que todos os nós dentro do campo sejam visitados e armazenados. Os nós são então removidos do documento.

O exemplo de código a seguir mostra como remover um `TOC` especificado de um documento:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cs" >}}

## Extrair índice

Se você deseja extrair um índice de qualquer documento do Word, o seguinte exemplo de código pode ser usado:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ExtractTableOfContents-ExtractTableOfContents.cs" >}}
