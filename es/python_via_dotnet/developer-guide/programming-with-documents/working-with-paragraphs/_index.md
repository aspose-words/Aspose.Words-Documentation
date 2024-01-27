---
title: Trabajar con párrafos en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Trabajar con párrafos
linktitle: Trabajar con párrafos
description: "Inserte un párrafo y especifique su formato en un documento usando Python."
type: docs
weight: 210
url: /es/python-net/working-with-paragraphs/
---

Un párrafo es un conjunto de caracteres combinados en un bloque lógico y que termina con un carácter especial: un *salto de párrafo*. En Aspose.Words, un párrafo está representado por la clase [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Insertar un párrafo

Para insertar un nuevo párrafo en el documento, de hecho, debe insertar un carácter de salto de párrafo en él. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) también inserta una cadena de texto en el documento pero además agrega un salto de párrafo.

El formato de fuente actual también lo especifica la propiedad [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) y el formato de párrafo actual lo determina la propiedad [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

El siguiente ejemplo de código muestra cómo insertar un párrafo en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Dar formato al párrafo

El formato de párrafo actual está representado por un objeto [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) devuelto por la propiedad [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Este objeto encapsula varias propiedades de formato de párrafo disponibles en Microsoft Word. Puede restablecer fácilmente el formato de párrafo predeterminado al estilo Normal, alineado a la izquierda, sin sangría, sin espaciado, sin bordes y sin sombreado llamando a [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

El siguiente ejemplo de código muestra cómo configurar el formato de párrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Aplicar un estilo de párrafo

Algunos objetos de formato como [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) o [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) admiten estilos. Un único estilo integrado o definido por el usuario se representa mediante un objeto [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) que contiene las propiedades de estilo correspondientes, como nombre, estilo base, fuente y formato de párrafo del estilo, etc.

Además, un objeto [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) proporciona la propiedad [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) que devuelve un identificador de estilo independiente de la configuración regional representado por un valor de enumeración [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). La cuestión es que los nombres de los estilos integrados en Microsoft Word están traducidos a diferentes idiomas. Con un identificador de estilo, puede encontrar el estilo correcto independientemente del idioma del documento. Los valores de enumeración corresponden a los estilos integrados de Microsoft Word, como Normal, Título 1, Título 2, etc. A todos los estilos definidos por el usuario se les asigna el valor [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user).

El siguiente ejemplo de código muestra cómo aplicar un estilo de párrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Insertar separador de estilos para colocar diferentes estilos de párrafo

Se puede agregar un separador de estilo al final de un párrafo usando el método abreviado de teclado Ctrl + Alt + Enter en MS Word. Esta característica permite utilizar dos estilos de párrafo diferentes en un párrafo impreso lógico. Si desea que algún texto del principio de un encabezado en particular aparezca en una tabla de contenido pero no desea que el encabezado completo aparezca en la tabla de contenido, puede usar esta función.

El siguiente ejemplo de código muestra cómo insertar un separador de estilo para dar cabida a diferentes estilos de párrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identificar el separador de estilo de párrafo

Aspose.Words proporciona una propiedad pública [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) en una clase [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) que permite identificar el párrafo separador de estilo como se muestra en el ejemplo que se muestra a continuación:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Aplicar bordes y sombreado a un párrafo

Las fronteras están representadas por el [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Esta es una colección de objetos [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) a los que se accede por índice o por tipo de borde. El tipo de borde está representado por la enumeración [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Algunos valores de la enumeración son aplicables a varios o sólo a un elemento del documento. Por ejemplo, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) se aplica a un párrafo o celda de una tabla, mientras que [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) especifica el borde diagonal solo en una celda de la tabla.

Tanto la colección de bordes como cada borde por separado tienen atributos similares como color, estilo de línea, ancho de línea, distancia desde el texto y sombra opcional. Están representados por propiedades del mismo nombre. Puede lograr diferentes tipos de bordes combinando los valores de las propiedades. Además, tanto los objetos [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) como [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) le permiten restablecer estos valores a los valores predeterminados llamando al método [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Tenga en cuenta que cuando las propiedades del borde se restablecen a sus valores predeterminados, el borde se vuelve invisible.

{{% /alert %}}

Aspose.Words también tiene la clase [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) que contiene atributos de sombreado para los elementos del documento. Puede configurar la textura de sombreado deseada y los colores que se aplican al fondo y al primer plano del elemento.

La textura de sombreado se establece con un valor de enumeración [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) que permite la aplicación de varios patrones al objeto [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Por ejemplo, para establecer un color de fondo para un elemento de documento, utilice el valor [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) y establezca el color de sombreado de primer plano según corresponda. El siguiente ejemplo muestra cómo aplicar bordes y sombreado a un párrafo.

El siguiente ejemplo de código muestra cómo aplicar bordes y sombreado a un párrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
