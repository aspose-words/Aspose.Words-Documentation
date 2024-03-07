---
title: Trabajar con columnas y filas
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con columnas y filas
linktitle: Trabajar con columnas y filas
description: "Trabajar con partes de una tabla: filas, columnas y celdas usando Python. Especifique la fila de encabezado Python."
type: docs
weight: 30
url: /es/python-net/working-with-columns-and-rows/
---

Para tener más control sobre cómo funcionan las tablas, aprenda a manipular columnas y filas.

## Encontrar el índice de elementos de la tabla

Las columnas, filas y celdas se administran accediendo al nodo del documento seleccionado por su índice. Encontrar el índice de cualquier nodo implica reunir todos los nodos secundarios del tipo de elemento del nodo principal y luego usar el método [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) para encontrar el índice del nodo deseado en la colección.

### Encontrar el índice de una tabla en un documento

A veces es posible que necesite realizar cambios en una tabla particular de un documento. Para hacer esto, puede consultar una tabla por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una tabla en un documento:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Encontrar el índice de una fila en una tabla

De manera similar, es posible que necesite realizar cambios en una fila específica de una tabla seleccionada. Para hacer esto, también puedes referirte a una fila por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una fila en una tabla:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Encontrar el índice de una celda en una fila

Finalmente, es posible que necesites realizar cambios en una celda específica y también puedes hacerlo por índice de celda.

El siguiente ejemplo de código muestra cómo recuperar el índice de una celda en una fila:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Trabajar con columnas

En el modelo de objetos de documento (DOM) Aspose.Words, el nodo [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) consta de nodos [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) y luego nodos [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). Así, en el modelo de objetos `Document` de Aspose.Words, al igual que en los documentos de Word, no existe el concepto de columna.

Por diseño, las filas de la tabla en Microsoft Word y Aspose.Words son completamente independientes y las propiedades y operaciones básicas están contenidas únicamente en las filas y celdas de la tabla. Esto le da a las tablas la capacidad de tener algunos atributos interesantes:

- Cada fila de la tabla puede tener un número de celdas completamente diferente
- Verticalmente, las celdas de cada fila pueden tener diferentes anchos.
- Es posible unir tablas con diferentes formatos de filas y número de celdas.

Cualquier operación realizada en columnas es en realidad "atajos" que realizan la operación cambiando colectivamente las celdas de las filas de tal manera que parece que se están aplicando a las columnas. Es decir, puede realizar operaciones en columnas simplemente iterando sobre el mismo índice de celda de fila de la tabla.

El siguiente ejemplo de código simplifica dichas operaciones al demostrar una clase de fachada que recopila las celdas que forman una "columna" de una tabla:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

El siguiente ejemplo de código muestra cómo insertar una columna en blanco en una tabla:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

El siguiente ejemplo de código muestra cómo eliminar una columna de una tabla en un documento:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Especificar filas como filas de encabezado

Puede optar por repetir la primera fila de la tabla como fila de encabezado solo en la primera página o en cada página si la tabla está dividida en varias. En Aspose.Words, puede repetir la fila de encabezado en cada página usando la propiedad [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/).

También puede marcar varias filas de encabezado si dichas filas se encuentran una tras otra al principio de la tabla. Para hacer esto, debe aplicar las propiedades **HeadingFormat** a estas filas.

{{% alert color="primary" %}}

Tenga en cuenta que las filas de encabezado no funcionan en tablas anidadas. Es decir, si tienes una tabla dentro de otra tabla, esta configuración no tendrá ningún efecto. Es una limitación de Microsoft Word que no permite esto, Aspose.Words no.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla que incluya filas de encabezado que se repiten en las páginas siguientes:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Evite que las tablas y filas se divida entre páginas

Hay ocasiones en las que el contenido de una tabla no debe dividirse en páginas. Por ejemplo, si un título está encima de una tabla, el título y la tabla siempre deben mantenerse juntos en la misma página para preservar la apariencia adecuada.

Existen dos técnicas independientes que son útiles para lograr esta funcionalidad:

- `Allow row break across pages`, que se aplica a las filas de la tabla.
- `Keep with next`, que se aplica a los párrafos de las celdas de la tabla.

De forma predeterminada, las propiedades anteriores están deshabilitadas.

### Evite que una fila se divida entre páginas

Esto implica restringir el contenido dentro de las celdas de una fila para que no se divida en una página. En Microsoft Word, esto se puede encontrar en Propiedades de la tabla como la opción "Permitir que las filas se divida entre páginas". En Aspose.Words esto se encuentra bajo el objeto [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) de un [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) como propiedad [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

El siguiente ejemplo de código muestra cómo deshabilitar la división de filas entre páginas para cada fila de una tabla:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Evite que una tabla se rompa entre páginas

Para evitar que la tabla se divida en páginas, debemos especificar que queremos que el contenido de la tabla permanezca unido.

Para hacer esto, Aspose.Words utiliza un método que permite a los usuarios seleccionar una tabla y habilitar el parámetro [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) en verdadero para cada párrafo dentro de las celdas de la tabla. La excepción es el último párrafo de la tabla, que debe establecerse en falso.

El siguiente ejemplo de código muestra cómo configurar una tabla para que permanezca junta en la misma página:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}