---
title: Especificar opciones de diseño en Java
second_title: Aspose.Words por Java
articleTitle: Especificar Opciones de Diseño
linktitle: Especificar Opciones de Diseño
description: "Cree documentos de salida con varios diseños, según los parámetros especificados en el documento utilizando Java."
type: docs
weight: 10
url: /es/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words le permite crear documentos de salida con varios diseños, según los parámetros especificados en la propiedad [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) de **Document**. Esta propiedad se asemeja a algunas de las opciones de menú de la interfaz de usuario Microsoft Word descritas en este artículo.

Para obtener una lista completa de parámetros, como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) para calcular los números de página en una sección continua que reinicia la numeración de páginas, o [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) para ignorar la opción de compatibilidad "Usar métricas de impresora para diseñar documentos", consulte la página de la clase [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Marcas de Formato

Aspose.Words permite administrar las marcas de formato utilizando las siguientes propiedades:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - un valor `Boolean`, que especifica si se representa el texto oculto.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks): un valor `Boolean`, que especifica si se representan los caracteres de marca de párrafo.

La página representada en el siguiente ejemplo contiene tres párrafos. El segundo está oculto. Un usuario puede cambiar la opción **ShowHiddenText** para mostrar este texto oculto en la página. Además, cada párrafo tiene una marca de párrafo al final. La marca de párrafo generalmente no es visible a menos que la propiedad **ShowParagraphMarks** esté configurada para representarla.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

En Microsoft Word, estos parámetros se establecen utilizando el cuadro de diálogo" Archivo → Opciones → Mostrar " de la siguiente manera:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Comentarios y Revisiones

Con Aspose.Words, puede representar comentarios de documentos que tendrán el mismo aspecto que en Microsoft Word. Para especificar si se representan los comentarios, utilice la propiedad [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

En Microsoft Word, este parámetro se establece mediante el cuadro de diálogo "Opciones de seguimiento de cambios", como se muestra a continuación:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Además, Aspose.Words le permite mostrar revisiones en un documento. Utilice la propiedad [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) de la clase **LayoutOptions** para definir si se muestran las revisiones del documento. Para controlar su apariencia (color de resaltado de revisión, color de la barra de revisión, etc.), use la clase [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

También puede hacer que las revisiones se muestren como comentarios al contenido. Para este propósito, use la propiedad [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) y el valor [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

El siguiente ejemplo de código muestra cómo personalizar la visualización de revisiones:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

La siguiente imagen muestra cómo Aspose.Words representa los comentarios y las revisiones de eliminación:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Modelador de Texto para Renderizado Tipográfico Avanzado

La propiedad [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) le permite establecer la funcionalidad de modelado de texto, así como la compatibilidad con las funciones `OpenType`.

Utilice el modelado de texto para el procesamiento de documentos en los siguientes casos principales:

- Un documento utiliza Interletraje, Forma Numérica, Formas Numéricas o Ligaduras.
- Un documento utiliza Escrituras Complejas, como árabe, Jemer, tailandés,etc.

{{% alert color="primary" %}}

El modelado de texto se habilitará solo al exportar un documento a PDF o XPS.

{{% /alert %}}
