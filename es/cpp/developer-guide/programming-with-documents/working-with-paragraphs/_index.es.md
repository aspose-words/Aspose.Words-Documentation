---
title: Trabajar con párrafos en C++
second_title: Aspose.Words para C++
articleTitle: Trabajar con Párrafos
linktitle: Trabajar con Párrafos
description: "Prácticas de manipulación de nodos de párrafo usando C++."
type: docs
weight: 210
url: /es/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Un párrafo es un conjunto de caracteres combinados en un bloque lógico y terminando con un carácter especial: un *paragraph break*. En Aspose.Words, un párrafo está representado por la clase [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Insertar un Párrafo

De hecho, para insertar un nuevo párrafo en el documento, debe insertar un carácter de salto de párrafo en él. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) inserta no solo una cadena de texto en el documento, sino que también agrega un salto de párrafo.

El formato de fuente actual también se especifica mediante la propiedad [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/), y el formato de párrafo actual se determina mediante la propiedad [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). En la siguiente sección, entraremos en más detalles sobre el formato de párrafo.

El siguiente ejemplo de código muestra cómo insertar un párrafo en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Formato de Párrafo

El formato de párrafo actual está representado por un objeto **ParagraphFormat** que devuelve la propiedad **ParagraphFormat**. Este objeto encapsula varias propiedades de formato de párrafo disponibles en Microsoft Word. Puede restablecer fácilmente el formato de párrafo predeterminado al estilo normal, alineado a la izquierda sin sangría, sin espaciado, sin bordes y sin sombreado llamando a [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

El siguiente ejemplo de código muestra cómo configurar el formato de párrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Aplicar Estilo de Párrafo

Algunos objetos de formato, como Font o ParagraphFormat, admiten estilos. Un único estilo integrado o definido por el usuario se representa mediante un objeto `Style` que contiene las propiedades de estilo correspondientes, como el nombre, el estilo base, la fuente y el formato de párrafo del estilo,etc.

Además, un objeto **Style** proporciona la propiedad [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) que devuelve un identificador de estilo independiente de la configuración regional representado por el valor de enumeración **StyleIdentifier**. El punto es que los nombres de los estilos integrados en Microsoft Word están localizados para diferentes idiomas. Con un identificador de estilo, puede encontrar el estilo correcto independientemente del idioma del documento. Los valores de enumeración corresponden a los estilos integrados de Microsoft Word, como *Normal*, *Heading 1*, *Heading 2* etc. A todos los estilos definidos por el usuario se les asigna el valor **StyleIdentifier.User**.

El siguiente ejemplo de código muestra cómo aplicar un estilo de párrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Inserte un Separador de Estilos para Colocar Diferentes Estilos de Párrafo

El separador de estilo se puede agregar al final de un párrafo usando el método abreviado de teclado Ctrl + Alt + Enter en MS Word. Esta característica permite utilizar dos estilos de párrafo diferentes en un párrafo impreso lógico. Si desea que aparezca texto desde el principio de un encabezado en particular en una Tabla de Contenido, pero no desea que aparezca todo el encabezado en la Tabla de Contenido, puede usar esta función.

El siguiente ejemplo de código muestra cómo insertar un separador de estilos para acomodar diferentes estilos de párrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identificar el Separador de Estilo de Párrafo

` ` Aspose.Words proporciona una propiedad pública [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) en una clase `Paragraph` permite identificar el Párrafo Separador de estilo como se muestra en el ejemplo que se muestra a continuación:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Aplicar Bordes y Sombreado a un Párrafo

Los bordes en Aspose.Words están representados por la clase [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/): esta es una colección de [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) objetos a los que se accede por índice o por tipo de borde. El tipo de borde está representado por la enumeración `BorderType`. Algunos valores de la enumeración son aplicables a varios o solo a un elemento de documento. Por ejemplo, **BorderType.Bottom** se aplica a un párrafo o celda de tabla, mientras que **BorderType.DiagonalDown** especifica el borde diagonal solo en una celda de tabla.

Tanto la colección de bordes como cada borde separado tienen atributos similares, como color, estilo de línea, ancho de línea, distancia del texto y sombra opcional. Están representados por propiedades del mismo nombre. Puede lograr diferentes tipos de bordes combinando los valores de las propiedades. Además, los objetos **BorderCollection** y **Border** le permiten restablecer estos valores predeterminados llamando al método [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Tenga en cuenta que cuando las propiedades del borde se restablecen a sus valores predeterminados, el borde se vuelve invisible.

{{% /alert %}}

Aspose.Words también tiene la clase [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) que contiene atributos de sombreado para los elementos del documento. Puede establecer la textura de sombreado deseada y los colores que se aplican al fondo y al primer plano del elemento.

La textura de sombreado se establece con un valor de enumeración [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) que permite la aplicación de varios patrones al objeto **Shading**. Por ejemplo, para establecer un color de fondo para un elemento de documento, use el valor [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) y establezca el color de sombreado de primer plano según corresponda.

El siguiente ejemplo de código muestra cómo aplicar bordes y sombreado a un párrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
