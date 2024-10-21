---
title: Dividir un documento en C++
second_title: Aspose.Words para C++
articleTitle: Dividir un Documento
linktitle: Dividir un Documento
description: "Divida un documento en varios archivos usando C++. Utilice la función dividir para dividir eficazmente un documento por encabezados o secciones, así como por páginas o por rangos de páginas."
type: docs
weight: 90
url: /es/cpp/split-a-document/
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

Aspose.Words le permite dividir documentos EPUB o HTML en capítulos de acuerdo con varios criterios. En el proceso, el estilo y el diseño del documento de origen se conservan para los documentos de salida.

Puede especificar criterios utilizando la enumeración [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). Por lo tanto, puede dividir un documento en capítulos utilizando uno de los siguientes criterios o combinar más de un criterio:

- párrafo de encabezado,
- salto de sección,
- salto de columna,
- salto de página.

Al guardar el resultado en HTML, Aspose.Words guarde cada capítulo individual como un archivo HTML separado. Como resultado, el documento se dividirá en varios archivos HTML. Al guardar el resultado en EPUB, Aspose.Words guarde el resultado en un solo archivo EPUB independientemente del valor `DocumentSplitCriteria` que haya utilizado. Por lo tanto, el uso de DocumentSplitCriteria para documentos EPUB solo afecta a la apariencia de su contenido en las aplicaciones de lectura: el contenido se dividirá en capítulos y el documento ya no parecerá continuo.

{{% alert color="primary" %}}

No puede dividir un documento utilizando la propiedad [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) al guardarlo en formato MHTML.

{{% /alert %}}

En esta sección, consideramos solo algunos de los posibles criterios de división.

### Dividir un documento por Secciones {#split-a-document-by-sections}

Aspose.Words también le permite usar saltos de sección para dividir documentos y guardarlos en HTML. Para este propósito, use **SectionBreak** como **DocumentSplitCriteria**:

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas mediante saltos de sección (sin usar la propiedad `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Dividido por páginas {#splitting-by-pages}

También puede dividir un documento página por página, por rangos de páginas o comenzando con los números de página especificados. En tal caso, el método [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) puede hacer el trabajo.

En esta sección se describen varios casos de uso de dividir documentos por paginación utilizando la clase [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) y el método **ExtractPages**.

{{% alert color="primary" %}}

Puedes usar cualquiera [formato de salida compatible con Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Debido a los muchos matices que aparecen al reducir el número de páginas, una coincidencia completa con el diseño de Microsoft Word es una tarea bastante complicada. Por lo tanto, dependiendo de la complejidad del documento, puede haber ligeras diferencias en el diseño del documento resultante con respecto al documento original.

{{% /alert %}}

### Dividir un Documento Página por página {#split-a-document-page-by-page}

Aspose.Words le permite dividir un documento de varias páginas página por página.

El siguiente ejemplo de código muestra cómo dividir un documento y guardar cada página como un documento separado:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Dividir un Documento por Rangos de páginas {#split-a-document-by-page-ranges}

Aspose.Words permite dividir un documento de varias páginas por rangos de páginas. Puede dividir un archivo en varios archivos con varios rangos de páginas o simplemente seleccionar un rango y guardar solo esta parte del documento de origen. Tenga en cuenta que puede elegir el rango de páginas de acuerdo con el número de página máximo y mínimo de un documento.

El siguiente ejemplo de código muestra cómo dividir un documento en partes más pequeñas por rango de páginas con índices de inicio y finalización específicos:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Fusionar el Documento Dividido con Otro Documento {#merge-the-split-document-with-another-file}

Aspose.Words le permite fusionar el documento dividido de salida con otro documento para formar un nuevo documento. A esto se le puede llamar fusión de documentos.

El siguiente ejemplo de código muestra cómo fusionar un documento dividido con otro documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
