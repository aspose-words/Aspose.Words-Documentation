---
title: Trabajar con columnas y filas en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con columnas y filas
linktitle: Trabajar con columnas y filas
description: "Trabajar con partes de una tabla: filas, columnas y celdas usando C#. Especifique la fila de encabezado C#."
type: docs
weight: 30
url: /es/net/working-with-columns-and-rows/
---

Para tener más control sobre cómo funcionan las tablas, aprenda a manipular columnas y filas.

## Encuentre el índice de elementos de la tabla {#find-the-index-of-table-elements}

Las columnas, filas y celdas se administran accediendo al nodo del documento seleccionado por su índice. Encontrar el índice de cualquier nodo implica reunir todos los nodos secundarios del tipo de elemento del nodo principal y luego usar el método [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) para encontrar el índice del nodo deseado en la colección.

### Encontrar el índice de una tabla en un documento {#find-the-index-of-table-in-a-document}

A veces es posible que necesite realizar cambios en una tabla particular de un documento. Para hacer esto, puede consultar una tabla por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una tabla en un documento:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Encuentre el índice de una fila en una tabla {#find-the-index-of-a-row-in-a-table}

De manera similar, es posible que necesite realizar cambios en una fila específica de una tabla seleccionada. Para hacer esto, también puedes referirte a una fila por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una fila en una tabla:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Encuentre el índice de una celda en una fila {#find-the-index-of-a-cell-in-a-row}

Finalmente, es posible que necesites realizar cambios en una celda específica y también puedes hacerlo por índice de celda.

El siguiente ejemplo de código muestra cómo recuperar el índice de una celda en una fila:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Trabajar con columnas {#work-with-columns}

En el modelo de objetos de documento (DOM) Aspose.Words, el nodo [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) consta de nodos [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) y luego nodos [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/). Así, en el modelo de objetos `Document` de Aspose.Words, al igual que en los documentos de Word, no existe el concepto de columna.

Por diseño, las filas de la tabla en Microsoft Word y Aspose.Words son completamente independientes y las propiedades y operaciones básicas están contenidas únicamente en las filas y celdas de la tabla. Esto le da a las tablas la capacidad de tener algunos atributos interesantes:

- Cada fila de la tabla puede tener un número de celdas completamente diferente
- Verticalmente, las celdas de cada fila pueden tener diferentes anchos.
- Es posible unir tablas con diferentes formatos de filas y número de celdas.

Cualquier operación realizada en columnas es en realidad "atajos" que realizan la operación cambiando colectivamente las celdas de las filas de tal manera que parece que se están aplicando a las columnas. Es decir, puede realizar operaciones en columnas simplemente iterando sobre el mismo índice de celda de fila de la tabla.

El siguiente ejemplo de código simplifica dichas operaciones al demostrar una clase de fachada que recopila las celdas que forman una "columna" de una tabla:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

El siguiente ejemplo de código muestra cómo insertar una columna en blanco en una tabla:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

El siguiente ejemplo de código muestra cómo eliminar una columna de una tabla en un documento:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Especificar filas como filas de encabezado

Puede optar por repetir la primera fila de la tabla como fila de encabezado solo en la primera página o en cada página si la tabla está dividida en varias. En Aspose.Words, puede repetir la fila de encabezado en cada página usando la propiedad [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

También puede marcar varias filas de encabezado si dichas filas se encuentran una tras otra al principio de la tabla. Para hacer esto, debe aplicar las propiedades **HeadingFormat** a estas filas.

{{% alert color="primary" %}}

Tenga en cuenta que las filas de encabezado no funcionan en tablas anidadas. Es decir, si tienes una tabla dentro de otra tabla, esta configuración no tendrá ningún efecto. Es una limitación de Microsoft Word que no permite esto, Aspose.Words no.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla que incluya filas de encabezado que se repiten en las páginas siguientes:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Evite que las tablas y filas se divida entre páginas {#keep-tables-and-rows-from-breaking-across-pages}

Hay ocasiones en las que el contenido de una tabla no debe dividirse en páginas. Por ejemplo, si un título está encima de una tabla, el título y la tabla siempre deben mantenerse juntos en la misma página para preservar la apariencia adecuada.

Existen dos técnicas independientes que son útiles para lograr esta funcionalidad:

- `Allow row break across pages`, que se aplica a las filas de la tabla.
- `Keep with next`, que se aplica a los párrafos de las celdas de la tabla.

De forma predeterminada, las propiedades anteriores están deshabilitadas.

### Evite que una fila se divida en varias páginas {#keep-a-row-from-breaking-across-pages}

Esto implica restringir el contenido dentro de las celdas de una fila para que no se divida en una página. En Microsoft Word, esto se puede encontrar en Propiedades de la tabla como la opción "Permitir que las filas se divida entre páginas". En Aspose.Words esto se encuentra bajo el objeto [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) de un [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) como propiedad [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

El siguiente ejemplo de código muestra cómo deshabilitar la división de filas entre páginas para cada fila de una tabla:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Evite que una tabla se rompa en varias páginas {#keep-a-table-from-breaking-across-pages}

Para evitar que la tabla se divida en páginas, debemos especificar que queremos que el contenido de la tabla permanezca unido.

Para hacer esto, Aspose.Words utiliza un método que permite a los usuarios seleccionar una tabla y habilitar el parámetro [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) en verdadero para cada párrafo dentro de las celdas de la tabla. La excepción es el último párrafo de la tabla, que debe establecerse en falso.

El siguiente ejemplo de código muestra cómo configurar una tabla para que permanezca junta en la misma página:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}