---
title: Dividir un documento en Java
second_title: Aspose.Words por Java
articleTitle: Dividir un Documento
linktitle: Dividir un Documento
description: "Aspose.Words para Java le proporciona una forma eficiente de dividir un documento en varios documentos por encabezados o secciones, así como por páginas o rangos de páginas."
type: docs
weight: 90
url: /es/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* o *split a document* es el proceso de dividir un documento grande en un mayor número de archivos más pequeños. Hay varias razones para dividir un archivo. Por ejemplo, solo necesita algunas páginas de un documento específico y no todo el documento. O, por motivos de privacidad, desea compartir solo algunas partes de un documento con otras personas. Con la función de división, puede obtener solo las partes requeridas del documento y realizar las acciones necesarias con ellas, por ejemplo, marcar, guardar o enviar.

Aspose.Words le proporciona una forma eficiente de dividir un documento en varios documentos por encabezados o secciones. También puede dividir un documento por páginas o por rangos de páginas. Ambas opciones de división se describirán en este artículo.

Para dividir un documento en archivos más pequeños usando Aspose.Words, debe seguir estos pasos:

1. Cargue el documento en cualquier formato compatible.
1. Divida el documento.
1. Guarde los documentos de salida.

Después de dividir un documento, podrá abrir todos los documentos de salida que comenzarán con las páginas, el texto, etc. requeridos.

{{% alert color="primary" %}}

**Pruébalo en línea**

Puede probar esta funcionalidad con nuestro [Divisor de documentos en línea gratuito](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Dividir un Documento Utilizando Diferentes Criterios {#split-a-document-using-different-criteria}

Aspose.Words le permite dividir EPUB o HTML documentos en capítulos de acuerdo con varios criterios. En el proceso, el estilo y el diseño del documento de origen se conservan para los documentos de salida.

Puede especificar criterios utilizando la enumeración [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). Por lo tanto, puede dividir un documento en capítulos utilizando uno de los siguientes criterios o combinar más de un criterio:

- párrafo de encabezado,
- salto de sección,
- salto de columna,
- salto de página.

Al guardar el resultado en HTML, Aspose.Words guarde cada capítulo individual como un archivo HTML separado. Como resultado, el documento se dividirá en varios HTML archivos. Al guardar la salida en EPUB, Aspose.Words guarde el resultado en un solo archivo EPUB independientemente del valor `DocumentSplitCriteria` que haya utilizado. Por lo tanto, el uso de DocumentSplitCriteria para EPUB documentos solo afecta la apariencia de su contenido en las aplicaciones de lector: el contenido se dividirá en capítulos y el documento ya no parecerá continuo.

{{% alert color="primary" %}}

No puede dividir un documento utilizando la propiedad [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) al guardarlo en formato MHTML.

{{% /alert %}}

En esta sección, consideramos solo algunos de los posibles criterios de división.

### Dividir un documento por Encabezados {#split-a-document-by-headings}

Para dividir un documento en capítulos por encabezados, use el valor **HeadingParagraph** de la propiedad **DocumentSplitCriteria**.

Si necesita dividir un documento por un nivel específico de párrafos de encabezado, como los encabezados 1, 2 y 3, use también la propiedad [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). La salida se dividirá por párrafos formateados con el nivel de encabezado especificado.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por encabezado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Tenga en cuenta que para este criterio, Aspose.Words solo admite guardar en formato HTML al dividir.

Al guardar en EPUB, el documento no se divide en varios archivos y solo habrá un archivo de salida.

### Dividir un documento por Secciones {#split-a-document-by-sections}

Aspose.Words también le permite usar saltos de sección para dividir documentos y guardarlos en HTML. Para este propósito, use **SectionBreak** como **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Hay otra forma de dividir el documento de origen en varios documentos de salida, y puede elegir cualquier formato de salida compatible con Aspose.Words.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas mediante saltos de sección (sin usar la propiedad `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Dividido por páginas {#splitting-by-pages}

También puede dividir un documento página por página, por rangos de páginas o comenzando con los números de página especificados. En tal caso, el método [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) puede hacer el trabajo.

En esta sección se describen varios casos de uso de dividir documentos por paginación utilizando la clase [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) y el método **ExtractPages**.

{{% alert color="primary" %}}

Puedes usar cualquiera [formato de salida compatible con Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Debido a los muchos matices que aparecen al reducir el número de páginas, una coincidencia completa con el diseño Microsoft Word es una tarea bastante complicada. Por lo tanto, dependiendo de la complejidad del documento, puede haber ligeras diferencias en el diseño del documento resultante con respecto al documento original.

{{% /alert %}}

### Dividir un Documento Página por página {#split-a-document-page-by-page}

Aspose.Words le permite dividir un documento de varias páginas página por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como un documento separado:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Dividir un Documento por Rangos de páginas {#split-a-document-by-page-ranges}

Aspose.Words permite dividir un documento de varias páginas por rangos de páginas. Puede dividir un archivo en varios archivos con varios rangos de páginas o simplemente seleccionar un rango y guardar solo esta parte del documento de origen. Tenga en cuenta que puede elegir el rango de páginas de acuerdo con el número de página máximo y mínimo de un documento.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por rango de páginas con índices de inicio y finalización específicos:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Opción de Devolución de llamada para Guardar un Documento {#callback-option-for-saving-a-document}

Puede usar la propiedad [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) para controlar cómo Aspose.Words guarda las partes del documento cuando este documento se exporta al formato HTML. Esta propiedad le permite cambiar el nombre de los archivos de salida o incluso redirigirlos a secuencias personalizadas.

Tenga en cuenta que esta devolución de llamada no es útil cuando se guarda en EPUB porque todas las partes de salida deben guardarse en un solo contenedor: the .archivo epub. Por lo tanto, no se admite la redirección de secuencias y el efecto de cambiar el nombre no es visible ya que los archivos se renombran dentro del contenedor.

## Fusionar el Documento Dividido con Otro Documento {#merge-the-split-document-with-another-file}

Aspose.Words le permite fusionar el documento dividido de salida con otro documento para formar un nuevo documento. A esto se le puede llamar fusión de documentos.

El siguiente ejemplo de código muestra cómo fusionar un documento dividido con otro documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
