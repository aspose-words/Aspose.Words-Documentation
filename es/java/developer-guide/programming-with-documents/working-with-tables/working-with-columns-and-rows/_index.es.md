---
title: Trabajar con columnas y filas en Java
second_title: Aspose.Words para Java
articleTitle: Trabajar con Columnas y Filas
linktitle: Trabajar con Columnas y Filas
description: "Trabajando con partes de una tabla – filas, columnas y células usando Java. Especifique la fila del encabezado Java."
type: docs
weight: 30
url: /es/java/working-with-columns-and-rows/
---

Para más control sobre cómo funcionan las tablas, aprenda a manipular columnas y filas.

## Encontrar el índice de elemento de la tabla

Las columnas, filas y células se gestionan accediendo al nodo de documento seleccionado por su índice. Encontrar el índice de cualquier nodo implica reunir todos los nodos del tipo de elemento del nodo padre, y luego usar el [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) método para encontrar el índice del nodo deseado en la colección.

### Encontrar el índice de una tabla en un documento

A veces es posible que necesite hacer cambios en una tabla en particular en un documento. Para ello, puede referirse a una tabla por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una tabla en un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Encontrar el índice de una fila en una tabla

Del mismo modo, es posible que necesite hacer cambios en una fila específica en una tabla seleccionada. Para ello, también puede referirse a una fila por su índice.

El siguiente ejemplo de código muestra cómo recuperar el índice de una fila en una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Encontrar el índice de una célula en una fila

Por último, es posible que necesite hacer cambios en una celda específica, y también puede hacerlo por índice celular.

El siguiente ejemplo de código muestra cómo recuperar el índice de una célula en una fila:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Trabajar con Columnas

En el Aspose.Words Document Object Model (G)DOM), el [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) nodo consiste en [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nodos y luego [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nodos. Así, en el `Document` Modelo de Objetos Aspose.Words, como en documentos de Word, no hay concepto de una columna.

Por diseño, las filas de mesa en Microsoft Word y Aspose.Words son completamente independientes, y las propiedades y operaciones básicas están contenidas sólo en las filas y células de la tabla. Esto da a las tablas la capacidad de tener algunos atributos interesantes:

- Cada fila de mesa puede tener un número completamente diferente de células
- Verticalmente, las células de cada fila pueden tener diferentes anchos
- Es posible unir tablas con diferentes formatos de fila y número de células

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Cualquier operación realizada en las columnas es en realidad "shortcuts" que realizan la operación cambiando colectivamente las células de fila de tal manera que parece que se están aplicando a las columnas. Es decir, usted puede realizar operaciones en columnas simplemente iterando sobre el mismo índice de la fila de la tabla.

El siguiente ejemplo de código simplifica tales operaciones probando una clase de fachada que recoge las células que componen un "column" de una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

El siguiente ejemplo de código muestra cómo insertar una columna en blanco en una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

El siguiente ejemplo de código muestra cómo eliminar una columna de una tabla en un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Especifique las filas como las filas de encabezado

Usted puede elegir repetir la primera fila en la tabla como el Header Row sólo en la primera página o en cada página si la tabla se divide en varios. In Aspose.Words, puede repetir el Header Row en cada página usando el [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) propiedad.

También puede marcar varias filas de cabecera si tales filas se encuentran una después de la otra al principio de la tabla. Para hacer esto, usted necesita aplicar el **HeadingFormat** propiedades a estas filas.

{{% alert color="primary" %}}

Tenga en cuenta que Header Rows no funcionan en tablas anidadas. Es decir, si tienes una mesa dentro de otra mesa, este ajuste no tendrá efecto. Es una limitación Microsoft Word que no permite esto, no Aspose.Words.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo construir una tabla que incluye Header Rows que repiten en las páginas siguientes:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Mantenga las tablas y filas de romper a través de las páginas {#keep-tables-and-rows-from-breaking-across-pages}

Hay momentos en que el contenido de una tabla no debe dividirse en páginas. Por ejemplo, si un título está por encima de una tabla, el título y la tabla deben mantenerse siempre juntos en la misma página para preservar la apariencia adecuada.

Hay dos técnicas separadas que son útiles para lograr esta funcionalidad:

- `Allow row break across pages`, que se aplica a las filas de mesa
- `Keep with next`, que se aplica a los párrafos de las celdas

Por defecto, las propiedades anteriores están deshabilitadas.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Mantenga una fila de romper a través de las páginas {#keep-a-row-from-breaking-across-pages}

Esto implica restringir el contenido dentro de las células de una fila de ser dividido en una página. In Microsoft Word, esto se puede encontrar bajo Propiedades de la tabla como la opción "Permitir fila para romper a través de páginas". In Aspose.Words esto se encuentra bajo [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objeto de un [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) como propiedad [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

El siguiente ejemplo de código muestra cómo deshabilitar filas de ruptura a través de páginas para cada fila en una tabla:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Mantenga una tabla de romper a través de páginas {#keep-a-table-from-breaking-across-pages}

Para evitar que la tabla se divida en páginas, necesitamos especificar que queremos que el contenido que figura en la tabla se mantenga unido.

Para hacer esto, Aspose.Words utiliza un método que permite a los usuarios seleccionar una tabla y habilitar [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parámetro a true para cada párrafo dentro de las celdas del cuadro. La excepción es el último párrafo del cuadro, que debe establecerse false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

El siguiente ejemplo de código muestra cómo establecer una tabla para permanecer juntos en la misma página:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}