---
title: Posição da tabela em C++
second_title: Aspose.Words para C++
articleTitle: Posicionar uma tabela
linktitle: Posicionar uma tabela
description: "Especificar posição da tabela em C++. Obter alinhamento de tabela, obter e definir posição de tabela flutuante usando C++."
type: docs
weight: 50
url: /pt/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Existem mesas flutuantes e Mesas embutidas:

* **Inline tables** são colocados na mesma camada que o texto e são colocados em um fluxo de texto que envolve apenas a tabela acima e abaixo. As tabelas em linha aparecerão sempre entre os parágrafos onde as colocou.
* **Floating tables** estão em camadas sobre o texto e a posição da tabela em relação ao parágrafo é determinada pela âncora da tabela. Devido a isso, a posição da mesa flutuante no documento é afetada pelas configurações de posicionamento vertical e horizontal.

Às vezes, você precisa posicionar uma tabela em um documento de uma determinada maneira. Para fazer isso, você precisa usar as ferramentas de alinhamento e definir os recuos entre a tabela e o texto circundante.

Neste artigo, discutiremos quais opções Aspose.Words fornecem para o posicionamento.

## Especificar A Posição Da Tabela Em Linha

Você pode definir a posição de uma tabela embutida usando as propriedades Aspose.Words API e [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Assim, você pode ajustar o alinhamento da tabela em relação à página do documento.

O exemplo de código a seguir mostra como definir a posição de uma tabela embutida:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Obter Alinhamento Da Mesa Flutuante

Se a quebra de texto da tabela estiver definida como **Around**, pode obter o alinhamento horizontal e vertical da tabela utilizando as propriedades [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) e [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Com **other types of text wrapping**, você pode obter o alinhamento da tabela embutida usando a propriedade [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

O exemplo de código a seguir mostra como obter o alinhamento da tabela:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Obter Posição Da Mesa Flutuante

 A posição de uma mesa flutuante é determinada utilizando as seguintes propriedades:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - objecto de cálculo do posicionamento horizontal de uma mesa flutuante
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - um objecto para calcular o posicionamento vertical de uma mesa flutuante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - posição horizontal absoluta da mesa flutuante
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - posição vertical absoluta da mesa flutuante
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - opção para activar / desactivar a sobreposição com outros objectos flutuantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) - alinhamento horizontal relativo da mesa flutuante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) - alinhamento vertical relativo da mesa flutuante.

O exemplo de código a seguir mostra como obter a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Definir A Posição Da Mesa Flutuante

Assim como obter, você pode definir a posição de uma tabela flutuante usando o mesmo Aspose.Words API.

É importante saber que o alinhamento e a distância horizontal e vertical são propriedades combinadas e uma pode repor a outra. Por exemplo, definir **RelativeHorizontalAlignment** redefinirá o **AbsoluteHorizontalDistance** para seu valor padrão e vice-versa. O mesmo se aplica à disposição vertical.

O exemplo de código a seguir mostra como definir a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Obter distância entre a tabela e o texto circundante

Aspose.Words também oferece uma oportunidade para descobrir as distâncias entre as tabelas e os textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - o valor da distância de cima
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - o valor da distância de percepção
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - Valor da distância à direita
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - Valor da distância à esquerda

O exemplo de código a seguir mostra como obter a distância entre uma tabela e seu texto ao redor:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
