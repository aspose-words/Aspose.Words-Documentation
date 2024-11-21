---
title: Encontrar y reemplazar en Java
second_title: Aspose.Words para Java
articleTitle: Encontrar y reemplazar
linktitle: Encontrar y reemplazar
type: docs
description: "Encontrar un patrón de cadena o expresión regular en su documento y reemplazarlo con el texto que desea utilizar Java."
weight: 100
url: /es/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Puede navegar fácilmente dentro de su documento usando un teclado y un ratón, pero si tiene muchas páginas para desplazarse, tardará bastante tiempo en encontrar texto específico en un documento largo. Será más tiempo consumir cuando desee reemplazar ciertos caracteres o palabras que haya usado en su documento. La funcionalidad "Encontrar y reemplazar" le permite encontrar una secuencia de caracteres en un documento y reemplazarlo con otra secuencia de caracteres.

Aspose.Words le permite encontrar un patrón específico de cadena o expresión regular en su documento y reemplazarlo con una alternativa sin instalar y utilizar aplicaciones adicionales como Microsoft Word. Esto acelerará muchas tareas de escribir y formatear, potencialmente ahorrando horas de trabajo.

Este artículo explica cómo aplicar la sustitución de cadenas y expresiones regulares con el apoyo de los metacaractores.

## Formas de encontrar y reemplazar {#ways-to-find-and-replace}

Aspose.Words proporciona dos maneras de aplicar el hallazgo y reemplazar la operación utilizando los siguientes:

1. *Sustitución simple de cadena* – para encontrar y reemplazar una cadena específica con otra, usted necesita especificar una cadena de búsqueda ( caracteres alfanuméricos) que va a ser reemplazada según todas las ocurrencias con otra cadena de reemplazo especificada. Ambas cadenas no deben contener símbolos. Tenga en cuenta que la comparación de cadenas puede ser sensible a los casos, o puede no estar seguro de la ortografía o tener varias ortografías similares.
2. *Expresiones regulares* – para especificar una expresión regular para encontrar los partidos de cadena exacta y reemplazarlos según su expresión regular. Tenga en cuenta que una palabra se define como estar compuesta de sólo caracteres alfanuméricos. Si un reemplazo se ejecuta con sólo palabras enteras que se combinan y la cadena de entrada pasa a contener símbolos, entonces no se encontrará ninguna frase.

Además, puede utilizar metacaracters especiales con simple sustitución de cadenas y expresiones regulares para especificar rupturas dentro del hallazgo y reemplazar la operación.

Aspose.Words presenta el hallazgo y reemplazar funcionalidad con el [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Puede trabajar con muchas opciones durante el proceso de búsqueda y sustitución utilizando [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) clase.

### Encontrar y reemplazar texto usando el reemplazo de cuerda simple {#find-and-replace-text-using-simple-string-replacement}

Puedes usar uno de los [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) métodos para encontrar o reemplazar una cadena particular y devolver el número de reemplazos que se hicieron. En este caso, se puede especificar una cadena que se reemplazará, una cadena que reemplazará todas sus ocurrencias, si el reemplazo es sensible a los casos, y si sólo las palabras independientes serán afectadas.

El siguiente ejemplo de código muestra cómo encontrar la cadena "_CustomerName_" y reemplazarla con la cadena * "James Bond"*:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Puede notar la diferencia entre el documento antes de aplicar el reemplazo simple de cadena:

<img src="/words/java/find-and-replace/before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Y después de aplicar el reemplazo de cuerda simple:

<img src="/words/java/find-and-replace/after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Encontrar y reemplazar texto usando expresiones regulares {#find-and-replace-text-using-regular-expressions}

Una expresión regular (regex) es un patrón que describe una cierta secuencia de texto. Supongamos que desea reemplazar todas las ocurrencias dobles de una palabra con una sola palabra ocurrencia. Luego puede aplicar la siguiente expresión regular para especificar el patrón de doble palabra: `([a-zA-Z]+) \1`.

Use el otro [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) método para buscar y reemplazar combinaciones de caracteres particulares mediante el establecimiento de la `Regex` parámetro como el patrón de expresión regular para encontrar coincidencias.

El siguiente ejemplo de código muestra cómo reemplazar las cadenas que coinciden con un patrón de expresión regular con una cadena de reemplazo especificada:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Puede notar la diferencia entre el documento antes de aplicar el reemplazo de cadena con expresiones regulares:

<img src="/words/java/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Y después de aplicar el reemplazo de cadena con expresiones regulares:

<img src="/words/java/find-and-replace/after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Encontrar y reemplazar la cuerda usando metacaracters {#find-and-replace-text-using-metacharacters}

Usted puede utilizar metacaracters en la cadena de búsqueda o la cadena de reemplazo si un texto o frase en particular se compone de múltiples párrafos, secciones o páginas. Algunos de los metacaractores incluyen **&p** para una interrupción del párrafo, **&b** para un descanso de sección, **&m** para un descanso de página, y **&l** para un descanso.

{{% alert color="primary" %}}

Tenga en cuenta que el metacaracter **&&** iguales a **&**. Por ejemplo, si necesita encontrar el texto para **&p** que no es una interrupción del párrafo, entonces usted puede utilizar **&&p**.

{{% /alert %}}

El siguiente ejemplo de código muestra cómo reemplazar el texto con el párrafo y la rotura de página:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Encontrar y reemplazar la cuerda en Header/Footer de un documento {#find-and-replace-string-in-header-or-footer-of-a-document}

Usted puede encontrar y reemplazar texto en la sección de encabezado/pierna de un documento de Word utilizando el [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/) clase.

El siguiente ejemplo de código muestra cómo reemplazar el texto de la sección encabezado en su documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Puede notar la diferencia entre el documento antes de aplicar el reemplazo de cadena de encabezado:

<img src="/words/java/find-and-replace/before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Y después de aplicar el reemplazo de cadena de encabezado:

<img src="/words/java/find-and-replace/after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

El ejemplo de código para reemplazar el texto de la sección del pie de página en su documento es muy similar al ejemplo anterior del código del encabezado. Todo lo que necesitas hacer es reemplazar las dos líneas siguientes:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Con lo siguiente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Puede notar la diferencia entre el documento antes de aplicar el reemplazo de cadena de pieer:

<img src="/words/java/find-and-replace/before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Y después de aplicar el reemplazo de cadena de pieer:

<img src="/words/java/find-and-replace/after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Ignorar texto durante la búsqueda y sustitución {#ignore-text-during-find-and-replace}

Al aplicar el hallazgo y reemplazar la operación, puede ignorar ciertos segmentos del texto. Por lo tanto, algunas partes del texto pueden ser excluidas de la búsqueda, y el hallazgo y el reemplazo se pueden aplicar sólo a las partes restantes.

Aspose.Words proporciona a muchos encontrar y reemplazar propiedades para ignorar texto como [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes), y [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

El siguiente ejemplo de código muestra cómo ignorar el texto dentro de borra revisiones:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Personalizar búsqueda y sustitución de operaciones {#customize-find-and-replace-operation}

Aspose.Words proporciona muchos diferentes [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) para encontrar y reemplazar texto como la aplicación de formato específico [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) y [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) propiedades, utilizando sustituciones en patrones de sustitución [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) propiedad, y otros.

El siguiente ejemplo de código muestra cómo resaltar una palabra específica en su documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words permite utilizar el [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) interfaz para crear y llamar un método personalizado durante una operación de sustitución. Usted puede tener algunos casos de uso donde usted necesita para personalizar el hallazgo y reemplazar la operación, como reemplazar el texto especificado por una expresión regular con etiquetas HTML, por lo que básicamente se aplicará sustitución por insertar HTML.

Si necesita reemplazar una cadena con una etiqueta HTML, aplique la **IReplacingCallback** interfaz para personalizar el funcionamiento del hallazgo y reemplazar para que el partido comience al comienzo de una carrera con el nodo del partido de su documento. Proporcionemos varios ejemplos de uso **IReplacingCallback**.

El siguiente ejemplo de código muestra cómo reemplazar el texto especificado por HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


El siguiente ejemplo de código muestra cómo resaltar números positivos con color verde y números negativos con color rojo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

El siguiente ejemplo de código muestra cómo prependir un número de línea a cada línea:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
