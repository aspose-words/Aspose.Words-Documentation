---
title: Conversão entre unidades de medição em Java
second_title: Aspose.Words para Java
articleTitle: Conversão entre unidades de medição
linktitle: Conversão entre unidades de medição
description: "Aspose.Words para Java pode ajudá-lo com como converter entre unidades de medição, por exemplo, polegadas para pontos e pontos para polegadas, pixels para pontos, pontos para pixels."
type: docs
weight: 20
url: /pt/java/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

A maioria das propriedades do objeto fornecidas no Aspose.Words API que representam alguma medida, como largura ou altura, margens e várias distâncias, aceitam valores em pontos, onde 1 polegada é igual a 72 pontos. Às vezes isso não é conveniente e os pontos precisam ser convertidos para outras unidades.

Aspose.Words fornece o [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) classe que fornece funções auxiliares para converter entre várias unidades de medição. Permite converter polegadas, pixels e milímetros em pontos, pontos em polegadas e pixels e converter pixels de uma resolução para outra. Converter pixels para pontos e vice-versa pode ser executado em 96 dpi (pontos por polegada) resoluções ou resolução de dpi especificada.

O **ConvertUtil** classe é especialmente útil ao definir várias propriedades de página porque, por exemplo, polegadas são unidades de medição mais comuns do que pontos.

O exemplo de código a seguir mostra como especificar propriedades de página em polegadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
