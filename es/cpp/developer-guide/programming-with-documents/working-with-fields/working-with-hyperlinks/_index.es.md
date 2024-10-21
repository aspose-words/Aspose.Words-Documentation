---
title: Trabajar con hipervínculos en C++
second_title: Aspose.Words para C++
articleTitle: Agregar o Modificar Hipervínculos
linktitle: Agregar o Modificar Hipervínculos
description: "Cómo agregar un hipervínculo a su documento usando Aspose.Words para C++."
type: docs
weight: 180
url: /es/cpp/working-with-hyperlinks/
---

Un hipervínculo en documentos de Microsoft Word es el campo `HYPERLINK`. En Aspose.Words, los hipervínculos se implementan a través de la clase [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Insertar un Hipervínculo

Utilice el método [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) para insertar un hipervínculo en el documento. Este método acepta tres parámetros:

1. Texto del enlace que se mostrará en el documento
2. Destino del enlace (URL o el nombre de un marcador dentro del documento)
3. Parámetro booleano que debería ser verdadero si `URL` es el nombre de un marcador dentro del documento

El método **InsertHyperlink** siempre agrega apóstrofes al principio y al final de la URL.

{{% alert color="primary" %}}

Tenga en cuenta que debe especificar el formato de fuente para el texto de visualización del hipervínculo explícitamente utilizando la propiedad `Font`.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un hipervínculo en un documento usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Reemplazar o Modificar Hipervínculos

El hipervínculo en los documentos de Microsoft Word es un campo. Un campo en un documento de Word es una estructura compleja que consta de varios nodos que incluyen inicio de campo, código de campo, separador de campo, resultado de campo y final de campo. Los campos se pueden anidar, contener contenido enriquecido y abarcar varios párrafos o secciones de un documento.

La clase `FieldHyperlink` implementa el campo `HYPERLINK`.

El siguiente ejemplo de código muestra cómo encontrar todos los hipervínculos en un documento de Word y cambia su `URL` y nombre para mostrar:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
