---
title: Trabajando con hipervínculos en Java
second_title: Aspose.Words para Java
articleTitle: Agregar o modificar hipervínculos
linktitle: Agregar o modificar hipervínculos
description: "Cómo agregar un hipervínculo a su documento usando Java."
type: docs
weight: 50
url: /es/java/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Un hipervínculo Microsoft Word documentos es `HYPERLINK` campo. In Aspose.Words, hipervínculos se implementan a través de los [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/) clase.

## Insertar un hipervínculo

Usar el [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) método para insertar un hipervínculo en el documento. Este método acepta tres parámetros:

1. Texto del enlace que se mostrará en el documento
2. Destino de enlace (URL o nombre de marcador dentro del documento)
3. Parámetro booleano que debe ser true si `URL` es un nombre de un marcador dentro de un documento

El **InsertHyperlink** método siempre añade apostrofes al principio y al final de la URL

{{% alert color="primary" %}}

Tenga en cuenta que necesita especificar el formato de fuente para el texto de visualización de hipervínculo explícitamente utilizando el `Font` propiedad.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo insertar un hipervínculo en un documento utilizando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Reemplazar o Modificar hipervínculos

Hiperenlace Microsoft Word documentos es un campo. Un campo en un documento de Word, como hemos dicho anteriormente, es una estructura compleja que consiste en múltiples nodos que incluyen inicio de campo, código de campo, separador de campo, resultado de campo y extremo de campo. Los campos pueden ser anidados, contienen contenido rico y abarcan múltiples párrafos o secciones en un documento.

Para reemplazar o modificar hipervínculos, es necesario encontrar los hipervínculos en el documento y reemplazar su texto, URL o ambos.

El siguiente ejemplo de código muestra cómo encontrar todos los hipervínculos en el documento de Word y cambia sus `URL` y nombre de visualización:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
