---
title: Trabajando con Ranges en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Ranges
linktitle: Trabajando con Ranges
description: "Introducción a la función Range en Aspose.Words para Java."
type: docs
weight: 130
url: /es/java/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, a Range es una "ventana plana" en un modelo similar al árbol del documento.

{{% /alert %}}

Si has trabajado con Microsoft Word Automatización, probablemente sepas que una de las principales herramientas para examinar y modificar el contenido de documentos es el `Range` objeto. El rango es como una "ventana" en el contenido de documentos y el formato.

Aspose.Words también tiene [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) clase y está diseñado para mirar y actuar de forma similar **Range** dentro Microsoft Word. Aunque **Range** no puede cubrir una porción arbitraria de un documento y no tiene **Start** y **End**, puede acceder al rango cubierto por cualquier nodo de documento incluyendo el [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) en sí mismo. En otras palabras, cada nodo tiene su propio rango. El **Range** objeto le permite acceder y modificar texto, marcadores y campos de forma dentro del rango.

## Texto de la línea de recuperación

Usar el [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) propiedad para recuperar el texto sin formato de la gama.

El siguiente ejemplo de código muestra cómo obtener un texto sencillo y sin formato de una gama:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Eliminar texto

El `Range` clase permite la eliminación de todos los caracteres de la gama llamando [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

El siguiente ejemplo de código muestra cómo eliminar todos los caracteres de una gama:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 