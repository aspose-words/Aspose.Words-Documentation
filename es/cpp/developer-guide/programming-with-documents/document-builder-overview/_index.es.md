---
title: Descripción general del Generador de documentos en C++
second_title: Aspose.Words para C++
articleTitle: Descripción General del Generador de Documentos
linktitle: Descripción General del Generador de Documentos
type: docs
description: "DocumentBuilder le permite crear documentos dinámicos desde cero o agregar nuevos elementos a los existentes utilizando C++. DocumentBuilder proporciona métodos para insertar texto, casillas de verificación, tablas, imágenes y otros elementos de contenido en C++."
weight: 30
url: /es/cpp/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) es una clase poderosa que se asocia con [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) y le permite crear documentos dinámicos desde cero o agregar nuevos elementos a uno existente.

**DocumentBuilder**

## Constructor de documentos o Aspose.Words DOM

**DocumentBuilder**

Las operaciones que son posibles con **DocumentBuilder** también son posibles cuando se usan las clases del DOM Aspose.Words directamente. Sin embargo, usar Aspose.Words clases DOM directamente generalmente requiere más líneas de código que usar **DocumentBuilder**.

## Navegación de Documentos

La navegación del documento se basa en el concepto de un cursor virtual, con el que puede moverse a otra ubicación en el documento utilizando varios métodos **DocumentBuilder.MoveToXXX** como [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) y [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Este cursor virtual indica dónde se insertará el texto al llamar a los métodos [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), y otros.

El siguiente ejemplo de código muestra cómo navegar a un marcador:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Creación y Modificación de Documentos

Aspose.Words API proporciona varias clases que son responsables de formatear varios elementos de un documento. Cada una de las clases encapsula las propiedades de formato relacionadas con un elemento de documento específico, como texto, párrafo, sección y otros. Por ejemplo, la clase [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) representa las propiedades de formato de caracteres, la clase [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) representa las propiedades de formato de párrafos,etc. Los objetos de estas clases son devueltos por las propiedades **DocumentBuilder** correspondientes, que tienen los mismos nombres que las clases. Por lo tanto, puede acceder a ellos y establecer el formato deseado durante la compilación del documento.

También puede insertar texto, casilla de verificación, objeto ole, imágenes, marcadores, campos de formulario y otros elementos de documento en la posición del cursor utilizando el método `Write` o cualquiera de los métodos **DocumentBuilder.InsertXXX**, como [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) y métodos similares.

Veamos cómo crear un documento simple usando el **DocumentBuilder**.

### Crear un documento usando DocumentBuilder

Para comenzar, debe crear un **DocumentBuilder** y asociarlo con un objeto **Document**. Puede crear una nueva instancia de **DocumentBuilder** llamando a su constructor y pasándola a un objeto **Document** para adjuntarla al constructor.

Para insertar un texto, pase la cadena de texto que necesita insertar en el documento al método **Write**.

El siguiente ejemplo de código muestra cómo crear un documento simple utilizando un generador de documentos.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Especificar el Formato del Documento

La propiedad [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) define el formato del texto. Este objeto contiene diferentes atributos de fuente( nombre de fuente, tamaño de fuente, color, etc.). Algunos atributos de fuente importantes también están representados por propiedades **DocumentBuilder** para permitirle acceder a ellos directamente. Estas son las propiedades booleanas [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) y [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

El siguiente ejemplo de código muestra cómo insertar un texto formateado usando **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) especifica el formato de caracteres que se aplicará a todo el texto insertado desde la posición actual en el documento en adelante.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) especifica el formato de párrafo para el párrafo actual y todos los párrafos que se insertarán.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) especifica las propiedades de página y sección para la sección actual y toda la sección que se insertará.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) y [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) especifican las propiedades de formato que se aplicarán a las celdas y filas de la tabla a partir de la posición actual en el documento.

En esta situación, "actual" significa la posición, párrafo, sección, celda o fila en la que se encuentra el cursor.

{{% /alert %}}

{{% alert color="primary" %}}

Tenga en cuenta que las propiedades **Font**, **ParagraphFormat** y **PageSetup** se actualizan cada vez que navega a una ubicación diferente en el documento para reflejar las propiedades de formato de esta ubicación.

{{% /alert %}}
