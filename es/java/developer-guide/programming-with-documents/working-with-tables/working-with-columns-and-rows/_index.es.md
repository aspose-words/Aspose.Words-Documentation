---
title: Trabajar con columnas y filas en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Columnas y Filas
linktitle: Trabajar con Columnas y Filas
description: "Trabajar con partes de una tabla: filas, columnas y celdas usando Java. Especifique la fila de encabezado Java."
type: docs
weight: 30
url: /es/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Para tener más control sobre el funcionamiento de las tablas, aprenda a manipular columnas y filas.

## Buscar el Índice del Elemento de la Tabla

Las columnas, filas y celdas se administran accediendo al nodo de documento seleccionado por su índice. Encontrar el índice de cualquier nodo implica recopilar todos los nodos secundarios del tipo de elemento del nodo principal y luego usar el método [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) para encontrar el índice del nodo deseado en la colección.

### Buscar el Índice de una Tabla en un Documento

A veces, es posible que deba realizar cambios en una tabla en particular de un documento. Para hacer esto, puede hacer referencia a una tabla por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una tabla en un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Encontrar el Índice de una Fila en una Tabla

Del mismo modo, es posible que deba realizar cambios en una fila específica de una tabla seleccionada. Para hacer esto, también puede hacer referencia a una fila por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una fila en una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Encontrar el Índice de una Celda en una Fila

Finalmente, es posible que deba realizar cambios en una celda específica, y también puede hacerlo mediante el índice de celda.

El siguiente ejemplo de código muestra cómo recuperar el índice de una celda en una fila:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Trabajar con Columnas

En el Modelo de Objetos de documento Aspose.Words (DOM), el nodo [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) consta de [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nodos y luego [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nodos. Por lo tanto, en el Modelo de objetos `Document` de Aspose.Words, como en los documentos de Word, no existe el concepto de columna.

Por diseño, las filas de la tabla en Microsoft Word y Aspose.Words son completamente independientes, y las propiedades y operaciones básicas están contenidas solo en las filas y celdas de la tabla. Esto le da a las tablas la capacidad de tener algunos atributos interesantes:

- Cada fila de la tabla puede tener un número completamente diferente de celdas
- Verticalmente, las celdas de cada fila pueden tener diferentes anchos.
- Es posible unir tablas con diferentes formatos de fila y número de celdas

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Cualquier operación realizada en columnas son en realidad "accesos directos" que realizan la operación cambiando colectivamente las celdas de la fila de tal manera que parece que se están aplicando a las columnas. Es decir, puede realizar operaciones en columnas simplemente iterando sobre el mismo índice de celda de fila de tabla.

El siguiente ejemplo de código simplifica dichas operaciones al probar una clase facade que recopila las celdas que componen una "columna" de una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

El siguiente ejemplo de código muestra cómo insertar una columna en blanco en una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

El siguiente ejemplo de código muestra cómo eliminar una columna de una tabla en un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Especificar Filas como Filas de Encabezado

Puede optar por repetir la primera fila de la tabla como Fila de encabezado solo en la primera página o en cada página si la tabla está dividida en varias. En Aspose.Words, puede repetir la fila del encabezado en cada página utilizando la propiedad [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

También puede marcar varias filas de encabezado si dichas filas se encuentran una tras otra al principio de la tabla. Para hacer esto, debe aplicar las propiedades **HeadingFormat** a estas filas.

{{% alert color="primary" %}}

Tenga en cuenta que las filas de encabezado no funcionan en tablas anidadas. Es decir, si tiene una tabla dentro de otra tabla, esta configuración no tendrá ningún efecto. Es una limitación de Microsoft Word que no permite esto, no Aspose.Words.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una tabla que incluya filas de encabezado que se repitan en las páginas siguientes:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Evite que las Tablas y Filas se Dividan en Páginas {#keep-tables-and-rows-from-breaking-across-pages}

Hay ocasiones en las que el contenido de una tabla no debe dividirse en páginas. Por ejemplo, si un título está encima de una tabla, el título y la tabla siempre deben mantenerse juntos en la misma página para preservar la apariencia adecuada.

Hay dos técnicas separadas que son útiles para lograr esta funcionalidad:

- `Allow row break across pages`, que se aplica a las filas de la tabla
- `Keep with next`, que se aplica a párrafos en celdas de tabla

De forma predeterminada, las propiedades anteriores están deshabilitadas.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Evita que una Fila se Rompa En las Páginas {#keep-a-row-from-breaking-across-pages}

Esto implica restringir el contenido dentro de las celdas de una fila para que no se divida en una página. En Microsoft Word, esto se puede encontrar en Propiedades de la tabla como la opción "Permitir que la fila se divida entre páginas". En Aspose.Words esto se encuentra debajo del objeto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) de a [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) como la propiedad [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

El siguiente ejemplo de código muestra cómo deshabilitar la división de filas en páginas para cada fila de una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Evita que una Tabla se Divida en Páginas {#keep-a-table-from-breaking-across-pages}

Para evitar que la tabla se divida en páginas, debemos especificar que queremos que el contenido contenido en la tabla permanezca unido.

Para hacer esto, Aspose.Words usa un método que permite a los usuarios seleccionar una tabla y habilitar el parámetro [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) en verdadero para cada párrafo dentro de las celdas de la tabla. La excepción es el último párrafo de la tabla, que debe establecerse en falso.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

El siguiente ejemplo de código muestra cómo configurar una tabla para que permanezcan juntas en la misma página:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
