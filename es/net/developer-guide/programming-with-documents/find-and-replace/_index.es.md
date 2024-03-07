---
title: Buscar y reemplazar en C#
second_title: Aspose.Words para .NET
articleTitle: Encontrar y reemplazar
linktitle: Encontrar y reemplazar
type: docs
description: "Busque una cadena o un patrón de expresión regular en su documento y reemplácelo con el texto que desee usando C#."
weight: 100
url: /es/net/find-and-replace/
---

Puede navegar fácilmente dentro de su documento usando un teclado y un mouse, pero si tiene muchas páginas por las que desplazarse, le llevará bastante tiempo encontrar un texto específico en un documento largo. Tomará más tiempo cuando desee reemplazar ciertos caracteres o palabras que haya utilizado en su documento. La función "Buscar y reemplazar" le permite buscar una secuencia de caracteres en un documento y reemplazarla con otra secuencia de caracteres.

Aspose.Words le permite encontrar una cadena específica o un patrón de expresión regular en su documento y reemplazarlo con una alternativa sin instalar ni utilizar aplicaciones adicionales como Microsoft Word. Esto acelerará muchas tareas de escritura y formateo, lo que podría ahorrarle horas de trabajo.

Este artículo explica cómo aplicar el reemplazo de cadenas y expresiones regulares con soporte de metacaracteres.

## Formas de buscar y reemplazar {#ways-to-find-and-replace}

Aspose.Words proporciona dos formas de aplicar la operación de buscar y reemplazar mediante lo siguiente:

1. *Reemplazo de cadena simple*: para buscar y reemplazar una cadena específica por otra, debe especificar una cadena de búsqueda (caracteres alfanuméricos) que se reemplazará según todas las apariciones con otra cadena de reemplazo especificada. Ambas cadenas no deben contener símbolos. Tenga en cuenta que la comparación de cadenas puede distinguir entre mayúsculas y minúsculas, o puede que no esté seguro de la ortografía o tenga varias ortografías similares.
2. *Expresiones regulares*: para especificar una expresión regular para encontrar las coincidencias exactas de cadenas y reemplazarlas de acuerdo con su expresión regular. Tenga en cuenta que una palabra se define como compuesta únicamente de caracteres alfanuméricos. Si el reemplazo se ejecuta con coincidencias solo de palabras completas y la cadena de entrada contiene símbolos, entonces no se encontrarán frases.

Además, puede utilizar metacaracteres especiales con reemplazo simple de cadenas y expresiones regulares para especificar pausas dentro de la operación de búsqueda y reemplazo.

Aspose.Words presenta la funcionalidad de buscar y reemplazar con el espacio de nombres [Aspose.Words.Replacing](https://reference.aspose.com/words/es/net/aspose.words.replacing/). Puede trabajar con muchas opciones durante el proceso de búsqueda y reemplazo utilizando la clase [FindReplaceOptions](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/).

### Buscar y reemplazar texto mediante el reemplazo de cadenas simples {#find-and-replace-text-using-simple-string-replacement}

Puede utilizar uno de los métodos [Replace](https://reference.aspose.com/words/es/net/aspose.words/range/replace/#replace/) para buscar o reemplazar una cadena en particular y devolver la cantidad de reemplazos que se realizaron. En este caso, puede especificar una cadena que se reemplazará, una cadena que reemplazará todas sus apariciones, si el reemplazo distingue entre mayúsculas y minúsculas y si solo se verán afectadas las palabras independientes.

El siguiente ejemplo de código muestra cómo encontrar la cadena "_CustomerName_" y reemplazarla con la cadena *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo simple de cadenas:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="antes del reemplazo-de-cadena-simple" style="width:600px"/>

Y después de aplicar un simple reemplazo de cadena:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="después del reemplazo-de-cadena-simple" style="width:600px"/>

### Buscar y reemplazar texto usando expresiones regulares {#find-and-replace-text-using-regular-expressions}

Una expresión regular (regex) es un patrón que describe una determinada secuencia de texto. Supongamos que desea reemplazar todas las apariciones dobles de una palabra con una sola aparición de palabra. Luego puede aplicar la siguiente expresión regular para especificar el patrón de palabra doble: `([a-zA-Z]+) \1`.

Utilice el otro método [Replace](https://reference.aspose.com/words/es/net/aspose.words/range/replace/) para buscar y reemplazar combinaciones de caracteres particulares configurando el parámetro `Regex` como patrón de expresión regular para encontrar coincidencias.

El siguiente ejemplo de código muestra cómo reemplazar cadenas que coinciden con un patrón de expresión regular con una cadena de reemplazo especificada:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de cadenas con expresiones regulares:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="antes-de-reemplazo-con-expresiones-regulares" style="width:600px"/>

Y después de aplicar el reemplazo de cadenas con expresiones regulares:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="después del reemplazo con expresiones regulares" style="width:600px"/>

### Buscar y reemplazar cadenas usando metacaracteres {#find-and-replace-text-using-metacharacters}

Puede utilizar metacaracteres en la cadena de búsqueda o en la cadena de reemplazo si un texto o frase en particular está compuesto por varios párrafos, secciones o páginas. Algunos de los metacaracteres incluyen **&amp;pag** para un salto de párrafo, **&amp;b** para un salto de sección, **&amp;metro** para un salto de página y **&amp;l** para un salto de línea.

{{% alert color="primary" %}}

Tenga en cuenta que el metacarácter **&amp;&amp;** equivale a **&amp;**. Por ejemplo, si necesita buscar texto para **&amp;pag** que no sea un salto de párrafo, puede utilizar **&amp;&amp;pag**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar texto con párrafo y salto de página:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Buscar y reemplazar cadena en encabezado/pie de página de un documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Puede buscar y reemplazar texto en la sección de encabezado/pie de página de un documento de Word utilizando la clase [HeaderFooter](https://reference.aspose.com/words/es/net/aspose.words/headerfooter/).

El siguiente ejemplo de código muestra cómo reemplazar el texto de la sección del encabezado en su documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de la cadena del encabezado:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="antes de aplicar el reemplazo de la cadena de encabezado" style="width:600px"/>

Y después de aplicar el reemplazo de la cadena de encabezado:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="después de aplicar el reemplazo de la cadena de encabezado" style="width:600px"/>

El ejemplo de código para reemplazar el texto de la sección de pie de página de su documento es muy similar al ejemplo de código de encabezado anterior. Todo lo que necesitas hacer es reemplazar las dos líneas siguientes:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Con lo siguiente:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de la cadena del pie de página:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="antes de aplicar el reemplazo de la cadena del pie de página" style="width:600px"/>

Y después de aplicar el reemplazo de la cadena del pie de página:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="después de aplicar el reemplazo de la cadena del pie de página" style="width:600px"/>

## Ignorar texto durante buscar y reemplazar {#ignore-text-during-find-and-replace}

Mientras aplica la operación de buscar y reemplazar, puede ignorar ciertos segmentos del texto. Por lo tanto, ciertas partes del texto se pueden excluir de la búsqueda y la búsqueda y reemplazo se pueden aplicar solo a las partes restantes.

Aspose.Words proporciona muchas propiedades de búsqueda y reemplazo para ignorar texto como [IgnoreDeleted](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) y [IgnoreInserted](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

El siguiente ejemplo de código muestra cómo ignorar el texto dentro de las revisiones de eliminación:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Personalizar la operación Buscar y reemplazar {#customize-find-and-replace-operation}

Aspose.Words proporciona muchos [properties](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/) diferentes para buscar y reemplazar texto, como aplicar un formato específico con propiedades [ApplyFont](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/applyfont/) y [ApplyParagraphFormats](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), usar sustituciones en patrones de reemplazo con propiedades [UseSubstitutions](https://reference.aspose.com/words/es/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) y otros.

El siguiente ejemplo de código muestra cómo resaltar una palabra específica en su documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words le permite utilizar la interfaz [IReplacingCallback](https://reference.aspose.com/words/es/net/aspose.words.replacing/ireplacingcallback/) para crear y llamar a un método personalizado durante una operación de reemplazo. Es posible que tenga algunos casos de uso en los que necesite personalizar la operación de buscar y reemplazar, como reemplazar el texto especificado con una expresión regular con etiquetas HTML, por lo que básicamente aplicará el reemplazo insertando HTML.

Si necesita reemplazar una cadena con una etiqueta HTML, aplique la interfaz **IReplacingCallback** para personalizar la operación de buscar y reemplazar de modo que la coincidencia comience al comienzo de una ejecución con el nodo de coincidencia de su documento. Proporcionemos varios ejemplos del uso de **IReplacingCallback**.

El siguiente ejemplo de código muestra cómo reemplazar el texto especificado con HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

El siguiente ejemplo de código muestra cómo resaltar números positivos con color verde y números negativos con color rojo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

El siguiente ejemplo de código muestra cómo anteponer un número de línea a cada línea:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
