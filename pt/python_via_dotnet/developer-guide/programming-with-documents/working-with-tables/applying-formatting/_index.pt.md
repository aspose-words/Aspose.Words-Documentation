---
title: Formatação de tabela em Python
second_title: Aspose.Words para Python via .NET
articleTitle: Aplicar formatação
linktitle: Aplicar formatação
description: "Formatação de tabela em detalhes usando Python. Use Python para formatar todas as partes da tabela."
type: docs
weight: 70
url: /pt/python-net/applying-formatting/
---

Cada elemento de uma tabela pode ser aplicado com formatação diferente. Por exemplo, a formatação da tabela será aplicada a toda a tabela, a formatação de linhas apenas a linhas específicas e a formatação de células apenas a determinadas células.

Aspose.Words fornece um API rico para recuperar e aplicar formatação a uma tabela. Você pode usar os nós [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) e [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) para definir a formatação.

Neste artigo, falaremos sobre como aplicar formatação a diferentes nós de tabela e quais configurações de formatação de tabela o Aspose.Words suporta.

## Aplicar formatação a diferentes nós

Nesta seção, veremos como aplicar a formatação a vários nós da tabela.

### Formatação em nível de tabela

Para aplicar formatação a uma tabela, você pode usar as propriedades disponíveis no nó **Table** correspondente usando as classes [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) e [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Observe que a tabela deve ter pelo menos uma linha antes que as propriedades da tabela possam ser aplicadas. Isso significa que ao construir uma tabela com o [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), essa formatação deve ser feita após a primeira chamada ao [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default), ou após a adição da primeira linha à tabela, ou quando os nós forem inseridos diretamente no DOM.

{{% /alert %}}

As imagens abaixo mostram uma representação dos recursos de formatação **Table** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

O exemplo de código a seguir mostra como aplicar uma borda de contorno a uma tabela:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como construir uma tabela com todas as bordas habilitadas (grade):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatação em nível de linha

A formatação **Nível de linha** pode ser controlada usando as classes [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/) e [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Observe que um **Row** só pode ser um nó filho de um **Table**. Ao mesmo tempo, deve haver pelo menos um **Cell** no **Row** para que a formatação possa ser aplicada a ele.

{{% /alert %}}

As imagens abaixo mostram uma representação dos recursos de formatação **Row** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


O exemplo de código a seguir mostra como modificar a formatação da linha da tabela:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Formatação em nível de célula

A formatação em nível de célula é controlada pelas classes [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) e [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Observe que um **Cell** só pode ser um nó filho de um **Row**. Ao mesmo tempo, deve haver pelo menos um [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) no **Cell** para que a formatação possa ser aplicada a ele.

Além do **Paragraph**, você também pode inserir um **Table** em um **Cell**.

{{% /alert %}}

As imagens abaixo mostram uma representação dos recursos de formatação **Cell** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


O exemplo de código a seguir mostra como modificar a formatação de uma célula da tabela:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

O exemplo de código a seguir mostra como definir a quantidade de espaço (em pontos) a ser adicionado à esquerda/superior/direita/inferior do conteúdo da célula:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Especifique as alturas das linhas

A maneira mais simples de definir a altura da linha é usar **DocumentBuilder**. Usando as propriedades **RowFormat** apropriadas, você pode definir a configuração de altura padrão ou aplicar uma altura diferente para cada linha da tabela.

No Aspose.Words, a altura da linha da tabela é controlada por:

- a propriedade de altura da linha – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- a propriedade da regra de altura para a linha fornecida – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

Ao mesmo tempo, uma altura diferente pode ser definida para cada linha – isso permite controlar amplamente as configurações da mesa.

{{% alert color="primary" %}}

As opções de regras para especificar a altura de um objeto podem ser definidas usando a enumeração [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/).

{{% /alert %}}

O exemplo de código a seguir mostra como criar uma tabela que contém uma única célula e aplicar formatação de linha:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Especificando larguras de tabelas e células

Uma tabela em um documento Microsoft Word oferece várias maneiras diferentes de redimensionar a tabela e células individuais. Estas propriedades permitem um controle considerável sobre a aparência e o comportamento da tabela, de forma que o Aspose.Words suporte o comportamento das tabelas, como no Microsoft Word.

É importante saber que os elementos da tabela apresentam diversas propriedades diferentes que podem afetar o cálculo da largura da tabela geral, bem como das células individuais:

- Largura preferida na mesa
- Largura preferida em células individuais
- Permitindo ajuste automático na mesa

Este artigo detalha como funcionam as diversas propriedades de cálculo da largura da tabela e como obter controle total sobre o cálculo da largura da tabela. Isso é
especialmente útil saber nos casos em que o layout da tabela não aparece conforme o esperado.

{{% alert color="primary" %}}

Na maioria dos casos, a célula preferida é recomendada em vez da largura da tabela. A largura de célula preferida está mais alinhada com a especificação do formato DOCX, bem como com o modelo Aspose.Words.

A largura da célula é na verdade um valor calculado para o formato DOCX. A largura real da célula pode depender de muitas coisas. Por exemplo, alterar as margens da página ou a largura preferida da tabela pode afetar a largura real da célula.

A largura preferencial da célula é uma propriedade da célula armazenada no documento. Não depende de nada e não muda quando você altera a tabela ou outras propriedades da célula.

{{% /alert %}}

{{% alert color="primary" %}}

Todas as propriedades e métodos descritos neste artigo estão relacionados ao funcionamento das tabelas em Microsoft Word. Portanto, na maioria dos casos, se você estiver construindo sua tabela programaticamente, mas estiver achando difícil criar a tabela desejada, você pode tentar primeiro criá-la visualmente em Microsoft Word e depois simplesmente copiar os valores de formatação em seu aplicativo.

{{% /alert %}}

### Como usar a largura preferida

A largura desejada de uma tabela ou de células individuais é definida por meio da propriedade de largura preferencial, que é o tamanho que um elemento se esforça para caber. Ou seja, a largura preferencial pode ser especificada para toda a tabela ou para células individuais. Em algumas situações pode não ser possível ajustar exatamente esta largura, mas a largura real estará próxima deste valor na maioria dos casos.

O tipo e valor de largura preferencial apropriado são definidos usando os métodos da classe [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/):

- o método [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) para especificar auto ou "sem largura preferencial"
- o método [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) para especificar uma largura percentual
- o método [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) para especificar a largura em pontos

As imagens abaixo mostram uma representação dos *recursos de configuração de largura preferidos* em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Um exemplo de como essas opções são aplicadas a uma tabela real de um documento pode ser visto na figura abaixo.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Antes de poder usar a largura preferencial em uma tabela, você deve garantir que a tabela contenha pelo menos uma linha. Isso ocorre porque tal formatação de tabela em um documento Microsoft Word ou em um documento criado em Aspose.Words fica armazenada nas linhas da tabela.

{{% /alert %}}

#### Especifique a tabela preferida ou a largura da célula

No Aspose.Words, as larguras das tabelas e das células são definidas usando a propriedade [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) e a propriedade [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/), com opções disponíveis na enumeração [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/):

- **Auto**, que equivale a nenhum conjunto de largura preferencial
- **Percent**, que ajusta o elemento em relação ao espaço disponível no tamanho da janela ou contêiner e recalcula o valor quando a largura disponível muda
- **Points**, que corresponde a um elemento com a largura especificada em pontos

{{% alert color="primary" %}}

Por padrão, uma tabela pode ser descrita como ajustada a 100% do espaço disponível na página. Neste caso, isso significa que a tabela tentará ocupar o espaço entre as margens esquerda e direita da página.

{{% /alert %}}

O uso da propriedade [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) ajustará sua largura preferida em relação ao contêiner: página, coluna de texto ou célula externa da tabela, se for uma tabela aninhada.

O exemplo de código a seguir mostra como definir a tabela para ajuste automático em 50% da largura da página:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Usar a propriedade [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) em uma determinada célula ajustará sua largura preferida.

O exemplo de código a seguir mostra como definir as diferentes configurações de largura preferidas:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Encontrando tipo e valor de largura preferido

Você pode usar as propriedades [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) e [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) para encontrar os detalhes de largura preferidos da tabela ou célula desejada.

O exemplo de código a seguir mostra como recuperar o tipo de largura preferencial de uma célula da tabela:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Como definir o ajuste automático

A propriedade [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) permite que as células de uma tabela aumentem e diminuam de acordo com um critério selecionado. Por exemplo, você pode usar a opção **Ajustar automaticamente à janela** para ajustar a tabela à largura da página e a opção **Ajuste automático ao conteúdo** para permitir que cada célula aumente ou diminua de acordo com seu conteúdo.

{{% alert color="primary" %}}

Além disso, a propriedade **AllowAutoFit** pode ser usada em conjunto com uma largura de célula preferencial para formatar uma célula que se ajuste automaticamente ao seu conteúdo, mas também tenha uma largura inicial. Se necessário, a largura da célula pode ultrapassar essa largura.

{{% /alert %}}

Por padrão, Aspose.Words insere uma nova tabela usando **Ajustar automaticamente à janela**. A tabela será dimensionada de acordo com a largura de página disponível. Para redimensionar uma tabela, você pode chamar o método [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior). Este método aceita uma enumeração [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) que especifica que tipo de ajuste automático é aplicado à tabela.

É importante saber que o método autofit é na verdade um atalho que aplica diferentes propriedades à tabela ao mesmo tempo. Estas são propriedades que realmente conferem à tabela o comportamento observado. Discutiremos essas propriedades para cada opção de ajuste automático.

O exemplo de código a seguir mostra como configurar uma tabela para reduzir ou aumentar cada célula de acordo com seu conteúdo:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Ajustar automaticamente a tabela à janela

Quando o ajuste automático a uma janela é aplicado a uma tabela, as seguintes operações são executadas nos bastidores:

1. A propriedade **Table.AllowAutoFit** está habilitada para redimensionar colunas automaticamente para caber no conteúdo disponível, usando um valor **Table.PreferredWidth** de 100%
2. **CellFormat.PreferredWidth** é removido de todas as células da tabela
      {{% alert color="primary" %}}
   Observe que isso é um pouco diferente do comportamento do Microsoft Word, onde a largura preferencial de cada célula é definida com valores apropriados com base no tamanho e conteúdo atuais. O Aspose.Words não atualiza a largura preferida, então eles são simplesmente apagados.
      {{% /alert %}}
3. As larguras das colunas são recalculadas para o conteúdo atual da tabela – o resultado final é uma tabela que ocupa toda a largura disponível
4. A largura das colunas da tabela muda automaticamente conforme o usuário edita o texto

O exemplo de código a seguir mostra como ajustar automaticamente uma tabela à largura da página:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Ajustar automaticamente a tabela ao conteúdo

Quando a tabela é ajustada automaticamente ao conteúdo, as etapas a seguir são executadas nos bastidores:

1. A propriedade **Table.AllowAutoFit** está habilitada para redimensionar automaticamente cada célula de acordo com seu conteúdo

2. A largura preferencial da tabela é removida do **Table.PreferredWidth**, o **CellFormat.PreferredWidth** é removido para cada célula da tabela
      {{% alert color="primary" %}}

   Observe que esta opção de ajuste automático remove a largura preferida das células, assim como no Microsoft Word. Se quiser manter os tamanhos das colunas e aumentar ou diminuir as colunas para caber no conteúdo, você deve definir a propriedade **Table.AllowAutoFit** como **True** por conta própria, em vez de usar o atalho de ajuste automático.{{% /alert %}}

3. As larguras das colunas são recalculadas para o conteúdo atual da tabela – o resultado final é uma tabela onde as larguras das colunas e a largura de toda a tabela são redimensionadas automaticamente para melhor ajustar o conteúdo conforme o usuário edita o texto

O exemplo de código a seguir mostra como ajustar automaticamente uma tabela ao seu conteúdo:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Desative o ajuste automático na tabela e use larguras de coluna fixas

Se uma tabela tiver o ajuste automático desabilitado e forem usadas larguras de coluna fixas, as seguintes etapas serão executadas:

1. A propriedade **Table.AllowAutoFit** está desativada para que as colunas não aumentem ou diminuam de acordo com seu conteúdo
2. A largura preferencial de toda a tabela é removida de **Table.PreferredWidth**, **CellFormat.PreferredWidth** é removido de todas as células da tabela
3. O resultado final é uma tabela cujas larguras de coluna são determinadas pela propriedade [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) e cujas colunas não são redimensionadas automaticamente quando o usuário insere texto ou quando a página é redimensionada

{{% alert color="primary" %}}

Observe que se nenhuma largura for especificada para **CellFormat.Width**, o valor padrão de uma polegada (72 pontos) será usado.

{{% /alert %}}

O exemplo de código a seguir mostra como desabilitar o ajuste automático e habilitar largura fixa para a tabela especificada:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### A ordem de precedência ao calcular a largura da célula

Aspose.Words permite aos usuários definir a largura de uma tabela ou célula por meio de vários objetos, incluindo [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) – sua propriedade [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) é em grande parte remanescente de versões anteriores, no entanto, ainda é útil para simplificar a configuração da largura da célula.

É importante saber que a propriedade **CellFormat.Width** funciona de forma diferente dependendo de quais das outras propriedades de largura já existem na tabela.

Aspose.Words usa a seguinte ordem para calcular larguras de células:

|  Ordem |  Propriedade |  Descrição |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) é determinado |  Se **AutoFit** estiver ativado:<br>- a tabela pode ultrapassar a largura preferida para acomodar o conteúdo – geralmente não diminui abaixo da largura preferida<br>- qualquer alteração no valor **CellFormat.Width** será ignorada e a célula caberá em seu conteúdo |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) com valor **Points** ou **Percent** |  **CellFormat.Width** é ignorado |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) com valor **Auto** |  O valor do **CellFormat.Width** é copiado e se torna a largura preferida da célula (em pontos) |

{{% alert color="primary" %}}

Quaisquer alterações na propriedade de largura não são atualizadas na largura preferencial e devem ser aplicadas à largura preferencial.

{{% /alert %}}

{{% alert color="primary" %}}

Ao criar um layout de tabela fixo, especifique a largura da célula. Uma célula sem largura não pode ser salva no formato DOC. Formatos de documentos diferentes de DOC, como DOCX, permitem, em princípio, salvar células sem largura em um layout de tabela fixo.

{{% /alert %}}

## Permitir espaçamento entre células

Você pode obter ou definir qualquer espaço adicional entre as células da tabela semelhante à opção "Espaçamento entre células" no Microsoft Word. Isso pode ser feito usando a propriedade [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/).

Um exemplo de como essas opções são aplicadas a uma tabela real de um documento pode ser visto na figura abaixo.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="formatação-espaçamento-entre-células-aspose-palavras-python" style="width:500px"/>

O exemplo de código a seguir mostra como definir o espaçamento entre células:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Aplicando Bordas e Sombreamento

Bordas e sombreamento podem ser aplicados a toda a tabela usando [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) e [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/), ou apenas a células específicas usando [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) e [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). Além disso, as bordas das linhas podem ser definidas usando [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), porém o sombreamento não pode ser aplicado desta forma.

As imagens abaixo mostram as configurações de borda e sombra em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

O exemplo de código a seguir mostra como formatar uma tabela e uma célula com bordas e sombreamentos diferentes:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}