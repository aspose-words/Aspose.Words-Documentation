---
title: Posição do quadro em Java
second_title: Aspose.Words para Java
articleTitle: Posicionar uma tabela
linktitle: Posicionar uma tabela
description: "Especifique a posição da tabela em Java. Obter um alinhamento da tabela, obter e definir a posição da tabela flutuante usando Java."
type: docs
weight: 50
url: /pt/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Existem mesas flutuantes e Mesas embutidas:

* **Inline tables** são colocados na mesma camada que o texto e são colocados em um fluxo de texto que envolve apenas a tabela acima e abaixo. As tabelas em linha aparecerão sempre entre os parágrafos onde as colocou.
* **Floating tables** estão em camadas sobre o texto e a posição da tabela em relação ao parágrafo é determinada pela âncora da tabela. Devido a isso, a posição da mesa flutuante no documento é afetada pelas configurações de posicionamento vertical e horizontal.

Às vezes, você precisa posicionar uma tabela em um documento de uma determinada maneira. Para fazer isso, você precisa usar as ferramentas de alinhamento e definir os recuos entre a tabela e o texto circundante.

Neste artigo, discutiremos quais opções Aspose.Words fornecem para o posicionamento.

## Especificar A Posição Da Tabela Em Linha

Você pode definir a posição de uma tabela embutida usando as propriedades Aspose.Words API e [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Assim, você pode ajustar o alinhamento da tabela em relação à página do documento.

O exemplo de código a seguir mostra como definir a posição de uma tabela embutida:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obter Alinhamento Da Mesa Flutuante

Se a quebra de texto da tabela estiver definida como **Around**, pode obter o alinhamento horizontal e vertical da tabela utilizando as propriedades [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) e [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

Com **other types of text wrapping**, você pode obter o alinhamento da tabela embutida usando a propriedade **Alignment**.

O exemplo de código a seguir mostra como obter o alinhamento da tabela:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Obter Posição Da Mesa Flutuante

 A posição de uma mesa flutuante é determinada utilizando as seguintes propriedades:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - objecto de cálculo do posicionamento horizontal de uma mesa flutuante
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - um objecto para calcular o posicionamento vertical de uma mesa flutuante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - posição horizontal absoluta da mesa flutuante
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - posição vertical absoluta da mesa flutuante
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - opção para activar / desactivar a sobreposição com outros objectos flutuantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - alinhamento horizontal relativo da mesa flutuante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) - alinhamento vertical relativo da mesa flutuante.

O exemplo de código a seguir mostra como obter a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Definir A Posição Da Mesa Flutuante

Assim como obter, você pode definir a posição de uma tabela flutuante usando o mesmo Aspose.Words API.

É importante saber que o alinhamento e a distância horizontal e vertical são propriedades combinadas e uma pode repor a outra. Por exemplo, definir **RelativeHorizontalAlignment** redefinirá o **AbsoluteHorizontalDistance** para seu valor padrão e vice-versa. O mesmo se aplica à disposição vertical.

O exemplo de código a seguir mostra como definir a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Obter distância entre a tabela e o texto circundante

Aspose.Words também oferece uma oportunidade para descobrir as distâncias entre as tabelas e os textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - o valor da distância de cima
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - o valor da distância de percepção
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - Valor da distância à direita
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - Valor da distância à esquerda

O exemplo de código a seguir mostra como obter a distância entre uma tabela e seu texto ao redor:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
