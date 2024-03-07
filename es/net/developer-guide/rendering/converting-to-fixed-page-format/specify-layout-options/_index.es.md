---
title: Especificar opciones de diseño en C#
second_title: Aspose.Words para .NET
articleTitle: Especificar opciones de diseño
linktitle: Especificar opciones de diseño
description: "Especifique opciones de diseño para varios diseños de documentos utilizando C#."
type: docs
weight: 10
url: /es/net/specify-layout-options/
---

Aspose.Words le permite crear documentos de salida con varios diseños, según los parámetros especificados en las propiedades de la clase [LayoutOptions](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/). Algunas de estas propiedades se parecen a algunas de las opciones del menú de la interfaz de usuario de Microsoft Word; se describirán en este artículo.

Para obtener una lista completa de parámetros como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) para calcular los números de página en una sección continua que reinicia la numeración de páginas, o [IgnorePrinterMetrics](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) para ignorar la opción de compatibilidad "Usar métricas de impresora para diseñar el documento", consulte la página de clase [LayoutOptions](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/).

## Marcas de formato

Aspose.Words permite gestionar marcas de formato utilizando las siguientes propiedades:

- [ShowHiddenText](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/showhiddentext/): un valor `Boolean`, que especifica si se representa el texto oculto.
- [ShowParagraphMarks](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/showparagraphmarks/): un valor `Boolean` que especifica si se representan los caracteres de marca de párrafo.

La página que se muestra en el siguiente ejemplo contiene tres párrafos. El segundo está escondido. Un usuario puede cambiar la opción **ShowHiddenText** para mostrar este texto oculto en la página. Además, cada párrafo tiene una marca de párrafo al final. La marca de párrafo normalmente no es visible a menos que la propiedad **ShowParagraphMarks** esté configurada para representarla.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

En Microsoft Word, estos parámetros se configuran usando el cuadro de diálogo "Archivo → Opciones → Mostrar" de la siguiente manera:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Comentarios y revisiones

Con Aspose.Words, puede representar comentarios de documentos que tendrán el mismo aspecto que en Microsoft Word. Para especificar si se representan los comentarios, utilice la propiedad [CommentDisplayMode](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

En Microsoft Word, este parámetro se configura mediante el cuadro de diálogo "Opciones de seguimiento de cambios", como se muestra a continuación:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

Además, Aspose.Words le permite mostrar revisiones en un documento. Utilice la propiedad [RevisionOptions](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/revisionoptions/) de la clase **LayoutOptions** para definir si se muestran las revisiones del documento. Para controlar su apariencia (color de resaltado de revisión, color de la barra de revisión, etc.), utilice la clase [RevisonOptions](https://reference.aspose.com/words/es/net/aspose.words.layout/revisionoptions/).

También puede hacer que las revisiones se muestren como comentarios al contenido. Para ello, utilice la propiedad [CommentDisplayMode](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/commentdisplaymode/) y el valor [ShowInBalloons](https://reference.aspose.com/words/es/net/aspose.words.layout/commentdisplaymode/).

El siguiente ejemplo de código muestra cómo personalizar la visualización de revisiones:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

La siguiente imagen muestra cómo Aspose.Words representa los comentarios y las revisiones de eliminación:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comentarios_y_revisiones_ejemplo_aspose_words_net" style="width:800px"/>

## Text Shaper para renderizado de tipografía avanzada

La propiedad [TextShaperFactory](https://reference.aspose.com/words/es/net/aspose.words.layout/layoutoptions/textshaperfactory/) le permite configurar la funcionalidad de modelado de texto, así como la compatibilidad con funciones `OpenType`.

Utilice la configuración de texto para el procesamiento de documentos en los siguientes casos principales:

- Un documento utiliza interletraje, formación de números, formas numéricas o ligaduras.
- Un documento utiliza escrituras complejas, como árabe, jemer, tailandés, etc.

{{% alert color="primary" %}}

La configuración de texto se habilitará solo al exportar un documento a PDF o XPS.

{{% /alert %}}
