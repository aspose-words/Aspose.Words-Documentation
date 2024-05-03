---
title: Convertire un documento in un'immagine in Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in un'immagine
linktitle: Convertire un documento in un'immagine
type: docs
description: "Convertire un documento in formato immagine (JPG, PNG, ecc). Creare un'anteprima del documento o creare una scansione del documento per inviare una fattura utilizzando Java."
weight: 35
url: /it/java/convert-a-document-to-an-image/
---

A volte è necessario ottenere un'immagine invece di documenti in altri formati, come DOCX o PDF. Per esempio, è necessario aggiungere un'anteprima di qualsiasi pagina di documento al tuo sito web o applicazione o creare una "cancella" di un documento per inviare una fattura. Questo è quando è necessario convertire un documento in qualsiasi [formato di carico supportato](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) a un'immagine, di nuovo, in qualsiasi [formato di salvataggio supportato](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Convertire in formato immagine

Come con tutti gli esempi di conversione già descritti, è necessario creare un nuovo documento o caricare uno esistente in qualsiasi formato supportato, effettuare le modifiche necessarie e salvarlo in qualsiasi formato di immagine disponibile, ad esempio, JPEG, PNG o BMP.

Il seguente esempio di codice mostra come convertire DOCX in JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Specificare le opzioni di salvataggio quando si converte in un'immagine

Aspose.Words fornisce con il [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, che dà più controllo su come i documenti vengono salvati in vari formati di immagine. Alcune proprietà di questa classe ereditano o sovraccarico proprietà di classi di base come [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), ma ci sono anche opzioni specifiche per salvare le immagini.

È possibile specificare le pagine da convertire in formato immagine utilizzando il [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) proprieta'. Ad esempio, può essere applicato se hai solo bisogno di un'anteprima per il primo o per una pagina definita.

È anche possibile controllare la qualità dell'immagine di uscita e il formato pixel utilizzando le seguenti proprietà – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), così come impostare le impostazioni di colore immagine, utilizzando le seguenti proprietà – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Ci sono anche proprietà che si applicano a un certo formato, per esempio, [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) o [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Il seguente esempio di codice mostra come creare un'anteprima della prima pagina del documento con l'applicazione di alcune impostazioni aggiuntive:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
