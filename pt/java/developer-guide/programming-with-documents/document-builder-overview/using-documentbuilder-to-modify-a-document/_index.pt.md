---
title: Usando `DocumentBuilder` para modificar um documento
second_title: Aspose.Words para Java
articleTitle: Usando `DocumentBuilder` para modificar um documento
linktitle: Usando `DocumentBuilder` para modificar um documento
type: docs
description: "Use o construtor de documentos para modificar um documento facilmente Java."
weight: 20
url: /pt/java/using-documentbuilder-to-modify-a-document/
---

## Especificando formatação

### Formatação de fonte

A formatação da fonte atual é representada por uma `Font` objeto retornado pelo `DocumentBuilder.Font` propriedade. O `Font` classe contém uma grande variedade de propriedades de fonte possíveis em Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
O exemplo de código a seguir mostra como definir formatação de fonte.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formatação da célula

A formatação celular é usada durante a construção de uma tabela. É representado por um `CellFormat` objeto retornado pelo `DocumentBuilder.CellFormat` propriedade. CellFormat encapsula várias propriedades de células de tabela, como largura ou alinhamento vertical.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
O exemplo de código a seguir mostra como criar uma tabela que contenha uma única célula formatada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formatação de linha

A formatação da linha atual é determinada por uma `RowFormat` objeto que é retornado pelo `DocumentBuilder.RowFormat` propriedade. O objeto encapsula informações sobre toda a formatação da linha de tabela.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
O serlow code exemplo mostra como criar uma tabela que contenha uma única célula e aplique a formatação da linha.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formatação de lista

Aspose.Words permite a criação fácil de listas aplicando a formatação da lista. DocumentBuilder fornece o `DocumentBuilder.ListFormat` propriedade que retorna uma `ListFormat` objeto. Este objeto tem vários métodos para iniciar e terminar uma lista e aumentar/diminuir o recuo.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Existem dois tipos gerais de listas em Microsoft Word: baladas e numeradas.

- Para iniciar uma lista, ligue [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Para iniciar uma lista numerada, ligue [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

A bala ou número e formatação são adicionados ao parágrafo atual e todos os outros parágrafos criados usando **DocumentBuilder** até [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) é chamado para parar a formatação da lista com marcadores.

Em documentos do Word, as listas podem consistir em até nove níveis. A formatação da lista para cada nível especifica o que a bala ou o número é usado, o recuo esquerdo, o espaço entre a bala e o texto etc.

- Não. Para aumentar o nível de lista do parágrafo atual por um nível, ligue [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Não. Para diminuir o nível de lista do parágrafo atual por um nível, ligue [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Os métodos mudam o nível de lista e aplicam as propriedades de formatação do novo nível.

{{% alert color="primary" %}}

Você também pode usar o [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) propriedade para obter ou definir o nível de lista para o parágrafo. Os níveis de lista são numerados de 0 a 8.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma lista multinível.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Configuração da página e formatação da seção

As propriedades de configuração e seção da página são encapsuladas no `PageSetup` objeto que é retornado pelo `DocumentBuilder.PageSetup` propriedade. O objeto contém todos os atributos de configuração de página de uma seção ( margem esquerda, margem inferior, tamanho de papel e assim por diante) como propriedades.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
O exemplo de código a seguir mostra como definir propriedades como tamanho da página e orientação para a seção atual.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Aplicando um estilo

Alguns objetos de formatação, como estilos de suporte Font ou §Format. Um único estilo integrado ou definido pelo usuário é representado por um `Style` objeto que contém as propriedades de estilo correspondentes, como nome, estilo de base, fonte e formatação de parágrafo do estilo, e assim por diante.

Além disso, **Style** objeto fornece [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) propriedade que retorna um identificador de estilo independente local representado por um **Style.StyleIdentifier** valor de enumeração. O ponto é que os nomes de estilos embutidos Microsoft Word são localizados para diferentes idiomas. Usando um identificador de estilo, você pode encontrar o estilo correto, independentemente do idioma do documento. Os valores de enumeração correspondem ao Microsoft Word estilos embutidos como Normal , Heading 1 , Heading 2 etc. Todos os estilos definidos pelo usuário são atribuídos ao **StyleIdentifier. Valor do utilizador**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
O exemplo de código a seguir mostra como aplicar um estilo de parágrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Fronteiras e Shading

As fronteiras são representadas pelo BorderCollection. Esta é uma coleção de objetos de fronteira que são acessados por índice ou por tipo de fronteira. O tipo de fronteira é representado pelo `BorderType` enumeração. Alguns valores da enumeração são aplicáveis a vários ou apenas um elemento de documento. Por exemplo, `BorderType.Bottom` é aplicável a uma célula de parágrafo ou tabela enquanto `BorderType.DiagonalDown` especifica a borda diagonal em uma célula de tabela apenas.

Tanto a coleção de borda como cada borda separada têm atributos semelhantes, como cor, estilo de linha, largura de linha, distância do texto e sombra opcional. Eles são representados por propriedades do mesmo nome. Você pode alcançar diferentes tipos de fronteira combinando valores de propriedade. Além disso, ambos **BorderCollection** e **Border** objetos permitem que você redefinir esses valores para o padrão chamando o [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) método. Note que quando as propriedades de borda são redefinidas para valores padrão, a borda é invisível.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
O [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) classe contém atributos de sombreamento para elementos de documentos. Você pode definir a textura de sombra desejada e as cores que são aplicadas ao fundo e primeiro plano do elemento.

A textura de sombreamento é definida com um [Linha de produção](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor de enumeração que permite a aplicação de vários padrões para o **Shading** objeto. Por exemplo, para definir uma cor de fundo para um elemento de documento, use o [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor e definir a cor de sombreamento do primeiro plano conforme apropriado.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
O exemplo abaixo mostra como aplicar fronteiras e sombrear a um parágrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words fornece duas propriedades `ParagraphFormat.SnapToGrid` e `Font.SnapToGrid` para obter e definir a propriedade parágrafo snap para grade

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Movendo o cursor

### Detectando a posição atual do cursor

Você pode obter onde o cursor do construtor está atualmente posicionado a qualquer momento. O [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) propriedade retorna o nó que está atualmente selecionado neste construtor. O nó é uma criança direta de um parágrafo. Quaisquer operações de inserção que você executar usando `DocumentBuilder` irá inserir antes do `DocumentBuilder.CurrentNode`. Quando o parágrafo atual estiver vazio ou o cursor estiver posicionado pouco antes do final do parágrafo, `DocumentBuilder.CurrentNode` retorna null.

Além disso, você pode usar o [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) propriedade, que recebe o parágrafo que está atualmente selecionado neste **DocumentBuilder**. O serlow code exemplo mostra como acessar o nó atual em um construtor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Mudando-se para qualquer nó (Paraígrafes e seus filhos)

Se você tiver um nó de objeto de documento, que é um parágrafo ou uma criança direta de um parágrafo, você pode apontar o cursor do construtor para este nó. Use o [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) método para executar isso.
O exemplo de código a seguir mostra como mover uma posição do cursor para um nó especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Mudar para o Documento Iniciar/End

Se você precisar mover para o início do documento, ligue [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Se você precisar mover para o final do documento, ligue [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Mudar para uma Seção

Se você estiver trabalhando com um documento que contém várias seções, você pode se mover para uma seção desejada usando [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Este método move o cursor para o início de uma seção especificada e aceita o índice da seção necessária. Quando o índice de seção é maior ou igual a 0, ele especifica um índice desde o início do documento com 0 sendo a primeira seção. Quando o índice de seção é inferior a 0, ele especifica um índice do final do documento com -1 sendo a última seção. O serlow code exemplo mostra como mover uma posição do cursor para a seção especificada. Você pode baixar o arquivo de modelo deste exemplo a partir de [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Movendo-se para um cabeçalho/Footer

Quando você precisa colocar alguns dados em um cabeçalho ou rodapé, você deve mover para lá primeiro usando [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). O método aceita um valor de enumeração HeaderFooterType que identifica o tipo de cabeçalho ou rodapé para onde o cursor deve ser movido.

Se você quiser criar cabeçalhos e rodapés que são diferentes para a primeira página, você precisa definir o [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) propriedade para **true**. Se você quiser criar cabeçalhos e rodapés que são diferentes para páginas pares e ímpares, você precisa definir [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) para **true**.

Se você precisa voltar para a história principal, use[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) para sair do cabeçalho ou rodapé. Abaixo exemplo cria cabeçalhos e rodapés em um documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Mudar para um Parágrafo

Uso[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) para mover o cursor para um parágrafo desejado na seção atual. Você deve passar dois parâmetros para este método: parágrafoIndex (o índice do parágrafo para mover para) e caracterIndex (o índice do caractere dentro do parágrafo).

A navegação é realizada dentro da história atual da seção atual. Ou seja, se você moveu o cursor para o cabeçalho principal da primeira seção, então o parágrafoIndex especifica o índice do parágrafo dentro daquele cabeçalho dessa seção.

Quando o parágrafoIndex é maior ou igual a 0, especifica um índice desde o início da seção com 0 sendo o primeiro parágrafo. Quando o parágrafoIndex é inferior a 0, ele especifica um índice a partir do final da seção com -1 sendo o último parágrafo. O índice de caracteres só pode ser especificado como 0 para se mover para o início do parágrafo ou -1 para se mover para o final do parágrafo. O exemplo de código a seguir mostra como mover uma posição do cursor para o parágrafo especificado. Você pode baixar o arquivo de modelo deste exemplo a partir de [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Mudar para uma célula de tabela

Uso [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) se você precisar mover o cursor para uma célula de tabela na seção atual. Este método aceita quatro parâmetros:

- tableIndex - o índice da tabela para se mover.
- rowIndex - o índice da linha na tabela.
- columnIndex - o índice da coluna na tabela.
- caracterIndex - o índice do caractere dentro da célula.

A navegação é realizada dentro da história atual da seção atual.

Para os parâmetros de índice, quando o índice é maior ou igual a 0, especifica um índice desde o início com 0 sendo o primeiro elemento. Quando o índice é inferior a 0, ele especifica um índice do final com -1 sendo o último elemento.

Além disso, note que o caracterIndex atualmente só pode especificar 0 para mover-se para o início da célula ou -1 para mover-se para o final da célula. O exemplo de código a seguir mostra como mover uma posição do cursor para a célula de tabela especificada. Você pode baixar o arquivo de modelo deste exemplo a partir de [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Mudar para um Bookmark

Os marcadores são usados frequentemente para marcar lugares específicos no documento onde novos elementos devem ser inseridos. Para se mover para um marcador, use [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Este método tem duas sobrecargas. O mais simples não aceita nada além do nome do marcador onde o cursor deve ser movido. O exemplo de código a seguir mostra como mover uma posição do cursor para um marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Esta sobrecarga move o cursor para uma posição logo após o início do marcador com o nome especificado. Outra sobrecarga [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) move o cursor para um marcador com maior precisão. Aceita dois parâmetros adicionais booleanos:

- isStart determina se mover o cursor para o início ou para o final do marcador.
- isAfter determina se mover o cursor para ser após a posição inicial ou final do marcador, ou para mover o cursor para ser antes do início do marcador ou posição final.

O exemplo de código a seguir mostra como mover uma posição do cursor para logo após a extremidade do marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Inserir novo texto desta forma não substitui o texto existente do marcador. Note que alguns marcadores no documento são atribuídos a campos de formulário. Movendo-se para tal bookmark e inserir texto lá insere o texto no código de campo do formulário. Embora isso não invalide o campo do formulário, o texto inserido não será visível porque se torna parte do código de campo.

### Mudar para um `Merge` Campo

Às vezes você pode precisar executar um "manual" mail merge usando `DocumentBuilder` ou preencher um campo de mesclagem de uma forma especial dentro de um mail merge manipulador de eventos. É quando [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) Pode ser útil. O método aceita o nome do campo de mesclagem. Ele move o cursor para uma posição logo além do campo de mesclagem especificado e remove o campo de mesclagem. O exemplo de código a seguir mostra como mover o cursor para uma posição além do campo de mesclagem especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Como converter entre unidades de medição

A maioria das propriedades do objeto fornecidas no Aspose.Words API que representa algumas medidas (largura/altura, margens e várias distâncias) aceitam valores em pontos (1 polegada equivale a 72 pontos). Às vezes isso não é conveniente, então há o `ConvertUtil` classe que fornece funções auxiliares para converter entre várias unidades de medição. Permite converter polegadas em pontos, pontos em polegadas, pixels em pontos e pontos em pixels. Quando os pixels são convertidos em pontos e vice-versa, ele pode ser executado em 96 dpi (pontos por polegada) resoluções ou na resolução de dpi especificada.

**ConvertUtil** é muito útil ao definir diferentes propriedades de página porque, por exemplo, polegadas são unidades de medição mais habituais do que pontos. O exemplo a seguir demonstra como configurar as propriedades da página em polegadas.

O exemplo de código a seguir mostra como especificar propriedades de página em polegadas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
