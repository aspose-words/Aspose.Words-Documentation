---
title: Trabajar con hipervínculos en C#
second_title: Aspose.Words para .NET
articleTitle: Agregar o modificar hipervínculos
linktitle: Agregar o modificar hipervínculos
description: "Cómo agregar un hipervínculo a su documento en C# usando Aspose.Words para .NET."
type: docs
weight: 50
url: /es/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un hipervínculo en documentos Microsoft Word es el campo `HYPERLINK`. En Aspose.Words, los hipervínculos se implementan mediante la clase [FieldHyperlink](https://reference.aspose.com/words/es/net/aspose.words.fields/fieldhyperlink/).

## Insertar un hipervínculo

Utilice el método [InsertHyperlink](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/inserthyperlink/) para insertar un hipervínculo en el documento. Este método acepta tres parámetros:

1. Texto del enlace que se mostrará en el documento
2. Destino del enlace (URL o nombre de un marcador dentro del documento)
3. Parámetro booleano que debería ser verdadero si `URL` es el nombre de un marcador dentro de un documento

El método **InsertHyperlink** siempre agrega apóstrofes al principio y al final de la URL.

{{% alert color="primary" %}}

Tenga en cuenta que debe especificar el formato de fuente para el texto que se muestra en el hipervínculo utilizando explícitamente la propiedad `Font`.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un hipervínculo en un documento usando [DocumentBuilder](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Reemplazar o modificar hipervínculos

El hipervínculo en documentos Microsoft Word es un campo. Un campo en un documento de Word, como dijimos anteriormente, es una estructura compleja que consta de múltiples nodos que incluyen el inicio del campo, el código del campo, el separador de campo, el resultado del campo y el final del campo. Los campos pueden anidarse, contener contenido enriquecido y abarcar varios párrafos o secciones de un documento.

Para reemplazar o modificar hipervínculos, es necesario buscarlos en el documento y reemplazar su texto, URL o ambos.

El siguiente ejemplo de código muestra cómo encontrar todos los hipervínculos en un documento de Word y cambiar su `URL` y su nombre para mostrar:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
