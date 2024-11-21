---
title: Trabajando con Fonts en Java
second_title: Aspose.Words para Java
articleTitle: Trabajando con Fonts
linktitle: Trabajando con Fonts
description: "Formato de fuente en detalles Java."
type: docs
weight: 230
url: /es/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Una fuente es un conjunto de caracteres con cierto tamaño, color y diseño. Aspose.Words permite trabajar con fuentes utilizando varias clases relacionadas con fuentes, incluyendo [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) clase.

## Formato de fuente

Formato de fuente actual está representado por un **Font** objeto devuelto por el [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propiedad. El **Font** clase contiene una amplia variedad de propiedades de fuentes posibles en Microsoft Word.

El siguiente ejemplo de código muestra cómo configurar el formato de fuente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Las propiedades de relleno ahora también están disponibles para las fuentes para configurar el formato de relleno del texto. Da la capacidad de cambiar, por ejemplo, el color del primer plano o la transparencia del relleno de texto.

## Conseguir el espacio de la línea de fuente

La línea de espaciamiento de una fuente es la distancia vertical entre las líneas de base de dos líneas de texto consecutivas. Así, el espaciamiento de la línea incluye el espacio en blanco entre líneas junto con la altura del personaje mismo.

El [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) bienes introducidos en el **Font** clase para obtener este valor como se muestra en el ejemplo dado a continuación:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Font EmphasisMark

El **Font** clase proporciona [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) propiedad para obtener o establecer valores de enumeración de EmphasisMark para ser aplicado en el formato.

El siguiente ejemplo de código muestra cómo establecer el **EphasisMark** propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
