---
title: Formatação de tabelas em C++
second_title: Aspose.Words para C++
articleTitle: Aplicar Formatação
linktitle: Aplicar Formatação
description: "Formatação da tabela em detalhes usando C++. Usando C++ para formatar todas as partes da tabela."
type: docs
weight: 70
url: /pt/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Cada elemento de uma tabela pode ser aplicado com formatação diferente. Por exemplo, a formatação da tabela será aplicada a toda a tabela, a formatação de linhas apenas a linhas específicas, a formatação de células apenas a determinadas células.

Aspose.Words fornece um rich API para recuperar e aplicar formatação a uma tabela. Você pode usar os nós [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) e [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) para definir a formatação.

Neste artigo, falaremos sobre como aplicar formatação a diferentes nós de tabela e quais configurações de formatação de tabela Aspose.Words suportam.

## Aplicar formatação a diferentes nós

Nesta seção, veremos a aplicação de formatação a vários nós de tabela.

### Formatação Ao Nível Da Tabela

Para aplicar a formatação a uma tabela, você pode usar as propriedades disponíveis no nó **Table** correspondente usando as classes [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) e [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Observe que a tabela deve ter pelo menos uma linha antes que as propriedades da tabela possam ser aplicadas. Isso significa que, ao construir uma tabela com o [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), essa formatação deve ser feita após a primeira chamada para [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), ou depois que a primeira linha é adicionada à tabela, ou quando os nós são inseridos diretamente no DOM.

{{% /alert %}}

As imagens abaixo mostram uma representação das características de formatação **Table** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

O exemplo de código a seguir mostra como aplicar uma borda de contorno a uma tabela:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

O exemplo de código a seguir mostra como construir uma tabela com todas as bordas habilitadas (grade):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Formatação De Nível De Linha

**Nível da linha**

{{% alert color="primary" %}}

Observe que a **Row** só pode ser um nó filho de a **Table**. Ao mesmo tempo, deve haver pelo menos um **Cell** no **Row** para que a formatação possa ser aplicada a ele.

{{% /alert %}}

As imagens abaixo mostram uma representação das características de formatação **Row** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

O exemplo de código a seguir mostra como modificar a formatação da linha da tabela:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Formatação De Nível De Célula

A formatação no nível da célula é controlada pelas classes [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) e [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Observe que a **Cell** só pode ser um nó filho de a **Row**. Ao mesmo tempo, deve haver pelo menos um [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) no **Cell** para que a formatação possa ser aplicada a ele.

Além do **Paragraph**, Você também pode inserir um **Table** em um **Cell**.

{{% /alert %}}

As imagens abaixo mostram uma representação das características de formatação **Cell** em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

O exemplo de código a seguir mostra como modificar a formatação de uma célula da tabela:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

O exemplo de código a seguir mostra como definir a quantidade de espaço (em pontos) a ser adicionada à esquerda / superior / direita / inferior do conteúdo da célula:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Especificar As Alturas Das Linhas

A maneira mais simples de definir a altura da linha é usar o **DocumentBuilder**. Usando as propriedades **RowFormat** apropriadas, você pode definir a configuração de altura padrão ou aplicar uma altura diferente para cada linha da tabela.

Em Aspose.Words, a altura da linha da tabela é controlada por:

- a propriedade altura da linha - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- a propriedade da regra de altura para a linha fornecida - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Ao mesmo tempo, uma altura diferente pode ser definida para cada linha – Isso permite que você controle amplamente as configurações da tabela.

{{% alert color="primary" %}}

As opções de regra para especificar a altura de um objecto podem ser definidas utilizando a enumeração [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

O exemplo de código a seguir mostra como criar uma tabela que contém uma única célula e aplicar a formatação de linha:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Especificação das larguras das tabelas e das células

Uma tabela em um documento Microsoft Word fornece várias maneiras diferentes de redimensionar a tabela e as células individuais. Essas propriedades permitem um controle considerável sobre a aparência e o comportamento da tabela, de modo que Aspose.Words suporta o comportamento das tabelas, como em Microsoft Word.

É importante saber que os elementos da tabela apresentam várias propriedades diferentes que podem afetar a forma como as larguras da tabela geral, bem como as células individuais, são calculadas:

- Largura preferida sobre a mesa
- Largura preferida em células individuais
- Permitindo a adaptação automática na mesa

Este artigo detalha como as várias propriedades de cálculo da largura da tabela funcionam e como obter controle total sobre o cálculo da largura da tabela. Isto é
especialmente útil saber em casos em que o layout da tabela não aparece como esperado.

{{% alert color="primary" %}}

Na maioria dos casos, a célula preferida é recomendada do que a largura da tabela. A largura da célula preferida está mais de acordo com a especificação do formato DOCX, bem como com o modelo Aspose.Words.

A largura da célula é, na verdade, um valor calculado para o formato DOCX. A largura real da célula pode depender de muitas coisas. Por exemplo, alterar as margens da página ou a largura da tabela preferida pode afetar a largura real da célula.

A largura da célula preferida é uma propriedade da célula armazenada no documento. Não depende de nada e não muda quando você altera a tabela ou outras propriedades da célula.

{{% /alert %}}

{{% alert color="primary" %}}

Todas as propriedades e métodos descritos neste artigo estão relacionados à forma como as tabelas funcionam em Microsoft Word. Portanto, na maioria dos casos, se você está construindo sua tabela programaticamente, mas está achando difícil criar a tabela desejada, você pode tentar criá-la visualmente em Microsoft Word primeiro e depois simplesmente copiar os valores de formatação em seu aplicativo.

{{% /alert %}}

### Como utilizar a largura preferida

A largura desejada de uma tabela ou células individuais é definida através da propriedade largura preferida, que é o tamanho que um elemento se esforça para ajustar. Ou seja, a largura preferida pode ser especificada para toda a tabela ou para células individuais. Em algumas situações, pode não ser possível ajustar exactamente esta largura, mas a largura real será próxima deste valor na maioria dos casos.

O tipo e o valor de largura preferidos apropriados são definidos usando os métodos da classe [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- o método [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) para especificar auto ou "sem largura preferencial"
- o método [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) para especificar uma largura percentual
- o método [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) para especificar a largura em pontos

As imagens abaixo mostram uma representação do *preferred width setting features* em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Um exemplo de como essas opções são aplicadas a uma tabela real em um documento pode ser visto na figura abaixo.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Antes de poder utilizar a largura preferida numa tabela, deve assegurar-se de que a tabela contém pelo menos uma linha. Isso ocorre porque essa formatação de tabela em um documento Microsoft Word ou em um documento criado em Aspose.Words é armazenada nas linhas da tabela.

{{% /alert %}}

#### Especifique a largura da tabela ou da célula preferida

Em Aspose.Words, as larguras da tabela e da célula são definidas usando a propriedade [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) e a propriedade [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), com opções disponíveis na enumeração [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, que é equivalente a nenhum conjunto de largura preferencial
- **Percent**, que ajusta o elemento em relação ao espaço disponível na janela ou no tamanho do recipiente e recalcula o valor quando a largura disponível muda
- **Points**, que corresponde a um elemento da largura especificada em pontos

{{% alert color="primary" %}}

Por predefinição, uma tabela pode ser descrita como sendo ajustada a 100% do espaço disponível na página. Nesse caso, isso significa que a tabela tentará ocupar o espaço entre as margens da Página esquerda e direita.

{{% /alert %}}

O uso da propriedade [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) ajustará sua largura preferida em relação ao contêiner: página, coluna de texto ou célula externa da tabela, se for uma tabela aninhada.

O exemplo de código a seguir mostra como definir a tabela para ajuste automático em 50% da largura da página:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Usar a propriedade [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) em uma determinada célula ajustará sua largura preferida.

O exemplo de código a seguir mostra como definir as diferentes configurações de largura preferidas:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Encontre o tipo e o valor de largura preferidos

Você pode usar as propriedades [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) e [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) para encontrar os detalhes de largura preferidos da tabela ou célula desejada.

O exemplo de código a seguir mostra como recuperar o tipo de largura preferido de uma célula de tabela:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Como definir o ajuste automático

A propriedade [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) permite que as células de uma tabela cresçam e encolham de acordo com um critério selecionado. Por exemplo, você pode usar a opção **AutoFit to Window** para ajustar a tabela à largura da página e a opção **AutoFit to Content** para permitir que cada célula cresça ou diminua de acordo com seu conteúdo.

{{% alert color="primary" %}}

Além disso, a propriedade **AllowAutoFit** pode ser usada em conjunto com uma largura de célula preferida para formatar uma célula que se ajusta automaticamente ao seu conteúdo, mas também tem uma largura inicial. Se necessário, a largura da célula pode então crescer além dessa largura.

{{% /alert %}}

Por padrão, Aspose.Words insere uma nova tabela usando **AutoFit to Window**. A tabela será dimensionada de acordo com a largura da página disponível. Para redimensionar uma tabela, você pode chamar o método [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Este método aceita uma enumeração [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) que especifica que tipo de ajuste automático é aplicado à tabela.

É importante saber que o método autofit é, na verdade, um atalho que aplica propriedades diferentes à tabela ao mesmo tempo. Estas são propriedades que realmente dão à tabela o comportamento observado. Discutiremos essas propriedades para cada opção de ajuste automático.

O exemplo de código a seguir mostra como definir uma tabela para reduzir ou aumentar cada célula de acordo com seu conteúdo:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tabela Para Janela

Quando o ajuste automático a uma janela é aplicado a uma tabela, as seguintes operações são realmente realizadas nos bastidores:

1. A propriedade **Table.AllowAutoFit** está habilitada para redimensionar automaticamente as colunas para se ajustarem ao conteúdo disponível, usando um valor **Table.PreferredWidth** de 100%
2. **CellFormat.PreferredWidth** é removido de todas as células da tabela
   {{% alert color="primary" %}}
   Observe que isso é ligeiramente diferente do comportamento Microsoft Word, em que a largura preferida de cada célula é definida como valores apropriados com base em seu tamanho e conteúdo atuais. Aspose.Words não atualiza a largura preferida, então eles são limpos.
   {{% /alert %}}
3. As larguras das colunas são recalculadas para o conteúdo atual da tabela – o resultado final é uma tabela que ocupa toda a largura disponível
4. A largura das colunas na tabela muda automaticamente à medida que o utilizador edita o texto

O exemplo de código a seguir mostra como ajustar automaticamente uma tabela à largura da página:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit tabela para conteúdo

Quando a tabela é ajustada automaticamente ao conteúdo, as etapas a seguir são realmente executadas nos bastidores:

1. A propriedade **Table.AllowAutoFit** está habilitada para redimensionar automaticamente cada célula de acordo com seu conteúdo

2. A largura da tabela preferida é removida de **Table.PreferredWidth**, **CellFormat.PreferredWidth** é removida para cada célula da tabela
   {{% alert color="primary" %}}

   Observe que esta opção de ajuste automático remove a largura preferida das células, assim como em Microsoft Word. Se você quiser manter os tamanhos das colunas e aumentar ou diminuir as colunas para se ajustarem ao conteúdo, defina a propriedade **Table.AllowAutoFit** como **True** por conta própria, em vez de usar o atalho de ajuste automático.{{% /alert %}}

3. As larguras das colunas são recalculadas para o conteúdo atual da tabela – o resultado final é uma tabela em que as larguras das colunas e a largura de toda a tabela são redimensionadas automaticamente para melhor se ajustarem ao conteúdo à medida que o usuário edita o texto

O exemplo de código a seguir mostra como ajustar automaticamente uma tabela ao seu conteúdo:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Desactivar AutoFit na tabela e utilizar larguras de coluna fixas

Se uma tabela tiver o ajuste automático desativado e forem utilizadas larguras de coluna fixas, são executadas as seguintes etapas:

1. **Table.AllowAutoFit** a propriedade está desativada para que as colunas não aumentem ou diminuam para o seu conteúdo
2. A largura preferida de toda a tabela é removida de **Table.PreferredWidth**, **CellFormat.PreferredWidth** é removida de todas as células da tabela
3. O resultado final é uma tabela cujas larguras de coluna são determinadas pela propriedade [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) e cujas colunas não são redimensionadas automaticamente quando o usuário insere texto ou quando a página é redimensionada

{{% alert color="primary" %}}

Observe que, se nenhuma largura for especificada para **CellFormat.Width**, o valor padrão de uma polegada (72 pontos) será usado.

{{% /alert %}}

O exemplo de código a seguir mostra como desativar o ajuste automático e ativar a largura fixa para a tabela especificada:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Ordem de precedência no cálculo da largura da célula

Aspose.Words permite que os usuários definam a largura de uma tabela ou célula por meio de vários objetos, incluindo [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – sua propriedade [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) é principalmente remanescente de versões anteriores, no entanto, ainda é útil para simplificar a configuração da largura da célula.

É importante saber que a propriedade **CellFormat.Width** funciona de forma diferente dependendo de qual das outras propriedades width já existem na tabela.

Aspose.Words usa a seguinte ordem para calcular as larguras das células:

| Ordem | Propriedade | Descrição |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) é determinado | Se **AutoFit** estiver activado:<br />- a tabela pode crescer além da largura preferida para acomodar o conteúdo-geralmente não encolhe abaixo da largura preferida<br />- qualquer alteração no valor **CellFormat.Width** é ignorada e a célula se ajustará ao seu conteúdo |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) com um valor de **Points** ou **Percent** | **CellFormat.Width** é ignorado |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) com um valor de **Auto** | O valor de **CellFormat.Width** é copiado e torna-se a largura preferida da célula (em pontos) |

{{% alert color="primary" %}}

Quaisquer alterações na propriedade width não são atualizadas na largura preferida e devem ser aplicadas à largura preferida.

{{% /alert %}}

{{% alert color="primary" %}}

Ao criar um layout de tabela fixo, especifique a largura da célula. Uma célula sem largura não pode ser salva no formato DOC. Formatos de documentos diferentes de DOC, como DOCX, permitem, em princípio, guardar células sem largura num esquema de tabela fixo.

{{% /alert %}}

## Permitir Espaçamento Entre Células

Você pode obter ou definir qualquer espaço adicional entre as células da tabela semelhante à opção" espaçamento entre células " em Microsoft Word. Isso pode ser feito usando a propriedade [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Um exemplo de como essas opções são aplicadas a uma tabela real em um documento pode ser visto na figura abaixo.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

O exemplo de código a seguir mostra como definir o espaçamento entre as células:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Aplicar bordas e sombreamento

Bordas e sombreamento podem ser aplicados a toda a tabela usando [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) e [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/), ou apenas a células específicas usando [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) e [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Além disso, as bordas das linhas podem ser definidas usando [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), no entanto, o sombreamento não pode ser aplicado dessa maneira.

As imagens abaixo mostram as configurações de borda e sombra em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

O exemplo de código a seguir mostra como formatar uma tabela e uma célula com bordas e sombreamentos diferentes:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
