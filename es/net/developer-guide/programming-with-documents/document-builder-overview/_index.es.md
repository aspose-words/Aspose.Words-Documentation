---
title: Descripción general del generador de documentos en C#
second_title: Aspose.Words para .NET
articleTitle: Descripción general del generador de documentos
linktitle: Descripción general del generador de documentos
type: docs
description: "DocumentBuilder le permite crear documentos dinámicos desde cero o agregar nuevos elementos a los existentes usando C#. DocumentBuilder proporciona métodos para insertar texto, casillas de verificación, tablas, imágenes y otros elementos de contenido en .NET."
weight: 30
url: /es/net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/) es una clase poderosa que se asocia con [Document](https://reference.aspose.com/words/es/net/aspose.words/document/) y le permite crear documentos dinámicos desde cero o agregar nuevos elementos a uno existente.

**DocumentBuilder** proporciona métodos para insertar texto, casillas de verificación, objetos antiguos, párrafos, listas, tablas, imágenes y otros elementos de contenido. Le permite especificar fuentes, formato de párrafo o sección y realizar otras operaciones.

## Generador de documentos o Aspose.Words DOM

**DocumentBuilder** complementa las clases y métodos disponibles en el modelo de objetos de documento (DOM) Aspose.Words para simplificar las tareas de creación de documentos más comunes. Es decir, puede crear y modificar el contenido de documentos tanto a través de Aspose.Words DOM, lo que requiere una buena comprensión de la estructura de árbol, como utilizando DocumentBuilder. El `DocumentBuilder` es una "fachada" de la compleja estructura **Document** que permite insertar contenido y formato de forma rápida y sencilla.

Las operaciones que son posibles con **DocumentBuilder** también lo son cuando se utilizan las clases del DOM Aspose.Words directamente. Sin embargo, el uso directo de clases Aspose.Words DOM generalmente requiere más líneas de código que el uso de **DocumentBuilder**.

## Navegación de documentos

La navegación de documentos se basa en el concepto de un cursor virtual, con el que puede moverse a otra ubicación del documento utilizando varios métodos **DocumentBuilder.MoveToXXX** como [MoveToDocumentStart](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetodocumentstart/) y [MoveToField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/movetofield/). Este cursor virtual indica dónde se insertará el texto al llamar a los métodos [Write](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertbreak/) y otros. Consulte el siguiente artículo "Navegación con cursor" para obtener más información sobre el cursor virtual.

El siguiente ejemplo de código muestra cómo navegar a un marcador:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Creación y modificación de documentos

Aspose.Words API proporciona varias clases que se encargan de formatear varios elementos de un documento. Cada una de las clases encapsula propiedades de formato relacionadas con un elemento de documento específico, como texto, párrafo, sección y otros. Por ejemplo, la clase [Font](https://reference.aspose.com/words/es/net/aspose.words/font/) representa propiedades de formato de caracteres, la clase [ParagraphFormat](https://reference.aspose.com/words/es/net/aspose.words/paragraphformat/) representa propiedades de formato de párrafos, etc. Los objetos de estas clases son devueltos por las propiedades **DocumentBuilder** correspondientes, que tienen los mismos nombres que las clases. Por lo tanto, puede acceder a ellos y establecer el formato deseado durante la creación del documento.

También puede insertar texto, casillas de verificación, objetos antiguos, imágenes, marcadores, campos de formulario y otros elementos del documento en la posición del cursor utilizando el método `Write` o cualquiera de los métodos **DocumentBuilder.InsertXXX**, como [InsertField](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) y métodos similares.

Veamos cómo crear un documento simple usando **DocumentBuilder**.

### Crear un documento usando DocumentBuilder

Para comenzar, necesitas crear un **DocumentBuilder** y asociarlo con un objeto **Document**. Crea una nueva instancia de **DocumentBuilder** llamando a su constructor y pasándola a un objeto **Document** para adjuntarla al constructor.

Para insertar un texto, pase la cadena de texto que necesita insertar en el documento al método **Write**.

El siguiente ejemplo de código muestra cómo crear un documento simple utilizando un generador de documentos.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Especificar el formato del documento

La propiedad [Font](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/font/) define el formato del texto. Este objeto contiene diferentes atributos de fuente (nombre de fuente, tamaño de fuente, color, etc.). Algunos atributos de fuente importantes también están representados por propiedades **DocumentBuilder** para permitirle acceder a ellos directamente. Estas son las propiedades booleanas [Font.Bold](https://reference.aspose.com/words/es/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/es/net/aspose.words/font/italic/) y [Font.Underline](https://reference.aspose.com/words/es/net/aspose.words/font/underline/).

El siguiente ejemplo de código muestra cómo insertar un texto formateado usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/font/) especifica el formato de caracteres que se aplicará a todo el texto insertado desde la posición actual en el documento en adelante.
- [ParagraphFormat](https://reference.aspose.com/words/es/net/aspose.words/paragraphformat/) especifica el formato de párrafo para el párrafo actual y todos los párrafos que se insertarán.
- [PageSetup](https://reference.aspose.com/words/es/net/aspose.words/pagesetup/) especifica las propiedades de página y sección para la sección actual y toda la sección que se insertará.
- [CellFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/cellformat/) y [RowFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/rowformat/) especifican propiedades de formato que se aplicarán a las celdas y filas de la tabla desde la posición actual en el documento en adelante.

En esta situación, "actual" significa la posición, párrafo, sección, celda o fila en la que se encuentra el cursor.

{{% /alert %}}

{{% alert color="primary" %}}

Tenga en cuenta que las propiedades **Font**, **ParagraphFormat** y **PageSetup** se actualizan cada vez que navega a una ubicación diferente en el documento para reflejar las propiedades de formato de esta ubicación.

{{% /alert %}}
