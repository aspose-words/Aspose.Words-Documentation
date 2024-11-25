---
title: Trabajar con rangos en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Rangos
linktitle: Trabajar con Rangos
description: "Introducción a la función de rango en Aspose.Words para Java."
type: docs
weight: 130
url: /es/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

En Aspose.Words, un rango es una "ventana plana" en un modelo del documento similar a un árbol.

{{% /alert %}}

Si ha trabajado con la automatización Microsoft Word, probablemente sepa que una de las principales herramientas para examinar y modificar el contenido del documento es el objeto `Range`.Range es como una "ventana" al contenido y formato del documento.

Aspose.Words también tiene la clase [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) y está diseñada para verse y actuar de manera similar a **Range** en Microsoft Word. Aunque **Range** no puede cubrir una parte arbitraria de un documento y no tiene **Start** y **End**, puede acceder al rango cubierto por cualquier nodo de documento, incluido el [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) mismo. En otras palabras, cada nodo tiene su propio rango. El objeto **Range** le permite acceder y modificar texto, marcadores y campos de formulario dentro del rango.

## Recuperar Texto Sin Formato

Use la propiedad [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) para recuperar el texto sin formato y sin formato del rango.

El siguiente ejemplo de código muestra cómo obtener un texto simple y sin formato de un rango:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Eliminar Texto

La clase `Range` permite eliminar todos los caracteres del rango llamando a [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

El siguiente ejemplo de código muestra cómo eliminar todos los caracteres de un rango:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Puede descargar el archivo de muestra de este ejemplo desde [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


