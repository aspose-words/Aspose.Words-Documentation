---
title: Utilizar `DocumentBuilder` para modificar um documento
second_title: Aspose.Words para Java
articleTitle: Utilizar `DocumentBuilder` para modificar um documento
linktitle: Utilizar `DocumentBuilder` para modificar um documento
type: docs
description: "Use o construtor de documentos para modificar facilmente um documento em Java."
weight: 20
url: /pt/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Especificação Da Formatação

### Formatação Da Fonte

A formatação da fonte atual é representada por um objeto `Font` retornado pela propriedade `DocumentBuilder.Font`. A classe `Font` contém uma grande variedade de propriedades de fonte possíveis em Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
O exemplo de código a seguir mostra como definir a formatação da fonte.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formatação Da Célula

A formatação de células é utilizada durante a construção de uma tabela. É representado por um objeto `CellFormat` retornado pela propriedade `DocumentBuilder.CellFormat`. CellFormat encapsula várias propriedades da célula da tabela, como largura ou alinhamento vertical.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
O exemplo de código a seguir mostra como criar uma tabela que contém uma única célula formatada.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formatação De Linhas

A formatação da linha atual é determinada por um objeto `RowFormat` que é retornado pela propriedade `DocumentBuilder.RowFormat`. O objeto encapsula informações sobre toda a formatação da linha da tabela.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
O exemplo below code mostra como criar uma tabela que contém uma única célula e aplicar a formatação de linha.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formatação Da Lista

Aspose.Words permite a fácil criação de listas através da aplicação de formatação de listas. DocumentBuilder fornece a propriedade `DocumentBuilder.ListFormat` que retorna um objeto `ListFormat`. Este objecto tem vários métodos para iniciar e terminar uma lista e para aumentar/diminuir o travessão.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Existem dois tipos gerais de listas em Microsoft Word: com marcadores e numeradas.

- Para iniciar uma lista com marcadores, chame [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Para iniciar uma lista numerada, ligue para [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

O marcador ou o número e a formatação são adicionados ao parágrafo atual e todos os parágrafos adicionais criados usando **DocumentBuilder** até [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) serem chamados para interromper a formatação da lista com marcadores.

Nos documentos do Word, as listas podem consistir em até nove níveis. A formatação da lista para cada nível especifica qual marcador ou número é usado, recuo à esquerda, espaço entre o marcador e o texto, etc.

- Para aumentar o nível de lista do parágrafo atual em um nível, chame [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Para diminuir o nível de lista do parágrafo atual em um nível, chame [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

Os métodos alteram o nível da lista e aplicam as propriedades de formatação do novo nível.

{{% alert color="primary" %}}

Você também pode usar a propriedade [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) para obter ou definir o nível da lista para o parágrafo. Os níveis da lista são numerados de 0 a 8.

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma lista de vários níveis.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Configuração da página e formatação da secção

As propriedades Page setup e section são encapsuladas no objeto `PageSetup` que é retornado pela propriedade `DocumentBuilder.PageSetup`. O objeto contém todos os atributos de configuração de página de uma seção (margem esquerda, margem inferior, tamanho do papel, etc.) como propriedades.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
O exemplo de código a seguir mostra como definir propriedades como tamanho da página e orientação para a seção atual.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Aplicando um estilo

Alguns objetos de formatação, como Font ou ParagraphFormat, suportam estilos. Um único estilo interno ou definido pelo Usuário é representado por um objeto `Style` que contém as propriedades de estilo correspondentes, como nome, Estilo base, fonte e formatação de parágrafo do estilo, e assim por diante.

Além disso, um objeto **Style** fornece a propriedade [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) que retorna um identificador de estilo independente de localidade representado por um valor de enumeração **Style.StyleIdentifier**. A questão é que os nomes dos estilos incorporados em Microsoft Word estão localizados para diferentes idiomas. Usando um identificador de estilo, você pode encontrar o estilo correto, independentemente do idioma do documento. Os valores de enumeração correspondem aos estilos internos Microsoft Word, Como Normal, Heading 1, Heading 2 etc. Todos os estilos definidos pelo Utilizador são atribuídos a **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
O exemplo de código a seguir mostra como aplicar um estilo de parágrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Fronteiras e sombreamento

As fronteiras são representadas pelo BorderCollection. Esta é uma coleção de objetos de borda que são acessados por índice ou por tipo de borda. O tipo de borda é representado pela enumeração `BorderType`. Alguns valores da enumeração são aplicáveis a vários ou apenas a um elemento do documento. Por exemplo, `BorderType.Bottom` é aplicável a um parágrafo ou célula de tabela, enquanto `BorderType.DiagonalDown` especifica a borda diagonal apenas em uma célula de tabela.

Tanto a coleção de bordas quanto cada borda separada têm atributos semelhantes, como cor, estilo de linha, largura da linha, distância do texto e sombra opcional. Eles são representados por propriedades com o mesmo nome. Você pode obter diferentes tipos de borda combinando valores de propriedade. Além disso, os objetos **BorderCollection** e **Border** permitem redefinir esses valores para o padrão chamando o método [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Observe que quando as propriedades da borda são redefinidas para os valores padrão, a borda fica invisível.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
A classe [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) contém atributos de sombreamento para elementos de Documento. Você pode definir a textura de sombreamento desejada e as cores aplicadas ao plano de fundo e ao primeiro plano do elemento.

A textura de sombreamento é definida com um [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor de enumeração que permite a aplicação de vários padrões ao objecto **Shading**. Por exemplo, para definir uma cor de fundo para um elemento de Documento, use [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valor e defina a cor de sombreamento do primeiro plano conforme apropriado.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
O exemplo abaixo mostra como aplicar bordas e sombreamento a um parágrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Ajustar à grelha

Aspose.Words fornece duas propriedades `ParagraphFormat.SnapToGrid` e `Font.SnapToGrid` para obter e definir a propriedade do parágrafo snap à grade.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Mover o Cursor

### Detectando a posição atual do Cursor

Você pode obter onde o cursor do construtor está atualmente posicionado a qualquer momento. A propriedade [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) retorna o nó que está atualmente selecionado neste construtor. O nó é um filho direto de um parágrafo. Quaisquer operações de inserção que você executar usando `DocumentBuilder` serão inseridas antes do `DocumentBuilder.CurrentNode`. Quando o parágrafo atual está vazio ou o cursor é posicionado imediatamente antes do final do parágrafo, `DocumentBuilder.CurrentNode` retorna null.

Além disso, você pode usar a propriedade [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), que obtém o parágrafo que está atualmente selecionado neste **DocumentBuilder**. O exemplo below code mostra como aceder ao nó actual num construtor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Movendo-se para qualquer nó (parágrafos e seus filhos)

Se você tiver um nó de objeto de documento, que é um parágrafo ou um filho direto de um parágrafo, poderá apontar o cursor do construtor para esse nó. Use o método [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) para fazer isso.
O exemplo de código a seguir mostra como mover uma posição do cursor para um nó especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Mover para o início/fim do documento

Se você precisar passar para o início do documento, ligue para [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Se você precisar passar para o final do documento, ligue para [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Mudar para uma secção

Se estiver a trabalhar com um documento que contém várias secções, pode mover-se para uma secção desejada utilizando [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Este método move o cursor para o início de uma secção especificada e aceita o índice da secção requerida. Quando o índice de secção é maior ou igual a 0, especifica um índice desde o início do documento, sendo 0 a primeira secção. Quando o índice de secção é inferior a 0, especifica um índice do final do documento com -1 sendo a última secção. O exemplo below code mostra como mover uma posição do cursor para a secção especificada. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Mover para um cabeçalho / rodapé

Quando você precisar colocar alguns dados em um cabeçalho ou rodapé, você deve mover para lá primeiro usando [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).O método aceita um valor de enumeração HeaderFooterType que identifica o tipo de cabeçalho ou rodapé para onde o cursor deve ser movido.

Se você deseja criar cabeçalhos e rodapés diferentes para a primeira página, é necessário definir a propriedade [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) como **true**. Se você deseja criar cabeçalhos e rodapés diferentes para páginas pares e ímpares, é necessário definir [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) como **true**.

Se você precisar voltar à história principal, use[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) para sair do cabeçalho ou rodapé. O exemplo abaixo cria cabeçalhos e rodapés em um documento usando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Passar para um parágrafo

Use[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) para mover o cursor para um parágrafo desejado na seção atual. Você deve passar dois parâmetros para este método: paragraphIndex (o índice do parágrafo para o qual mover) e characterIndex (o índice do caractere dentro do parágrafo).

A navegação é realizada dentro da história atual da seção atual. Ou seja, se você moveu o cursor para o cabeçalho principal da primeira seção, paragraphIndex especifica o índice do parágrafo dentro desse cabeçalho dessa seção.

Quando paragraphIndex é maior ou igual a 0, ele especifica um índice do início da seção com 0 sendo o primeiro parágrafo. Quando paragraphIndex é menor que 0, especifica um índice do final da seção Com -1 sendo o último parágrafo. No momento, o índice de caracteres só pode ser especificado como 0 para mover para o início do parágrafo ou -1 para mover para o final do parágrafo. O exemplo de código a seguir mostra como mover uma posição do cursor para o parágrafo especificado. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Mover para uma célula da tabela

Use [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) se precisar mover o cursor para uma célula da tabela na seção atual. Este método Aceita quatro parâmetros:

- tableIndex - o índice da tabela para a qual mover.
- rowIndex - o índice da linha na tabela.
- columnIndex - o índice da coluna na tabela.
- characterIndex - o índice do caractere dentro da célula.

A navegação é realizada dentro da história atual da seção atual.

Para os parâmetros de índice, quando o índice é maior ou igual a 0, ele especifica um índice desde o início com 0 sendo o primeiro elemento. Quando o índice é menor que 0, ele especifica um índice do final com -1 sendo o último elemento.

Além disso, observe que characterIndex Atualmente só pode especificar 0 para mover para o início da célula ou -1 para mover para o final da célula. O exemplo de código a seguir mostra como mover uma posição do cursor para a célula da tabela especificada. Você pode baixar o arquivo de modelo deste exemplo em [aqui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Mudar para um marcador

Os marcadores são frequentemente utilizados para marcar locais específicos no documento onde devem ser inseridos novos elementos. Para mover para um marcador, utilize [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Este método tem duas sobrecargas. O mais simples aceita apenas o nome do marcador para onde o cursor deve ser movido. O exemplo de código a seguir mostra como mover uma posição do cursor para um marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Esta sobrecarga move o cursor para uma posição logo após o início do marcador com o nome especificado. Outra sobrecarga [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) move o cursor para um marcador com maior precisão. Aceita dois parâmetros booleanos adicionais:

- isStart determina se deve mover o cursor para o início ou para o fim do marcador.
- isAfter determina se deve mover o cursor para estar após a posição inicial ou final do marcador, ou se deve mover o cursor para estar antes da posição inicial ou final do marcador.

O exemplo de código a seguir mostra como mover uma posição do cursor para logo após o fim do marcador.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Inserir um novo texto desta forma não substitui o texto existente do marcador. Observe que alguns marcadores no documento são atribuídos a campos de formulário. Mover para esse marcador e inserir texto insere o texto no código do campo do formulário. Embora isso não invalide o campo do formulário, o texto inserido não ficará visível porque se torna parte do Código do campo.

### Mudar para um campo `Merge`

Às vezes, você pode precisar executar um "manual" Mail Merge Usando `DocumentBuilder` ou preencher um campo de mesclagem de uma maneira especial dentro de um manipulador de eventos Mail Merge. É quando [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) pode ser útil. O método aceita o nome do campo de mesclagem. Ele move o cursor para uma posição um pouco além do campo de mesclagem especificado e remove o campo de mesclagem. O exemplo de código a seguir mostra como mover o cursor para uma posição logo além do campo de mesclagem especificado.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Como converter entre unidades de medida

A maioria das propriedades do objeto fornecidas no Aspose.Words API que representa algumas medidas (largura/altura, margens e várias distâncias) aceitam valores em pontos (1 polegada é igual a 72 pontos). Às vezes, isso não é conveniente, portanto, existe a classe `ConvertUtil` que fornece funções auxiliares para converter entre várias unidades de medida. Permite converter polegadas em pontos, pontos em polegadas, pixels em pontos e pontos em pixels. Quando os pixels são convertidos em pontos e vice-versa, podem ser executados em resoluções de 96 dpi (pontos por polegada) ou na resolução de dpi especificada.

**ConvertUtil**

O exemplo de código a seguir mostra como especificar as propriedades da página em polegadas.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
