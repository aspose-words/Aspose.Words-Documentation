---
title: Trabalhando com a Tabela de Conteúdos em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com a Tabela de Conteúdos
linktitle: Trabalhando com a Tabela de Conteúdos
description: "Tabela do campo Conteúdo em detalhes. Como criar e modificar `TOC` campo usando Java."
type: docs
weight: 170
url: /pt/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Muitas vezes você vai trabalhar com documentos contendo um índice (TOC). Usando Aspose.Words você pode inserir sua própria tabela de conteúdos ou reconstruir completamente a tabela existente de conteúdos no documento usando apenas algumas linhas de código.

Este artigo descreve como trabalhar com o campo de conteúdo e demonstra:

- Como inserir um novo TOC.
- Atualize novos ou existentes TOCs no documento.
- Especifique os interruptores para controlar a formatação e a estrutura geral do TOC.
- Como modificar os estilos e aparência da tabela de conteúdos.
- Como remover um inteiro `TOC` campo junto com todas as entradas do documento.

## Inserir Tabela de Conteúdos Programticamente

Você pode inserir um `TOC` (tabela de conteúdo) campo no documento na posição atual, chamando o [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) método.

Uma tabela de conteúdos em um documento do Word pode ser construída de várias maneiras e formatada usando uma variedade de opções. Os switches de campo que você passa para o controle do método da forma como a tabela é construída e exibida em seu documento.

Os interruptores padrão que são usados em um `TOC` inserido em Microsoft Word são **"\o "1-3 \h \z \u"**. Descrições desses switches, bem como uma lista de switches suportados podem ser encontradas mais tarde no artigo. Você pode usar esse guia para obter os switches corretos ou se você já tiver um documento contendo o similar `TOC` que você deseja pode mostrar códigos de campo (*ALT+F9*) e copiar os switches diretamente do campo.

O exemplo a seguir mostra como inserir um campo Tabela de Conteúdos em um documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

O exemplo de código a seguir demonstra como inserir uma Tabela de conteúdos (TOC) em um documento usando estilos de cabeçalho como entradas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

O código demonstra que a nova tabela de conteúdo é inserida em um documento em branco. O [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe é então usado para inserir alguma formatação de conteúdo de amostra com os estilos de cabeçalho apropriados que são usados para marcar o conteúdo a ser incluído no TOC. As próximas linhas, em seguida, preencher o `TOC` atualizando os campos e o layout da página do documento.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Sem os métodos utilizados no exemplo, quando você abre o documento de saída, você encontrará o `TOC` campo, mas sem conteúdo visível. Isto é porque o `TOC` campo foi inserido, mas ainda não está povoado até que seja atualizado no documento. Mais informações sobre isso são discutidas na próxima seção.

{{% /alert %}}

## Atualizar tabela de conteúdo

Aspose.Words permite que você atualize completamente um `TOC` com apenas algumas linhas de código. Isso pode ser feito para preencher um novo inserido `TOC` ou para atualizar um existente `TOC` após alterações no documento foram feitas.

Os dois métodos a seguir devem ser usados para atualizar `TOC` campos no documento:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Por favor, note que estes dois métodos de atualização devem ser chamados nessa ordem. Se revertida a tabela de conteúdo será povoada, mas nenhum número de página será exibido. Qualquer número de diferentes TOCs pode ser atualizado. Esses métodos atualizarão automaticamente todos os TOCs encontrados no documento.

O seguinte exemplo de código mostra como reconstruir completamente `TOC` campos no documento invocando atualizações de campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

A primeira chamada para [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) vai construir o <span notrans="<span notrans=" `TOC`"=""></span>, todas as entradas de texto são povoadas e `TOC` parece quase completo. A única coisa que falta é os números de página que por agora são exibidos com "?".

A segunda chamada para [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) irá construir o layout do documento em memória. Isso precisa ser feito para coletar os números de página das entradas. Os números de página corretos calculados a partir desta chamada são então inseridos no TOC.

## Use interruptores para controlar a tabela de conteúdo Comportamento

Como em qualquer outro campo, o `TOC` campo pode aceitar switches definidos dentro do código de campo que controla como a tabela de conteúdo é construída. Alguns interruptores são usados para controlar quais entradas estão incluídas e em que nível, enquanto outros são usados para controlar a aparência do TOC. Os interruptores podem ser combinados para permitir que uma tabela complexa de conteúdos seja produzida.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Por padrão, esses switches acima são incluídos ao inserir um padrão `TOC` no documento. A `TOC` sem interruptores incluirá conteúdo dos estilos de cabeçalho embutidos (como se o interruptor \O estiver definido).

Disponível `TOC` interruptores que são suportados por Aspose.Words estão listados abaixo e seus usos são descritos em detalhes. Eles podem ser divididos em seções separadas com base em seu tipo. Os switches na primeira seção definem o conteúdo a incluir no `TOC` e os interruptores na segunda seção controlam a aparência do TOC.

Se um interruptor não está listado aqui, então ele não é suportado atualmente. Todos os switches serão suportados em versões futuras. Estamos adicionando mais suporte a cada versão.

### Interruptores de marcação de entrada

|  Interruptor | Descrição |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Switch)* <br/> | <p>Este interruptor define que o `TOC` deve ser construído fora os estilos de cabeçalho embutidos. Em Microsoft Word, estes são definidos pelo Heading 1 – Heading 9. Em Aspose.Words Estes estilos são representados pela enumeração StyleIdentifier correspondente. Esta enumeração representa um identificador locale-independente de um estilo, por exemplo, `StyleIdentifier.Heading1` representa o título 1 estilo. Usando isso, a formatação e as propriedades do estilo podem ser recuperadas da coleção Estilo do documento. A classe Estilo correspondente pode ser recuperada a partir do `Document.Styles` coleção usando a propriedade indexada do tipo StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Qualquer conteúdo formatado com esses estilos está incluído na tabela de conteúdos. O nível do cabeçalho definirá o nível hierárquico correspondente da entrada no TOC. Por exemplo, um parágrafo com o título 1 estilo será tratado como o primeiro nível no `TOC` Considerando que um parágrafo com cabeçalho 2 será tratado como o próximo nível na hierarquia e assim por diante.</p>
 |
| **Outline Levels** <br/> *(\U switch)* <br/> | <p>Cada parágrafo pode definir um nível de contorno em Parágrafo opções.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Esta definição determina qual nível este parágrafo deve ser tratado na hierarquia dos documentos. Esta é uma prática comumente usada usada para estruturar facilmente o layout de um documento. Esta hierarquia pode ser vista mudando para Outline View em Microsoft Word. Semelhante aos estilos de cabeçalho, pode haver 1 – 9 níveis de contorno, além do nível "Body Text". Níveis de contorno 1 – 9 aparecerão no `TOC` no nível correspondente da hierarquia <br/>Qualquer conteúdo com um nível de contorno definido no estilo parágrafo ou diretamente no próprio parágrafo está incluído no TOC. Em Aspose.Words o nível de contorno é representado pelo `ParagraphFormat.OutlineLevel` propriedade do nó Parágrafo. O nível de contorno de um estilo de parágrafo é representado da mesma forma pelo `Style.ParagraphFormat` propriedade.</p>

<p>{{% alert color="primary" %}}</p>

<p>Note que estilos de cabeçalho embutidos, como Heading 1, têm um nível de contorno obrigatório definido em configurações de estilo.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T switch)* <br/> | <p>Este interruptor permitirá estilos personalizados a serem usados ao coletar entradas a serem usadas no TOC. Isso é frequentemente usado em conjunto com o interruptor \O para incluir estilos personalizados, juntamente com estilos de cabeçalho embutidos no TOC. <br/>Os parâmetros do interruptor devem ser fechados dentro das marcas de fala. Muitos estilos personalizados podem ser incluídos, para cada estilo, o nome deve ser especificado seguido por uma vírgula seguido pelo nível que o estilo deve aparecer no `TOC` como. Outros estilos também são separados por uma vírgula também. <br/>Por exemplo</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>usará conteúdo estilo com CustomHeading1 como conteúdo de nível 1 no `TOC` e CustomHeading2 como nível 2.</p>
 |
| Use campos TC <br/> *(\F e \L Switches)* <br/> | <p>Em versões mais antigas Microsoft Word, a única maneira de construir um `TOC` foi o uso de campos TC. Estes campos são inseridos escondidos no documento mesmo quando os códigos de campo são mostrados. Eles incluem o texto que deve ser exibido na entrada e no `TOC` é construído a partir deles. Esta funcionalidade agora não é usada muitas vezes, mas ainda pode ser útil em algumas ocasiões para incluir entradas no `TOC` que não são recuadas para ser visível no documento. <br/>Quando inseridos esses campos aparecem escondidos mesmo quando os códigos de campo são exibidos. Eles não podem ser vistos sem mostrar conteúdo oculto. Para ver estes campos Mostrar formatação de parágrafo deve ser selecionado.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Estes campos podem ser inseridos em um documento em qualquer posição como qualquer outro campo e são representados por `FieldType.FieldTOCEntry` enumeração.<br/>O interruptor \F em um `TOC` é usado para especificar que os campos TC devem ser usados como entradas. O interruptor em seu próprio sem qualquer identificador extra significa que qualquer campo TC no documento será incluído. Qualquer parâmetro extra, muitas vezes uma única letra, designará que apenas os campos TC que têm um interruptor \f correspondente serão incluídos no TOC. Por exemplo *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>só incluirá campos TC como</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>O `TOC` campo também tem um interruptor relacionado, o interruptor "L" especifica que apenas o campo TC com níveis dentro do intervalo especificado estão incluídos.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>O `TC` campos também podem ter {several, `multiple`, a few, `many`, numerous} interruptores definidos. Estes são:</p>

<p>- \F – Explicado acima. *</p>

<p>- \L – Define qual nível no `TOC` este campo TC aparecerá. A `TOC` que usa este mesmo interruptor só incluirá este campo TC se estiver dentro do intervalo especificado.</p>

<p>- Não. A numeração de página para este `TOC` A entrada não é exibida. O código de amostra de como inserir campos TC pode ser encontrado na próxima seção.</p>
 |

### Aparência Interruptores relacionados

|  Interruptor | Descrição |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Switch)* | <p>Este interruptor é usado para esconder números de página para certos níveis do TOC. Por exemplo, você pode definir</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>e os números de página nas entradas dos níveis 3 e quatro serão escondidos junto com os pontos líderes (se houver algum). Para especificar apenas um nível um intervalo ainda deve ser usado, por exemplo, "1-1" irá excluir números de página apenas para o primeiro nível. <br/>Fornecer nenhum intervalo de nível omitirá números de página para todos os níveis no TOC. Isso é útil para definir ao exportar um documento para HTML ou um formato similar. Isso ocorre porque os formatos baseados em HTML não têm nenhum conceito de página e, portanto, não precisam de nenhuma numeração de página.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Inserir como hiperlinks <br/> *(\H Switch)* | <p>Este interruptor especifica que `TOC` entradas são inseridas como hiperlinks. Ao visualizar um documento em Microsoft Word estas entradas ainda aparecerão como texto normal dentro do `TOC` mas são hiperligados e, portanto, pode ser usado para navegar para a posição da entrada original no documento usando *Ctrl + Left Click* in Microsoft Word. Quando este interruptor é incluído, estes links também são preservados em outros formatos. Por exemplo, em formatos baseados em HTML, incluindo EPUB e formatos renderizados, como PDF e XPS, estes serão exportados como links de trabalho. <br/>Sem este conjunto de interruptor, o `TOC` em todas essas saídas serão exportadas como texto simples e não demonstrarão esse comportamento. Se um documento for aberto no MS Word o texto das entradas também não será clicável desta forma, mas os números de página ainda podem ser usados para navegar para a entrada original.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch)* <br/> | <p>Este interruptor permite que o conteúdo que separa o título da entrada e numeração de página para ser facilmente alterado no TOC. O separador a usar deve ser especificado após este interruptor e fechado em marcas de fala. <br/>Contrariamente ao que está documentado na documentação do Office, apenas um caractere pode ser usado em vez de até cinco. Isso se aplica tanto ao MS Word e Aspose.Words. <br/>Usar este interruptor não é recomendado, pois não permite muito controle sobre o que ele usou para separar entradas e números de página no TOC. Em vez disso, recomenda-se editar o apropriado `TOC` estilo como `StyleIdentifier.TOC1` e a partir daí edite o estilo de líder com acesso a membros de fonte específicos, etc. Mais detalhes de como fazer isso podem ser encontrados mais tarde no artigo.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch)* | <p>Usar este interruptor especificará que quaisquer entradas que tenham um caractere de aba, por exemplo, um cabeçalho que tenha uma aba no final da linha, serão mantidas como um caractere de aba adequado ao preencher o TOC. Isso significa que a função do caractere da aba estará presente no `TOC` e pode ser usado para formatar a entrada. Por exemplo, certas entradas podem usar tab stops e tab characters para espaçar uniformemente o texto. Desde que o correspondente `TOC` nível define o separador equivalente para, em seguida, o gerado `TOC` entradas aparecerão com espaçamento semelhante. <br/><br/>Na mesma situação se este interruptor não fosse definido, então os caracteres de aba seriam convertidos em espaço branco equivalente como abas não funcionais. A saída então não apareceria como esperado.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Switch)* <br/> | <p>Semelhante ao interruptor acima, este interruptor especifica que os cabeçalhos que abrangem várias linhas (usando caracteres de linha nova, não parágrafos separados) serão preservados como eles estão no TOC gerado. Por exemplo, um cabeçalho que é espalhar através de várias linhas pode usar o novo caractere de linha (Ctrl + Enter ou `ControlChar.LineBreak`) separar conteúdo em diferentes linhas. Com este interruptor especificado, a entrada no `TOC` preservará esses novos caracteres de linha como mostrado abaixo. <br/><br/>Nesta situação, se o interruptor não for definido, então os novos caracteres de linha são convertidos para um único espaço branco.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Inserir campos TC

Você pode inserir um novo campo TC na posição atual do `DocumentBuilder` chamando o `DocumentBuilder.InsertField` método e especificar o nome do campo como "TC" juntamente com quaisquer interruptores que são necessários.

O exemplo de código a seguir mostra como inserir um `TC` campo no documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Muitas vezes, uma linha específica de texto é designada para o `TOC` e é marcado com um `TC` campo. A maneira fácil de fazer isso no MS Word é destacar o texto e pressionar *ALT+SHIFT+O*. Isso cria automaticamente um `TC` campo usando o texto selecionado. A mesma técnica pode ser realizada através do código. O código abaixo irá encontrar texto correspondente à entrada e inserir uma `TC` campo na mesma posição do texto. O código é baseado na mesma técnica utilizada no artigo. O seguinte exemplo de código mostra como encontrar e inserir um `TC` campo no texto em um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modifique uma Tabela de Conteúdos

### Alterar a formatação de estilos

A formatação de entradas no `TOC` não usa os estilos originais das entradas marcadas, em vez disso, cada nível é formatado usando um equivalente `TOC` estilo. Por exemplo, o primeiro nível no `TOC` é formatado com o **TOC1** estilo, o segundo nível formatado com o **TOC2** estilo e assim por diante. Isso significa que mudar o olhar do `TOC` estes estilos devem ser modificados. Em Aspose.Words estes estilos são representados pelo locale-independent `StyleIdentifier.TOC1` através de `StyleIdentifier.TOC9` e pode ser recuperado do `Document.Styles` coleta usando esses identificadores.

Uma vez que o estilo apropriado do documento foi recuperado a formatação para este estilo pode ser modificado. Quaisquer alterações nesses estilos serão automaticamente refletidas nos TOCs no documento.

O exemplo de código a seguir muda uma propriedade de formatação usada no primeiro nível `TOC` estilo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

Também é útil notar que qualquer formatação direta de um parágrafo (definido no próprio parágrafo e não no estilo) marcado para ser incluído no `TOC` será copiado na entrada no TOC. Por exemplo, se o título 1 estilo é usado para marcar conteúdo para o `TOC` e este estilo tem formatação Bold enquanto o parágrafo também tem formatação itálica diretamente aplicada a ele. O resultado `TOC` entrada não será ousada como que é parte da formatação de estilo, no entanto, será itálico como este é formatado diretamente no parágrafo.

Você também pode controlar a formatação dos separadores usados entre cada entrada e o número da página. Por padrão, esta é uma linha pontilhada que é espalhada pela numeração da página usando um caractere de aba e uma parada de aba direita alinhado perto da margem direita.

Usando o `Style` classe recuperada para o particular `TOC` nível que você deseja modificar, você também pode modificar como essas aparecem no documento.

Para mudar como isso aparece primeiro `Style.ParagraphFormat` deve ser chamado para recuperar a formatação do parágrafo para o estilo. A partir disso, as paradas da guia podem ser recuperadas chamando `ParagraphFormat.TabStops` e a parada de guia apropriada modificada. Usando esta mesma técnica a aba em si pode ser movida ou removida completamente.

O exemplo de código a seguir mostra como modificar a posição da aba certa no `TOC` parágrafos relacionados.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Remover uma Tabela de Conteúdos do Documento

Uma tabela de conteúdo pode ser removida do documento removendo todos os nós encontrados entre o `FieldStart` e nó FieldEnd do `TOC` campo.

O código abaixo demonstra isso. A remoção da `TOC` campo é mais simples do que um campo normal, pois não mantemos o controle de campos aninhados. Em vez disso, verificamos o `FieldEnd` nó é de tipo `FieldType.FieldTOC` o que significa que encontramos o fim do TOC atual. Esta técnica pode ser usada neste caso sem se preocupar com quaisquer campos aninhados como podemos assumir que qualquer documento devidamente formado não terá totalmente aninhado `TOC` campo dentro de outro `TOC` campo.

Primeiro: `FieldStart` nós de cada `TOC` são coletados e armazenados. O especificado `TOC` é então enumerado para que todos os nós dentro do campo sejam visitados e armazenados. Os nós são então removidos do documento. O exemplo de código a seguir demonstra como remover um especificado `TOC` de um documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Extrair a tabela de conteúdo

Se você quiser extrair uma tabela de conteúdos de qualquer documento do Word, a amostra de código a seguir pode ser usada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
