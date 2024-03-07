---
title: Convertir entre unidades de medida en C#
second_title: Aspose.Words para .NET
articleTitle: Convertir entre unidades de medida
linktitle: Convertir entre unidades de medida
description: "Aspose.Words para .NET puede ayudarle a convertir entre unidades de medida, por ejemplo, pulgadas a puntos y puntos a pulgadas, píxeles a puntos, puntos a píxeles utilizando C#."
type: docs
weight: 20
url: /es/net/convert-between-measurement-units/
---

La mayoría de las propiedades de los objetos proporcionadas en el Aspose.Words API que representan alguna medida, como ancho o alto, márgenes y varias distancias, aceptan valores en puntos, donde 1 pulgada equivale a 72 puntos. A veces esto no es conveniente y es necesario convertir los puntos a otras unidades.

Aspose.Words proporciona la clase [ConvertUtil](https://reference.aspose.com/words/es/net/aspose.words/convertutil/) que proporciona funciones auxiliares para convertir entre varias unidades de medida. Permite convertir:

- pulgadas, píxeles y milímetros a puntos
- apunta a pulgadas y píxeles
- píxeles de una resolución a otra

La conversión de píxeles a puntos y viceversa se puede realizar con resoluciones de 96 ppp (puntos por pulgada) o una resolución de ppp especificada.

La clase **ConvertUtil** es especialmente útil al configurar varias propiedades de página porque, por ejemplo, las pulgadas son unidades de medida más comunes que los puntos.

El siguiente ejemplo de código muestra cómo especificar propiedades de página en pulgadas:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
