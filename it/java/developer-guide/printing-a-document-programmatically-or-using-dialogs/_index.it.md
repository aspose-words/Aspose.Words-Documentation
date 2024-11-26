---
title: Stampa di un documento
second_title: Aspose.Words per Java
articleTitle: Stampa di un documento a livello di codice o tramite finestre di dialogo
linktitle: Stampa di un documento a livello di codice o tramite finestre di dialogo
description: "Stampare un documento utilizzando Java tramite Impostazioni, Anteprima di stampa e finestre di dialogo Avanzamento stampa."
type: docs
weight: 55
url: /it/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

In questo articolo viene descritto come stampare un documento di elaborazione testi utilizzando Aspose.Words API. Vengono inoltre illustrati i metodi di stampa di un documento con Impostazioni, Anteprima di stampa e finestre di dialogo Avanzamento stampa.

## Stampa di un documento con impostazioni e finestre di dialogo Anteprima di stampa

Quando si lavora con i documenti, è spesso necessario stamparli su una stampante selezionata. È utile utilizzare una finestra di anteprima di stampa per esaminare visivamente come apparirà il documento stampato e scegliere le opzioni di stampa pertinenti.

Il Aspose.Words non ha finestre di dialogo o moduli incorporati ma implementa la classe [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) che sovrascrive entrambi java.awt.stampa.Stampabile e java.awt.stampa.Pagabile.

L'esempio seguente mostra come utilizzare queste classi per stampare un documento da Aspose.Words tramite le finestre di dialogo Anteprima di stampa e Impostazioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Stampa di più pagine su un foglio

Aspose.Words implementa la classe **MultipagePrintDocument**, per ottimizzare l'operazione di stampa per implementare la logica personalizzata definendo il modo in cui il documento apparirà sulla pagina stampata. La classe **MultipagePrintDocument** offre la possibilità di stampare più pagine su un foglio di carta.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

È possibile scaricare un esempio di utilizzo della classe **MultipagePrintDocument** da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Il risultato di questo esempio di codice è mostrato di seguito:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
