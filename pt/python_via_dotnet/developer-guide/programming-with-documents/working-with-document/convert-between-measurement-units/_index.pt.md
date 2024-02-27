---
title: Converter entre unidades de medida
second_title: Aspose.Words para Python via .NET
articleTitle: Converter entre unidades de medida
linktitle: Converter entre unidades de medida
description: "Aspose.Words para Python via .NET pode ajudá-lo a converter unidades de medida, por exemplo, polegadas em pontos e pontos em polegadas, pixels em pontos, pontos em pixels."
type: docs
weight: 20
url: /pt/python-net/convert-between-measurement-units/
---

A maioria das propriedades dos objetos fornecidas no Aspose.Words API que representam alguma medida, como largura ou altura, margens e distâncias diversas, aceitam valores em pontos, onde 1 polegada equivale a 72 pontos. Às vezes isso não é conveniente e os pontos precisam ser convertidos para outras unidades.

Aspose.Words fornece a classe [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) que fornece funções auxiliares para conversão entre várias unidades de medida. Ele permite converter polegadas, pixels e milímetros em pontos, pontos em polegadas e pixels e converter pixels de uma resolução para outra. A conversão de pixels em pontos e vice-versa pode ser realizada em resoluções de 96 dpi (pontos por polegada) ou resolução de dpi especificada.

A classe [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) é especialmente útil ao definir várias propriedades de página porque, por exemplo, polegadas são unidades de medida mais comuns do que pontos.

O exemplo de código a seguir mostra como especificar propriedades de página em polegadas:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
