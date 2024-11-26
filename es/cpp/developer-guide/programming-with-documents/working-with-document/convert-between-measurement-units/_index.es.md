---
title: Convertir entre Unidades de Medida en C++
second_title: Aspose.Words para C++
articleTitle: Convertir Entre Unidades De Medida
linktitle: Convertir Entre Unidades De Medida
description: "Aspose.Words para C++ puede ayudarlo a convertir entre unidades de medida, por ejemplo, pulgadas a puntos y puntos a pulgadas, píxeles a puntos, puntos a píxeles."
type: docs
weight: 20
url: /es/cpp/convert-between-measurement-units/
timestamp: 2024-01-27-14-07-04
---

La mayoría de las propiedades de objeto proporcionadas en la API Aspose.Words que representan alguna medida, como ancho o alto, márgenes y varias distancias, aceptan valores en puntos, donde 1 pulgadas equivale a 72 puntos. A veces, esto no es conveniente y los puntos deben convertirse en otras unidades.

Aspose.Words proporciona la clase [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) que proporciona funciones auxiliares para convertir entre varias unidades de medida. Permite convertir pulgadas, píxeles y milímetros en puntos, puntos en pulgadas y píxeles, y convertir píxeles de una resolución a otra.La conversión de píxeles a puntos y viceversa se puede realizar con resoluciones de 96 ppp (puntos por pulgada) o con una resolución de ppp especificada.

La clase **ConvertUtil** es especialmente útil al establecer varias propiedades de página porque, por ejemplo, las pulgadas son unidades de medida más comunes que los puntos.

El siguiente ejemplo de código muestra cómo especificar las propiedades de la página en pulgadas:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

