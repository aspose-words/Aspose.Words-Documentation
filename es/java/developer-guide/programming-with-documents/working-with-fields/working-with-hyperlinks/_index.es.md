---
title: Trabajar con Hipervínculos en Java
second_title: Aspose.Words por Java
articleTitle: Agregar o Modificar Hipervínculos
linktitle: Agregar o Modificar Hipervínculos
description: "Cómo agregar un hipervínculo a su documento usando Java."
type: docs
weight: 50
url: /es/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un hipervínculo en Microsoft Word documentos es el campo `HYPERLINK`. En Aspose.Words, los hipervínculos se implementan a través de la clase [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Insertar un Hipervínculo

Utilice el método [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) para insertar un hipervínculo en el documento. Este método acepta tres parámetros:

1. Texto del enlace que se mostrará en el documento
2. Destino del enlace (URL o el nombre de un marcador dentro del documento)
3. Parámetro booleano que debería ser verdadero si `URL` es el nombre de un marcador dentro de un documento

El método **InsertHyperlink** siempre agrega apóstrofes al principio y al final de URL.

{{% alert color="primary" %}}

Tenga en cuenta que debe especificar el formato de fuente para el texto de visualización del hipervínculo explícitamente utilizando la propiedad `Font`.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un hipervínculo en un documento usando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Reemplazar o Modificar Hipervínculos

El hipervínculo en Microsoft Word documentos es un campo. Un campo en un documento de Word, como dijimos anteriormente, es una estructura compleja que consta de múltiples nodos que incluyen inicio de campo, código de campo, separador de campo, resultado de campo y final de campo. Los campos se pueden anidar, contener contenido enriquecido y abarcar varios párrafos o secciones de un documento.

Para reemplazar o modificar hipervínculos, es necesario encontrar los hipervínculos en el documento y reemplazar su texto, URLs o ambos.

El siguiente ejemplo de código muestra cómo encontrar todos los hipervínculos en un documento de Word y cambia su `URL` y nombre para mostrar:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
