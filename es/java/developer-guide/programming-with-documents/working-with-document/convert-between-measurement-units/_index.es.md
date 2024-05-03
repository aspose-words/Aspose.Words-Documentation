---
title: Convertir Entre unidades de medición en Java
second_title: Aspose.Words para Java
articleTitle: Convertir Entre unidades de medición
linktitle: Convertir Entre unidades de medición
description: "Aspose.Words para Java puede ayudarle con cómo convertir entre unidades de medición, por ejemplo, pulgadas a puntos y puntos a pulgadas, píxeles a puntos, puntos a píxeles."
type: docs
weight: 20
url: /es/java/convert-between-measurement-units/
---

La mayoría de las propiedades del objeto proporcionadas en Aspose.Words API que representan alguna medida, como ancho o altura, márgenes y varias distancias, aceptan valores en puntos, donde 1 pulgada equivale a 72 puntos. A veces esto no es conveniente y los puntos necesitan ser convertidos a otras unidades.

Aspose.Words proporciona el [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) clase que proporciona funciones de ayuda para convertir entre varias unidades de medición. Permite convertir pulgadas, píxeles y milímetros a puntos, puntos a pulgadas y píxeles, y convertir píxeles de una resolución a otra. Convertir píxeles en puntos y viceversa se puede realizar en 96 dpi (puntos por pulgada) resoluciones o resolución dpi especificada.

El **ConvertUtil** clase es especialmente útil cuando se establecen varias propiedades de página porque, por ejemplo, las pulgadas son unidades de medición más comunes que los puntos.

El siguiente ejemplo de código muestra cómo especificar las propiedades de la página en pulgadas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
