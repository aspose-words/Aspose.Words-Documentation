---
title: Navegación con cursor en Java
second_title: Aspose.Words para Java
articleTitle: Navegación con Cursor
linktitle: Navegación con Cursor
description: "Navegar entre diferentes nodos dentro de un documento, como un párrafo, marcador o un personaje específico utilizando Java."
type: docs
weight: 5
url: /es/java/navigation-with-cursor/
---

Mientras trabaja con un documento, incluso si es corto o largo, tendrá que navegar a través de su documento. La navegación con un cursor virtual representa la capacidad de navegar entre diferentes nodos en un documento.

Dentro de un documento corto, moverse en un documento es simple, ya que puede mover el punto de inserción incluso utilizando las teclas de flecha del teclado o haciendo clic en el ratón para localizar el punto de inserción donde quiera que desee. Pero una vez que tengas un gran documento que tenga muchas páginas, estas técnicas básicas serán insuficientes.

Este artículo explica cómo moverse en un documento y navegar con un cursor virtual a diferentes partes de él.

## Detección de la posición actual del cursor

Antes de iniciar el proceso de navegación a través de su documento, necesitará obtener el nodo que se selecciona actualmente. Puede obtener la posición exacta del cursor en un nodo seleccionado utilizando el [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) propiedad. Además, en lugar de obtener el nodo actual, puede obtener el párrafo seleccionado actualmente o la sección seleccionada utilizando el [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) y [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) propiedades.

Cualquier operación de inserción que realice utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) se insertará antes de [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, el **CurrentNode** vuelve nulo.

## Métodos de navegación en un documento

Cuando usted está editando texto, es importante saber cómo navegar su documento y dónde exactamente moverse en él. Aspose.Words le permite moverse en un documento y navegar a sus diferentes secciones y partes – esto es similar a la funcionalidad del Pan de Navegación en Microsoft Word ir a una página o encabezar en un documento de Word sin desplazarse.

El método principal es poder mover la posición del cursor a un nodo específico en su documento, puede lograrlo utilizando el [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) método.

El siguiente ejemplo de código muestra cómo mover el **DocumentBuilder** en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Pero además de lo básico **MoveTo** método, hay más específicos.

### Navegue a Inicio o Fin de un Documento

Usted puede ir al principio o al final de su documento usando el [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) y [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) métodos.

El siguiente ejemplo de código muestra cómo mover la posición del cursor al principio o al final de un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigate con marcadores

Puedes marcar un lugar que quieras encontrar y moverte a él de nuevo fácilmente. Puede insertar tantos marcadores en su documento como desee, y luego navegar a través de ellos identificando los marcadores con nombres únicos. Puedes moverte a un marcador usando el [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) método.

Los siguientes ejemplos de código muestran cómo mover una posición del cursor a un marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Navegue a las celdas de mesa

Puede moverse a una celda usando la [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) método. Este método le permitirá navegar su cursor en cualquier célula en una tabla específica. Además, puede especificar un índice para mover el cursor a cualquier posición o caracteres especificados en una celda dentro de la **MoveToCell** método.

El siguiente ejemplo de código muestra cómo mover una posición del cursor a una celda de tabla especificada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navegue a un Campo

Puede pasar a un campo específico en su documento utilizando el [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) método. Además, puede moverse a un campo de fusión específico utilizando el [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) método.

El siguiente ejemplo de código muestra cómo mover el cursor del constructor de documentos a un campo específico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navegue a un Header o Footer

Usted puede moverse al principio de una cabecera o pie de página utilizando el [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) método

El siguiente ejemplo de código muestra cómo mover el cursor del constructor de documentos a un encabezado de documento o un pie de página:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navegar a una sección o párrafo

Puede pasar a una sección o párrafo específico utilizando el [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) o [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) métodos. Además, puede especificar un índice para mover el cursor a cualquier posición o un carácter especificado en un párrafo dentro del **MoveToParagraph** método.

El siguiente ejemplo de código muestra cómo pasar a una sección específica y a un párrafo específico en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
