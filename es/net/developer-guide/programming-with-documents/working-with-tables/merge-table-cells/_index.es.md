---
title: Fusionar celdas de tabla en C#
second_title: Aspose.Words para .NET
articleTitle: Fusionar celdas de tabla
linktitle: Fusionar celdas de tabla
description: "Cómo fusionar celdas de tablas en C#. Compruebe si las celdas de una tabla están combinadas usando C#."
type: docs
weight: 40
url: /es/net/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

A veces, determinadas filas de una tabla requieren un encabezado o grandes bloques de texto que ocupan todo el ancho de la tabla. Para un diseño adecuado de la tabla, el usuario puede fusionar varias celdas de la tabla en una. Aspose.Words admite celdas combinadas cuando se trabaja con todos los formatos de entrada, incluida la importación de contenido HTML.

## Cómo fusionar celdas de tablas

En Aspose.Words, las celdas fusionadas están representadas por las siguientes propiedades de la clase [CellFormat](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/horizontalmerge/) que describe si la celda es parte de una combinación horizontal de celdas
- [VerticalMerge](https://reference.aspose.com/words/es/net/aspose.words.tables/cellformat/verticalmerge/) que describe si la celda es parte de una combinación vertical de celdas

Los valores de estas propiedades determinan el comportamiento de fusión de las celdas:

- La primera celda de una secuencia de celdas fusionadas tendrá [CellMerge.First](https://reference.aspose.com/words/es/net/aspose.words.tables/cellmerge/).
- Cualquier celda fusionada posteriormente tendrá [CellMerge.Previous](https://reference.aspose.com/words/es/net/aspose.words.tables/cellmerge/)
- Una celda que no esté fusionada tendrá [CellMerge.None](https://reference.aspose.com/words/es/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

A veces, al cargar celdas de documentos existentes en una tabla, aparecerán fusionadas. Sin embargo, en realidad puede ser una celda larga; a veces, Microsoft Word exporta celdas combinadas de esta manera. Esto puede resultar confuso cuando se intenta trabajar con células individuales, pero no parece haber ningún patrón particular sobre cuándo sucede esto.

{{% /alert %}}

## Comprobar si la celda está fusionada

Para comprobar si una celda es parte de una secuencia de celdas fusionadas, simplemente verificamos las propiedades **HorizontalMerge** y **VerticalMerge**.

El siguiente ejemplo de código muestra cómo imprimir el tipo de combinación de celdas horizontal y vertical:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Fusionar celdas de tabla cuando se utiliza DocumentBuilder

Para fusionar celdas en una tabla creada con [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/), debe establecer el tipo de combinación apropiado para cada celda donde se espera la combinación: primero **CellMerge.First** y luego **CellMerge.Previous**.

Además, debe recordar borrar la configuración de combinación para aquellas celdas donde no se requiere combinación; esto se puede hacer configurando la primera celda que no es de combinación en **CellMerge.None**. Si no se hace esto, se fusionarán todas las celdas de la tabla.

El siguiente ejemplo de código muestra cómo crear una tabla con dos filas donde las celdas de la primera fila se combinan horizontalmente:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

El siguiente ejemplo de código muestra cómo crear una tabla de dos columnas donde las celdas de la primera columna se combinan verticalmente:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Combinar celdas de tabla en otros casos

En otras situaciones en las que no se utiliza **DocumentBuilder**, como en una tabla existente, fusionar celdas de la forma anterior puede no ser tan fácil. En cambio, podemos agrupar las operaciones básicas involucradas en la aplicación de propiedades de combinación a celdas en un método que facilite mucho la tarea. Este método es similar al método de automatización Fusionar, que se llama para fusionar un rango de celdas en una tabla.

El siguiente código fusionará las celdas de la tabla en el rango especificado, comenzando en la celda dada y terminando en la celda final. En este caso, el rango puede abarcar varias filas o columnas:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

El siguiente ejemplo de código muestra cómo fusionar un rango de celdas entre dos celdas especificadas:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Dependiendo de la versión de .NET Framework que esté utilizando, es posible que desee perfeccionar este método convirtiéndolo en un método de extensión. En este caso, puede llamar a este método directamente en una celda para fusionar un rango de celdas, como `cell1.Merge(cell2)`.

## Celdas combinadas verticales y horizontales en una tabla HTML

Como hemos dicho en artículos anteriores, una tabla en Microsoft Word es un conjunto de filas independientes. Cada fila tiene un conjunto de celdas que son independientes de las celdas de otras filas. Por lo tanto, en la tabla Microsoft Word no existe un objeto llamado "columna", y la "primera columna" es algo así como "el conjunto de las primeras celdas de cada fila de la tabla". Esto permite a los usuarios tener una tabla en la que, por ejemplo, la primera fila consta de dos celdas: 2 cm y 1 cm, y la segunda fila consta de dos celdas diferentes: 1 cm y 2 cm de ancho. Y Aspose.Words apoya este concepto de tablas.

Una tabla en HTML tiene una estructura esencialmente diferente: cada fila tiene el mismo número de celdas y (es importante para la tarea) cada celda tiene el ancho de la columna correspondiente, el mismo para todas las celdas de una columna. Entonces, si **HorizontalMerge** y **VerticalMerge** devuelven un valor incorrecto, use el siguiente código de ejemplo:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Convertir a celdas fusionadas horizontalmente

A veces no es posible detectar qué celdas se combinan porque algunas versiones más nuevas de Microsoft Word ya no usan los indicadores de combinación cuando las celdas se combinan horizontalmente. Pero para situaciones en las que las celdas se fusionan en una celda horizontalmente por su ancho usando indicadores de combinación, Aspose.Words proporciona el método `ConvertToHorizontallyMergedCells` para convertir celdas. Este método simplemente transforma la tabla y agrega nuevas celdas según sea necesario.

El siguiente ejemplo de código muestra el método anterior en funcionamiento:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
