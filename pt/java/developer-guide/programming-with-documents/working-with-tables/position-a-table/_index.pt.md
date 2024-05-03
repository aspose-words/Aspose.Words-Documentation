---
title: Posição da tabela em Java
second_title: Aspose.Words para Java
articleTitle: Posição uma tabela
linktitle: Posição uma tabela
description: "Especifique a posição da tabela em Java. Obter um alinhamento de mesa, obter e definir posição de mesa flutuante usando Java."
type: docs
weight: 50
url: /pt/java/position-a-table/
---

Há mesas flutuantes e tabelas inline:

* **Tabelas em linha** são colocados na mesma camada que o texto e são colocados em um fluxo de texto que só cerca a tabela acima e abaixo. As tabelas inline sempre aparecerão entre os parágrafos onde você os colocou.
* **Mesas flutuantes** são camadas sobre o texto, e a posição da tabela relativa ao parágrafo é determinada pela âncora da tabela. Por isso, a posição da tabela flutuante no documento é afetada pelas configurações de posicionamento vertical e horizontal.

Às vezes você precisa posicionar uma tabela em um documento de uma certa maneira. Para fazer isso, você precisa usar as ferramentas de alinhamento e definir os recuos entre a tabela e o texto circundante.

Neste artigo, vamos discutir quais opções Aspose.Words fornece para posicionamento.

## Especifique a posição da tabela em linha

Você pode definir a posição de uma tabela em linha usando o Aspose.Words API e o [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) propriedade. Assim, você pode ajustar o alinhamento da tabela em relação à página do documento.

O exemplo de código a seguir mostra como definir a posição de uma tabela em linha:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obter alinhamento de mesa flutuante

Se o envoltório de texto da tabela estiver definido **Around**, você pode obter o alinhamento horizontal e vertical da tabela usando o [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) e [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) propriedades.

Com **outros tipos de embrulho de texto**, você pode obter alinhamento de tabela em linha usando **Alignment** propriedade.

O exemplo de código a seguir mostra como obter o alinhamento da tabela:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Obter posição de mesa flutuante

 A posição de uma tabela flutuante é determinada usando as seguintes propriedades:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – um objeto para calcular o posicionamento horizontal de uma mesa flutuante
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – um objeto para calcular o posicionamento vertical de uma mesa flutuante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – posição de mesa flutuante horizontal absoluta
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – posição de mesa flutuante vertical absoluta
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – opção para ativar/desativar sobreposição com outros objetos flutuantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) - tabela flutuante relativa alinhamento horizontal.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – mesa flutuante relativa alinhamento vertical.

O exemplo de código a seguir mostra como obter a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Definir posição de tabela flutuante

Assim como começar, você pode definir a posição de uma mesa flutuante usando o mesmo Aspose.Words API.

É importante saber que o alinhamento e a distância horizontal e vertical são propriedades combinadas e pode-se redefinir o outro. Por exemplo, definir o **RelativeHorizontalAlignment** irá redefinir o **AbsoluteHorizontalDistance** para o seu valor padrão e vice-versa. O mesmo é true para o arranjo vertical.

O exemplo de código a seguir mostra como definir a posição de uma tabela flutuante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Obter Distância entre a tabela e o texto circunvizinho

Aspose.Words também oferece uma oportunidade para descobrir as distâncias entre tabelas e textos circundantes:

- Não. [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – o valor da distância de cima
- Não. [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – o valor da distância da percepção
- Não. [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – valor de distância à direita
- Não. [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – valor de distância à esquerda

O exemplo de código a seguir mostra como obter a distância entre uma tabela e seu texto em torno:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
