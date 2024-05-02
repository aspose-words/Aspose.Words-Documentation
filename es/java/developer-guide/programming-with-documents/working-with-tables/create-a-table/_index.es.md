---
title: Cómo crear una tabla en Java
second_title: Aspose.Words para Java
articleTitle: Crear una tabla
linktitle: Crear una tabla
description: "Diferentes formas de crear tablas en su documento utilizando Java."
type: docs
weight: 20
url: /es/java/create-a-table/
---

Aspose.Words permite a los usuarios crear tablas en un documento desde cero y ofrece varios métodos diferentes para hacerlo. Este artículo presenta detalles sobre cómo añadir tablas formateadas a su documento utilizando cada método, así como una comparación de cada método al final del artículo.

## Estilos de tabla por defecto

La tabla recién creada se da valores predeterminados similares a los utilizados en Microsoft Word:

| Cuadro de bienes | Default in Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Color de la frontera |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Una tabla puede ser inline si está firmemente posicionada, o flotando si se puede posicionar en cualquier lugar de la página. Por defecto, Aspose.Words siempre crea tablas inline.

{{% /alert %}}

## Crear una tabla con DocumentBuilder

In Aspose.Words, los usuarios pueden crear una tabla en un documento utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). El algoritmo básico para crear una tabla es el siguiente:

1. Comience la mesa con [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Añadir una celda a la mesa [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – esto comienza automáticamente una nueva fila
3. Opcionalmente, utilice el [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) propiedad para especificar el formato celular
4. Insertar el contenido de la célula usando el apropiado **DocumentBuilder** métodos tales como [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), y otros
5. Repita los pasos 2-4 hasta que la fila esté completa
6. Call [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) para terminar la fila actual
7. Opcionalmente, utilice el [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) propiedad para especificar formato de fila
8. Repita los pasos 2-7 hasta que la mesa esté completa
9. Call [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) para terminar de construir la mesa

{{% alert color="primary" %}}

Detalles importantes:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) también se puede llamar dentro de una célula, en cuyo caso comienza la creación de una mesa anida dentro de la célula.
- Después de llamar [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), se crea una nueva célula, y cualquier contenido que agregue usando otros métodos del [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) la clase se añadirá a la celda actual. Para crear una nueva célula en la misma fila, llame **InsertCell** otra vez.
- Si. **InsertCell** se llama inmediatamente después [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) y el final de una fila, la mesa continuará en una nueva fila.
- El [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) método para terminar la tabla sólo debe llamarse una vez después de llamar **EndRow**. Llamada **EndTable** mueve el cursor de la celda actual a la posición inmediatamente después de la tabla.

{{% /alert %}}

El proceso de creación de una tabla se puede ver claramente en la siguiente imagen:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

El siguiente ejemplo de código muestra cómo crear una tabla sencilla utilizando **DocumentBuilder** con formato predeterminado:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

El siguiente ejemplo de código muestra cómo crear una tabla formateada usando DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

El siguiente ejemplo de código muestra cómo insertar una tabla anida usando DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Crear una tabla vía DOM (G)Document Object Model)

Puede insertar tablas directamente en el DOM agregando un nuevo [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) nodo en una posición específica.

Tenga en cuenta que inmediatamente después de la creación del nodo de mesa, la tabla en sí estará completamente vacía, es decir, no contiene todavía filas y células. Para insertar filas y células en una tabla, añadir el apropiado [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) y [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) de los niños DOM.

{{% alert color="primary" %}}

Este método de crear una tabla utiliza los mismos defectos de tabla que cuando se utiliza el **DocumentBuilder**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo construir una nueva tabla desde cero añadiendo los nodos infantiles apropiados al árbol de documentos:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Crear una tabla desde HTML

Aspose.Words permite insertar contenido en un documento de una fuente HTML utilizando [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) método. La entrada puede ser una página HTML completa o sólo un fragmento parcial.

Usando esto **InsertHtml** método, los usuarios pueden insertar tablas en el documento a través de etiquetas de tabla como `<table>`, `<tr>`, `<td>`.

El siguiente ejemplo de código muestra cómo insertar una tabla en un documento de una cadena que contiene etiquetas HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Insertar una copia de una tabla existente

A menudo hay momentos en que usted necesita crear una tabla basada en una tabla ya existente en un documento. La forma más fácil de duplicar una tabla mientras se conserva todo el formato es clonar el nodo de la tabla usando el [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) método.

La misma técnica se puede utilizar para añadir copias de una fila o célula existente a una tabla.

El siguiente ejemplo de código muestra cómo duplicar una tabla usando constructores de nodos:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo clonar la última fila de una tabla y apéndice a la tabla:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Si usted está mirando a crear tablas en un documento que crecen dinámicamente con cada registro de su fuente de datos, entonces el método anterior no se recomienda. En cambio, la salida deseada se consigue más fácilmente utilizando Mail merge con regiones. Usted puede aprender más sobre esta técnica en la [Mail Merge con Regiones](/words/java/types-of-mail-merge-operations/) sección.

## Comparar maneras de crear una tabla

Aspose.Words proporciona varios métodos para crear nuevas tablas en un documento. Cada método tiene sus propias ventajas y desventajas, por lo que la elección de utilizar a menudo depende de la situación específica.

Echemos un vistazo más de cerca a estas formas de crear mesas y comparar sus pros y contras:

|  Método | Ventajas |  Desventajas |
|  :-  |  :-  |  :-  |
| Via `DocumentBuilder` | El método estándar para insertar tablas y otros contenidos de documentos | A veces difícil crear muchas variedades de tablas al mismo tiempo con la misma instancia del constructor |
| Via DOM |  Se ajusta mejor con el código circundante que crea e inserta los nodos directamente en el DOM sin usar un **DocumentBuilder** | La tabla se crea "vacío": antes de realizar la mayoría de las operaciones, debes llamar [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) crear los nodos de niños desaparecidos |
| De HTML | Puede crear una nueva tabla de origen HTML usando etiquetas como `<table>`, `<tr>`, `<td>` | No es posible. Microsoft Word formatos de tabla se pueden aplicar a HTML |
| Cierre de una tabla existente | Puede crear una copia de una tabla existente mientras conserva todo el formato de fila y celda | Los ganglios infantiles apropiados deben retirarse antes de que el cuadro esté listo para su uso |
