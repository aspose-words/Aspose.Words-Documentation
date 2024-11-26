---
title: Convertire un documento in un'immagine in Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in un'immagine
linktitle: Convertire un documento in un'immagine
type: docs
description: "Convertire un documento in formato immagine (JPG, PNG, ecc.). Creare un'anteprima del documento o una scansione del documento per inviare una fattura utilizzando Java."
weight: 35
url: /it/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario ottenere un'immagine invece di documenti in altri formati, come DOCX o PDF. Ad esempio, è necessario aggiungere un'anteprima di qualsiasi pagina del documento al sito Web o all'applicazione o creare una "scansione" di un documento per inviare una fattura. Questo è quando potrebbe essere necessario convertire un documento in qualsiasi [formato di carico supportato](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) in un'immagine, di nuovo, in qualsiasi [formato di salvataggio supportato](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convertire in formato immagine

Come per tutti gli esempi di conversione già descritti, è necessario creare un nuovo documento o caricarne uno esistente in qualsiasi formato supportato, apportare le modifiche necessarie e salvarlo in qualsiasi formato di immagine disponibile, ad esempio JPEG, PNG o BMP.

L'esempio di codice seguente mostra come convertire DOCX in JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Specificare le opzioni di salvataggio durante la conversione in un'immagine

Aspose.Words fornisce la classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), che offre un maggiore controllo su come i documenti vengono salvati in vari formati di immagine. Alcune proprietà di questa classe ereditano o sovraccaricano le proprietà delle classi base come [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), ma ci sono anche opzioni specifiche per il salvataggio delle immagini.

È possibile specificare le pagine da convertire in formato immagine utilizzando la proprietà [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). Ad esempio, può essere applicato se hai solo bisogno di un'anteprima per la prima o per una pagina definita.

È anche possibile controllare la qualità dell'immagine di output e il formato dei pixel utilizzando le seguenti proprietà– [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), così come impostare le impostazioni del colore dell'immagine, utilizzando le seguenti proprietà– [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Esistono anche proprietà che si applicano a un determinato formato, ad esempio [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) o [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Il seguente esempio di codice mostra come creare un'anteprima della prima pagina del documento con l'applicazione di alcune impostazioni aggiuntive:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
