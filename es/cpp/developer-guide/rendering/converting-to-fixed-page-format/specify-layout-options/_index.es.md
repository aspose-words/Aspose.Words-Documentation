---
title: Especificar opciones de diseño en C++
second_title: Aspose.Words para C++
articleTitle: Especificar Opciones de Diseño
linktitle: Especificar Opciones de Diseño
description: "Especifique las opciones de diseño para varios diseños de documentos."
type: docs
weight: 20
url: /es/cpp/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words le permite crear documentos de salida con varios diseños, según los parámetros especificados en la propiedad [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options) del **Document**. Esta propiedad se asemeja a algunas de las opciones de menú de la interfaz de usuario de Microsoft Word descritas en este artículo.

Para obtener una lista completa de parámetros, como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_continuoussectionpagenumberingrestart/) para calcular los números de página en una sección continua que reinicia la numeración de páginas, o [IgnorePrinterMetrics](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_ignoreprintermetrics/) para ignorar la opción de compatibilidad "Usar métricas de impresora para diseñar documentos", consulte la página de la clase [LayoutOptions](https://reference.aspose.com/words/cpp/class/aspose.words.layout.layout_options).

## Marcas de Formato

Aspose.Words permite administrar las marcas de formato mediante las siguientes propiedades:

- [ShowHiddenText](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showhiddentext/) - un valor `Boolean`, que especifica si se representa el texto oculto.
- [ShowParagraphMarks](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_showparagraphmarks/): un valor `Boolean`, que especifica si se representan los caracteres de marca de párrafo.

La página representada en el siguiente ejemplo contiene tres párrafos. El segundo está oculto. Un usuario puede cambiar la opción **ShowHiddenText** para mostrar este texto oculto en la página. Además, cada párrafo tiene una marca de párrafo al final. La marca de párrafo generalmente no es visible a menos que la propiedad **ShowParagraphMarks** esté configurada para representarla.

![specify-layout-options-aspose-words-cpp-1](specify-layout-options-1.png)

En Microsoft Word, estos parámetros se establecen mediante el cuadro de diálogo" Archivo → Opciones → Mostrar " de la siguiente manera:

![specify-layout-options-aspose-words-cpp-2](specify-layout-options-3.png)

## Comentarios y Revisiones

Con Aspose.Words, puede representar comentarios de documentos que tendrán el mismo aspecto que en Microsoft Word. Para especificar si se representan los comentarios, utilice la propiedad [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_commentdisplaymode/).

En Microsoft Word, este parámetro se establece mediante el cuadro de diálogo "Opciones de seguimiento de cambios", como se muestra a continuación:

![specify-layout-options-aspose-words-cpp-3](specify-layout-options-4.png)

Además, Aspose.Words le permite mostrar revisiones en un documento. Utilice la propiedad [RevisionOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/) de la clase **LayoutOptions** para definir si se muestran las revisiones del documento. Para controlar su apariencia (color de resaltado de revisión, color de la barra de revisión, etc.), use la clase [RevisonOptions](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_revisionoptions/).

También puede hacer que las revisiones se muestren como comentarios al contenido. Para este propósito, use la propiedad [CommentDisplayMode](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/set_commentdisplaymode/) y el valor [ShowInBalloons](https://reference.aspose.com/words/cpp/aspose.words.layout/commentdisplaymode/).

El siguiente ejemplo de código muestra cómo personalizar la visualización de revisiones:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRevisionOptions-SetShowInBalloons.cpp" >}}

La siguiente imagen muestra cómo Aspose.Words representa los comentarios y las revisiones de eliminación:

<img src="specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_cpp" style="width:800px"/>

## Modelador de Texto para Renderizado Tipográfico Avanzado

La propiedad [TextShaperFactory](https://reference.aspose.com/words/cpp/aspose.words.layout/layoutoptions/get_textshaperfactory/) le permite establecer la funcionalidad de modelado de texto, así como la compatibilidad con las funciones `OpenType`.

Utilice el modelado de texto para el procesamiento de documentos en los siguientes casos principales:

- Un documento utiliza Interletraje, Forma Numérica, Formas Numéricas o Ligaduras.
- Un documento utiliza Escrituras Complejas, como árabe, Jemer, tailandés,etc.

{{% alert color="primary" %}}

El modelado de texto se habilitará solo al exportar un documento a PDF o XPS.

{{% /alert %}}
