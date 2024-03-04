---
title: Navegación con Cursor en C#
second_title: Aspose.Words para .NET
articleTitle: Navegación con Cursor
linktitle: Navegación con Cursor
description: "Navegue entre diferentes nodos dentro de un documento, como un párrafo, un marcador o un carácter específico usando C#."
type: docs
weight: 10
url: /es/net/navigation-with-cursor/
---

Mientras trabaja con un documento, incluso si es corto o largo, deberá navegar por él. La navegación con un cursor virtual representa la capacidad de navegar entre diferentes nodos de un documento.

Dentro de un documento corto, moverse en un documento es simple ya que puede mover el punto de inserción incluso usando las teclas de flecha del teclado o haciendo clic con el mouse para ubicar el punto de inserción donde desee. Pero una vez que tengas un documento grande con muchas páginas, estas técnicas básicas serán insuficientes.

Este artículo explica cómo moverse por un documento y navegar con un cursor virtual a diferentes partes del mismo.

## Detección de la posición actual del cursor

Antes de comenzar el proceso de navegación por su documento, necesitará obtener el nodo que está seleccionado actualmente. Puede obtener la posición exacta del cursor en un nodo seleccionado utilizando la propiedad [CurrentNode](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/currentnode/). Además, en lugar de obtener el nodo actual, puede obtener el párrafo o la sección actualmente seleccionados utilizando las propiedades [CurrentParagraph](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/currentparagraph/) y [CurrentSection](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/currentsection/).

Cualquier operación de inserción que realice utilizando [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) se insertará antes del [CurrentNode](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/currentnode/). Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, el **CurrentNode** devuelve nulo.

## Métodos de navegación en un documento

Cuando edita texto, es importante saber cómo navegar por su documento y dónde moverse exactamente en él. Aspose.Words le permite moverse por un documento y navegar a sus diferentes secciones y partes; esto es similar a la funcionalidad del Panel de navegación en Microsoft Word para ir a una página o encabezado en un documento de Word sin desplazarse.

El método principal es poder mover la posición del cursor a un nodo específico en su documento, puede lograrlo utilizando el método [MoveTo](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/moveto/).

El siguiente ejemplo de código muestra cómo mover el **DocumentBuilder** a diferentes nodos en un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Pero además del método **MoveTo** básico, existen otros más específicos.

### Navegar al principio o al final de un documento

Puede ir al principio o al final de su documento utilizando los métodos [MoveToDocumentStart](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetodocumentstart/) y [MoveToDocumentEnd](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetodocumentend/).

El siguiente ejemplo de código muestra cómo mover la posición del cursor al principio o al final de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Navegar con marcadores

Puede marcar un lugar que desee encontrar y volver a él fácilmente. Puede insertar tantos marcadores en su documento como desee y luego navegar a través de ellos identificándolos con nombres únicos. Puede pasar a un marcador utilizando el método [MoveToBookmark](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

Los siguientes ejemplos de código muestran cómo mover la posición del cursor a un marcador:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Navegar a celdas de tabla

Puede pasar a una celda de la tabla utilizando el método [MoveToCell](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetocell/). Este método le permitirá navegar con el cursor a cualquier celda de una tabla específica. Además, puede especificar un índice para mover el cursor a cualquier posición o carácter especificado en una celda dentro del método **MoveToCell**.

El siguiente ejemplo de código muestra cómo mover la posición del cursor a una celda de tabla especificada:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Navegar a un campo

Puede pasar a un campo específico en su documento utilizando el método [MoveToField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetofield/). Además, puede pasar a un campo de combinación específico utilizando el método [MoveToMergeField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos a un campo específico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Navegar a un encabezado o pie de página

Puede pasar al principio de un encabezado o pie de página utilizando el método [MoveToHeaderFooter](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetoheaderfooter/).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos al encabezado o pie de página de un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Navegar a una sección o párrafo

Puede pasar a una sección o párrafo específico utilizando los métodos [MoveToParagraph](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetoparagraph/) o [MoveToSection](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetosection/). Además, puede especificar un índice para mover el cursor a cualquier posición o a un carácter específico en un párrafo dentro del método **MoveToParagraph**.

El siguiente ejemplo de código muestra cómo pasar a una sección específica y a un párrafo específico en un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
