---
title: Especifique las opciones de diseño en Java
second_title: Aspose.Words para Java
articleTitle: Especifique las opciones de diseño
linktitle: Especifique las opciones de diseño
description: "Crear documentos de salida con diferentes diseños, dependiendo de los parámetros especificados en el Documento utilizando Java."
type: docs
weight: 10
url: /es/java/specify-layout-options/
---

Aspose.Words le permite crear documentos de salida con varios diseños, dependiendo de los parámetros especificados en los [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propiedad de la **Document**. Esta propiedad se parece a algunos de los Microsoft Word Opciones de menú de interfaz de usuario descritas en este artículo.

Para una lista completa de parámetros como [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) para calcular los números de página en una sección continua que reinicia la numeración de página, o [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) para ignorar la opción de compatibilidad "Use métricas de impresora para establecer documento", ver la [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) página de clase.

## Marcos de formato

Aspose.Words permite gestionar las marcas de formato utilizando las siguientes propiedades:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – a `Boolean` valor, que especifica si el texto oculto se hace.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – a `Boolean` valor, que especifica si los caracteres del párrafo marca se emiten.

La página que figura en el ejemplo que figura a continuación contiene tres párrafos. El segundo está escondido. Un usuario puede cambiar el **ShowHiddenText** opción para mostrar este texto oculto en la página. Además, cada párrafo tiene una marca de párrafo al final. La marca del párrafo generalmente no es visible a menos que **ShowParagraphMarks** la propiedad está lista para rendirla.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

In Microsoft Word, estos parámetros se establecen utilizando el cuadro de diálogo "File → Opciones → Mostrar" como sigue:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Comentarios y revisiones

Con Aspose.Words, puede hacer comentarios de documentos que se verán iguales Microsoft Word. Para especificar si se formulan comentarios, utilice el [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propiedad.

In Microsoft Word, este parámetro se establece utilizando el cuadro de diálogo "Opciones de Cambios de Comercio" como se muestra a continuación:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

También, Aspose.Words le permite mostrar revisiones en un documento. Usar el [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) propiedad de la **LayoutOptions** clase para definir si se muestran las revisiones del documento. Para controlar su apariencia (revisión resaltando color, revisión barra color, etc). [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) clase.

También puede tener revisiones mostradas como comentarios al contenido. Para ello, utilice el [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) propiedad y [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) valor.

El siguiente ejemplo de código muestra cómo personalizar la pantalla de revisiones:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

La imagen siguiente muestra cómo Aspose.Words formula observaciones y borra las revisiones:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Text Shaper for Advanced Typography Rendering

El [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) propiedad le permite configurar la funcionalidad de configuración de texto, así como la `OpenType` características de soporte.

Use la configuración de texto para el procesamiento de documentos en los siguientes casos principales:

- Un documento utiliza Kerning, Numeral Shaping, Numeral Forms o Ligatures.
- Un documento utiliza Scripts Complejos, como árabe, jemer, tailandés, etc.

{{% alert color="primary" %}}

La configuración de texto sólo se habilitará al exportar un documento a PDF o XPS.

{{% /alert %}}
