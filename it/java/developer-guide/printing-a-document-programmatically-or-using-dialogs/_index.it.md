---
title: Stampare un documento
second_title: Aspose.Words per Java
articleTitle: Stampare un documento Programmaticamente o utilizzando dialog
linktitle: Stampare un documento Programmaticamente o utilizzando dialog
description: "Stampare un documento utilizzando Java attraverso Impostazioni, Stampa Anteprima e Stampa le finestre di dialogo."
type: docs
weight: 55
url: /it/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Questo articolo descrive come stampare un documento di elaborazione delle parole utilizzando Aspose.Words API. Esso dimostra anche i metodi di stampa di un documento con Impostazioni, Anteprima di stampa e dialogo di progresso di stampa.

## Stampare un documento con Impostazioni e Stampa Anteprima Dialogi

Quando si lavora con i documenti, è spesso necessario stamparli a una stampante selezionata. È utile utilizzare una finestra di dialogo di anteprima di stampa per controllare visivamente come apparirà il documento stampato e scegliere le opzioni di stampa rilevanti.

The Aspose.Words non ha finestre di dialogo o forme integrate ma implementa il [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) la classe supera sia java.awt.print. Stampabile e java.awt.print. Pageable.

L'esempio seguente mostra come utilizzare queste classi per stampare un documento da Aspose.Words tramite le finestre di dialogo Anteprima Stampa e Impostazioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Stampare più pagine su un foglio

Aspose.Words implementa il **MultipagePrintDocument** classe, per perfezionare l'operazione di stampa per implementare la logica personalizzata definendo il modo in cui il documento apparirà sulla pagina stampata. The **MultipagePrintDocument** classe fornisce la possibilità di stampare diverse pagine su un foglio di carta.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

È possibile scaricare un esempio di utilizzo **MultipagePrintDocument** classe da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Il risultato di questo esempio di codice è mostrato di seguito:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
