---
title: Especificar opciones de diseño en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Especificar opciones de diseño
linktitle: Especificar opciones de diseño
description: "Especifique opciones de diseño para varios diseños de documentos utilizando Python."
type: docs
weight: 10
url: /es/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words le permite crear documentos de salida con varios diseños, según los parámetros especificados en las propiedades de la clase [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Algunas de estas propiedades se parecen a algunas de las opciones del menú de la interfaz de usuario de Microsoft Word; se describirán en este artículo.

Para obtener una lista completa de parámetros como [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) para calcular los números de página en una sección continua que reinicia la numeración de páginas, o [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) para ignorar la opción de compatibilidad "Usar métricas de impresora para diseñar el documento", consulte la página de clase [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Marcas de formato

Aspose.Words permite gestionar marcas de formato utilizando las siguientes propiedades:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/): un valor `Boolean`, que especifica si se representa el texto oculto.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/): un valor `Boolean` que especifica si se representan los caracteres de marca de párrafo.

La página que se muestra en el siguiente ejemplo contiene tres párrafos. El segundo está escondido. Un usuario puede cambiar la opción [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) para mostrar este texto oculto en la página. Además, cada párrafo tiene una marca de párrafo al final. La marca de párrafo normalmente no es visible a menos que la propiedad [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) esté configurada para representarla.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

En Microsoft Word, estos parámetros se configuran usando el cuadro de diálogo "Archivo → Opciones → Mostrar" de la siguiente manera:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Comentarios y revisiones

Con Aspose.Words, puede representar comentarios de documentos que tendrán el mismo aspecto que en Microsoft Word. Para especificar si se representan los comentarios, utilice la propiedad [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

En Microsoft Word, este parámetro se configura mediante el cuadro de diálogo "Opciones de seguimiento de cambios", como se muestra a continuación:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

Además, Aspose.Words le permite mostrar revisiones en un documento. Utilice la propiedad [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) de la clase [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) para definir si se muestran las revisiones del documento. Para controlar su apariencia (color de resaltado de revisión, color de la barra de revisión, etc.), utilice la clase [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

También puede hacer que las revisiones se muestren como comentarios al contenido. Para ello, utilice la propiedad [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) y el valor [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

El siguiente ejemplo de código muestra cómo personalizar la visualización de revisiones:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

La siguiente imagen muestra cómo Aspose.Words representa los comentarios y las revisiones de eliminación:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comentarios_y_revisiones_ejemplo_aspose_words_net" style="width:800px"/>
