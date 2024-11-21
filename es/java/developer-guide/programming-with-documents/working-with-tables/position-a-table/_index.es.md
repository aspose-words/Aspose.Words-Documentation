---
title: Posición de la tabla Java
second_title: Aspose.Words para Java
articleTitle: Posición de una tabla
linktitle: Posición de una tabla
description: "Especifique la posición de la mesa en Java. Obtener una alineación de la mesa, obtener y establecer la posición de la mesa flotante utilizando Java."
type: docs
weight: 50
url: /es/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Hay tablas flotantes y tablas inline:

* **Cuadros de línea** se colocan en la misma capa que el texto y se colocan en un flujo de texto que sólo rodea la tabla arriba y abajo. Las tablas en línea siempre aparecerán entre los párrafos en los que las colocaste.
* **Mesas flotantes** están capas sobre el texto, y la posición de la tabla relativa al párrafo está determinada por el ancla del cuadro. Debido a esto, la posición de la tabla flotante en el documento se ve afectada por los ajustes de posicionamiento vertical y horizontal.

A veces necesitas colocar una tabla en un documento de cierta manera. Para ello, es necesario utilizar las herramientas de alineación y establecer los indents entre la tabla y el texto circundante.

En este artículo discutiremos qué opciones Aspose.Words proporciona posicionamiento.

## Especificar la posición de la tabla en línea

Puede establecer la posición de una tabla en línea usando la Aspose.Words API y el [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment) propiedad. Por lo tanto, puede ajustar la alineación de la tabla relativa a la página de documento.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla en línea:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Obtener alineación de la mesa flotante

Si el texto de la tabla se fija **Around**, puede conseguir la alineación horizontal y vertical de la tabla utilizando [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) y [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) propiedades.

Con **otros tipos de texto envolviendo**, puede conseguir alineación de la tabla en línea utilizando **Alignment** propiedad.

El siguiente ejemplo de código muestra cómo conseguir la alineación de la tabla:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Obtener Posición de tabla flotante

 La posición de una tabla flotante se determina utilizando las siguientes propiedades:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – un objeto para calcular el posicionamiento horizontal de una tabla flotante
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – un objeto para calcular el posicionamiento vertical de una tabla flotante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – posición de mesa flotante horizontal absoluta
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – posición de mesa flotante vertical absoluta
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – opción para habilitar/desactivar la superposición con otros objetos flotantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – tabla flotante relativa alineación horizontal.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – tabla flotante relativa alineación vertical.

El siguiente ejemplo de código muestra cómo conseguir la posición de una tabla flotante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Establecer posición de mesa flotante

Al igual que conseguir, puede establecer la posición de una mesa flotante utilizando la misma Aspose.Words API.

Es importante saber que la alineación y la distancia horizontal y vertical son propiedades combinadas y se puede restablecer la otra. Por ejemplo, establecer el **RelativeHorizontalAlignment** se restablecerá el **AbsoluteHorizontalDistance** a su valor predeterminado y viceversa. Lo mismo es true para el arreglo vertical.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla flotante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Distancia entre tabla y texto redondeado

Aspose.Words También ofrece la oportunidad de descubrir las distancias entre tablas y textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – el valor de la distancia desde arriba
- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – el valor de la distancia de la percepción
- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – valor de distancia en la derecha
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – valor de distancia en la izquierda

El siguiente ejemplo de código muestra cómo obtener la distancia entre una tabla y su texto circundante:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
