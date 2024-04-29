---
title: Dividir un documento en Java
second_title: Aspose.Words para Java
articleTitle: Dividir un documento
linktitle: Dividir un documento
description: "Aspose.Words para Java le proporciona una manera eficiente de dividir un documento en múltiples documentos por títulos o secciones, así como páginas o rangos de página."
type: docs
weight: 90
url: /es/java/split-a-document/
---

*Splitting* o *split un documento* es el proceso de romper un gran documento en un mayor número de archivos más pequeños. Hay varias razones para dividir un archivo. Por ejemplo, solo necesitas algunas páginas de un documento específico y no del todo. O por razones de privacidad, desea compartir sólo algunas partes de un documento con otros. Con la función de división, usted puede obtener sólo las partes requeridas del documento y hacer las acciones necesarias con ellos, por ejemplo, para marcar, guardar o enviar.

Aspose.Words le proporciona una manera eficiente de dividir un documento en múltiples documentos por títulos o secciones. También puede dividir un documento por páginas o por intervalos de página. Ambas opciones de división serán descritas en este artículo.

Para dividir un documento en archivos más pequeños Aspose.Words, necesita seguir estos pasos:

1. Cargue el documento en cualquier formato compatible.
1. Dividir el documento.
1. Guardar los documentos de salida.

Después de dividir un documento, podrá abrir todos los documentos de salida que comenzarán con las páginas requeridas, el texto, etc.

{{% alert color="primary" %}}

**Pruebe en línea**

Puede probar esta funcionalidad con nuestra [Divisor de documentos en línea](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividir un documento usando diferentes criterios {#split-a-document-using-different-criteria}

Aspose.Words le permite dividir documentos EPUB o HTML en capítulos según diversos criterios. En el proceso se conserva el estilo y el diseño del documento fuente para los documentos de salida.

Puede especificar los criterios utilizando [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) enumeración. Así que puede dividir un documento en capítulos usando uno de los siguientes criterios o combinar más de un criterio juntos:

- encabezando el párrafo,
- ruptura de sección,
- rotura de columna,
- Rompe la página.

Al guardar la salida en HTML, Aspose.Words guardar cada capítulo individual como un archivo HTML separado. Como resultado, el documento se dividirá en múltiples archivos HTML. Al guardar la salida a EPUB, Aspose.Words guardar el resultado en un solo archivo EPUB independientemente del `DocumentSplitCriteria` valor que usaste. Así, el uso de DocumentSplitCriteria para documentos EPUB sólo afecta la apariencia de su contenido en aplicaciones de lectores: el contenido se dividirá en capítulos y el documento ya no aparecerá continuo.

{{% alert color="primary" %}}

No puedes dividir un documento usando el [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) propiedad al guardar en formato MHTML.

{{% /alert %}}

En esta sección, consideramos sólo algunos de los posibles criterios de división.

### Dividir un documento por los encabezados {#split-a-document-by-headings}

Para dividir un documento en capítulos por títulos, utilice el **HeadingParagraph** valor del **DocumentSplitCriteria** propiedad.

Si necesita dividir un documento por un nivel específico de los párrafos de la partida, como los epígrafes 1, 2, y 3, utilice también el [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) propiedad. La producción se dividirá en párrafos formateados con el nivel de partida especificado.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por epígrafe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Tenga en cuenta que para estos criterios, Aspose.Words sólo admite el ahorro en formato HTML cuando se divide.

Al guardar a EPUB, el documento no se divide en varios archivos, y sólo habrá un archivo de salida.

### Dividir un documento por secciones {#split-a-document-by-sections}

Aspose.Words También le permite utilizar pausas de sección para dividir documentos y guardarlos en HTML. Para ello, utilice **SectionBreak** como el **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Hay otra manera de dividir el documento fuente en múltiples documentos de salida, y puede elegir cualquier formato de salida soportado por Aspose.Words.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por pausas de sección (sin utilizar el `DocumentSplitCriteria` propiedad:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Dividido por Páginas {#splitting-by-pages}

También puede dividir una página de documento por página, por rangos de página, o comenzar con los números de página especificados. En tal caso, [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) método puede hacer el trabajo.

Esta sección describe varios casos de uso de documentos divisorios por página utilizando [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) clase y la **ExtractPages** método.

{{% alert color="primary" %}}

Puedes usar cualquier [Formatos de documentos compatibles](/words/es/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Debido a los muchos matones que aparecen al reducir el número de páginas, un partido completo con el Microsoft Word El diseño es una tarea complicada. Por lo tanto, dependiendo de la complejidad del documento, puede haber pequeñas diferencias en la distribución de documentos resultante del documento original.

{{% /alert %}}

### Dividir una página de documento por página {#split-a-document-page-by-page}

Aspose.Words le permite dividir una página de documento multipágina por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como documento separado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dividir un documento por rangos de página {#split-a-document-by-page-ranges}

Aspose.Words permite dividir un documento multipágina por rangos de página. Puede dividir un archivo en múltiples archivos con varios rangos de página o simplemente seleccionar un rango y guardar sólo esta parte del documento fuente. Tenga en cuenta que puede elegir el rango de página según el número máximo y mínimo de página de un documento.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por rango de página con índices de inicio y final específicos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opción de devolución de llamadas para guardar un documento {#callback-option-for-saving-a-document}

Puedes usar el [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) propiedad para controlar cómo Aspose.Words guarda partes de documentos cuando este documento se exporta en formato HTML. Esta propiedad le permite cambiar el nombre de los archivos de salida o incluso redirigirlos a corrientes personalizadas.

Tenga en cuenta que este callback no es útil al guardar a EPUB porque todas las partes de salida deben guardarse en un solo contenedor – el archivo .epub. Por lo tanto, la redirección de flujo no es compatible, y el efecto de renombramiento no es visible ya que los archivos son renombrados dentro del contenedor.

## Combinar el documento de división con otro documento {#merge-the-split-document-with-another-file}

Aspose.Words le permite combinar el documento de salida dividida con otro documento para formar un nuevo documento. Esto se puede llamar documento fusionando.

El siguiente ejemplo de código muestra cómo combinar un documento dividido con otro documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
