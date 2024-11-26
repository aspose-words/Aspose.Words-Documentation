---
title: Trabalhando com índice em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com índice
linktitle: Trabalhar com índice
description: "Campo da tabela de conteúdo em detalhes. Como criar e modificar o campo `TOC` usando Java."
type: docs
weight: 170
url: /pt/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Muitas vezes, você trabalhará com documentos contendo um índice (TOC). Usando Aspose.Words você pode inserir seu próprio índice ou reconstruir completamente o índice existente no documento usando apenas algumas linhas de código.

Este artigo descreve como trabalhar com o campo índice e demonstra:

- Como inserir um novo TOC.
- Actualizar TOCs novo ou existente no documento.
- Especifique as opções para controlar a formatação e a estrutura geral do TOC.
- Como modificar os estilos e a aparência do Índice.
- Como remover um campo `TOC` inteiro juntamente com todas as entradas do documento.

## Inserir o índice programaticamente

Você pode inserir um campo `TOC` (índice) no documento na posição atual chamando o método [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String).

Um índice em um documento do Word pode ser construído de várias maneiras e formatado usando uma variedade de opções. As opções de campo que passa para o método controlam a forma como a tabela é criada e apresentada no documento.

Os switches padrão que são usados em um `TOC` inserido em Microsoft Word são **"\o "1-3 \h \z \u"**. As descrições desses switches, bem como uma lista de switches suportados, podem ser encontradas posteriormente no artigo. Você pode usar esse guia para obter os switches corretos ou, se já tiver um documento contendo o `TOC` semelhante que deseja, pode mostrar os códigos de campo (*ALT+F9*) e copiar os switches diretamente do campo.

O exemplo de código a seguir mostra como inserir um campo de índice em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

O exemplo de código a seguir demonstra como inserir um sumário (TOC) em um documento usando estilos de título como entradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

O código demonstra que o novo índice é inserido num documento em branco. A classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) é então usada para inserir alguns exemplos de formatação de conteúdo com os estilos de título apropriados que são usados para marcar o conteúdo a ser incluído no TOC. As próximas linhas preenchem o `TOC` Atualizando os campos e o layout da página do documento.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Sem os métodos usados no exemplo, ao abrir o documento de saída, você encontraria o campo `TOC`, mas sem conteúdo visível. Isso ocorre porque o campo `TOC` foi inserido, mas ainda não foi preenchido até que seja atualizado no documento. Mais informações sobre este assunto são discutidas na próxima secção.

{{% /alert %}}

## Actualizar o índice

Aspose.Words permite atualizar completamente a `TOC` com apenas algumas linhas de código. Isso pode ser feito para preencher um `TOC` recém-inserido ou para atualizar um `TOC` existente após as alterações no documento terem sido feitas.

Os dois métodos a seguir devem ser usados para atualizar os campos `TOC` no documento:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Observe que esses dois métodos de atualização devem ser chamados nessa ordem. Se invertido, o índice será preenchido, mas não serão apresentados números de página. Qualquer número de diferentes TOCs pode ser atualizado. Esses métodos atualizarão automaticamente todos os TOCs encontrados no documento.

O exemplo de código a seguir mostra como reconstruir completamente `TOC` campos no documento invocando atualizações de campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

A primeira chamada para [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) irá construir o `TOC`, Todas as entradas de texto são preenchidas e o `TOC` aparece quase completo. A única coisa que falta são os números de página que, por enquanto, são exibidos com "?".

A segunda chamada para [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) irá construir o layout do documento na memória. Isto tem de ser feito para recolher os números das páginas das entradas. Os números de página corretos calculados a partir desta chamada são então inseridos no TOC.

## Usar opções para controlar o comportamento do Índice

Como acontece com qualquer outro campo, o campo `TOC` pode aceitar opções definidas no código do campo que controla como o índice é construído. Alguns interruptores são utilizados para controlar quais entradas estão incluídas e em que nível, enquanto outros são utilizados para controlar a aparência do TOC. Os interruptores podem ser combinados para permitir a produção de um índice complexo.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Por padrão, essas opções acima são incluídas ao inserir um `TOC` padrão no documento. A `TOC` sem opções incluirá conteúdo dos estilos de título integrados (como se a opção \O estivesse definida).

Os switches `TOC` disponíveis que são suportados por Aspose.Words estão listados abaixo e seus usos são descritos em detalhes. Eles podem ser divididos em seções separadas com base em seu tipo. Os comutadores na primeira secção definem o conteúdo a incluir no `TOC` e os comutadores na segunda secção controlam a aparência do TOC.

Se um switch não estiver listado aqui, ele não será suportado no momento. Todos os switches serão suportados em versões futuras. Estamos a acrescentar mais apoio a cada lançamento.

### Interruptores De Marcação De Entrada

| Interruptor | Descrição |
| :- | :- |
| **Heading Styles** <br>* (\O Interruptor)* <br> | <p>Esta opção define que o `TOC` deve ser construído a partir dos estilos de cabeçalho incorporados. Em Microsoft Word, estes são definidos por Heading 1 – Heading 9. Em Aspose.Words estes estilos são representados pela enumeração StyleIdentifier correspondente. Esta enumeração representa um identificador independente de localidade de um estilo, por exemplo, `StyleIdentifier.Heading1` representa o estilo Heading 1. Usando isso, a formatação e as propriedades do estilo podem ser recuperadas da coleção de estilos do documento. A classe de estilo correspondente pode ser recuperada da coleção `Document.Styles` Usando a propriedade indexed do tipo StyleIdentifier.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Qualquer conteúdo formatado com esses estilos é incluído no índice. O nível do título definirá o nível hierárquico correspondente da entrada no TOC. Por exemplo, um parágrafo com Heading 1 estilo será tratado como o primeiro nível no `TOC` enquanto um parágrafo com Heading 2 será tratado como o próximo nível na hierarquia e assim por diante.</p> |
| **Outline Levels** <br>* (Interruptor \ U)* <br> | <p>Cada parágrafo Pode definir um nível de esboço em Opções de parágrafo.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Esta definição determina o nível em que este parágrafo deve ser tratado na hierarquia dos documentos. Esta é uma prática comumente usada para estruturar facilmente o layout de um documento. Esta hierarquia pode ser visualizada alterando para vista de contorno em Microsoft Word. Semelhante aos estilos de cabeçalho, pode haver 1 – 9 níveis de contorno além do nível "corpo do texto". Os níveis de contorno 1-9 aparecerão no `TOC` no nível correspondente da hierarquia <br>Qualquer conteúdo com um nível de contorno definido no estilo do parágrafo ou diretamente no próprio parágrafo é incluído no TOC. Em Aspose.Words o nível de contorno é representado pela propriedade `ParagraphFormat.OutlineLevel` do nó de parágrafo. O nível de contorno de um estilo de parágrafo é representado da mesma forma pela propriedade `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Observe que os estilos de cabeçalho integrados, como Heading 1, têm um nível de contorno obrigatório definido nas configurações de estilo.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (Interruptor \ T)* <br> | <p>Essa opção permitirá que estilos personalizados sejam usados ao coletar entradas a serem usadas no TOC. Isso é frequentemente usado em conjunto com a opção \O para incluir estilos personalizados junto com estilos de cabeçalho integrados no TOC. <br>Os parâmetros do interruptor devem ser incluídos nas marcas de fala. Muitos estilos personalizados podem ser incluídos, para cada estilo, o nome deve ser especificado seguido por uma vírgula seguida pelo nível em que o estilo deve aparecer no `TOC` as. Outros estilos também são separados por uma vírgula. <br>Por exemplo</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>usará conteúdo estilizado com CustomHeading1 como conteúdo de Nível 1 no `TOC` e CustomHeading2 como Nível 2.</p> |
| Utilizar TC Campos <br>* (Interruptores\F E \L)* <br> | <p>Em versões mais antigas de Microsoft Word, a única maneira de construir um `TOC` era o uso de campos TC. Estes campos são inseridos ocultos no documento, mesmo quando os códigos de campo são apresentados. Eles incluem o texto que deve ser exibido na entrada e o `TOC` é construído a partir deles. Esta funcionalidade agora não é utilizada com muita frequência, mas pode ainda ser útil em algumas ocasiões para incluir entradas no `TOC` que não são recuadas para serem visíveis no documento. <br>Quando inseridos, estes campos aparecem ocultos mesmo quando são apresentados códigos de campo. Eles não podem ser vistos sem mostrar conteúdo oculto. Para ver estes campos mostrar a formatação do parágrafo deve ser selecionado.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Estes campos podem ser inseridos num documento em qualquer posição como qualquer outro campo e são representados pela enumeração `FieldType.FieldTOCEntry`.<br>A opção \F em a `TOC` é usada para especificar que os campos TC devem ser usados como entradas. O interruptor por si só, sem qualquer identificador adicional, significa que qualquer campo TC no documento será incluído. Qualquer parâmetro extra, Geralmente uma única letra, designará que apenas TC campos que tenham uma opção \f correspondente serão incluídos no TOC. Por exemplo *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>incluirá apenas TC campos como</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>O campo `TOC` também tem um comutador relacionado, O comutador" \ L " especifica que apenas o campo TC com níveis dentro do intervalo especificado está incluído.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>Os próprios campos `TC` também podem ter interruptores `{several, multiple, a few, many, numerous}` definidos. Estes são:</p><p>– \ F-explicado acima.*</p><p>– \ L-define em qual nível no `TOC` Este campo TC aparecerá. Um `TOC` que usa essa mesma opção só incluirá esse campo TC se estiver dentro do intervalo especificado.</p><p>- `_\N` - a numeração das páginas desta entrada `TOC` não é apresentada.O código de exemplo de como inserir campos TC pode ser encontrado na próxima seção.</p> |

### Interruptores Relacionados Com A Aparência

| Interruptor | Descrição |
| :- | :- |
| **Omit Page Numbers** <br>* (Interruptor\N)* | <p>Esta opção é utilizada para ocultar números de página para determinados níveis do TOC. Por exemplo, você pode definir</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>e os números das páginas nas entradas dos níveis 3 e quatro serão ocultados juntamente com os pontos principais (Se houver). Para especificar apenas um nível, deve continuar a ser utilizado um intervalo, por exemplo, "1-1" excluirá os números de página apenas para o primeiro nível. <br>O fornecimento de nenhum intervalo de níveis omitirá números de página para todos os níveis no TOC. Isso é útil para definir ao exportar um documento para HTML ou um formato semelhante. Isso ocorre porque os formatos baseados em HTML não têm nenhum conceito de página e, portanto, não precisam de nenhuma numeração de página.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Inserir Como Hiperligações <br>* (Interruptor \ H)* | <p>Esta opção especifica que as entradas `TOC` são inseridas como hiperligações. Ao visualizar um documento em Microsoft Word, essas entradas ainda aparecerão como texto normal dentro do `TOC`, mas estão hiperlinks e, portanto, podem ser usadas para navegar até a posição da entrada original no documento usando *Ctrl + Left Click* em Microsoft Word. Quando essa opção é incluída, esses links também são preservados em outros formatos. Por exemplo, em formatos baseados em HTML incluindo EPUB e formatos renderizados como PDF e XPS, estes serão exportados como links de trabalho. <br>Sem essa opção definida, o `TOC` em todas essas saídas será exportado como texto simples e não demonstrará esse comportamento. Se um documento for aberto em MS Word, o texto das entradas também não será clicável desta forma, mas os números de página ainda podem ser usados para navegar até a entrada original.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>* (Interruptor\P)* <br> | <p>Esta opção permite que o conteúdo que separa o título da entrada e a numeração da página seja facilmente alterado no TOC. O separador a utilizar deve ser especificado após este interruptor e colocado em marcas de fala. <br>Ao contrário do que está documentado na documentação do Office, apenas um caractere pode ser usado em vez de até cinco. Isso se aplica a MS Palavra e Aspose.Words. <br>A utilização desta opção não é recomendada, uma vez que não permite muito controlo sobre o que utilizou para separar Entradas e números de página no TOC. Em vez disso, recomenda-se editar o estilo `TOC` apropriado, como `StyleIdentifier.TOC1` e, a partir daí, editar o estilo líder com acesso a membros de fonte específicos, etc. Mais detalhes sobre como fazer isso podem ser encontrados mais adiante no artigo.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>* (Interruptor \ W)* | <p>O uso desta opção especificará que quaisquer entradas que tenham um caractere de tabulação, por exemplo, um título que tenha uma tabulação no final da linha, serão mantidas como um caractere de tabulação adequado ao preencher o TOC. Isso significa que a função do caractere tab estará presente no `TOC` e pode ser usada para formatar a entrada. Por exemplo, certas entradas podem utilizar batentes de tabulação e caracteres de tabulação para espaçar uniformemente o texto. Enquanto o nível `TOC` correspondente definir as paradas de tabulação equivalentes, as entradas `TOC` geradas aparecerão com espaçamento semelhante. <br><br>Na mesma situação, se essa opção não fosse definida, os caracteres da guia seriam convertidos em espaço em branco equivalente como guias que não funcionam. A saída não apareceria como esperado.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>* (\X Interruptor)* <br> | <p>Semelhante à opção acima, essa opção especifica que os títulos que abrangem várias linhas (usando caracteres de nova linha, não parágrafos separados) serão preservados como estão no TOC gerado. Por exemplo, um título que deve ser espalhado por várias linhas pode usar o novo caractere de linha (Ctrl + Enter ou `ControlChar.LineBreak`) para separar o conteúdo em diferentes linhas. Com esta opção especificada, a entrada no `TOC` preservará esses novos caracteres de linha, conforme mostrado abaixo. <br><br>Nesta situação, se o comutador não estiver definido, os novos caracteres de linha são convertidos num único espaço em branco.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## Inserir TC Campos

Você pode inserir um novo campo TC na posição atual do `DocumentBuilder` chamando o método `DocumentBuilder.InsertField` e especificando o nome do campo como "TC" junto com quaisquer opções necessárias.

O exemplo de código a seguir mostra como inserir um campo `TC` no documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Muitas vezes, uma linha de texto específica é designada para o `TOC` e é marcada com um campo `TC`. A maneira mais fácil de fazer isso em MS Word é destacar o texto e pressionar *ALT+SHIFT+O*. Isso cria automaticamente um campo `TC` usando o texto selecionado. A mesma técnica pode ser realizada através do Código. O código abaixo irá encontrar o texto correspondente à entrada e inserir um campo `TC` na mesma posição que o texto. O código baseia-se na mesma técnica utilizada no artigo. O exemplo de código a seguir mostra como localizar e inserir um campo `TC` no texto de um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modificar um índice

### Alterar a formatação dos estilos

A formatação das entradas no `TOC` não usa os estilos originais das entradas marcadas, em vez disso, cada nível é formatado usando um estilo `TOC` equivalente. Por exemplo, o primeiro nível no `TOC` é formatado com o estilo **TOC1**, o segundo nível formatado com o estilo **TOC2** e assim por diante. Isso significa que, para alterar a aparência do `TOC`, esses estilos devem ser modificados. Em Aspose.Words, esses estilos são representados pela localidade independente `StyleIdentifier.TOC1` até `StyleIdentifier.TOC9` e podem ser recuperados da coleção `Document.Styles` usando esses identificadores.

Uma vez recuperado o estilo apropriado do documento, a formatação deste estilo pode ser modificada. Quaisquer alterações a estes estilos serão automaticamente refletidas no TOCs do documento.

O exemplo de código a seguir altera uma propriedade de formatação usada no estilo `TOC` de primeiro nível.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Também é útil notar que qualquer formatação direta de um parágrafo (definido no próprio parágrafo e não no estilo) marcado para ser incluído no `TOC` será copiado na entrada no TOC. Por exemplo, se o estilo Heading 1 for usado para marcar o conteúdo para o `TOC` e este estilo tiver formatação em negrito, enquanto o parágrafo também tiver formatação em itálico aplicada diretamente a ele. A entrada `TOC` resultante não será em negrito, pois faz parte da formatação de estilo, mas será em itálico, pois está formatada diretamente no parágrafo.

Também pode controlar a formatação dos separadores utilizados entre cada entrada e o número da página. Por padrão, trata-se de uma linha pontilhada que é espalhada até a numeração da página usando um caractere de tabulação e uma parada de tabulação direita alinhada perto da margem direita.

Usando a classe `Style` recuperada para o nível `TOC` específico que você deseja modificar, Você também pode modificar como elas aparecem no documento.

Para alterar a forma como isso aparece, em primeiro lugar, `Style.ParagraphFormat` deve ser chamado para recuperar a formatação do parágrafo para o estilo. A partir disso, as paradas de tabulação podem ser recuperadas chamando `ParagraphFormat.TabStops` e a parada de tabulação apropriada modificada. Usando esta mesma técnica, a guia em si pode ser movida ou removida completamente.

O exemplo de código a seguir mostra como modificar a posição da tabulação direita em `TOC` parágrafos relacionados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Remover um índice do documento

Um índice pode ser removido do documento removendo todos os nós encontrados entre os nós `FieldStart` e FieldEnd do campo `TOC`.

O código abaixo demonstra isso. A remoção do campo `TOC` é mais simples do que um campo normal, pois não acompanhamos os campos aninhados. Em vez disso, verificamos que o nó `FieldEnd` é do tipo `FieldType.FieldTOC`, o que significa que encontramos o fim do TOC atual. Esta técnica pode ser usada neste caso sem se preocupar com quaisquer campos aninhados, pois podemos assumir que qualquer documento devidamente formado não terá um campo `TOC` totalmente aninhado dentro de outro campo `TOC`.

Em primeiro lugar, os nós `FieldStart` de cada `TOC` são recolhidos e armazenados. O `TOC` especificado é então enumerado para que todos os nós dentro do campo sejam visitados e armazenados. Os nós são então removidos do documento. O exemplo de código a seguir demonstra como remover um `TOC` especificado de um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Extrair Índice

Se pretender extrair um sumário de qualquer documento do Word, pode utilizar-se o seguinte exemplo de código.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
