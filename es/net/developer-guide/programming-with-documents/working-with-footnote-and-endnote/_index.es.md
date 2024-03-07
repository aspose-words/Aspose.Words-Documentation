---
title: Trabajar con notas al pie y notas al final en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con notas al pie y notas finales
linktitle: Trabajar con notas al pie y notas finales
description: "Cómo manipular notas al pie y notas al final usando C#."
type: docs
weight: 160
url: /es/net/working-with-footnote-and-endnote/
---

Aspose.Words también proporciona algunas clases, métodos y propiedades para trabajar con notas al pie y notas al final.

## Insertar nota final y establecer opciones de numeración

Si desea insertar una nota al pie o una nota al final en un documento de Word, utilice el método [InsertFootnote](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/insertfootnote/). Este método inserta una nota al pie o al final del documento.

Las clases [EndnoteOptions](https://reference.aspose.com/words/es/net/aspose.words.notes/endnoteoptions/) y [FootnoteOptions](https://reference.aspose.com/words/es/net/aspose.words.notes/footnoteoptions/) representan opciones de numeración para notas al pie y notas al final.

El siguiente ejemplo de código muestra cómo insertar una nota final en el documento y configurar sus opciones de numeración:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetEndnoteOptions.cs" >}}

## Establecer el número de columnas de diseño de notas al pie

Puede establecer el número de columnas de diseño de notas al pie utilizando la propiedad [Columns](https://reference.aspose.com/words/es/net/aspose.words.notes/footnoteoptions/columns/). Si esta propiedad tiene el valor de 0, el área de notas al pie tiene formato con una cantidad de columnas según la cantidad de columnas en la página mostrada.

El siguiente ejemplo de código muestra cómo establecer el número de columnas para el diseño de notas al pie:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootNoteColumns.cs" >}}

## Establecer la posición de la nota al pie y la nota final

La posición de la nota al pie puede estar en la parte inferior de cada página o debajo del texto de cada página. La posición de la nota al final puede estar al final de la sección o al final del documento.

El siguiente ejemplo de código muestra cómo establecer la posición de la nota al pie y la nota al final:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithFootnote-SetFootnoteOptions.cs" >}}
