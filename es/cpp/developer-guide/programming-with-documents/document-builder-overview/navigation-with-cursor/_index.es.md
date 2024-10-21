---
title: Navegación con Cursor en C++
second_title: Aspose.Words para C++
articleTitle: Navegación con Cursor
linktitle: Navegación con Cursor
description: "Navegue entre diferentes nodos dentro de un documento, como un párrafo, un marcador o un carácter específico usando C++."
type: docs
weight: 10
url: /es/cpp/navigation-with-cursor/
---

Mientras trabaja con un documento, incluso si es corto o largo, deberá navegar por su documento. La navegación con un cursor virtual representa la capacidad de navegar entre diferentes nodos en un documento.

Dentro de un documento corto, moverse por un documento es simple, ya que puede mover el punto de inserción incluso usando las teclas de flecha del teclado o haciendo clic con el mouse para ubicar el punto de inserción donde desee. Pero una vez que tenga un documento grande que tenga muchas páginas, estas técnicas básicas serán insuficientes.

En este artículo se explica cómo moverse por un documento y navegar con un cursor virtual a diferentes partes del mismo.

## Detección de La Posición Actual del Cursor

Antes de comenzar el proceso de navegación por su documento, deberá obtener el nodo que está seleccionado actualmente. Puede obtener la posición exacta del cursor en un nodo seleccionado utilizando la propiedad [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Además, en lugar de obtener el nodo actual, puede obtener el párrafo seleccionado actualmente o la sección seleccionada actualmente utilizando las propiedades [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) y [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Cualquier operación de inserción que realice con [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) se insertará antes de [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, **CurrentNode** devuelve nullptr.

## Navegar por los métodos de un documento

Cuando edite texto, es importante saber cómo navegar por su documento y dónde moverse exactamente en él. Aspose.Words le permite moverse por un documento y navegar a sus diferentes secciones y partes; esto es similar a la funcionalidad del Panel de navegación en Microsoft Word para ir a una página o encabezado en un documento de Word sin desplazarse.

El método principal es poder mover la posición del cursor a un nodo específico en su documento, puede lograrlo utilizando el método [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

El siguiente ejemplo de código muestra cómo mover el **DocumentBuilder** a diferentes nodos en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Pero además del método básico **MoveTo**, hay otros más específicos.

### Vaya al Principio o al final de un Documento

Puede ir al principio o al final de su documento utilizando los métodos [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) y [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

El siguiente ejemplo de código muestra cómo mover la posición del cursor al principio o al final de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Navegar Con Marcadores

Puede marcar un lugar que desee encontrar y volver a él fácilmente. Puede insertar tantos marcadores en su documento como desee y luego navegar a través de ellos identificando los marcadores con nombres únicos. Puede moverse a un marcador utilizando el método [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Los siguientes ejemplos de código muestran cómo mover una posición del cursor a un marcador:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Navegar a las Celdas de la Tabla

Puede moverse a una celda de la tabla utilizando el método [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Este método le permitirá navegar con el cursor a cualquier celda de una tabla específica. Además, puede especificar un índice para mover el cursor a cualquier posición o carácter especificado en una celda dentro del método **MoveToCell**.

El siguiente ejemplo de código muestra cómo mover una posición del cursor a una celda de tabla especificada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Navegar a un Campo

Puede moverse a un campo específico en su documento utilizando el método [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Además, puede moverse a un campo de combinación específico utilizando el método [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos a un campo específico:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Navegar a un Encabezado o Pie de página

Puede moverse al principio de un encabezado o pie de página utilizando el método [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos al encabezado o pie de página de un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Navegar a una Sección o Párrafo

Puede moverse a una sección o párrafo específico utilizando los métodos [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) o [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Además, puede especificar un índice para mover el cursor a cualquier posición o carácter especificado en un párrafo dentro del método **MoveToParagraph**.

El siguiente ejemplo de código muestra cómo moverse a una sección y un párrafo específicos en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
