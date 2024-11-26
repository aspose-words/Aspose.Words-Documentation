---
title: Converter entre unidades de medida em Java
second_title: Aspose.Words para Java
articleTitle: Converter Entre Unidades De Medida
linktitle: Converter Entre Unidades De Medida
description: "Aspose.Words para Java pode ajudá-lo a converter entre unidades de medida, por exemplo, polegadas em pontos e pontos em polegadas, pixels em pontos, pontos em pixels."
type: docs
weight: 20
url: /pt/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

A maioria das propriedades do objeto fornecidas no Aspose.Words API que representam alguma medida, como largura ou altura, margens e várias distâncias, aceitam valores em pontos, onde 1 polegada é igual a 72 pontos. Às vezes, isso não é conveniente e os pontos precisam ser convertidos em outras unidades.

Aspose.Words fornece a classe [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) que fornece funções auxiliares para converter entre várias unidades de medida. Permite converter polegadas, píxeis e milímetros em pontos, pontos em polegadas e píxeis e converter píxeis de uma resolução para outra.A conversão de pixels em pontos e vice-versa pode ser realizada em resoluções de 96 dpi (pontos por polegada) ou resolução de dpi especificada.

A classe **ConvertUtil** é especialmente útil ao definir várias propriedades de página porque, por exemplo, polegadas são unidades de medida mais comuns do que pontos.

O exemplo de código a seguir mostra como especificar as propriedades da página em polegadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
