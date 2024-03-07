---
title: Cómo crear una tabla en C#
second_title: Aspose.Words para .NET
articleTitle: Crear una tabla
linktitle: Crear una tabla
description: "Una guía sobre cómo hacer una tabla en C# de varias formas. Cree una tabla en C# para su documento."
type: docs
weight: 20
url: /es/net/create-a-table/
---

Aspose.Words permite a los usuarios crear tablas en un documento desde cero y proporciona varios métodos diferentes para hacerlo. Este artículo presenta detalles sobre cómo agregar tablas formateadas a su documento usando cada método, así como una comparación de cada método al final del artículo.

## Estilos de tabla predeterminados

La tabla recién creada recibe valores predeterminados similares a los utilizados en Microsoft Word:

|  Propiedad de tabla |  Predeterminado en Aspose.Words |
|  :--------------------- |  :---------------------- |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Una tabla puede estar en línea si está colocada firmemente o flotante si se puede colocar en cualquier lugar de la página. De forma predeterminada, Aspose.Words siempre crea tablas en línea.

{{% /alert %}}

## Crear una tabla con DocumentBuilder

En Aspose.Words, los usuarios pueden crear una tabla en un documento usando [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/). El algoritmo básico para crear una tabla es el siguiente:

1. Iniciar la mesa con [StartTable](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/starttable/)
2. Agregue una celda a la tabla usando [InsertCell](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertcell/); esto inicia automáticamente una nueva fila
3. Opcionalmente, use la propiedad [CellFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/cellformat/) para especificar el formato de celda.
4. Inserte el contenido de la celda utilizando los métodos **DocumentBuilder** apropiados, como [Writeln](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertimage/) y otros.
5. Repita los pasos 2 a 4 hasta completar la fila.
6. Llame a [EndRow](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endrow/) para finalizar la fila actual.
7. Opcionalmente, use la propiedad [RowFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/rowformat/) para especificar el formato de fila.
8. Repita los pasos 2-7 hasta que la tabla esté completa.
9. Llame a [EndTable](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endtable/) para terminar de construir la mesa.

{{% alert color="primary" %}}

Detalles importantes:

* [StartTable](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/starttable/) también se puede llamar dentro de una celda, en cuyo caso inicia la creación de una tabla anidada dentro de la celda.
* Después de llamar a [InsertCell](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertcell/), se crea una nueva celda y cualquier contenido que agregue utilizando otros métodos de la clase [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) se agregará a la celda actual. Para crear una nueva celda en la misma fila, llame a **InsertCell** nuevamente.
* Si se llama a **InsertCell** inmediatamente después de [EndRow](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endrow/) y al final de una fila, la tabla continuará en una nueva fila.
* El método [EndTable](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/endtable/) para finalizar la tabla solo debe llamarse una vez después de llamar a **EndRow**. Al llamar a **EndTable** se mueve el cursor desde la celda actual a la posición inmediatamente después de la tabla.

{{% /alert %}}

El proceso de creación de una tabla se puede ver claramente en la siguiente imagen:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

El siguiente ejemplo de código muestra cómo crear una tabla simple usando **DocumentBuilder** con formato predeterminado:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

El siguiente ejemplo de código muestra cómo crear una tabla formateada usando DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

El siguiente ejemplo de código muestra cómo insertar una tabla anidada usando DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Crear una tabla a través de DOM (modelo de objetos de documento)

Puede insertar tablas directamente en DOM agregando un nuevo nodo [Table](https://reference.aspose.com/words/es/net/aspose.words.tables/table/) en una posición específica.

Tenga en cuenta que inmediatamente después de la creación del nodo de la tabla, la tabla en sí estará completamente vacía, es decir, aún no contiene filas ni celdas. Para insertar filas y celdas en una tabla, agregue los nodos secundarios [Row](https://reference.aspose.com/words/es/net/aspose.words.tables/row/) y [Cell](https://reference.aspose.com/words/es/net/aspose.words.tables/cell/) apropiados al DOM.

{{% alert color="primary" %}}

Este método de creación de una tabla utiliza los mismos valores predeterminados de tabla que cuando se utiliza **DocumentBuilder**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo crear una nueva tabla desde cero agregando los nodos secundarios apropiados al árbol del documento:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Crear una tabla desde HTML

Aspose.Words admite la inserción de contenido en un documento desde una fuente HTML utilizando el método [InsertHtml](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/inserthtml/). La entrada puede ser una página HTML completa o simplemente un fragmento parcial.

Con el método **InsertHtml**, los usuarios pueden insertar tablas en el documento mediante etiquetas de tabla como `<table>`, `<tr>`, `<td>`.

El siguiente ejemplo de código muestra cómo insertar una tabla en un documento a partir de una cadena que contiene etiquetas HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Insertar una copia de una tabla existente

A menudo hay ocasiones en las que es necesario crear una tabla basada en una tabla ya existente en un documento. La forma más sencilla de duplicar una tabla conservando todo el formato es clonar el nodo Tabla utilizando el método [Clone](https://reference.aspose.com/words/es/net/aspose.words/node/clone/).

Se puede utilizar la misma técnica para agregar copias de una fila o celda existente a una tabla.

El siguiente ejemplo de código muestra cómo duplicar una tabla utilizando constructores de nodos:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

El siguiente ejemplo de código muestra cómo clonar la última fila de una tabla y agregarla a la tabla:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Si está pensando en crear tablas en un documento que crezcan dinámicamente con cada registro de su fuente de datos, no se recomienda el método anterior. En cambio, el resultado deseado se logra más fácilmente utilizando Mail merge con regiones. Puedes conocer más sobre esta técnica en la sección ["Mail Merge con Regiones"](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## Comparar formas de crear una tabla

Aspose.Words proporciona varios métodos para crear nuevas tablas en un documento. Cada método tiene sus propias ventajas y desventajas, por lo que la elección de cuál utilizar depende a menudo de la situación específica.

Echemos un vistazo más de cerca a estas formas de crear tablas y comparemos sus ventajas y desventajas:

|  Método | Ventajas |  Desventajas |
|  :-  |  :-  |  :-  |
| Vía `DocumentBuilder` | El método estándar para insertar tablas y otro contenido de documentos | A veces es difícil crear muchas variedades de tablas al mismo tiempo con la misma instancia del constructor. |
| Vía DOM |  Se adapta mejor al código circundante que crea e inserta nodos directamente en el DOM sin utilizar un **DocumentBuilder** | La tabla se crea "vacía": antes de realizar la mayoría de las operaciones, debe llamar a [EnsureMinimum](https://reference.aspose.com/words/es/net/aspose.words.tables/table/ensureminimum/) para crear los nodos secundarios que faltan. |
| Desde HTML | Puede crear una nueva tabla a partir de una fuente HTML usando etiquetas como `<table>`, `<tr>`, `<td>` | No todos los formatos posibles de tablas Microsoft Word se pueden aplicar a HTML |
| Clonar una tabla existente | Puede crear una copia de una tabla existente conservando todo el formato de filas y celdas. | Los nodos secundarios apropiados deben eliminarse antes de que la tabla esté lista para su uso. |