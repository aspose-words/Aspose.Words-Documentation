---
title: Converter entre unidades de medida em C#
second_title: Aspose.Words para .NET
articleTitle: Converter entre unidades de medida
linktitle: Converter entre unidades de medida
description: "Aspose.Words para .NET pode ajudá-lo a converter unidades de medida, por exemplo, polegadas em pontos e pontos em polegadas, pixels em pontos, pontos em pixels usando C#."
type: docs
weight: 20
url: /pt/net/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

A maioria das propriedades dos objetos fornecidas no Aspose.Words API que representam alguma medida, como largura ou altura, margens e distâncias diversas, aceitam valores em pontos, onde 1 polegada equivale a 72 pontos. Às vezes isso não é conveniente e os pontos precisam ser convertidos para outras unidades.

Aspose.Words fornece a classe [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) que fornece funções auxiliares para conversão entre várias unidades de medida. Permite converter:

- polegadas, pixels e milímetros em pontos
- aponta para polegadas e pixels
- pixels de uma resolução para outra

A conversão de pixels em pontos e vice-versa pode ser realizada em resoluções de 96 dpi (pontos por polegada) ou resolução de dpi especificada.

A classe **ConvertUtil** é especialmente útil ao definir várias propriedades de página porque, por exemplo, polegadas são unidades de medida mais comuns do que pontos.

O exemplo de código a seguir mostra como especificar propriedades de página em polegadas:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
