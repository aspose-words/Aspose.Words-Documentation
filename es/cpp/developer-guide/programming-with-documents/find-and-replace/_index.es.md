---
title: Buscar y reemplazar en C++
second_title: Aspose.Words para C++
articleTitle: Buscar y Reemplazar
linktitle: Buscar y Reemplazar
type: docs
description: "Busque un patrón de cadena o expresión regular en su documento y reemplácelo con el texto que desee con C++."
weight: 100
url: /es/cpp/find-and-replace/
---

Puede navegar fácilmente dentro de su documento usando un teclado y un mouse, pero si tiene muchas páginas por las que desplazarse, le llevará bastante tiempo encontrar texto específico en un documento largo. Llevará más tiempo cuando desee reemplazar ciertos caracteres o palabras que ha utilizado en su documento. La funcionalidad "Buscar y reemplazar" le permite buscar una secuencia de caracteres en un documento y reemplazarla con otra secuencia de caracteres.

Aspose.Words le permite encontrar una cadena específica o un patrón de expresión regular en su documento y reemplazarlo con una alternativa sin instalar y usar aplicaciones adicionales como Microsoft Word. Esto acelerará muchas tareas de escritura y formato, lo que podría ahorrarle horas de trabajo.

Este artículo explica cómo aplicar reemplazo de cadenas y expresiones regulares con el soporte de metacaracteres.

## Formas de Buscar y reemplazar {#ways-to-find-and-replace}

Aspose.Words proporciona dos formas de aplicar la operación de búsqueda y reemplazo mediante lo siguiente:

1. *Simple string replacement* - para buscar y reemplazar una cadena específica con otra, debe especificar una cadena de búsqueda (caracteres alfanuméricos) que se reemplazará de acuerdo con todas las ocurrencias con otra cadena de reemplazo especificada. Ambas cadenas no deben contener símbolos. Tenga en cuenta que la comparación de cadenas puede distinguir entre mayúsculas y minúsculas, o puede no estar seguro de la ortografía o tener varias ortografías similares.
2. *Regular expressions*: para especificar una expresión regular para encontrar las coincidencias exactas de la cadena y reemplazarlas de acuerdo con su expresión regular. Tenga en cuenta que una palabra se define como compuesta solo de caracteres alfanuméricos. Si se ejecuta un reemplazo con solo palabras completas que coinciden y la cadena de entrada contiene símbolos, entonces no se encontrarán frases.

Además, puede usar metacaracteres especiales con reemplazo simple de cadenas y expresiones regulares para especificar saltos dentro de la operación de búsqueda y reemplazo.

Aspose.Words presenta la funcionalidad de buscar y reemplazar con el espacio de nombres [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). Puede trabajar con muchas opciones durante el proceso de búsqueda y reemplazo utilizando la clase [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Busque y Reemplace Texto Usando Reemplazo Simple de Cadena {#find-and-replace-text-using-simple-string-replacement}

Puede usar uno de los métodos [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) para buscar o reemplazar una cadena en particular y devolver el número de reemplazos que se realizaron. En este caso, puede especificar una cadena que se reemplazará, una cadena que reemplazará todas sus apariciones, si la sustitución distingue entre mayúsculas y minúsculas y si solo se verán afectadas las palabras independientes.

El siguiente ejemplo de código muestra cómo encontrar la cadena "_CustomerName _ "y reemplazarla con la cadena * "James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo simple de cadenas:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

Y después de aplicar un simple reemplazo de cuerdas:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Buscar y Reemplazar Texto Usando Expresiones Regulares {#find-and-replace-text-using-regular-expressions}

Una expresión regular (regex) es un patrón que describe una determinada secuencia de texto. Supongamos que desea reemplazar todas las apariciones dobles de una palabra con una sola aparición de palabra. Luego puede aplicar la siguiente expresión regular para especificar el patrón de doble palabra: `([a-zA-Z]+) \1`.

Utilice el otro método [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) para buscar y reemplazar combinaciones de caracteres particulares estableciendo el parámetro `Regex` como patrón de expresión regular para encontrar coincidencias.

El siguiente ejemplo de código muestra cómo reemplazar cadenas que coinciden con un patrón de expresión regular con una cadena de reemplazo especificada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de cadenas con expresiones regulares:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

Y después de aplicar el reemplazo de cadenas con expresiones regulares:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Buscar y reemplazar Cadenas usando Metacaracteres {#find-and-replace-text-using-metacharacters}

Puede usar metacaracteres en la cadena de búsqueda o en la cadena de reemplazo si un texto o frase en particular está compuesto por varios párrafos, secciones o páginas. Algunos de los metacaracteres incluyen **&p** para un salto de párrafo, **&b** para un salto de sección, **&m** para un salto de página y **&l** para un salto de línea.

{{% alert color="primary" %}}

Tenga en cuenta que el metacarácter **&amp;&amp;** es igual a **&amp;**. Por ejemplo, si necesita encontrar texto para **&p** que no sea un salto de párrafo, puede usar **&&p**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar texto con párrafo y salto de página:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Buscar y reemplazar Cadenas en el Encabezado / Pie de página de un Documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Puede buscar y reemplazar texto en la sección encabezado/pie de página de un documento de Word utilizando la clase [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

El siguiente ejemplo de código muestra cómo reemplazar el texto de la sección del encabezado en su documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de la cadena de encabezado:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Y después de aplicar el reemplazo de la cadena de encabezado:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

El ejemplo de código para reemplazar el texto de la sección de pie de página en su documento es muy similar al ejemplo de código de encabezado anterior. Todo lo que necesita hacer es reemplazar las siguientes dos líneas:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Con lo siguiente:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de la cadena del pie de página:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

Y después de aplicar el reemplazo de la cadena del pie de página:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Ignorar texto Durante Buscar y reemplazar {#ignore-text-during-find-and-replace}

Al aplicar la operación de buscar y reemplazar, puede ignorar ciertos segmentos del texto. Por lo tanto, ciertas partes del texto se pueden excluir de la búsqueda, y la búsqueda y reemplazo se puede aplicar solo a las partes restantes.

Aspose.Words proporciona muchas propiedades de búsqueda y reemplazo para ignorar texto, como [IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), y [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

El siguiente ejemplo de código muestra cómo ignorar texto dentro de eliminar revisiones:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Personalizar la Operación de Búsqueda y reemplazo {#customize-find-and-replace-operation}

Aspose.Words proporciona muchos [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) diferentes para buscar y reemplazar texto, como aplicar un formato específico con las propiedades [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) y [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), usar sustituciones en patrones de reemplazo con la propiedad [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) y otros.

El siguiente ejemplo de código muestra cómo resaltar una palabra específica en su documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words le permite usar la interfaz [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) para crear y llamar a un método personalizado durante una operación de reemplazo. Es posible que tenga algunos casos de uso en los que necesite personalizar la operación de búsqueda y reemplazo, como reemplazar el texto especificado con una expresión regular con etiquetas HTML, por lo que básicamente aplicará reemplazar con insertar HTML.

Si necesita reemplazar una cadena con una etiqueta HTML, aplique la interfaz **IReplacingCallback** para personalizar la operación de búsqueda y reemplazo de modo que la coincidencia comience al comienzo de una ejecución con el nodo de coincidencia de su documento. Proporcionemos varios ejemplos del uso de **IReplacingCallback**.

El siguiente ejemplo de código muestra cómo reemplazar el texto especificado con HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

El siguiente ejemplo de código muestra cómo resaltar números positivos con color verde y números negativos con color rojo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

El siguiente ejemplo de código muestra cómo anteponer un número de línea a cada línea:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
