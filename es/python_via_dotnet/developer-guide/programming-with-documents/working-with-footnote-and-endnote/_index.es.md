---
title: Trabajar con notas al pie y notas finales
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con notas al pie y notas finales
linktitle: Trabajar con notas al pie y notas finales
description: "Inserte notas al pie o al final en un documento y especifique sus opciones usando Python."
type: docs
weight: 160
url: /es/python-net/working-with-footnote-and-endnote/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words también proporciona algunas clases, métodos y propiedades para trabajar con notas al pie y notas al final.

## Insertar nota final y establecer opciones de numeración

Si desea insertar una nota al pie o una nota al final en un documento de Word, utilice el método [insert_footnote](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_footnote/). Este método inserta una nota al pie o al final en el documento.

Las clases [EndnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/endnoteoptions/) y [FootnoteOptions](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/) representan opciones de numeración para notas al pie y notas al final.

El siguiente ejemplo de código muestra cómo insertar una nota final en el documento y configurar sus opciones de numeración:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetEndnoteOptions.py" >}}

## Establecer el número de columnas de diseño de notas al pie

Puede establecer el número de columnas de diseño de notas al pie utilizando la propiedad [columns](https://reference.aspose.com/words/python-net/aspose.words.notes/footnoteoptions/columns/). Si esta propiedad tiene el valor de 0, el área de notas al pie tiene formato con una cantidad de columnas según la cantidad de columnas en la página mostrada.

El siguiente ejemplo de código muestra cómo establecer el número de columnas para el diseño de notas al pie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootNoteColumns.py" >}}

## Establecer la posición de la nota al pie y la nota final

La posición de la nota al pie puede estar en la parte inferior de cada página o debajo del texto de cada página. La posición de la nota al final puede estar al final de la sección o al final del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de la nota al pie y la nota al final:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_footnote_and_endnote-SetFootnoteAndEndNotePosition.py" >}}
