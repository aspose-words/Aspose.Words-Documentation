---
title: Posição da tabela em C#
second_title: Aspose.Words para .NET
articleTitle: Posicione uma mesa
linktitle: Posicione uma mesa
description: "Especifique a posição da tabela em C#. Obtenha um alinhamento da tabela, obtenha e defina a posição da tabela flutuante usando C#."
type: docs
weight: 50
url: /pt/net/position-a-table/
---

Existem tabelas flutuantes e tabelas embutidas:

* **Tabelas embutidas** são colocados na mesma camada do texto e são colocados em um fluxo de texto que circunda apenas a tabela acima e abaixo. As tabelas embutidas sempre aparecerão entre os parágrafos onde você as colocou.
* **Mesas flutuantes** são colocados em camadas sobre o texto e a posição da tabela em relação ao parágrafo é determinada pela âncora da tabela. Por causa disso, a posição da tabela flutuante no documento é afetada pelas configurações de posicionamento vertical e horizontal.

Às vezes você precisa posicionar uma tabela em um documento de uma determinada maneira. Para fazer isso, você precisa usar as ferramentas de alinhamento e definir os recuos entre a tabela e o texto ao redor.

Neste artigo, discutiremos quais opções o Aspose.Words oferece para posicionamento.

## Especifique a posição da tabela embutida

Você pode definir a posição de uma tabela embutida usando o Aspose.Words API e a propriedade [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/). Assim, você pode ajustar o alinhamento da tabela em relação à página do documento.

O exemplo de código a seguir mostra como definir a posição de uma tabela embutida:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "inline-table-position.cs" >}}

## Obtenha alinhamento de mesa flutuante

Se a quebra automática do texto da tabela estiver definida como **Around**, você poderá obter o alinhamento horizontal e vertical da tabela usando as propriedades [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) e [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/).

Com **outros tipos de quebra automática de texto**, você pode obter alinhamento de tabela embutido usando a propriedade [Alignment](https://reference.aspose.com/words/net/aspose.words.tables/table/alignment/).

O exemplo de código a seguir mostra como obter o alinhamento da tabela:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-table-position.cs" >}}

## Obtenha a posição da mesa flutuante

 A posição de uma tabela flutuante é determinada usando as seguintes propriedades:

* [HorizontalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/horizontalanchor/) – um objeto para calcular o posicionamento horizontal de uma mesa flutuante
* [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.tables/table/verticalanchor/) – um objeto para calcular o posicionamento vertical de uma mesa flutuante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absolutehorizontaldistance/) – posição absoluta da mesa flutuante horizontal
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/net/aspose.words.tables/table/absoluteverticaldistance/) – posição vertical absoluta da mesa flutuante
* [AllowOverlap](https://reference.aspose.com/words/net/aspose.words.tables/table/allowoverlap/) – opção para ativar/desativar a sobreposição com outros objetos flutuantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativehorizontalalignment/) – alinhamento horizontal relativo da tabela flutuante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/net/aspose.words.tables/table/relativeverticalalignment/) – alinhamento vertical relativo da tabela flutuante.

O exemplo de código a seguir mostra como obter a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "get-floating-table-position.cs" >}}

## Definir posição da mesa flutuante

Assim como fazer, você pode definir a posição de uma tabela flutuante usando o mesmo Aspose.Words API.

É importante saber que alinhamento e distância horizontal e vertical são propriedades combinadas e uma pode zerar a outra. Por exemplo, definir **RelativeHorizontalAlignment** redefinirá o **AbsoluteHorizontalDistance** para seu valor padrão e vice-versa. O mesmo é true para o arranjo vertical.

O exemplo de código a seguir mostra como definir a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "floating-table-position.cs" >}}

## Obtenha distância entre a tabela e o texto circundante

Aspose.Words também oferece a oportunidade de descobrir as distâncias entre tabelas e textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) – o valor da distância de cima
- [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/) – o valor da distância de percepção
- [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/) – valor da distância à direita
- [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/) – valor da distância à esquerda

O exemplo de código a seguir mostra como obter a distância entre uma tabela e o texto ao seu redor:

{{< gist "aspose-words-gists" "8df1ad0825619cab7c80b571c6e6ba99" "distance-between-table-surrounding-text.cs" >}}
