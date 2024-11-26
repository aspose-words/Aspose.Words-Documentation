---
title: Lavorare con le immagini in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le immagini
linktitle: Lavorare con le immagini
type: docs
description: "Forme immagine nei dettagli e funzioni avanzate fornite da Aspose.Words per Java."
weight: 300
url: /it/java/working-with-images/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words consente agli utenti di lavorare con le immagini in modo molto flessibile. In questo articolo, puoi esplorare solo alcune delle possibilità di lavorare con le immagini.

## Come estrarre immagini da un documento {#how-to-extract-images-from-a-document}

Tutte le immagini sono memorizzate all'interno di nodi **Shape** in un documento. Per estrarre tutte le immagini o le immagini aventi un tipo specifico dal documento, attenersi alla seguente procedura:

- Utilizzare il metodo [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) per selezionare tutti i nodi Forma.
- Scorrere le raccolte di nodi risultanti.
- Controllare la proprietà booleana [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage).
- Estrarre i dati dell'immagine utilizzando la proprietà [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
- Salvare i dati dell'immagine in un file.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Come inserire il codice a barre in ogni pagina del documento {#how-to-insert-barcode-on-each-documen-page}

Questo esempio consente di aggiungere gli stessi o diversi codici a barre in tutte o pagine specifiche di un documento di Word. Non esiste un modo diretto per aggiungere codici a barre su tutte le pagine di un documento, ma è possibile utilizzare i metodi [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) e [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[])) per passare a qualsiasi sezione o intestazioni/piè di pagina e inserire le immagini del codice a barre come si può vedere nel codice seguente.

Il seguente esempio di codice mostra come inserire un'immagine di codice a barre in ogni pagina di un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Blocca le proporzioni dell'immagine {#lock-aspect-ratio-of-image}

Il rapporto di aspetto di una forma geometrica è il rapporto tra le sue dimensioni in diverse dimensioni. È possibile bloccare le proporzioni di un'immagine usando [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Il valore predefinito delle proporzioni della forma dipende da [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). È vero per `ShapeType.Image` e falso per altri tipi di forma.

Il seguente esempio di codice mostra come lavorare con le proporzioni:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Come ottenere limiti effettivi di forma in punti {#how-to-get-actual-bounds-of-shape-in-points}

Se si desidera che il riquadro di delimitazione effettivo della forma sia visualizzato nella pagina, è possibile ottenere questo risultato utilizzando la proprietà [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

Il seguente esempio di codice mostra come utilizzare questa proprietà:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Ritaglia immagini

Il ritaglio di un'immagine di solito si riferisce alla rimozione delle parti esterne indesiderate di un'immagine per migliorare l'inquadratura. Viene anche utilizzato per la rimozione di alcune parti di un'immagine per aumentare la messa a fuoco su una particolare area.

Il seguente esempio di codice mostra come ottenere questo risultato usando Aspose.Words API:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Salvataggio delle immagini come WMF

Aspose.Words fornisce la funzionalità per salvare tutte le immagini disponibili in un documento [WMF](https://docs.fileformat.com/image/wmf/)formattare durante la conversione da DOCX a RTF.

L'esempio di codice seguente mostra come salvare le immagini come WMF con le opzioni di salvataggio RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
