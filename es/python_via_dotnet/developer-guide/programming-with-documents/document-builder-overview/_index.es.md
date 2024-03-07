---
title: Descripción general del generador de documentos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Descripción general del generador de documentos
linktitle: Descripción general del generador de documentos
type: docs
description: "DocumentBuilder le permite crear documentos dinámicos desde cero o agregar nuevos elementos a los existentes usando Python. DocumentBuilder proporciona métodos para insertar texto, casillas de verificación, tablas, imágenes y otros elementos de contenido en Python."
weight: 30
url: /es/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) es una clase poderosa que se asocia con [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) y le permite crear documentos dinámicos desde cero o agregar nuevos elementos a uno existente.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) proporciona métodos para insertar texto, casillas de verificación, objetos antiguos, párrafos, listas, tablas, imágenes y otros elementos de contenido. Le permite especificar fuentes, formato de párrafo o sección y realizar otras operaciones.

## Generador de documentos o Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) complementa las clases y métodos disponibles en el modelo de objetos de documento (DOM) Aspose.Words para simplificar las tareas de creación de documentos más comunes. Es decir, puede crear y modificar el contenido de documentos tanto a través de Aspose.Words DOM, lo que requiere una buena comprensión de la estructura de árbol, como utilizando DocumentBuilder. El `DocumentBuilder` es una "fachada" de la compleja estructura **Document** que permite insertar contenido y formato de forma rápida y sencilla.

Las operaciones que son posibles con [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) también lo son cuando se utilizan las clases del Aspose.Words DOM directamente. Sin embargo, el uso directo de clases Aspose.Words DOM generalmente requiere más líneas de código que el uso de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navegación de documentos

La navegación de documentos se basa en el concepto de un cursor virtual, con el que puede moverse a otra ubicación del documento utilizando varios métodos **DocumentBuilder.move_to_XXX** como [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) y [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Este cursor virtual indica dónde se insertará el texto al llamar a los métodos [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) y otros. Consulte el siguiente artículo "Navegación con cursor" para obtener más información sobre el cursor virtual.

El siguiente ejemplo de código muestra cómo navegar a un marcador:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Creación y modificación de documentos

Aspose.Words API proporciona varias clases que se encargan de formatear varios elementos de un documento. Cada una de las clases encapsula propiedades de formato relacionadas con un elemento de documento específico, como texto, párrafo, sección y otros. Por ejemplo, la clase [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) representa propiedades de formato de caracteres, la clase [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) representa propiedades de formato de párrafos, etc. Los objetos de estas clases son devueltos por las propiedades [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) correspondientes, que tienen los mismos nombres que las clases. Por lo tanto, puede acceder a ellos y establecer el formato deseado durante la creación del documento.

También puede insertar texto, casillas de verificación, objetos antiguos, imágenes, marcadores, campos de formulario y otros elementos del documento en la posición del cursor utilizando el método `Write` o cualquiera de los métodos **DocumentBuilder.insert_XXX**, como [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) y métodos similares.

Veamos cómo crear un documento simple usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Crear un documento usando DocumentBuilder

Para comenzar, necesitas crear un [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) y asociarlo con un objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Crea una nueva instancia de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) llamando a su constructor y pasándola a un objeto [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) para adjuntarla al constructor.

Para insertar un texto, pase la cadena de texto que necesita insertar en el documento al método [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

El siguiente ejemplo de código muestra cómo crear un documento simple utilizando un generador de documentos.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Especificar el formato del documento

La propiedad [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) define el formato del texto. Este objeto contiene diferentes atributos de fuente (nombre de fuente, tamaño de fuente, color, etc.). Algunos atributos de fuente importantes también están representados por propiedades [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) para permitirle acceder a ellos directamente. Estas son las propiedades booleanas [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) y [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

El siguiente ejemplo de código muestra cómo insertar un texto formateado usando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) especifica el formato de caracteres que se aplicará a todo el texto insertado desde la posición actual en el documento en adelante.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) especifica el formato de párrafo para el párrafo actual y todos los párrafos que se insertarán.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) especifica las propiedades de página y sección para la sección actual y toda la sección que se insertará.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) y [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) especifican propiedades de formato que se aplicarán a las celdas y filas de la tabla desde la posición actual en el documento en adelante.

En esta situación, "actual" significa la posición, párrafo, sección, celda o fila en la que se encuentra el cursor.

{{% /alert %}}

{{% alert color="primary" %}}

Tenga en cuenta que las propiedades [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) y [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) se actualizan cada vez que navega a una ubicación diferente en el documento para reflejar las propiedades de formato de esta ubicación.

{{% /alert %}}
