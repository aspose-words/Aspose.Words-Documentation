---
title: Navegación con Cursor en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Navegación con Cursor
linktitle: Navegación con Cursor
description: "Navegue entre diferentes nodos dentro de un documento, como un párrafo, un marcador o un carácter específico, usando Python."
type: docs
weight: 10
url: /es/python-net/navigation-with-cursor/
---

Mientras trabaja con un documento, incluso si es corto o largo, necesitará navegar a través de él. La navegación con un cursor virtual representa la capacidad de navegar entre diferentes nodos de un documento.

Dentro de un documento corto, moverse en un documento es simple ya que puede mover el punto de inserción incluso usando las teclas de flecha del teclado o haciendo clic con el mouse para ubicar el punto de inserción donde desee. Pero una vez que tengas un documento grande con muchas páginas, estas técnicas básicas serán insuficientes.

Este artículo explica cómo moverse por un documento y navegar con un cursor virtual a diferentes partes del mismo.

## Detección de la posición actual del cursor

Antes de comenzar el proceso de navegación por su documento, necesitará obtener el nodo que está seleccionado actualmente. Puede obtener la posición exacta del cursor en un nodo seleccionado utilizando la propiedad [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Además, en lugar de obtener el nodo actual, puede obtener el párrafo o la sección actualmente seleccionados utilizando las propiedades [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) y [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Cualquier operación de inserción que realice utilizando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) se insertará antes del [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Cuando el párrafo actual está vacío o el cursor se coloca justo antes del final del párrafo, el [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) devuelve Ninguno.

## Métodos de navegación en un documento

Cuando edita texto, es importante saber cómo navegar por su documento y dónde moverse exactamente en él. Aspose.Words le permite moverse por un documento y navegar a sus diferentes secciones y partes; esto es similar a la funcionalidad del Panel de navegación en Microsoft Word para ir a una página o encabezado en un documento de Word sin desplazarse.

El método principal es poder mover la posición del cursor a un nodo específico en su documento, puede lograrlo utilizando el método [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

El siguiente ejemplo de código muestra cómo mover el [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) a diferentes nodos en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Pero además del método [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) básico, existen otros más específicos.

### Navegar al principio o al final de un documento

Puede ir al principio o al final de su documento utilizando los métodos [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) y [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

El siguiente ejemplo de código muestra cómo mover la posición del cursor al principio o al final de un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Navegar con marcadores

Puede marcar un lugar que desee encontrar y volver a él fácilmente. Puede insertar tantos marcadores en su documento como desee y luego navegar a través de ellos identificándolos con nombres únicos. Puede pasar a un marcador utilizando el método [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Los siguientes ejemplos de código muestran cómo mover la posición del cursor a un marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Navegar a celdas de tabla

Puede pasar a una celda de la tabla utilizando el método [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Este método le permitirá navegar con el cursor a cualquier celda de una tabla específica. Además, puede especificar un índice para mover el cursor a cualquier posición o carácter especificado en una celda dentro del método [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

El siguiente ejemplo de código muestra cómo mover la posición del cursor a una celda de tabla especificada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Navegar a un campo

Puede pasar a un campo específico en su documento utilizando el método [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Además, puede pasar a un campo de combinación específico utilizando el método [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos a un campo específico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Navegar a un encabezado o pie de página

Puede pasar al principio de un encabezado o pie de página utilizando el método [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/).

El siguiente ejemplo de código muestra cómo mover el cursor del generador de documentos al encabezado o pie de página de un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Navegar a una sección o párrafo

Puede pasar a una sección o párrafo específico utilizando los métodos [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) o [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Además, puede especificar un índice para mover el cursor a cualquier posición o a un carácter específico en un párrafo dentro del método [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

El siguiente ejemplo de código muestra cómo pasar a una sección específica y a un párrafo específico en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}