---
title: Combinar celdas de tabla en C++
second_title: Aspose.Words para C++
articleTitle: Combinar Celdas de Tabla
linktitle: Combinar Celdas de Tabla
description: "Cómo fusionar celdas de tabla en C++. Compruebe si las celdas de una tabla se combinan con C++."
type: docs
weight: 40
url: /es/cpp/merge-table-cells/
---

A veces, ciertas filas de una tabla requieren un encabezado o grandes bloques de texto que ocupan todo el ancho de la tabla. Para un diseño adecuado de la tabla, el usuario puede fusionar varias celdas de la tabla en una sola. Aspose.Words admite celdas combinadas cuando se trabaja con todos los formatos de entrada, incluida la importación de contenido HTML.

## Cómo Combinar Celdas de Tabla

En Aspose.Words, las celdas combinadas se representan mediante las siguientes propiedades de la clase [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) que describe si la celda es parte de una combinación horizontal de celdas
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) que describe si la celda es parte de una fusión vertical de celdas

Los valores de estas propiedades determinan el comportamiento de fusión de las celdas:

- La primera celda de una secuencia de celdas combinadas tendrá [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Cualquier celda combinada posteriormente tendrá [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Una celda que no esté fusionada tendrá [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

A veces, al cargar celdas de documentos existentes en una tabla, aparecerán fusionadas. Sin embargo, en realidad puede ser una celda larga; a veces, Microsoft Word exporta celdas combinadas de esta manera. Esto puede resultar confuso cuando se intenta trabajar con celdas individuales, pero no parece haber ningún patrón particular sobre cuándo sucede esto.

{{% /alert %}}

## Compruebe si la celda está fusionada

Para verificar si una celda es parte de una secuencia de celdas combinadas, simplemente verificamos las propiedades **HorizontalMerge** y **VerticalMerge**.

El siguiente ejemplo de código muestra cómo imprimir el tipo de combinación de celdas horizontal y vertical:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Celdas combinadas en una tabla {#merge-cells-in-a-table}

Para fusionar celdas en una tabla creada con [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), debe establecer el tipo de fusión apropiado para cada celda donde se espera la fusión: primero **CellMerge.First** y luego **CellMerge.Previous**.

Además, debe recordar borrar la configuración de combinación para aquellas celdas donde no se requiere combinación; esto se puede hacer configurando la primera celda sin combinación en **CellMerge.None**. Si no se hace esto, se fusionarán todas las celdas de la tabla.

El siguiente ejemplo de código muestra cómo crear una tabla con dos filas donde las celdas de la primera fila se fusionan horizontalmente:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

El siguiente ejemplo de código muestra cómo crear una tabla de dos columnas donde las celdas de la primera columna se fusionan verticalmente:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Combinar Celdas de Tabla en Otros Casos

En otras situaciones en las que no se usa **DocumentBuilder**, como en una tabla existente, fusionar celdas de la manera anterior puede no ser tan fácil. En cambio, podemos ajustar las operaciones básicas involucradas en la aplicación de propiedades de combinación a las celdas en un método que facilita mucho la tarea. Este método es similar al método de automatización de combinación, que se llama para combinar un rango de celdas en una tabla.

El siguiente código fusionará las celdas de la tabla en el rango especificado, comenzando en la celda dada y terminando en la celda final. En este caso, el rango puede abarcar varias filas o columnas:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

El siguiente ejemplo de código muestra cómo fusionar un rango de celdas entre dos celdas especificadas:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Dependiendo de la versión del marco que esté utilizando, es posible que desee refinar este método convirtiéndolo en un método de extensión. En este caso, puede llamar a este método directamente en una celda para fusionar un rango de celdas, como `cell1.Merge(cell2)`.

## Celdas Combinadas Verticales y Horizontales en una tabla {#vertical-and-Horizontal-merged-cells-in-the-table}

Como hemos dicho en artículos anteriores, una tabla en Microsoft Word es un conjunto de filas independientes. Cada fila tiene un conjunto de celdas que son independientes de las celdas de otras filas. Por lo tanto, en la tabla de Microsoft Word no existe un objeto como una "columna", y la "columna 1 st" es algo así como "el conjunto de las 1st celdas de cada fila de la tabla". Esto permite a los usuarios tener una tabla en la que, por ejemplo, la fila 1st consta de dos celdas: 2 cm y 1 cm, y la fila 2nd consta de dos celdas diferentes: 1 cm y 2 cm de ancho. Y Aspose.Words apoya este concepto de tablas.

Una tabla en HTML tiene una estructura esencialmente diferente: cada fila tiene el mismo número de celdas y (es importante para la tarea) cada celda tiene el ancho de la columna correspondiente, el mismo para todas las celdas de una columna. Entonces, si **HorizontalMerge** y **VerticalMerge** devuelven un valor incorrecto, use el siguiente ejemplo de código:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Convertir a Celdas Combinadas horizontalmente {#convert-to-horizontally-merged-cells}

A veces no es posible detectar qué celdas se combinan porque algunas versiones más recientes de Microsoft Word ya no usan los indicadores de combinación cuando las celdas se combinan horizontalmente. Pero para situaciones en las que las celdas se fusionan en una celda horizontalmente por su ancho usando indicadores de fusión, Aspose.Words proporciona el método `ConvertToHorizontallyMergedCells` para convertir celdas. Este método simplemente transforma la tabla y agrega nuevas celdas según sea necesario.

El siguiente ejemplo de código muestra el método anterior en funcionamiento:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}