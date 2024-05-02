---
title: Combinar celdas de mesa en Java
second_title: Aspose.Words para Java
articleTitle: Merge Table Cells
linktitle: Merge Table Cells
description: "Cómo combinar las células de mesa en Java. Compruebe si las células de una tabla se fusionan con Java."
type: docs
weight: 40
url: /es/java/working-with-merged-cells/
---

Algunas veces ciertas filas en una tabla requieren una partida o grandes bloques de texto que toman el ancho completo de la tabla. Para el diseño adecuado de la tabla, el usuario puede combinar varias celdas de mesa en una. Aspose.Words soporta células fusionadas al trabajar con todos los formatos de entrada, incluyendo la importación de contenido HTML.

## Cómo combinar las células de la mesa

In Aspose.Words, las células fusionadas están representadas por las siguientes propiedades de [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) clase:

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) que describe si la célula es parte de una fusión horizontal de células
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) que describe si la célula es parte de una fusión vertical de células

Los valores de estas propiedades determinan el comportamiento de fusión de las células:

- La primera célula en una secuencia de células fusionadas tendrá [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Cualquier celda posteriormente fusionada tendrá [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Una célula que no esté fusionada tendrá [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

A veces, al cargar las células de documentos existentes en una tabla, aparecerán fusionadas. Sin embargo, en realidad puede ser una célula larga – a veces Microsoft Word exporta células fusionadas de esta manera. Esto puede ser confuso al intentar trabajar con células individuales, pero no parece haber ningún patrón particular en cuanto a cuándo sucede esto.

{{% /alert %}}

## Comprobando si una célula es fusionada

Para comprobar si una célula es parte de una secuencia de células fusionadas, simplemente revisamos la **HorizontalMerge** y **VerticalMerge** propiedades.

El siguiente ejemplo de código muestra cómo imprimir el tipo de fusión de células horizontales y verticales:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Combinar celdas de mesa al utilizar DocumentBuilder

Para fusionar células en una tabla creada con [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), necesita establecer el tipo de fusión adecuado para cada célula donde se espera la fusión – primero **CellMerge.First** y luego **CellMerge.Previous**.

Además, usted debe recordar para limpiar el ajuste de fusión para aquellas células donde no se requiere fusión – esto se puede hacer estableciendo la primera célula no fusión a **CellMerge.None**. Si esto no se hace, todas las células de la mesa serán fusionadas.

El siguiente ejemplo de código muestra cómo crear una tabla con dos filas donde las células de la primera fila se fusionan horizontalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

El siguiente ejemplo de código muestra cómo crear una tabla de dos columnas donde las células de la primera columna se fusionan verticalmente:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Combina células de mesa en otros casos

En otras situaciones donde **DocumentBuilder** no se utiliza, como en una tabla existente, la fusión de células de la manera anterior puede no ser tan fácil. En cambio, podemos envolver las operaciones básicas involucradas en la aplicación de propiedades fusionadas a células en un método que hace la tarea mucho más fácil. Este método es similar al método Merge automatización, que se llama a fusionar una gama de células en una tabla.

El siguiente código fusionará las células de la tabla en el rango especificado, comenzando en la celda dada y terminando en la célula final. En este caso, el rango puede abarcar múltiples filas o columnas:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

El siguiente ejemplo de código muestra cómo combinar una gama de células entre dos células especificadas:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Células fusionadas verticales y horizontales en la tabla HTML

Como hemos dicho en artículos anteriores, una tabla en Microsoft Word es un conjunto de filas independientes. Cada fila tiene un conjunto de células que son independientes de las células de otras filas. Así, en el Microsoft Word tabla no hay tal objeto como un "column", y "1a columna" es algo como "el conjunto de las 1a celdas de cada fila en la tabla". Esto permite a los usuarios tener una tabla en la que, por ejemplo, la primera fila consta de dos células – 2cm y 1cm, y la segunda fila consta de dos células diferentes – 1cm y 2cm de ancho. Y Aspose.Words apoya este concepto de tablas.

Una tabla en HTML tiene una estructura esencialmente diferente: cada fila tiene el mismo número de células y (es importante para la tarea) cada célula tiene el ancho de la columna correspondiente, el mismo para todas las células en una columna. Así que si **HorizontalMerge** y **VerticalMerge** devolver un valor incorrecto, utilice el siguiente ejemplo de código:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Convertir en Horizontal Células fusión

A veces no es posible detectar qué células se fusionan porque algunas versiones más nuevas de Microsoft Word ya no utilizar las banderas de fusión cuando las células se fusionan horizontalmente. Pero para situaciones en las que las células se funden en una célula horizontalmente por su ancho usando banderas de fusión, Aspose.Words proporciona el `ConvertToHorizontallyMergedCells` método para convertir células. Este método simplemente transforma la tabla y añade nuevas células según sea necesario.

El siguiente ejemplo de código muestra el método anterior en operación:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
