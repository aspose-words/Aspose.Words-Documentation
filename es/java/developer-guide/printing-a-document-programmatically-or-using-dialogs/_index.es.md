---
title: Imprimir un Documento
second_title: Aspose.Words por Java
articleTitle: Imprimir un Documento mediante Programación o mediante Diálogos
linktitle: Imprimir un Documento mediante Programación o mediante Diálogos
description: "Imprima un documento con Java a través de los cuadros de diálogo Configuración, Vista previa de impresión y Progreso de impresión."
type: docs
weight: 55
url: /es/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

En este artículo se describe cómo imprimir un documento de procesamiento de texto con Aspose.Words API. También muestra los métodos para imprimir un documento con los cuadros de diálogo Configuración, Vista previa de impresión y progreso de impresión.

## Imprimir un documento con los diálogos de Configuración y Vista Previa de Impresión

Cuando se trabaja con documentos, a menudo es necesario imprimirlos en una impresora seleccionada. Es útil utilizar un cuadro de diálogo de vista previa de impresión para inspeccionar visualmente cómo aparecerá el documento impreso y elegir las opciones de impresión relevantes.

El Aspose.Words no tiene diálogos ni formularios integrados, pero implementa la clase [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) anula ambos java.awt.imprimir.Imprimible y java.awt.imprimir.Pagable.

El siguiente ejemplo muestra cómo usar estas clases para imprimir un documento desde Aspose.Words a través de los cuadros de diálogo Vista previa de impresión y Configuración:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Impresión de Varias Páginas en Una Hoja

Aspose.Words implementa la clase **MultipagePrintDocument**, para ajustar la operación de impresión para implementar su lógica personalizada definiendo la forma en que aparecerá el documento en la página impresa. La clase **MultipagePrintDocument** proporciona la capacidad de imprimir varias páginas en una hoja de papel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Puede descargar un ejemplo del uso de la clase **MultipagePrintDocument** en [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

El resultado de este ejemplo de código se muestra a continuación:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
