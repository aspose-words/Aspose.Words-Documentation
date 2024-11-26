---
title: Navegación con Cursor en Java
second_title: Aspose.Words por Java
articleTitle: Navegación con Cursor
linktitle: Navegación con Cursor
description: "Navegue entre diferentes nodos dentro de un documento, como un párrafo, un marcador o un carácter específico usando Java."
type: docs
weight: 5
url: /es/java/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Mientras trabaja con un documento, incluso si es corto o largo, deberá navegar por su documento. La navegación con un cursor virtual representa la capacidad de navegar entre diferentes nodos en un documento.

Dentro de un documento corto, moverse por un documento es simple, ya que puede mover el punto de inserción incluso usando las teclas de flecha del teclado o haciendo clic con el mouse para ubicar el punto de inserción donde desee. Pero una vez que tenga un documento grande que tenga muchas páginas, estas técnicas básicas serán insuficientes.

En este artículo se explica cómo moverse por un documento y navegar con un cursor virtual a diferentes partes del mismo.

## Detección de La Posición Actual del Cursor

Antes de comenzar el proceso de navegación por su documento, deberá obtener el nodo que está seleccionado actualmente. Puede obtener la posición exacta del cursor en un nodo seleccionado utilizando la propiedad [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode). Además, en lugar de obtener el nodo actual, puede obtener el párrafo seleccionado actualmente o la sección seleccionada actualmente utilizando las propiedades [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) y [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection).

Cualquier operación de inserción que realice con [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) se insertará antes de [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, **CurrentNode** devuelve nulo.

## Navegar por los métodos de un documento

Cuando edite texto, es importante saber cómo navegar por su documento y dónde moverse exactamente en él. Aspose.Words le permite moverse por un documento y navegar a sus diferentes secciones y partes; esto es similar a la funcionalidad del Panel de navegación en Microsoft Word para ir a una página o encabezado en un documento de Word sin desplazarse.

El método principal es poder mover la posición del cursor a un nodo específico en su documento, puede lograrlo utilizando el método [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node).

El siguiente ejemplo de código muestra cómo mover el **DocumentBuilder** a diferentes nodos en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Pero además del método básico **MoveTo**, hay otros más específicos.

### Vaya al Principio o al final de un Documento

Puede ir al principio o al final de su documento utilizando los métodos [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) y [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

El siguiente ejemplo de código muestra cómo mover la posición del cursor al principio o al final de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navegar Con Marcadores

Puede marcar un lugar que desee encontrar y volver a él fácilmente. Puede insertar tantos marcadores en su documento como desee y luego navegar a través de ellos identificando los marcadores con nombres únicos. Puede moverse a un marcador utilizando el método [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean).

Los siguientes ejemplos de código muestran cómo mover una posición del cursor a un marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navegar a las Celdas de la Tabla

Puede moverse a una celda de la tabla utilizando el método [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int). Este método le permitirá navegar con el cursor a cualquier celda de una tabla específica. Además, puede especificar un índice para mover el cursor a cualquier posición o carácter especificado en una celda dentro del método **MoveToCell**.

El siguiente ejemplo de código muestra cómo mover una posición del cursor a una celda de tabla especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navegar a un Campo

Puede moverse a un campo específico en su documento utilizando el método [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Además, puede moverse a un campo de combinación específico utilizando el método [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos a un campo específico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navegar a un Encabezado o Pie de página

Puede moverse al principio de un encabezado o pie de página utilizando el método [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos al encabezado o pie de página de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navegar a una Sección o Párrafo

Puede moverse a una sección o párrafo específico utilizando los métodos [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) o [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Además, puede especificar un índice para mover el cursor a cualquier posición o carácter especificado en un párrafo dentro del método **MoveToParagraph**.

El siguiente ejemplo de código muestra cómo moverse a una sección y un párrafo específicos en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
