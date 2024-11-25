---
title: Trabalhando com estilos de tabela em Java
second_title: Aspose.Words para Java
articleTitle: Aplicar Estilo De Tabela
linktitle: Aplicar Estilo De Tabela
description: "Formatação avançada da tabela Java. Crie um estilo de tabela usando Java. Introdução à formatação avançada de tabelas, estilos de tabelas utilizando Java."
type: docs
weight: 80
url: /pt/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Um estilo de tabela define um conjunto de formatação que pode ser facilmente aplicado a uma tabela. A formatação, como bordas, sombreamento, alinhamento e fonte, pode ser definida em um estilo de tabela e aplicada a muitas tabelas para uma aparência consistente.

Aspose.Words suporta a aplicação de um estilo de tabela a uma tabela e também a leitura de propriedades de qualquer estilo de tabela. Os estilos de tabela são preservados durante o carregamento e o salvamento das seguintes maneiras:

- Os estilos de tabela nos formatos DOCX e WordML são preservados ao carregar e salvar nesses formatos
- Os estilos de tabela são preservados ao carregar e salvar no formato DOC (mas não em qualquer outro formato)
- Ao exportar para outros formatos, renderização ou impressão, os estilos de tabela são expandidos para formatação direta na tabela, para que toda a formatação seja preservada

## Criar um estilo de tabela

O usuário pode criar um novo estilo e adicioná-lo à coleção de estilos. O método [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) é usado para criar um novo estilo de tabela.

O exemplo de código a seguir mostra como criar um novo estilo de tabela definido pelo Usuário:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Copiar um estilo de tabela existente

Se necessário, você pode copiar um estilo de tabela que já existe em um determinado documento para sua coleção de estilos usando o método `AddCopy`.

É importante saber que, com essa cópia, os estilos vinculados também são copiados.

O exemplo de código a seguir mostra como importar um estilo de um documento para outro documento:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Aplicar um estilo de tabela existente

Aspose.Words fornece um [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) herdado da classe [Style](https://reference.aspose.com/words/java/com.aspose.words/style/). **TableStyle** facilita o usuário a aplicar diferentes opções de estilo, como sombreamento, preenchimento, recuo, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) e [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), etc.

Além disso, Aspose.Words fornece a classe [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) e algumas propriedades da classe `Table` para especificar com qual estilo de tabela trabalharemos: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), e [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words também fornece [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) classe que representa formatação especial aplicada a alguma área de uma tabela com um estilo de tabela atribuído e [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) que representa uma coleção de **ConditionalStyle** objetos. Esta coleção contém um conjunto permanente de itens que representam um item para cada valor do tipo de enumeração [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/). A enumeração **ConditionalStyleType** define todas as áreas de tabela possíveis para as quais a formatação condicional pode ser definida em um estilo de tabela.

Neste caso, a formatação condicional pode ser definida para todas as áreas de tabela possíveis definidas sob o tipo de enumeração ConditionalStyleType.

O exemplo de código a seguir mostra como definir a formatação condicional para a linha de cabeçalho da tabela:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Você também pode escolher a quais partes da tabela aplicar estilos, como primeira coluna, última coluna, linhas em faixas. Eles são listados na enumeração [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) e são aplicados através da propriedade [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions). A enumeração **TableStyleOptions** permite uma combinação bit a bit dessas características.

O exemplo de código a seguir mostra como criar uma nova tabela com um estilo de tabela aplicado:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

As imagens abaixo mostram uma representação do **Table Styles** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Pegue a formatação do estilo da tabela e aplique-a como formatação direta

Aspose.Words também fornece o método [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) para obter a formatação encontrada em um estilo de tabela e expandi-la para as linhas e células da tabela como formatação direta. Tente combinar formatação com estilo de tabela e estilo de célula.

{{% alert color="primary" %}}

Este método não substituirá qualquer outra formatação já aplicada à tabela através de um formato de linha ou célula.

{{% /alert %}}

O exemplo de código a seguir mostra como expandir a formatação de estilos para linhas e células da tabela como formatação direta:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
