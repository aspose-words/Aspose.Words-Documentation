---
title: Trabajar con fuentes en Java
second_title: Aspose.Words por Java
articleTitle: Trabajar con Fuentes
linktitle: Trabajar con Fuentes
description: "Formato de fuente en detalles usando Java."
type: docs
weight: 230
url: /es/java/working-with-fonts/
timestamp: 2024-01-27-14-07-04
---

Una fuente es un conjunto de caracteres con un tamaño, color y diseño determinados. Aspose.Words le permite trabajar con fuentes utilizando varias clases relacionadas con fuentes, incluida la clase [Font](https://reference.aspose.com/words/java/com.aspose.words/font/).

## Formato de Fuente

El formato de fuente actual está representado por un objeto **Font** devuelto por la propiedad [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont). La clase **Font** contiene una amplia variedad de propiedades de fuente posibles en Microsoft Word.

El siguiente ejemplo de código muestra cómo configurar el formato de fuente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontFormatting.java" >}}

Las propiedades de relleno ahora también están disponibles para que las fuentes establezcan el formato de relleno del texto. Da la posibilidad de cambiar, por ejemplo, el color de primer plano o la transparencia del relleno del texto.

## Obtener Espaciado de Línea de Fuente

El interlineado de una fuente es la distancia vertical entre las líneas de base de dos líneas de texto consecutivas. Por lo tanto, el interlineado incluye el espacio en blanco entre líneas junto con la altura del carácter en sí.

La propiedad [LineSpacing](https://reference.aspose.com/words/java/com.aspose.words/font/#getLineSpacing) se introdujo en la clase **Font** para obtener este valor como se muestra en el ejemplo a continuación:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetFontLineSpacing-GetFontLineSpacing.java" >}}

## Fuente EmphasisMark

La clase **Font** proporciona la propiedad [EmphasisMark](https://reference.aspose.com/words/java/com.aspose.words/font/#getEmphasisMark) para obtener o establecer los valores de enumeración EmphasisMark que se aplicarán en el formato.

El siguiente ejemplo de código muestra cómo establecer la propiedad **EphasisMark**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithDocumentBuilder-SetFontEmphasisMark.java" >}}
