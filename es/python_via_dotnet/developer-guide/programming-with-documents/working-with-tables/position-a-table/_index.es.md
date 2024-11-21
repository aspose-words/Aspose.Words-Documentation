---
title: Posición de la tabla en Python
second_title: Aspose.Words para Python
articleTitle: Colocar una mesa
linktitle: Colocar una mesa
description: "Especifique la posición de la tabla en Python. Obtenga una alineación de la tabla, obtenga y establezca la posición de la tabla flotante usando Python."
type: docs
weight: 50
url: /es/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Hay tablas flotantes y tablas en línea:

* Los **tablas en línea** se colocan en la misma capa que el texto y se colocan en un flujo de texto que solo rodea la tabla de arriba y de abajo. Las tablas en línea siempre aparecerán entre los párrafos donde las colocaste.
* Los **Mesas flotantes** se superponen al texto y la posición de la tabla con respecto al párrafo está determinada por el ancla de la tabla. Debido a esto, la posición de la tabla flotante en el documento se ve afectada por la configuración de posicionamiento vertical y horizontal.

A veces es necesario colocar una tabla en un documento de cierta manera. Para hacer esto, necesita usar las herramientas de alineación y establecer las sangrías entre la tabla y el texto circundante.

En este artículo, analizaremos qué opciones ofrece Aspose.Words para el posicionamiento.

## Especificar la posición de la tabla en línea

Puede establecer la posición de una tabla en línea utilizando Aspose.Words API y la propiedad [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Por lo tanto, puede ajustar la alineación de la tabla en relación con la página del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla en línea:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Obtener alineación de mesa flotante

Si el ajuste del texto de la tabla está configurado en **Around**, puede obtener la alineación horizontal y vertical de la tabla utilizando las propiedades [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) y [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

Con **otros tipos de ajuste de texto**, puede obtener la alineación de la tabla en línea utilizando la propiedad [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

El siguiente ejemplo de código muestra cómo obtener la alineación de la tabla:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Obtener posición de mesa flotante

La posición de una mesa flotante se determina mediante las siguientes propiedades:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – un objeto para calcular el posicionamiento horizontal de una mesa flotante
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – un objeto para calcular el posicionamiento vertical de una mesa flotante
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – posición absoluta de la mesa flotante horizontal
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – posición absoluta de la mesa flotante vertical
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – opción para habilitar/deshabilitar la superposición con otros objetos flotantes
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – alineación horizontal relativa de la mesa flotante.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – alineación vertical relativa de la mesa flotante.

El siguiente ejemplo de código muestra cómo obtener la posición de una tabla flotante:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Establecer la posición de la mesa flotante

Al igual que obtener, puede establecer la posición de una tabla flotante usando el mismo Aspose.Words API.

Es importante saber que la alineación y la distancia horizontal y vertical son propiedades combinadas y una puede restablecer la otra. Por ejemplo, configurar **RelativeHorizontalAlignment** restablecerá el **AbsoluteHorizontalDistance** a su valor predeterminado y viceversa. Lo mismo ocurre con la disposición vertical.

El siguiente ejemplo de código muestra cómo establecer la posición de una tabla flotante:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Obtener la distancia entre la tabla y el texto circundante

Aspose.Words también brinda la oportunidad de conocer las distancias entre tablas y textos circundantes:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – el valor de la distancia desde arriba
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – el valor de la distancia de percepción
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – valor de distancia a la derecha
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – valor de distancia a la izquierda

El siguiente ejemplo de código muestra cómo obtener la distancia entre una tabla y el texto que la rodea:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
