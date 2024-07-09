---
title: Document Builder Panorama general Java
second_title: Aspose.Words para Java
articleTitle: Sinopsis del Editor de Documentos
linktitle: Sinopsis del Editor de Documentos
type: docs
description: "DocumentBuilder le permite construir documentos dinámicos desde cero o añadir nuevos elementos a los existentes. DocumentBuilder proporciona métodos para insertar texto, cuadros, imágenes y otros elementos de contenido en Java."
weight: 30
url: /es/java/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) es una clase poderosa que se asocia con [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) y le permite construir documentos dinámicos desde cero o añadir nuevos elementos a uno existente.

**DocumentBuilder** proporciona métodos para insertar texto, casillas de verificación, objetos ole, párrafos, listas, tablas, imágenes y otros elementos de contenido. Le permite especificar fuentes, párrafo o sección formato, y realizar otras operaciones.

## Document Builder o Aspose.Words DOM

**DocumentBuilder** complementa clases y métodos disponibles en Aspose.Words Document Object Model (G)DOM) para simplificar las tareas más comunes de construcción de documentos. Es decir, usted puede crear y modificar el contenido de los documentos a través de Aspose.Words DOM, que requiere una buena comprensión de la estructura del árbol, y el uso del DocumentBuilder. El `DocumentBuilder` es una "fachada" para el complejo **Document** estructura que le permite insertar rápidamente y fácilmente contenido y formato.

Operaciones que son posibles con **DocumentBuilder** son también posibles al utilizar las clases de Aspose.Words DOM directamente. Sin embargo, utilizando Aspose.Words DOM clases directamente generalmente requieren más líneas de código que usar **DocumentBuilder**.

## Documento de navegación

La navegación de documentos se basa en el concepto de un cursor virtual, con el que se puede desplazar a otra ubicación en el documento utilizando varios **DocumentBuilder.MoveToXXX** métodos tales como [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) y [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Este cursor virtual indica dónde se insertará el texto al llamar los métodos [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), y otros. Vea el siguiente artículo "Navigation with Cursor" para aprender más sobre el cursor virtual.

El siguiente ejemplo de código muestra cómo navegar a un marcador:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Document Building and Modification

Aspose.Words API proporciona varias clases que son responsables de formatear varios elementos de un documento. Cada una de las clases encapsula propiedades de formato relacionadas con un elemento de documento específico, como texto, párrafo, sección y otros. Por ejemplo, el [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) clase representa propiedades de formato de caracteres, la [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) clase representa propiedades de formato del párrafo, etc. Los objetos de estas clases son devueltos por el correspondiente **DocumentBuilder** propiedades, que tienen los mismos nombres que las clases. Por lo tanto, puede acceder a ellos y establecer el formato deseado durante la compilación del documento.

También puede insertar texto, casilla de verificación, objeto ole, imágenes, marcadores, campos de formulario y otros elementos de documento en la posición del cursor utilizando el `Write` método o cualquiera de los **DocumentBuilder.InsertXXX** métodos, como [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), y métodos similares.

Veamos cómo crear un documento simple usando el **DocumentBuilder**.

### Crear un documento usando DocumentBuilder

Para empezar, necesitas crear un **DocumentBuilder** y asociarlo con un **Document** objeto. Creas una nueva instancia **DocumentBuilder** llamando a su constructor y pasarlo a un **Document** objeto para el apego al constructor.

Para insertar un texto, pase la cadena de texto que necesita insertar en el documento al **Write** método.

El siguiente ejemplo de código muestra cómo crear un documento simple usando un constructor de documentos.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Especificar formato de documento

El [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propiedad define el formato de texto. Este objeto contiene diferentes atributos de fuentes (nombre de columna, tamaño de fuente, color, etc.). Algunos atributos de fuentes importantes también están representados por **DocumentBuilder** propiedades que le permiten acceder directamente a ellas. Estos son los [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), y [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) propiedades booleanas.

El siguiente ejemplo de código muestra cómo insertar un texto formateado utilizando **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) especifica el formato de caracteres que se aplicará a todo texto insertado desde la posición actual en el documento en adelante.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) especifica el formato del párrafo para el texto actual y todos los párrafos que deben insertarse.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) especifica las propiedades de página y sección para la sección actual y toda la sección que se insertará.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) y [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) especifique las propiedades de formato que se aplicarán a las celdas y filas de la posición actual en el documento en adelante.

En esta situación, "actual" significa la posición, párrafo, sección, celda o fila en la que está el cursor.

{{% /alert %}}

{{% alert color="primary" %}}

Note que **Font**, **ParagraphFormat**, y **PageSetup** propiedades se actualizan cada vez que navega a una ubicación diferente en el documento para reflejar las propiedades de formato de esta ubicación.

{{% /alert %}}
