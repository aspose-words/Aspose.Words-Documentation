---
title: Alterar o estilo da tabela em documentos do Word
second_title: Aspose.Words para C++
articleTitle: Aplicar Estilo De Tabela
linktitle: Aplicar Estilo De Tabela
description: "Formatação avançada de tabela C++. Crie um estilo de tabela usando C++. Aplique o estilo de tabela C++."
type: docs
weight: 80
url: /pt/cpp/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Um estilo de tabela define um conjunto de formatação que pode ser facilmente aplicado a uma tabela. A formatação, como bordas, sombreamento, alinhamento e fonte, pode ser definida em um estilo de tabela e aplicada a muitas tabelas para uma aparência consistente.

Aspose.Words suporta a aplicação de um estilo de tabela a uma tabela e também a leitura de propriedades de qualquer estilo de tabela. Os estilos de tabela são preservados durante o carregamento e o salvamento das seguintes maneiras:

- Os estilos de tabela nos formatos DOCX e WordML são preservados ao carregar e salvar nesses formatos
- Os estilos de tabela são preservados ao carregar e salvar no formato DOC (mas não em qualquer outro formato)
- Ao exportar para outros formatos, renderização ou impressão, os estilos de tabela são expandidos para formatação direta na tabela, para que toda a formatação seja preservada

## Criar um estilo de tabela

O usuário pode criar um novo estilo e adicioná-lo à coleção de estilos. O método [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) é usado para criar um novo estilo de tabela.

O exemplo de código a seguir mostra como criar um novo estilo de tabela definido pelo Usuário:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Copiar um estilo de tabela existente

Se necessário, você pode copiar um estilo de tabela que já existe em um determinado documento para sua coleção de estilos usando o método `AddCopy`.

É importante saber que, com essa cópia, os estilos vinculados também são copiados.

O exemplo de código a seguir mostra como importar um estilo de um documento para outro documento:

EXAMPLE

## Aplicar um estilo de tabela existente

Aspose.Words fornece um [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) herdado da classe [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** facilita o usuário a aplicar diferentes opções de estilo, como sombreamento, preenchimento, recuo, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) e [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), etc.

Além disso, Aspose.Words fornece a classe [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) e algumas propriedades da classe `Table` para especificar com qual estilo de tabela trabalharemos: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), e [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words também fornece [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) classe que representa formatação especial aplicada a alguma área de uma tabela com um estilo de tabela atribuído e [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) que representa uma coleção de **ConditionalStyle** objetos. Esta coleção contém um conjunto permanente de itens que representam um item para cada valor do tipo de enumeração [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). A enumeração **ConditionalStyleType** define todas as áreas de tabela possíveis para as quais a formatação condicional pode ser definida em um estilo de tabela.

Neste caso, a formatação condicional pode ser definida para todas as áreas de tabela possíveis definidas sob o tipo de enumeração ConditionalStyleType.

O exemplo de código a seguir mostra como definir a formatação condicional para a linha de cabeçalho da tabela:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Você também pode escolher a quais partes da tabela aplicar estilos, como primeira coluna, última coluna, linhas em faixas. Eles são listados na enumeração [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) e são aplicados através da propriedade [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). A enumeração **TableStyleOptions** permite uma combinação bit a bit dessas características.

O exemplo de código a seguir mostra como criar uma nova tabela com um estilo de tabela aplicado:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

As imagens abaixo mostram uma representação do **Table Styles** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Pegue a formatação do estilo da tabela e aplique-a como formatação direta

Aspose.Words também fornece o método [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) para obter a formatação encontrada em um estilo de tabela e expandi-la para as linhas e células da tabela como formatação direta. Tente combinar formatação com estilo de tabela e estilo de célula.

{{% alert color="primary" %}}

Este método não substituirá qualquer outra formatação já aplicada à tabela através de um formato de linha ou célula.

{{% /alert %}}

O exemplo de código a seguir mostra como expandir a formatação de estilos para linhas e células da tabela como formatação direta:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}
