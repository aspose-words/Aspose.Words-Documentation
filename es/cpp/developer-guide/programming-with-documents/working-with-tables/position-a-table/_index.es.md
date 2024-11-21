---
title: Posición de la tabla en C++
second_title: Aspose.Words para C++
articleTitle: Colocar una Mesa
linktitle: Colocar una Mesa
description: "Especifique la posición de la tabla en C++. Obtenga una alineación de tabla, obtenga y establezca la posición de la tabla flotante usando C++."
type: docs
weight: 50
url: /es/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Hay tablas flotantes y tablas en línea:

* **Inline tables** se colocan en la misma capa que el texto y se colocan en un flujo de texto que solo rodea la tabla de arriba y de abajo. Las tablas alineadas siempre aparecerán entre los párrafos donde las colocó.
* **Floating tables** se colocan en capas sobre el texto y la posición de la tabla en relación con el párrafo está determinada por el ancla de la tabla. Debido a esto, la posición de la tabla flotante en el documento se ve afectada por la configuración de posicionamiento vertical y horizontal.

A veces es necesario colocar una tabla en un documento de cierta manera. Para hacer esto, debe usar las herramientas de alineación y establecer las sangrías entre la tabla y el texto circundante.

En este artículo, discutiremos qué opciones proporciona Aspose.Words para el posicionamiento.

## Especificar La Posición De La Tabla En Línea

Puede establecer la posición de una tabla en línea utilizando la API Aspose.Words y la propiedad [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Por lo tanto, puede ajustar la alineación de la tabla en relación con la página del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla en línea:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Obtener Alineación de Tabla Flotante

Si el ajuste del texto de la tabla se establece en **Around**, puede obtener la alineación horizontal y vertical de la tabla utilizando las propiedades [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) y [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Con **other types of text wrapping**, puede obtener la alineación de la tabla en línea utilizando la propiedad [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

El siguiente ejemplo de código muestra cómo obtener la alineación de la tabla:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Obtener Posición de Tabla Flotante

 La posición de una tabla flotante se determina utilizando las siguientes propiedades:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) - un objeto para calcular el posicionamiento horizontal de una tabla flotante
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) - un objeto para calcular el posicionamiento vertical de una mesa flotante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) - posición absoluta de la tabla flotante horizontal
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) - posición absoluta de la tabla flotante vertical
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) - opción para habilitar / deshabilitar la superposición con otros objetos flotantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – alineación horizontal relativa de la tabla flotante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – alineación vertical relativa de la tabla flotante.

El siguiente ejemplo de código muestra cómo obtener la posición de una tabla flotante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Establecer la Posición de la Mesa Flotante

Al igual que getting, puede establecer la posición de una tabla flotante utilizando la misma API Aspose.Words.

Es importante saber que la alineación y la distancia horizontal y vertical son propiedades combinadas y una puede restablecer la otra. Por ejemplo, establecer **RelativeHorizontalAlignment** restablecerá **AbsoluteHorizontalDistance** a su valor predeterminado y viceversa. Lo mismo es cierto para la disposición vertical.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla flotante:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Obtener la Distancia entre la Tabla y el Texto Circundante

Aspose.Words también brinda la oportunidad de averiguar las distancias entre las tablas y los textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) - el valor de la distancia desde arriba
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) - el valor de la distancia de percepción
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) - valor de distancia a la derecha
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) - valor de distancia a la izquierda

El siguiente ejemplo de código muestra cómo obtener la distancia entre una tabla y el texto que la rodea:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
