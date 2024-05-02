---
title: Trabajando con Footnote y Endnote en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Nota de pie de página y Nota final
linktitle: Trabajando con Nota de pie de página y Nota final
description: "Cómo manipular las notas de pie de página y las notas finales utilizando Java."
type: docs
weight: 160
url: /es/java/working-with-footnote-and-endnote/
---

Aspose.Words También ofrece algunas clases, métodos y propiedades para trabajar con notas de pie de página y notas.

## Insertar Opciones de numeración de notas y conjunto

Si desea insertar una nota de pie de página o una nota final en un documento de Word, por favor utilice [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String) método. Este método inserta una nota de pie de página o una nota final en el documento.

[EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) y [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) las clases representan opciones de numeración para la nota de pie de página y la nota final.

El siguiente ejemplo de código muestra cómo insertar la nota final en el documento y establecer sus opciones de numeración:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Set Number of Footnote Layout Columns

Puede establecer el número de columnas de diseño de notas a pie utilizando [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns) propiedad. Si esta propiedad tiene el valor de 0, el área de notas se formatea con una serie de columnas basadas en el número de columnas en la página mostrada.

El siguiente ejemplo de código muestra cómo establecer el número de columnas para el diseño de notas:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Establecer la posición de la nota al pie de página y EndNote

La posición de la nota puede estar en la parte inferior de cada página o debajo del texto de cada página. La posición final puede estar al final de la sección o al final del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de la nota de pie de página y la nota final:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
