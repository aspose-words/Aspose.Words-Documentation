---
title: Trabajar con Notas al pie y Notas al final en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Notas al pie y Notas al Final
linktitle: Trabajar con Notas al pie y Notas al Final
description: "Cómo manipular notas al pie y notas al final usando C++."
type: docs
weight: 160
url: /es/cpp/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words también proporciona algunas clases, métodos y propiedades para trabajar con notas al pie y notas al final.

## Insertar Nota al Final y Establecer Opciones de Numeración

Si desea insertar una nota al pie o una nota al final en un documento de Word, utilice el método [InsertFootnote](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfootnote/). Este método inserta una nota al pie o una nota al final en el documento.

las clases [EndnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/endnoteoptions/) y [FootnoteOptions](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/) representan opciones de numeración para notas al pie y notas al final.

El siguiente ejemplo de código muestra cómo insertar una nota al final en el documento y establecer sus opciones de numeración:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cpp" >}}

## Establecer el Número de Columnas de Diseño de Notas al Pie

Puede establecer el número de columnas de diseño de notas al pie de página utilizando la propiedad [Columns](https://reference.aspose.com/words/cpp/aspose.words.notes/footnoteoptions/get_columns/). Si esta propiedad tiene un valor de 0, el área de notas al pie se formatea con un número de columnas en función del número de columnas de la página mostrada.

El siguiente ejemplo de código muestra cómo establecer el número de columnas para el diseño de la nota al pie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cpp" >}}

## Establezca la posición de la Nota al pie y EndNote

La posición de la nota al pie puede estar en la parte inferior de cada página o debajo del texto de cada página. La posición de la nota al final puede estar al final de la sección o al final del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de la nota al pie y la nota al final:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteAndEndNotePosition.cpp" >}}
