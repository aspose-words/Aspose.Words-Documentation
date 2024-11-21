---
title: Buscar y reemplazar en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Encontrar y reemplazar
linktitle: Encontrar y reemplazar
type: docs
description: "Busque una cadena o un patrón de expresión regular en su documento y reemplácelo con el texto que desee usando Python."
weight: 100
url: /es/python-net/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Puede navegar fácilmente dentro de su documento usando un teclado y un mouse, pero si tiene muchas páginas por las que desplazarse, le llevará bastante tiempo encontrar un texto específico en un documento largo. Tomará más tiempo cuando desee reemplazar ciertos caracteres o palabras que haya utilizado en su documento. La función "Buscar y reemplazar" le permite buscar una secuencia de caracteres en un documento y reemplazarla con otra secuencia de caracteres.

Aspose.Words le permite encontrar una cadena específica o un patrón de expresión regular en su documento y reemplazarlo con una alternativa sin instalar ni utilizar aplicaciones adicionales como Microsoft Word. Esto acelerará muchas tareas de escritura y formateo, lo que podría ahorrarle horas de trabajo.

Este artículo explica cómo aplicar el reemplazo de cadenas y expresiones regulares con soporte de metacaracteres.

## Formas de buscar y reemplazar {#ways-to-find-and-replace}

Aspose.Words proporciona dos formas de aplicar la operación de buscar y reemplazar mediante lo siguiente:

1. *Reemplazo de cadena simple*: para buscar y reemplazar una cadena específica por otra, debe especificar una cadena de búsqueda (caracteres alfanuméricos) que se reemplazará según todas las apariciones con otra cadena de reemplazo especificada. Ambas cadenas no deben contener símbolos. Tenga en cuenta que la comparación de cadenas puede distinguir entre mayúsculas y minúsculas, o puede que no esté seguro de la ortografía o tenga varias ortografías similares.
2. *Expresiones regulares*: para especificar una expresión regular para encontrar las coincidencias exactas de cadenas y reemplazarlas de acuerdo con su expresión regular. Tenga en cuenta que una palabra se define como compuesta únicamente de caracteres alfanuméricos. Si el reemplazo se ejecuta con coincidencias solo de palabras completas y la cadena de entrada contiene símbolos, entonces no se encontrarán frases.

Además, puede utilizar metacaracteres especiales con reemplazo simple de cadenas y expresiones regulares para especificar pausas dentro de la operación de búsqueda y reemplazo.

Aspose.Words presenta la funcionalidad de buscar y reemplazar con el módulo [aspose.words.replacing](https://reference.aspose.com/words/python-net/aspose.words.replacing/). Puede trabajar con muchas opciones durante el proceso de búsqueda y reemplazo utilizando la clase [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Buscar y reemplazar texto usando {#find-and-replace-text-using-simple-string-replacement} de reemplazo de cadena simple

Puede utilizar uno de los métodos [replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/) y [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) para buscar o reemplazar una cadena en particular y devolver la cantidad de reemplazos que se realizaron. En este caso, puede especificar una cadena que se reemplazará, una cadena que reemplazará todas sus apariciones, si el reemplazo distingue entre mayúsculas y minúsculas y si solo se verán afectadas las palabras independientes.

El siguiente ejemplo de código muestra cómo encontrar la cadena "_CustomerName_" y reemplazarla con la cadena *"James Bond"*:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.writeln("Hello _CustomerName_,")
print("Original document text: " + doc.range.text)

doc.range.replace("_CustomerName_", "James Bond", aw.replacing.FindReplaceOptions(aw.replacing.FindReplaceDirection.FORWARD))

print("Document text after replace: " + doc.range.text)

# Save the modified document
doc.save(docs_base.artifacts_dir + "FindAndReplace.simple_find_replace.docx")
{{< /highlight >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo simple de cadenas:

<img src="/words/python-net/find-and-replace/before-simple-string-replacement.png" alt="antes del reemplazo-de-cadena-simple" style="width:600px"/>

Y después de aplicar un simple reemplazo de cadena:

<img src="/words/python-net/find-and-replace/after-simple-string-replacement.png" alt="después del reemplazo-de-cadena-simple" style="width:600px"/>

### Buscar y reemplazar texto usando expresiones regulares {#find-and-replace-text-using-regular-expressions}

Una expresión regular es un patrón que describe una determinada secuencia de texto. Supongamos que desea reemplazar todas las apariciones dobles de una palabra con una sola aparición de palabra. Luego puede aplicar la siguiente expresión regular para especificar el patrón de palabra doble: `([a-zA-Z]+) \1`.

Utilice el método [replace_regex](https://reference.aspose.com/words/python-net/aspose.words/range/replace_regex/) para buscar y reemplazar combinaciones de caracteres particulares estableciendo el parámetro de expresión regular como patrón para encontrar coincidencias.

El siguiente ejemplo de código muestra cómo reemplazar cadenas que coinciden con un patrón de expresión regular con una cadena de reemplazo especificada:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceWithRegex.py" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de cadenas con expresiones regulares:

<img src="/words/python-net/find-and-replace/before-replacement-with-regular-expressions.png" alt="antes-de-reemplazo-con-expresiones-regulares" style="width:600px"/>

Y después de aplicar el reemplazo de cadenas con expresiones regulares:

<img src="/words/python-net/find-and-replace/after-replacement-with-regular-expressions.png" alt="después del reemplazo con expresiones regulares" style="width:600px"/>

### Buscar y reemplazar cadenas usando metacaracteres {#find-and-replace-text-using-metacharacters}

Puede utilizar metacaracteres en la cadena de búsqueda o en la cadena de reemplazo si un texto o frase en particular está compuesto por varios párrafos, secciones o páginas. Algunos de los metacaracteres incluyen **&amp;pag** para un salto de párrafo, **&amp;b** para un salto de sección, **&amp;metro** para un salto de página y **&amp;l** para un salto de línea.

{{% alert color="primary" %}}

Tenga en cuenta que el metacarácter **&amp;&amp;** equivale a **&amp;**. Por ejemplo, si necesita buscar texto para **&amp;pag** que no sea un salto de párrafo, puede utilizar **&amp;&amp;pag**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar texto con párrafo y salto de página:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextContainingMetaCharacters.py" >}}

## Buscar y reemplazar cadena en encabezado/pie de página de un documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Puede buscar y reemplazar texto en la sección de encabezado/pie de página de un documento de Word utilizando la clase [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/).

El siguiente ejemplo de código muestra cómo reemplazar el texto de la sección del encabezado en su documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-ReplaceTextInFooter.py" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de la cadena del encabezado:

<img src="/words/python-net/find-and-replace/before-applying-header-string-replacement.png" alt="antes de aplicar el reemplazo de la cadena de encabezado" style="width:600px"/>

Y después de aplicar el reemplazo de la cadena de encabezado:

<img src="/words/python-net/find-and-replace/after-applying-header-string-replacement.png" alt="después de aplicar el reemplazo de la cadena de encabezado" style="width:600px"/>

El ejemplo de código para reemplazar el texto de la sección de pie de página de su documento es muy similar al ejemplo de código de encabezado anterior. Todo lo que necesitas hacer es reemplazar las dos líneas siguientes:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.HEADER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Con lo siguiente:

{{< highlight python >}}
header = headersFooters.get_by_header_footer_type(aw.HeaderFooterType.FOOTER_PRIMARY)
header.range.replace("Aspose.Words", "Remove", options)
{{< /highlight >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo de la cadena del pie de página:

<img src="/words/python-net/find-and-replace/before-applying-footer-string-replacement.png" alt="antes de aplicar el reemplazo de la cadena del pie de página" style="width:600px"/>

Y después de aplicar el reemplazo de la cadena del pie de página:

<img src="/words/python-net/find-and-replace/after-applying-footer-string-replacement.png" alt="después de aplicar el reemplazo de la cadena del pie de página" style="width:600px"/>

## Ignorar texto durante buscar y reemplazar {#ignore-text-during-find-and-replace}

Mientras aplica la operación de buscar y reemplazar, puede ignorar ciertos segmentos del texto. Por lo tanto, ciertas partes del texto se pueden excluir de la búsqueda y la búsqueda y reemplazo se pueden aplicar solo a las partes restantes.

Aspose.Words proporciona muchas propiedades de búsqueda y reemplazo para ignorar texto como [ignore_deleted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_deleted/), [ignore_fields](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_fields/) y [ignore_inserted](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_inserted/).

El siguiente ejemplo de código muestra cómo ignorar el texto dentro de las revisiones de eliminación:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-IgnoreTextInsideDeleteRevisions.py" >}}

## Personalizar la operación Buscar y reemplazar {#customize-find-and-replace-operation}

Aspose.Words proporciona muchas propiedades diferentes para buscar y reemplazar texto, como aplicar un formato específico con propiedades [apply_font](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_font/) y [apply_paragraph_formats](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/apply_paragraph_format/), usar sustituciones en patrones de reemplazo con propiedad [use_substitutions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/use_substitutions/) y otras.

El siguiente ejemplo de código muestra cómo resaltar una palabra específica en su documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-find_and_replace-FindAndHighlight.py" >}}
