---
title: Imprimir un documento
second_title: Aspose.Words para Java
articleTitle: Imprimir un documento Programmatically or Using Dialogs
linktitle: Imprimir un documento Programmatically or Using Dialogs
description: "Imprimir un documento usando Java a través de Ajustes, Vista previa de impresión y Imprimir diálogos de progreso."
type: docs
weight: 55
url: /es/java/print-a-document-programmatically-or-using-dialogs/
---

Este artículo describe cómo imprimir un documento de procesamiento de palabras utilizando Aspose.Words API. También demuestra los métodos de imprimir un documento con diálogos de configuración, vista previa de impresión e impresión.

## Impresión de un documento con configuraciones y diagramas de vista previa

Al trabajar con documentos, a menudo se requiere imprimirlos a una impresora seleccionada. Es útil utilizar un diálogo de presentación de impresión para inspeccionar visualmente cómo aparecerá el documento impreso y elegir las opciones de impresión pertinentes.

El Aspose.Words no tiene diálogos o formas incorporados pero implementa los [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) clase anula ambos java.awt.print. Imprimible y java.awt.print. Paginable.

El siguiente ejemplo muestra cómo utilizar estas clases para imprimir un documento desde Aspose.Words a través de los diálogos Imprimir vista previa y configuración:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Imprimir múltiples páginas en una hoja

Aspose.Words aplica los **MultipagePrintDocument** clase, para ajustar la operación de impresión para implementar su lógica personalizada definiendo la forma en que aparecerá el documento en la página impresa. El **MultipagePrintDocument** clase proporciona la capacidad de imprimir varias páginas en una hoja de papel.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Puede descargar un ejemplo de uso del **MultipagePrintDocument** clase de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

El resultado de este ejemplo de código se muestra a continuación:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
