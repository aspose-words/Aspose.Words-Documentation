---
title: Posición de la tabla en Java
second_title: Aspose.Words por Java
articleTitle: Colocar una Mesa
linktitle: Colocar una Mesa
description: "Especifique la posición de la tabla en Java. Obtenga una alineación de tabla, obtenga y establezca la posición de la tabla flotante usando Java."
type: docs
weight: 50
url: /es/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Hay tablas flotantes y tablas en línea:

* **Inline tables** se colocan en la misma capa que el texto y se colocan en un flujo de texto que solo rodea la tabla de arriba y de abajo. Las tablas alineadas siempre aparecerán entre los párrafos donde las colocó.
* **Floating tables** se colocan en capas sobre el texto y la posición de la tabla en relación con el párrafo está determinada por el ancla de la tabla. Debido a esto, la posición de la tabla flotante en el documento se ve afectada por la configuración de posicionamiento vertical y horizontal.

A veces es necesario colocar una tabla en un documento de cierta manera. Para hacer esto, debe usar las herramientas de alineación y establecer las sangrías entre la tabla y el texto circundante.

En este artículo, discutiremos qué opciones proporciona Aspose.Words para el posicionamiento.

## Especificar La Posición De La Tabla En Línea

Puede establecer la posición de una tabla en línea utilizando la propiedad Aspose.Words API y [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Por lo tanto, puede ajustar la alineación de la tabla en relación con la página del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla en línea:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obtener Alineación de Tabla Flotante

Si el ajuste del texto de la tabla está establecido en **Around**, puede obtener la alineación horizontal y vertical de la tabla utilizando las propiedades [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) y [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

Con **other types of text wrapping**, puede obtener la alineación de la tabla en línea utilizando la propiedad **Alignment**.

El siguiente ejemplo de código muestra cómo obtener la alineación de la tabla:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Obtener Posición de Tabla Flotante

 La posición de una tabla flotante se determina utilizando las siguientes propiedades:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) - un objeto para calcular el posicionamiento horizontal de una tabla flotante
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) - un objeto para calcular el posicionamiento vertical de una mesa flotante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) - posición absoluta de la tabla flotante horizontal
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) - posición absoluta de la tabla flotante vertical
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) - opción para habilitar / deshabilitar la superposición con otros objetos flotantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – alineación horizontal relativa de la tabla flotante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – alineación vertical relativa de la tabla flotante.

El siguiente ejemplo de código muestra cómo obtener la posición de una tabla flotante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Establecer la Posición de la Mesa Flotante

Al igual que getting, puede establecer la posición de una tabla flotante usando el mismo Aspose.Words API.

Es importante saber que la alineación y la distancia horizontal y vertical son propiedades combinadas y una puede restablecer la otra. Por ejemplo, establecer **RelativeHorizontalAlignment** restablecerá **AbsoluteHorizontalDistance** a su valor predeterminado y viceversa. Lo mismo es cierto para la disposición vertical.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla flotante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Obtener la Distancia entre la Tabla y el Texto Circundante

Aspose.Words también brinda la oportunidad de averiguar las distancias entre las tablas y los textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) - el valor de la distancia desde arriba
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) - el valor de la distancia de percepción
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) - valor de distancia a la derecha
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) - valor de distancia a la izquierda

El siguiente ejemplo de código muestra cómo obtener la distancia entre una tabla y el texto que la rodea:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
