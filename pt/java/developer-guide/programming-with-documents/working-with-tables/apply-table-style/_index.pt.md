---
title: Trabalhando com estilos de mesa em Java
second_title: Aspose.Words para Java
articleTitle: Aplicar estilo de tabela
linktitle: Aplicar estilo de tabela
description: "Formatação de tabela avançada Java. Criar um estilo de mesa usando Java. Introdução à formatação avançada da tabela, estilos de tabela usando Java."
type: docs
weight: 80
url: /pt/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Um estilo de tabela define um conjunto de formatação que pode ser facilmente aplicado a uma tabela. Formatação como fronteiras, sombreamento, alinhamento e fonte pode ser definida em um estilo de tabela e aplicada a muitas tabelas para uma aparência consistente.

Aspose.Words suportes aplicar um estilo de mesa a uma mesa e também ler propriedades de qualquer estilo de mesa. Os estilos de tabela são preservados durante o carregamento e a poupança das seguintes formas:

- Estilos de tabela em formatos DOCX e WordML são preservados ao carregar e salvar a estes formatos
- Estilos de tabela são preservados ao carregar e salvar no formato DOC (mas não a qualquer outro formato)
- Não. Ao exportar para outros formatos, renderização ou impressão, os estilos de tabela são expandidos para a formatação direta na tabela, de modo que toda formatação é preservada

## Criar um estilo de tabela

O usuário pode criar um novo estilo e adicioná-lo à coleção de estilo. O [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) método é usado para criar um novo estilo de tabela.

O exemplo a seguir mostra como criar um novo estilo de tabela definido pelo usuário:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Copie um estilo de tabela existente

Se necessário, você pode copiar um estilo de tabela que já existe em um determinado documento em sua coleção de estilo usando o `AddCopy` método.

É importante saber que com esta cópia, os estilos vinculados também são copiados.

O exemplo de código a seguir mostra como importar um estilo de um documento para outro documento:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Aplicar um estilo de tabela existente

Aspose.Words fornece um [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) herdado do [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) classe. **TableStyle** facilita o usuário a aplicar diferentes opções de estilo como shading, padding, indentation, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) e [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), etc.

Além disso, Aspose.Words fornece o [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) classe e algumas propriedades do `Table` classe para especificar qual estilo de tabela vamos trabalhar com: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), e [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words também fornece [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) classe que representa formatação especial aplicada a alguma área de uma tabela com um estilo de tabela atribuído, e o [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) que representa uma coleção de **ConditionalStyle** objetos. Esta coleção contém um conjunto permanente de itens que representam um item para cada valor do [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) tipo de enumeração. O **ConditionalStyleType** enumeração define todas as áreas de tabela possíveis para as quais a formatação condicional pode ser definida em um estilo de tabela.

Neste caso, a formatação condicional pode ser definida para toda a área de tabela possível definida sob o tipo de enumeração ConditionalStyleType.

O exemplo de código a seguir mostra como definir formatação condicional para a linha de cabeçalho da tabela:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Você também pode escolher as peças de tabela para aplicar estilos, como primeira coluna, última coluna, linhas de banda. Eles estão listados no [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) enumeração e são aplicados através do [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) propriedade. O **TableStyleOptions** enumeração permite uma combinação bitwise destes recursos.

O exemplo de código a seguir mostra como criar uma nova tabela com um estilo de tabela aplicado:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

As imagens abaixo mostram uma representação do **Table Styles** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Tomar formatação do estilo da tabela e aplicá-lo como formatação direta

Aspose.Words também fornece o [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) método para tomar a formatação encontrada em um estilo de tabela e expande-a para as linhas e células da tabela como formatação direta. Tente combinar a formatação com estilo de mesa e estilo de célula.

{{% alert color="primary" %}}

Este método não substituirá qualquer outra formatação já aplicada à tabela através de uma linha ou formato de célula.

{{% /alert %}}

O exemplo de código a seguir mostra como expandir a formatação de estilos em linhas de tabela e células como formatação direta:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
