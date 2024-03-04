---
title: Trabajar con párrafos en C#
second_title: Aspose.Words para .NET
articleTitle: Trabajar con párrafos
linktitle: Trabajar con párrafos
description: "Insertar un párrafo en un documento C#. Establecer estilos de párrafo en C#. Trabajar con el separador de estilo de párrafo C#. Manipular el nodo de párrafo usando C#."
type: docs
weight: 210
url: /es/net/working-with-paragraphs/
---

Un párrafo es un conjunto de caracteres combinados en un bloque lógico y que termina con un carácter especial: un *salto de párrafo*. En Aspose.Words, un párrafo está representado por la clase [Paragraph](https://reference.aspose.com/words/es/net/aspose.words/paragraph/).

## Insertar un párrafo

Para insertar un nuevo párrafo en el documento, de hecho, debe insertar un carácter de salto de párrafo en él. [DocumentBuilder.Writeln](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/writeln/) inserta no sólo una cadena de texto en el documento, sino que también agrega un salto de párrafo.

El formato de fuente actual también lo especifica la propiedad [Font](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/font/), y el formato de párrafo actual lo determina la propiedad [ParagraphFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/paragraphformat/). En la siguiente sección, entraremos en más detalles sobre el formato de párrafo.

El siguiente ejemplo de código muestra cómo insertar un párrafo en un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Dar formato al párrafo

El formato de párrafo actual está representado por el objeto [ParagraphFormat](https://reference.aspose.com/words/es/net/aspose.words/paragraphformat/) devuelto por la propiedad [ParagraphFormat](https://reference.aspose.com/words/es/net/aspose.words/documentbuilder/paragraphformat/). Este objeto encapsula varias propiedades de formato de párrafo disponibles en Microsoft Word. Puede restablecer fácilmente el formato predeterminado de un párrafo (estilo normal, alineado a la izquierda, sin sangría, sin espaciado, sin bordes, sin sombreado) llamando a [ClearFormatting](https://reference.aspose.com/words/es/net/aspose.words/paragraphformat/clearformatting/).

El siguiente ejemplo de código muestra cómo configurar el formato de párrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Aplicar estilo de párrafo

Algunos objetos de formato, como **Font** o **ParagraphFormat**, admiten estilos. Un estilo integrado o definido por el usuario está representado por un objeto [Style](https://reference.aspose.com/words/es/net/aspose.words/style/), que contiene las propiedades de estilo apropiadas como nombre, estilo base, fuente, formato de párrafo de estilo, etc.

Además, el objeto **Style** expone la propiedad [StyleIdentifier](https://reference.aspose.com/words/es/net/aspose.words/style/styleidentifier/), que devuelve el identificador de estilo independiente de la configuración regional representado por el valor de enumeración [StyleIdentifier](https://reference.aspose.com/words/es/net/aspose.words/styleidentifier/). El hecho es que los nombres de los estilos integrados en Microsoft Word están traducidos a diferentes idiomas. Con el identificador de estilo, puede encontrar el estilo correcto independientemente del idioma del documento. Los valores de enumeración corresponden a los estilos Microsoft Word integrados, como *Normal*, *Encabezado 1*, *Encabezado 2*, etc. Todos los estilos definidos por el usuario se establecen en el valor de enumeración **StyleIdentifier.User**.

El siguiente ejemplo de código muestra cómo aplicar un estilo de párrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Insertar separador de estilos para colocar diferentes estilos de párrafo

Se puede agregar un separador de estilo al final de un párrafo usando el método abreviado de teclado Ctrl+Alt+Enter en Microsoft Word. Esta característica le permite utilizar dos estilos de párrafo diferentes en el mismo párrafo impreso lógico. Si desea que aparezca algún texto del principio de un encabezado en particular en la tabla de contenido, pero no desea que se muestre el encabezado completo en la tabla de contenido, puede usar esta función.

El siguiente ejemplo de código muestra cómo insertar un separador de estilo para dar cabida a diferentes estilos de párrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identificar el separador de estilo de párrafo

Aspose.Words expone la propiedad pública [BreakIsStyleSeparator](https://reference.aspose.com/words/es/net/aspose.words/paragraph/breakisstyleseparator/) en la clase `Paragraph` para identificar un párrafo con un separador de estilo, como se muestra en el siguiente ejemplo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Aplicar bordes y sombreado a un párrafo

Los bordes en Aspose.Words están representados por la clase [BorderCollection](https://reference.aspose.com/words/es/net/aspose.words/bordercollection/): se trata de una colección de objetos [Border](https://reference.aspose.com/words/es/net/aspose.words/border/) a los que se accede por índice o por tipo de borde. El tipo de borde, a su vez, está representado por la enumeración [BorderType](https://reference.aspose.com/words/es/net/aspose.words/bordertype/). Algunos valores de enumeración se aplican a varios o solo a un elemento del documento. Por ejemplo, **BorderType.Bottom** se aplica a un párrafo o celda de una tabla, mientras que **BorderType.DiagonalDown** especifica un borde diagonal solo en una celda de la tabla.

Tanto la colección de bordes como cada borde por separado tienen atributos similares, como color, estilo de línea, ancho de línea, distancia desde el texto y sombra opcional. Están representados por propiedades del mismo nombre. Puede obtener diferentes tipos de bordes combinando valores de propiedades. Además, los objetos **BorderCollection** y **Border** le permiten restablecer estos valores a sus valores predeterminados llamando al método [ClearFormatting](https://reference.aspose.com/words/es/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Tenga en cuenta que cuando las propiedades del borde se restablecen a sus valores predeterminados, el borde se vuelve invisible.

{{% /alert %}}

Aspose.Words también tiene la clase [Shading](https://reference.aspose.com/words/es/net/aspose.words/shading/) que contiene atributos de sombreado para los elementos del documento. Puede establecer la textura de sombreado deseada y los colores que se aplican al fondo y al primer plano de un elemento utilizando el valor de enumeración [TextureIndex](https://reference.aspose.com/words/es/net/aspose.words/textureindex/). **TextureIndex** también le permite aplicar diferentes patrones al objeto **Shading**. Por ejemplo, para establecer el color de fondo de un elemento del documento, utilice el valor **TextureIndex.TextureSolid** y establezca el color de sombreado de primer plano según corresponda.

El siguiente ejemplo de código muestra cómo aplicar bordes y sombreado a un párrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Contar líneas de párrafo

Si desea contar el número de líneas de un párrafo de cualquier documento de Word, puede utilizar el siguiente ejemplo de código:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}