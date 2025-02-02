﻿---
title: Trabajar con Notas al pie y al final en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Notas al pie y Notas al Final
linktitle: Trabajar con Notas al pie y Notas al Final
description: "Cómo manipular notas al pie y notas al final usando Java."
type: docs
weight: 160
url: /es/java/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words también proporciona algunas clases, métodos y propiedades para trabajar con notas al pie y notas al final.

## Insertar Nota al Final y Establecer Opciones de Numeración

Si desea insertar una nota al pie o una nota al final en un documento de Word, utilice el método [InsertFootnote](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertFootnote-int-java.lang.String). Este método inserta una nota al pie o una nota al final en el documento.

las clases [EndnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/endnoteoptions/) y [FootnoteOptions](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/) representan opciones de numeración para notas al pie y notas al final.

El siguiente ejemplo de código muestra cómo insertar una nota al final en el documento y establecer sus opciones de numeración:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetEndnoteOptions.java" >}}

## Establecer el Número de Columnas de Diseño de Notas al Pie

Puede establecer el número de columnas de diseño de notas al pie de página utilizando la propiedad [Columns](https://reference.aspose.com/words/java/com.aspose.words/footnoteoptions/#getColumns). Si esta propiedad tiene el valor 0, el área de notas al pie se formatea con un número de columnas en función del número de columnas de la página mostrada.

El siguiente ejemplo de código muestra cómo establecer el número de columnas para el diseño de la nota al pie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootNoteColumns.java" >}}

## Establezca la posición de la Nota al pie y EndNote

La posición de la nota al pie puede estar en la parte inferior de cada página o debajo del texto de cada página. La posición de la nota al final puede estar al final de la sección o al final del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de la nota al pie y la nota al final:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.java" >}}
