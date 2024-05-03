---
title: Working with Paragraphs in Java
second_title: Aspose.Words para Java
articleTitle: Working with Paragraphs
linktitle: Working with Paragraphs
description: "Prácticas de manipulación de los nodos del párrafo Java."
type: docs
weight: 210
url: /es/java/working-with-paragraphs/
---

Un párrafo es un conjunto de caracteres combinados en un bloque lógico y terminando con un carácter especial – un *interrupción*. In Aspose.Words, a párrafo está representado por [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) clase.

## Inserción de un párrafo

Para insertar un nuevo párrafo en el documento, de hecho, es necesario insertar un carácter de ruptura del párrafo en él. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) inserta no sólo una cadena de texto en el documento, sino que también añade una interrupción del párrafo.

El formato de fuente actual también es especificado por el [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) y el formato actual del párrafo está determinado por el [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) propiedad. En la siguiente sección, vamos a entrar en más detalles sobre el formato del párrafo.

El siguiente ejemplo de código muestra cómo insertar un párrafo en un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Formato Párrafo

El formato actual del párrafo está representado por el [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) objeto que es devuelto por el [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) propiedad. Este objeto encapsula varias propiedades de formato de párrafo disponibles en Microsoft Word. Puede reajustar fácilmente el formato de un párrafo a su predeterminado – Estilo normal, alineado izquierdo, sin indentación, sin espaciado, sin fronteras, sin sombra – llamando [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

El siguiente ejemplo de código muestra cómo establecer el formato del párrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Aplicar estilo del párrafo

Algunos objetos de formato como los estilos de soporte Font o ParagraphFormat. Un solo estilo integrado o definido por el usuario está representado por un [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) objeto que contiene las propiedades de estilo correspondiente como nombre, estilo base, fuente y formato párrafo del estilo, y así sucesivamente.

Además, a **Style** objeto proporciona el [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) propiedad que devuelve un identificador de estilo locale-independiente representado por un **StyleIdentifier** Valor de enumeración. El punto es que los nombres de estilos incorporados en Microsoft Word se localizan para diferentes idiomas. Utilizando un identificador de estilo, puede encontrar el estilo correcto independientemente del idioma de documento. Los valores de enumeración corresponden a los Microsoft Word estilos incorporados como *Normal*, *Cabeza 1*, *Cabeza 2*, etc. Todos los estilos definidos por el usuario son asignados **StyleIdentifier. Valor de usuario**.

El siguiente ejemplo de código muestra cómo aplicar un estilo de párrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Insertar separador de estilo para poner diferentes estilos de párrafo

El separador de estilo se puede añadir al final de un párrafo utilizando el acceso directo Ctrl + Alt + Enter Keyboard en MS Word. Esta característica permite dos estilos de párrafo diferentes utilizados en un párrafo impreso lógico. Si desea que algún texto desde el comienzo de una partida en particular aparezca en una Tabla de Contenidos pero no quiere que todo el encabezado en la Tabla de Contenidos, puede utilizar esta característica.

El siguiente ejemplo de código muestra cómo insertar un separador de estilo para acomodar diferentes estilos de párrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Aplique Borders and Shading to a Paragraph

Fronteras en Aspose.Words están representados por [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) clase – esta es una colección de [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objetos a los que se accede por índice o por tipo de frontera. El `Border` tipo está representado por el [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) enumeración. Algunos valores de la enumeración son aplicables a varios o sólo un elemento de documento. Por ejemplo, **BorderType.Bottom** es aplicable a un párrafo o celda de mesa mientras **BorderType.DiagonalDown** especifica la frontera diagonal en una celda de mesa solamente.

Tanto la colección fronteriza como cada frontera separada tienen atributos similares como color, estilo de línea, ancho de línea, distancia del texto, y sombra opcional. Están representados por propiedades del mismo nombre. Puede lograr diferentes tipos de frontera combinando los valores de propiedad. Además, ambos **BorderCollection** y **Border** objetos le permiten restablecer estos valores por defecto llamando al [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) método.

{{% alert color="primary" %}}

Tenga en cuenta que cuando las propiedades fronterizas se reasientan a valores predeterminados, la frontera es invisible.

{{% /alert %}}

Aspose.Words también tiene [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) class contains shading atributos for document elements. Puede configurar la textura de afeitado deseada y los colores que se aplican al fondo y primer plano del elemento.

La textura de afeitado se establece con la [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) valor de enumeración que permite la aplicación de diversos patrones al **Shading** objeto. Por ejemplo, para establecer un color de fondo para un elemento de documento, utilice el `TextureIndex.TextureSolid` valor y establecer el color de afeitado primer plano según corresponda. El ejemplo de código que figura a continuación muestra cómo aplicar las fronteras y afeitarse con un párrafo.

El siguiente ejemplo de código muestra cómo aplicar las fronteras y establecer un párrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
