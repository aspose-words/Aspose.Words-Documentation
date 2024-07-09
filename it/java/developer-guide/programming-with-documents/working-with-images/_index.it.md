---
title: Lavorare con immagini in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con immagini
linktitle: Lavorare con immagini
type: docs
description: "Forme di immagine nei dettagli e caratteristiche avanzate fornite da Aspose.Words per Java."
weight: 300
url: /it/java/working-with-images/
---

Aspose.Words consente agli utenti di lavorare con immagini in modo molto flessibile. In questo articolo, è possibile esplorare solo alcune delle possibilità di lavorare con le immagini.

## Come estrarre immagini da un documento {#how-to-extract-images-from-a-document}

Tutte le immagini sono memorizzate all'interno **Shape** nodi in un documento. Per estrarre tutte le immagini o immagini con un tipo specifico dal documento, seguire questi passaggi:

- Usare [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) metodo per selezionare tutti i nodi di forma.
- Iterate attraverso le raccolte di nodi risultanti.
- Controlla il [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) proprietà booleana.
- Estrarre i dati dell'immagine utilizzando [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData) proprieta'.
- Salvare i dati delle immagini in un file.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Come inserire il codice a barre su ogni pagina dei documenti {#how-to-insert-barcode-on-each-documen-page}

Questo esempio consente di aggiungere gli stessi o diversi codici a barre su tutte o specifiche pagine di un documento di Word. Non c'è modo diretto di aggiungere codici a barre su tutte le pagine di un documento, ma è possibile utilizzare [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) e [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) metodi per passare a qualsiasi sezione o intestazioni / piedi e inserire le immagini di codice a barre come si può vedere nel seguente codice

Il seguente esempio di codice mostra come inserire un'immagine di codice a barre in ogni pagina di un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Lock Aspect Ratio dell'immagine {#lock-aspect-ratio-of-image}

Il rapporto di aspetto di una forma geometrica è il rapporto delle sue dimensioni in dimensioni diverse. È possibile bloccare il rapporto di aspetto di un'immagine utilizzando [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Il valore predefinito del rapporto di aspetto della forma dipende dal [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). È true per `ShapeType.Image` e false per altri tipi di forma.

Il seguente esempio di codice mostra come lavorare con il rapporto di aspetto:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Come ottenere effettivi Bounds of Shape in Punti {#how-to-get-actual-bounds-of-shape-in-points}

Se si desidera la casella di rilegatura reale della forma come reso sulla pagina, è possibile ottenere questo utilizzando il [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints) proprieta'.

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Crop Images

Il ritaglio di un'immagine di solito si riferisce alla rimozione delle parti esterne indesiderate di un'immagine per contribuire a migliorare l'inquadratura. Viene anche utilizzato per la rimozione di alcune delle porzioni di un'immagine per aumentare l'attenzione su una particolare area.

Il seguente esempio di codice mostra come raggiungere questo usando Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Salvare le immagini come WMF

Aspose.Words fornisce funzionalità per salvare tutte le immagini disponibili in un documento da [WMF](https://docs.fileformat.com/image/wmf/)formato durante la conversione DOCX a RTF.

Il seguente esempio di codice mostra come salvare le immagini come WMF con opzioni di salvataggio RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
