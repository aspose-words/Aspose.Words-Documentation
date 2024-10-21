---
title: Cómo crear una tabla en C++
second_title: Aspose.Words para C++
articleTitle: Crear una Tabla
linktitle: Crear una Tabla
description: "Diferentes formas de crear tablas usando C++. Cree una tabla en C++ para su documento. Agregue una tabla en C++."
type: docs
weight: 20
url: /es/cpp/create-a-table/
---

Aspose.Words permite a los usuarios crear tablas en un documento desde cero y proporciona varios métodos diferentes para hacerlo. Este artículo presenta detalles sobre cómo agregar tablas formateadas a su documento usando cada método, así como una comparación de cada método al final del artículo.

## Estilos de Tabla Predeterminados

La tabla recién creada tiene valores predeterminados similares a los utilizados en Microsoft Word:

|
| :- | :- |
| `Single` |
|
| `Black` |
|
|
| `True` |

{{% alert color="primary" %}}

Una tabla puede estar alineada si está bien colocada, o flotante si se puede colocar en cualquier lugar de la página. De forma predeterminada, Aspose.Words siempre crea tablas integradas.

{{% /alert %}}

## Crea una tabla con DocumentBuilder

En Aspose.Words, los usuarios pueden crear una tabla en un documento usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). El algoritmo básico para crear una tabla es el siguiente:

1. Comience la tabla con [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Agregue una celda a la tabla usando [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/); esto inicia automáticamente una nueva fila
3. Opcionalmente, use la propiedad [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) para especificar el formato de celda
4. Inserte el contenido de la celda utilizando los métodos **DocumentBuilder** apropiados, como [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) y otros
5. Repita los pasos 2-4 hasta que se complete la fila
6. Llame a [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) para finalizar la fila actual
7. Opcionalmente, use la propiedad [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) para especificar el formato de fila
8. Repita los pasos 2-7 hasta que se complete la tabla
9. Llame a [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) para terminar de construir la tabla

{{% alert color="primary" %}}

Detalles importantes:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) también se puede llamar dentro de una celda, en cuyo caso inicia la creación de una tabla anidada dentro de la celda.
- Después de llamar a [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), se crea una nueva celda y cualquier contenido que agregue utilizando otros métodos de la clase [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) se agregará a la celda actual. Para crear una celda nueva en la misma fila, vuelva a llamar a **InsertCell**.
- Si se llama a **InsertCell** inmediatamente después de [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) y al final de una fila, la tabla continuará en una nueva fila.
- El método [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) para finalizar la tabla solo debe llamarse una vez después de llamar a **EndRow**. Llamar a **EndTable** mueve el cursor de la celda actual a la posición inmediatamente posterior a la tabla.

{{% /alert %}}

El proceso de creación de una tabla se puede ver claramente en la siguiente imagen:

![creating-table-process](creating-table-process.jpg)

El siguiente ejemplo de código muestra cómo crear una tabla simple usando **DocumentBuilder** con formato predeterminado:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

El siguiente ejemplo de código muestra cómo crear una tabla formateada usando DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

El siguiente ejemplo de código muestra cómo insertar una tabla anidada usando DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Crear una tabla a través de DOM (Document Object Model)

Puede insertar tablas directamente en el DOM agregando un nuevo nodo [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) en una posición específica.

Tenga en cuenta que inmediatamente después de la creación del nodo de la tabla, la tabla misma estará completamente vacía, es decir, aún no contiene filas ni celdas. Para insertar filas y celdas en una tabla, agregue los nodos secundarios [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) apropiados al DOM.

{{% alert color="primary" %}}

Este método de crear una tabla usa los mismos valores predeterminados de la tabla que cuando se usa **DocumentBuilder**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una nueva tabla desde cero agregando los nodos secundarios apropiados al árbol de documentos:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Crear una tabla a partir de HTML

Aspose.Words admite la inserción de contenido en un documento desde una fuente HTML utilizando el método [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). La entrada puede ser una página HTML completa o solo un fragmento parcial.

Usando el método **InsertHtml**, los usuarios pueden insertar tablas en el documento a través de etiquetas de tabla como `<table>`, `<tr>`, `<td>`.

El siguiente ejemplo de código muestra cómo insertar una tabla en un documento a partir de una cadena que contiene etiquetas HTML:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Insertar una copia de una tabla existente

A menudo, hay ocasiones en las que necesita crear una tabla basada en una tabla ya existente en un documento. La forma más sencilla de duplicar una tabla conservando todo el formato es clonar el nodo de la tabla utilizando el método [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

La misma técnica se puede utilizar para agregar copias de una fila o celda existente a una tabla.

El siguiente ejemplo de código muestra cómo duplicar una tabla usando constructores de nodos:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

El siguiente ejemplo de código muestra cómo clonar la última fila de una tabla y anexarla a la tabla:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Si está buscando crear tablas en un documento que crezcan dinámicamente con cada registro de su fuente de datos, entonces no se recomienda el método anterior. En cambio, la salida deseada se logra más fácilmente usando Mail merge con regiones. Puede obtener más información sobre esta técnica en el [Mail Merge con Regiones](/words/cpp/types-of-mail-merge-operations/) sección.

## Compare Formas de Crear una Tabla

Aspose.Words proporciona varios métodos para crear nuevas tablas en un documento. Cada método tiene sus propias ventajas y desventajas, por lo que la elección de cuál usar a menudo depende de la situación específica.

Echemos un vistazo más de cerca a estas formas de crear tablas y comparemos sus pros y sus contras:

| Método | Desventajas |
| :- | :- |
| `DocumentBuilder` | El método estándar para insertar tablas y otro contenido de documentos | A veces es difícil crear muchas variedades de tablas al mismo tiempo con la misma instancia del generador |
| Se adapta mejor al código circundante que crea e inserta nodos directamente en el DOM sin usar un **DocumentBuilder** | La tabla se crea "vacía": antes de realizar la mayoría de las operaciones, debe llamar a [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) para crear los nodos secundarios faltantes |
| Puede crear una nueva tabla desde la fuente HTML usando etiquetas como `<table>`, `<tr>`, `<td>` |
| Puede crear una copia de una tabla existente conservando todo el formato de fila y celda | Los nodos secundarios apropiados deben eliminarse antes de que la tabla esté lista para su uso |
