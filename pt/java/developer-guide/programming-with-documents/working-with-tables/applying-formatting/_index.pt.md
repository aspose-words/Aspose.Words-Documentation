---
title: Formatação de tabela em Java
second_title: Aspose.Words para Java
articleTitle: Aplicar formatação de tabela
linktitle: Aplicar formatação de tabela
description: "Formatação de tabela em detalhes. Usando Java para formatar todas as partes da tabela."
type: docs
weight: 70
url: /pt/java/applying-formatting/
---

Cada elemento de uma tabela pode ser aplicado com formatação diferente. Por exemplo, a formatação da tabela será aplicada a toda a tabela, formatação da linha para apenas linhas particulares, formatação da célula para apenas certas células.

Aspose.Words fornece um rico API para recuperar e aplicar a formatação a uma tabela. Você pode usar o [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), e [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) nós para definir formatação.

Neste artigo, falaremos sobre como aplicar a formatação a diferentes nós de tabela e quais configurações de formatação de tabela Aspose.Words suportes.

## Aplicar formatação para diferentes nós

Nesta seção, vamos olhar para a aplicação de formatação para vários nós de tabela.

### Formatação de nível de tabela

Para aplicar a formatação a uma tabela, você pode usar as propriedades disponíveis no correspondente **Table** nó usando o [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), e [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) aulas.

{{% alert color="primary" %}}

Note que a tabela deve ter pelo menos uma linha antes que as propriedades da tabela possam ser aplicadas. Isso significa que ao construir uma mesa com a [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), esta formatação deve ser feita após a primeira chamada para [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()), ou após a primeira linha é adicionado à tabela, ou quando os nós são inseridos diretamente na DOM.

{{% /alert %}}

As imagens abaixo mostram uma representação do **Table** características de formatação Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-2.png)

O exemplo de código a seguir mostra como aplicar uma borda de contorno a uma tabela:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

O exemplo de código a seguir mostra como construir uma tabela com todas as fronteiras permitidas (grid):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Formatação de nível de linha

Formatação de nível de linha** pode ser controlada usando o [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), e [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) aulas.

{{% alert color="primary" %}}

Note que um **Row** só pode ser um nó de criança de um **Table**. Ao mesmo tempo, deve haver pelo menos um **Cell** no **Row** para que a formatação possa ser aplicada a ele.

{{% /alert %}}

As imagens abaixo mostram uma representação do **Row** características de formatação Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-3.png)

O exemplo de código a seguir mostra como modificar a formatação da linha de tabela:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Formatação de nível de célula

A formatação de nível celular é controlada pelo [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), e [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) aulas.

{{% alert color="primary" %}}

Note que um **Cell** só pode ser um nó de criança de um **Row**. Ao mesmo tempo, deve haver pelo menos um [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) no **Cell** para que a formatação possa ser aplicada a ele.

Além do **Paragraph**, você também pode inserir um **Table** em um **Cell**.

{{% /alert %}}

As imagens abaixo mostram uma representação do **Cell** características de formatação Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-5.png)

O exemplo de código a seguir mostra como modificar a formatação de uma célula de tabela:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

O exemplo de código a seguir mostra como definir a quantidade de espaço (em pontos) para adicionar à esquerda/top/right/bottom do conteúdo da célula:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Especificando Row Heights

A maneira mais simples de definir a altura da linha é usar o **DocumentBuilder**. Usando o apropriado **RowFormat** propriedades, você pode definir a configuração de altura padrão ou aplicar uma altura diferente para cada linha na tabela.

Em Aspose.Words, altura da linha de tabela é controlada por:

- a propriedade de altura da linha – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- a propriedade de regra de altura para a linha dada – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Ao mesmo tempo, uma altura diferente pode ser definida para cada linha – isso permite que você controle amplamente as configurações de tabela.

{{% alert color="primary" %}}

Opções de regra para especificar a altura de um objeto pode ser definida usando o [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) campos.

{{% /alert %}}

O exemplo de código a seguir mostra como criar uma tabela que contenha uma única célula e aplicar formatação de linha:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Especifique Tabela e Larguras Celulares

Uma mesa em um Microsoft Word documento fornece várias maneiras diferentes de redimensionar a tabela e as células individuais. Essas propriedades permitem um controle considerável sobre a aparência e o comportamento da tabela, de modo que Aspose.Words suporta o comportamento de tabelas, como em Microsoft Word.

É importante saber que elementos de tabela apresentam várias propriedades diferentes que podem afetar como as larguras da tabela geral, bem como as células individuais, é calculado:

- Largura preferida na mesa
- Largura preferencial em células individuais
- Permitir autofit na mesa

Este artigo detalha como as várias propriedades de cálculo de largura de tabela funcionam e como obter controle total sobre o cálculo de largura da tabela. Isto é..
especialmente útil para saber em tais casos onde o layout da tabela não aparece como esperado.

{{% alert color="primary" %}}

Na maioria dos casos, a célula preferida é recomendada do que a largura da tabela. A largura da célula preferida é mais em linha com a especificação do formato DOCX, bem como a Aspose.Words modelo.

A largura da célula é, na verdade, um valor calculado para o formato DOCX. A largura da célula real pode depender de muitas coisas. Por exemplo, alterar as margens de página ou a largura de tabela preferida pode afetar a largura da célula real.

A largura de célula preferida é uma propriedade de célula armazenada no documento. Não depende de nada e não muda quando você muda a tabela ou outras propriedades da célula.

{{% /alert %}}

{{% alert color="primary" %}}

Todas as propriedades e métodos descritos neste artigo estão relacionados com como as tabelas funcionam Microsoft Word. Então, na maioria dos casos, se você está construindo sua tabela programaticamente, mas está achando difícil criar a tabela desejada, você pode tentar visualmente criá-la em Microsoft Word primeiro e, em seguida, basta copiar os valores de formatação em sua aplicação.

{{% /alert %}}

### Como Usar Largura Preferida

A largura desejada de uma tabela ou células individuais é definida através da propriedade de largura preferida, que é o tamanho que um elemento se esforça para caber. Ou seja, a largura preferida pode ser especificada para toda a tabela ou para células individuais. Em algumas situações pode não ser possível ajustar esta largura exatamente, mas a largura real será próxima a este valor na maioria dos casos.

O tipo e o valor de largura preferidos apropriados são definidos usando os métodos do [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) classe:

- o [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) campo para especificar auto ou "sem largura preferida"
- o [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) método para especificar uma largura percentual
- o [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) método para especificar a largura em pontos

As imagens abaixo mostram uma representação dos recursos de configuração de largura *preferido* em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![formatting-table-properties-aspose-words-java](/words/java/applying-formatting/applying-formatting-8.png)

Um exemplo de como essas opções são aplicadas a uma tabela real em um documento pode ser visto na imagem abaixo.

![table-applied-options-java](/words/java/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Antes que você possa usar a largura preferida em uma tabela, você deve garantir que a tabela contenha pelo menos uma linha. Isto é porque tal formatação de tabela em um Microsoft Word documento ou documento criado em Aspose.Words é armazenado nas linhas da tabela.

{{% /alert %}}

#### Especifique a Tabela Preferida ou Largura Celular

Em Aspose.Words, tabela e larguras de célula são definidas usando o [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) propriedade e [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) propriedade, com opções disponíveis no [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) enumeração:

- Não. **Auto**, que é equivalente a nenhum conjunto de largura preferido
- Não. **Percent**, que se encaixa no elemento relativo ao espaço disponível na janela ou tamanho do recipiente, e recalcula o valor quando a largura disponível muda
- Não. **Points**, que corresponde a um elemento da largura especificada em pontos

{{% alert color="primary" %}}

Por padrão, uma tabela pode ser descrita como sendo ajustada para 100% do espaço disponível na página. Neste caso, isso significa que a tabela tentará ocupar o espaço entre as margens da página esquerda e direita.

{{% /alert %}}

Usando o [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) a propriedade ajustará sua largura preferida em relação ao seu recipiente: página, coluna de texto ou célula de tabela externa se for uma tabela aninhada.

O exemplo de código a seguir mostra como definir a tabela para ajustar automaticamente a 50% da largura da página:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Usando o [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) propriedade em uma determinada célula ajustará sua largura preferida.

O exemplo a seguir mostra como definir as diferentes configurações de largura preferidas:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Encontrar Tipo e Valor de Largura Preferida

Você pode usar o [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) e [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) propriedades para encontrar os detalhes de largura preferidos da tabela ou célula desejada.

O exemplo de código a seguir mostra como recuperar o tipo de largura preferido de uma célula de tabela:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Como Definir Autofit

O [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) a propriedade permite que as células em uma tabela cresçam e encolhem de acordo com um critério selecionado. Por exemplo, você pode usar o **AutoFit to Window** opção para caber a tabela à largura da página, e a **AutoFit to Content** opção para permitir que cada célula cresça ou encolhe de acordo com seu conteúdo.

{{% alert color="primary" %}}

Além disso, o **AllowAutoFit** a propriedade pode ser usada em conjunto com uma largura de célula preferida para formatar uma célula que se encaixa automaticamente no seu conteúdo, mas também tem uma largura inicial. Se necessário, a largura da célula pode então passar por esta largura.

{{% /alert %}}

Por padrão, Aspose.Words insere uma nova tabela usando **AutoFit to Window**. A tabela será dimensionada de acordo com a largura da página disponível. Para redimensionar uma tabela, você pode chamar o [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) método. Este método aceita um [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) enumeração que especifica que tipo de autofit é aplicado à tabela.

É importante saber que o método de autofit é realmente um atalho que aplica propriedades diferentes à tabela ao mesmo tempo. Estas são propriedades que realmente dão à tabela o comportamento observado. Vamos discutir essas propriedades para cada opção de autofit.

O exemplo de código a seguir mostra como definir uma tabela para encolher ou crescer cada célula de acordo com seu conteúdo:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Usaremos a tabela a seguir para aplicar as várias configurações de ajuste automático como uma demonstração.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Window

Quando se aplica autofitting a uma janela a uma tabela, as seguintes operações são realizadas nos bastidores:

1. O **Table.AllowAutoFit** a propriedade está habilitada a redimensionar automaticamente colunas para ajustar o conteúdo disponível, usando um **Table.PreferredWidth** valor de 100%
2. **CellFormat.PreferredWidth** é removido de todas as células da tabela
      {{% alert color="primary" %}}
   Note que isso é ligeiramente diferente do Microsoft Word comportamento, onde a largura preferida de cada célula é definida para valores apropriados com base em seu tamanho atual e conteúdo. Aspose.Words não atualiza a largura preferida para que eles simplesmente fiquem limpos em vez.
      {{% /alert %}}
3. As larguras das colunas são recalculadas para o conteúdo atual da tabela – o resultado final é uma tabela que ocupa toda a largura disponível
4. A largura das colunas na tabela muda automaticamente conforme o usuário edita o texto

O exemplo de código a seguir mostra como ajustar automaticamente uma tabela à largura da página:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Um exemplo de como essas opções são aplicadas à tabela acima pode ser visto na imagem abaixo.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### AutoFit Table to Content

Quando a tabela é autofitted o conteúdo, os seguintes passos são realmente realizados nos bastidores:

1. O **Table.AllowAutoFit** propriedade está habilitado a redimensionar automaticamente cada célula de acordo com seu conteúdo

2. A largura de tabela preferida é removida **Table.PreferredWidth**, **CellFormat.PreferredWidth** é removido para cada célula de tabela
      {{% alert color="primary" %}}

   Note que esta opção de autofit remove a largura preferida das células, assim como em Microsoft Word. Se você quiser manter os tamanhos das colunas e aumentar ou diminuir as colunas para ajustar o conteúdo, você deve definir o **Table.AllowAutoFit** propriedade para **True** por conta própria em vez de usar o atalho autofit.{{% /alert %}}

3. As larguras das colunas são recalculadas para o conteúdo atual da tabela – o resultado final é uma tabela onde as larguras das colunas e a largura de toda a tabela são automaticamente redimensionadas para melhor se encaixar no conteúdo à medida que o usuário edita o texto

O exemplo de código a seguir mostra como ajustar automaticamente uma tabela ao seu conteúdo:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Um exemplo de como essas opções são aplicadas à tabela acima pode ser visto na imagem abaixo.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Desativar o AutoFit na tabela e usar larguras de coluna fixa

Se uma tabela tiver autofit desativado e larguras de coluna fixa forem usadas, as seguintes etapas são executadas:

1. **Table.AllowAutoFit** propriedade está desativada para que as colunas não cresçam ou encolhem para o seu conteúdo
2. A largura preferida de toda a tabela é removida de **Table.PreferredWidth**, **CellFormat.PreferredWidth** é removido de todas as células da tabela
3. O resultado final é uma tabela cujas larguras de coluna são determinadas pela [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) propriedade, e cujas colunas não são automaticamente redimensionadas quando o usuário entra texto ou quando a página é redimensionada

{{% alert color="primary" %}}

Note que se nenhuma largura for especificada para **CellFormat.Width**, o valor padrão de uma polegada (72 pontos) é usado.

{{% /alert %}}

O exemplo de código a seguir mostra como desativar o ajuste automático e ativar a largura fixa para a tabela especificada:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Um exemplo de como essas opções são aplicadas à tabela acima pode ser visto na imagem abaixo.

<img src="/words/java/applying-formatting/how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Ordem de Precedência ao calcular a largura da célula

Aspose.Words permite aos usuários definir a largura de uma tabela ou célula através de vários objetos, incluindo [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – a sua [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) a propriedade é principalmente deixada de versões anteriores, no entanto, ainda é útil para simplificar a definição da largura da célula.

É importante saber que o **CellFormat.Width** propriedade funciona de forma diferente dependendo de qual das outras propriedades de largura já existem na tabela.

Aspose.Words usa a seguinte ordem para calcular as larguras das células:

|  Ordem |  Propriedade |  Descrição |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) é determinado |  Se **AutoFit** está habilitado:<br/>- a tabela pode passar pela largura preferida para acomodar o conteúdo - geralmente não diminui abaixo da largura preferida<br/>- qualquer mudança para o **CellFormat.Width** valor é ignorado e a célula caberá ao seu conteúdo em vez |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) com um valor de **Points** ou **Percent** |  **CellFormat.Width** é ignorado |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) com um valor de **Auto** |  O valor de **CellFormat.Width** é copiado e se torna a largura preferida da célula (em pontos) |

{{% alert color="primary" %}}

Quaisquer alterações na propriedade de largura não são atualizadas na largura preferida e devem, em vez disso, ser aplicadas à largura preferida.

{{% /alert %}}

{{% alert color="primary" %}}

Ao criar um layout de tabela fixa, especifique a largura da célula. Uma célula sem largura não pode ser salva no formato DOC. Formatos de documentos que não DOC, como DOCX, permitem, em princípio, salvar células sem largura em um layout de tabela fixo.

{{% /alert %}}

## Permitir espaçamento entre células

Você pode obter ou definir qualquer espaço adicional entre as células de tabela semelhantes à opção "equipamento de Сell" em Microsoft Word. Isso pode ser feito usando o [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) propriedade.

Um exemplo de como essas opções são aplicadas a uma tabela real em um documento pode ser visto na imagem abaixo.

<img src="/words/java/applying-formatting/applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

O exemplo de código a seguir mostra como definir o espaçamento entre as células:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Aplicar Fronteiras e Shading

Fronteiras e sombreamento podem ser aplicados em toda a mesa usando [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) e [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), ou apenas para células específicas usando [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) e [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Além disso, fronteiras de linha podem ser definidas usando [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), Contudo a sombreamento não pode ser aplicada desta forma.

As imagens abaixo mostram as configurações de fronteira e sombra em Microsoft Word e suas propriedades correspondentes em Aspose.Words.

![apply-borders-shading-aspose-words-java-1](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](/words/java/applying-formatting/applying-formatting-to-table-row-and-cell-7.png)


O exemplo de código a seguir mostra como formatar uma tabela e célula com diferentes fronteiras e sombreamentos:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}