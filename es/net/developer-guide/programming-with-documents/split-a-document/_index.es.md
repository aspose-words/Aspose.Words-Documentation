---
title: Dividir un documento en C#
second_title: Aspose.Words para .NET
articleTitle: Dividir un documento
linktitle: Dividir un documento
description: "Divida un documento en varios archivos usando C#. Utilice la función de división para dividir eficazmente un documento por títulos o secciones, así como por páginas o por rangos de páginas."
type: docs
weight: 90
url: /es/net/split-a-document/
---

*Splitting* o *dividir un documento* es el proceso de dividir un documento grande en una mayor cantidad de archivos más pequeños. Hay varias razones para dividir un archivo. Por ejemplo, sólo necesitas algunas páginas de un documento específico y no el completo. O, por motivos de privacidad, desea compartir sólo algunas partes de un documento con otras personas. Con la función de división, puede obtener solo las partes necesarias del documento y realizar las acciones necesarias con ellas, por ejemplo, marcar, guardar o enviar.

Aspose.Words le proporciona una forma eficaz de dividir un documento en varios documentos por títulos o secciones. También puede dividir un documento por páginas o por rangos de páginas. Ambas opciones de división se describirán en este artículo.

Para dividir un documento en archivos más pequeños usando Aspose.Words, debe seguir estos pasos:

1. Cargue el documento en cualquier formato compatible.
1. Divida el documento.
1. Guarde los documentos de salida.

Después de dividir un documento, podrá abrir todos los documentos de salida que comenzarán con las páginas, el texto, etc. requeridos.

{{% alert color="primary" %}}

**Pruebe en línea**

Puedes probar esta funcionalidad con nuestro [Divisor de documentos en línea gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividir un documento utilizando diferentes criterios {#split-a-document-using-different-criteria}

Aspose.Words le permite dividir documentos EPUB o HTML en capítulos según varios criterios. En el proceso, el estilo y el diseño del documento de origen se conservan para los documentos de salida.

Puede especificar criterios utilizando la enumeración [DocumentSplitCriteria](https://reference.aspose.com/words/es/net/aspose.words.saving/documentsplitcriteria/). Por lo tanto, puede dividir un documento en capítulos utilizando uno de los siguientes criterios o combinar más de un criterio:

- párrafo de título,
- salto de sección,
- salto de columna,
- salto de página.

Al guardar el resultado en HTML, Aspose.Words guarda cada capítulo individual como un archivo HTML separado. Como resultado, el documento se dividirá en varios archivos HTML. Al guardar la salida en EPUB, Aspose.Words guarda el resultado en un único archivo EPUB independientemente del valor `DocumentSplitCriteria` que utilizó. Por lo tanto, el uso de DocumentSplitCriteria para documentos EPUB solo afecta la apariencia de su contenido en las aplicaciones de lectura: el contenido se dividirá en capítulos y el documento ya no aparecerá continuo.

{{% alert color="primary" %}}

No puede dividir un documento utilizando la propiedad [DocumentSplitCriteria](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) al guardarlo en formato MHTML.

{{% /alert %}}

En esta sección, consideramos sólo algunos de los posibles criterios de división.

### Dividir un documento por encabezados {#split-a-document-by-headings}

Para dividir un documento en capítulos por encabezados, utilice el valor **HeadingParagraph** de la propiedad **DocumentSplitCriteria**.

Si necesita dividir un documento por un nivel específico de párrafos de título, como los títulos 1, 2 y 3, utilice también la propiedad [DocumentSplitHeadingLevel](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/). El resultado se dividirá en párrafos formateados con el nivel de encabezado especificado.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas según el título:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Tenga en cuenta que, para este criterio, Aspose.Words solo admite guardar en formato HTML al dividir.

Al guardar en EPUB, el documento no se divide en varios archivos y solo habrá un archivo de salida.

### Dividir un documento por secciones {#split-a-document-by-sections}

Aspose.Words también le permite utilizar saltos de sección para dividir documentos y guardarlos en HTML. Para ello, utilice **SectionBreak** como **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Hay otra forma de dividir el documento de origen en varios documentos de salida y puede elegir cualquier formato de salida compatible con Aspose.Words.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas mediante saltos de sección (sin utilizar la propiedad `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Dividido por páginas {#splitting-by-pages}

También puede dividir un documento página por página, por rangos de páginas o comenzando con los números de página especificados. En tal caso, el método [ExtractPages](https://reference.aspose.com/words/es/net/aspose.words/document/extractpages/) puede hacer el trabajo.

Esta sección describe varios casos de uso de división de documentos por paginación usando la clase [Document](https://reference.aspose.com/words/es/net/aspose.words/document/) y el método **ExtractPages**.

{{% alert color="primary" %}}

Puedes usar cualquier [Formatos de documentos admitidos](/words/es/net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Debido a los muchos matices que aparecen al reducir el número de páginas, una coincidencia completa con el diseño Microsoft Word es una tarea bastante complicada. Por lo tanto, dependiendo de la complejidad del documento, puede haber ligeras diferencias en el diseño del documento resultante respecto al documento original.

{{% /alert %}}

### Dividir una página de documento por página {#split-a-document-page-by-page}

Aspose.Words le permite dividir un documento de varias páginas página por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como un documento independiente:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Dividir un documento por rangos de páginas {#split-a-document-by-page-ranges}

Aspose.Words permite dividir un documento de varias páginas por rangos de páginas. Puede dividir un archivo en varios archivos con varios rangos de páginas o simplemente seleccionar un rango y guardar solo esta parte del documento fuente. Tenga en cuenta que puede elegir el rango de páginas según el número de páginas máximo y mínimo de un documento.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por rango de páginas con índices de inicio y fin específicos:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Opción de devolución de llamada para guardar un documento {#callback-option-for-saving-a-document}

Puede utilizar la propiedad [DocumentPartSavingCallback](https://reference.aspose.com/words/es/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) para controlar cómo Aspose.Words guarda partes del documento cuando este se exporta a formato HTML. Esta propiedad le permite cambiar el nombre de los archivos de salida o incluso redirigirlos a secuencias personalizadas.

Tenga en cuenta que esta devolución de llamada no es útil al guardar en EPUB porque todas las partes de salida deben guardarse en un solo contenedor: el archivo .epub. Por lo tanto, no se admite la redirección de secuencias y el efecto del cambio de nombre no es visible ya que los archivos se renombran dentro del contenedor.

## Fusionar el documento dividido con otro documento {#merge-the-split-document-with-another-file}

Aspose.Words le permite fusionar el documento dividido de salida con otro documento para formar un documento nuevo. A esto se le puede llamar fusión de documentos.

El siguiente ejemplo de código muestra cómo fusionar un documento dividido con otro documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
