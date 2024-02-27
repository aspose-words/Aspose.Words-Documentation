---
title: Alterar estilo de tabela em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Aplicar estilo de tabela
linktitle: Aplicar estilo de tabela
description: "Formatação avançada de tabela C#. Crie um estilo de tabela usando Python. Aplique o estilo de tabela Python."
type: docs
weight: 80
url: /pt/python-net/working-with-tablestyle/
---

Um estilo de tabela define um conjunto de formatação que pode ser facilmente aplicado a uma tabela. Formatações como bordas, sombreamento, alinhamento e fonte podem ser definidas em um estilo de tabela e aplicadas a muitas tabelas para obter uma aparência consistente.

Aspose.Words suporta a aplicação de um estilo de tabela a uma tabela e também a leitura de propriedades de qualquer estilo de tabela. Os estilos de tabela são preservados durante o carregamento e salvamento das seguintes maneiras:

- Os estilos de tabela nos formatos DOCX e WordML são preservados ao carregar e salvar nesses formatos
- Os estilos de tabela são preservados ao carregar e salvar no formato DOC (mas não em qualquer outro formato)
- Ao exportar para outros formatos, renderizar ou imprimir, os estilos da tabela são expandidos para formatação direta na tabela, portanto toda a formatação é preservada

## Crie um estilo de tabela

O usuário pode criar um novo estilo e adicioná-lo à coleção de estilos. O método [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) é usado para criar um novo estilo de tabela.

O exemplo de código a seguir mostra como criar um novo estilo de tabela definido pelo usuário:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Copiar um estilo de tabela existente

Se necessário, você pode copiar um estilo de tabela que já existe em um determinado documento para sua coleção de estilos usando o método `AddCopy`.

É importante saber que com esta cópia os estilos vinculados também são copiados.

O exemplo de código a seguir mostra como importar um estilo de um documento para outro:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Aplicar um estilo de tabela existente

Aspose.Words fornece um [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) herdado da classe [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). **TableStyle** facilita ao usuário a aplicação de diferentes opções de estilo, como sombreamento, preenchimento, recuo, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) e [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), etc.

Além disso, Aspose.Words fornece a classe [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) e algumas propriedades da classe `Table` para especificar com qual estilo de tabela trabalharemos: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) e [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words também fornece a classe [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) que representa a formatação especial aplicada a alguma área de uma tabela com um estilo de tabela atribuído, e o [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) que representa uma coleção de objetos **ConditionalStyle**. Esta coleção contém um conjunto permanente de itens que representam um item para cada valor do tipo de enumeração [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/). A enumeração **ConditionalStyleType** define todas as áreas possíveis da tabela para as quais a formatação condicional pode ser definida em um estilo de tabela.

Nesse caso, a formatação condicional pode ser definida para todas as áreas de tabela possíveis definidas no tipo de enumeração ConditionalStyleType.

O exemplo de código a seguir mostra como definir a formatação condicional para a linha de cabeçalho da tabela:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Você também pode escolher em quais partes da tabela aplicar estilos, como primeira coluna, última coluna, linhas com faixas. Eles estão listados na enumeração [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) e são aplicados por meio da propriedade [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/). A enumeração **TableStyleOptions** permite uma combinação bit a bit desses recursos.

O exemplo de código a seguir mostra como criar uma nova tabela com um estilo de tabela aplicado:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

As imagens abaixo mostram uma representação do **Table Styles** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Trabalhando com estilos de tabela

Um estilo de tabela define um conjunto de formatação que pode ser facilmente aplicado a uma tabela. Formatações como bordas, sombreamento, alinhamento e fonte podem ser definidas em um estilo de tabela e aplicadas a muitas tabelas para obter uma aparência consistente.

Aspose.Words suporta a aplicação de um estilo de tabela a uma tabela e também a leitura de propriedades de qualquer estilo de tabela. Os estilos de tabela são preservados durante o carregamento e salvamento das seguintes maneiras:

- Os estilos de tabela nos formatos DOCX e WordML são preservados ao carregar e salvar nesses formatos.
- Os estilos de tabela são preservados ao carregar e salvar no formato DOC (mas não em qualquer outro formato).
- Ao exportar para outros formatos, renderizar ou imprimir, os estilos de tabela são expandidos para formatação direta na tabela para que toda a formatação seja preservada.

Atualmente, não é possível criar novos estilos de tabela. Você só pode aplicar estilos de tabela integrados ou estilos de tabela personalizados que já existem no documento a uma tabela

## Pegue a formatação do estilo de tabela e aplique-a como formatação direta

Aspose.Words também fornece o método [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) para pegar a formatação encontrada em um estilo de tabela e expandi-la nas linhas e células da tabela como formatação direta. Tente combinar a formatação com o estilo da tabela e o estilo da célula.

{{% alert color="primary" %}}

Este método não substituirá nenhuma outra formatação já aplicada à tabela por meio de um formato de linha ou célula.

{{% /alert %}}

O exemplo de código a seguir mostra como expandir a formatação de estilos para linhas e células da tabela como formatação direta:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}