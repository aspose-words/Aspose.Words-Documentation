---
title: Converti un documento in un'immagine in C#
second_title: Aspose.Words per .NET
articleTitle: Converti un documento in un'immagine
linktitle: Converti un documento in un'immagine
type: docs
description: "Converti un documento in formato immagine (JPG, PNG, ecc.). Crea un'anteprima del documento o crea una scansione del documento per inviare una fattura utilizzando C#."
weight: 43
url: /it/net/convert-a-document-to-an-image/
---

A volte è necessario ottenere un'immagine anziché documenti in altri formati, come DOCX o PDF. Ad esempio, devi aggiungere un'anteprima di qualsiasi pagina di un documento al tuo sito web o alla tua applicazione oppure creare una "scansione" di un documento per inviare una fattura. Questo è il momento in cui potresti dover convertire un documento in qualsiasi [formato di caricamento supportato](https://reference.aspose.com/words/it/net/aspose.words/loadformat/) in un'immagine, ancora una volta, in qualsiasi [formato di salvataggio supportato](https://reference.aspose.com/words/it/net/aspose.words/saveformat/).

## Converti in immagine {#convert-to-image-format}

Come per tutti gli esempi di conversione già descritti, è necessario creare un nuovo documento o caricarne uno esistente in qualsiasi formato supportato, apportare le modifiche necessarie e salvarlo in qualsiasi formato immagine disponibile, ad esempio JPEG, PNG o BMP.

Il seguente esempio di codice mostra come convertire PDF in JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Specificare le opzioni di salvataggio durante la conversione in immagine {#specify-save-options-when-converting-to-an-image}

Aspose.Words fornisce la classe [ImageSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/), che offre un maggiore controllo su come i documenti vengono salvati in vari formati di immagine. Alcune proprietà di questa classe ereditano o sovraccaricano le proprietà delle classi base come [FixedPageSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/saveoptions/), ma esistono anche opzioni specifiche per il salvataggio delle immagini.

È possibile specificare le pagine da convertire in formato immagine utilizzando la proprietà [PageSet](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/pageset/). Ad esempio, può essere applicato se hai bisogno solo di un'anteprima per la prima o per una pagina definita.

È anche possibile controllare la qualità dell'immagine di output e il formato pixel utilizzando le seguenti proprietà: [HorizontalResolution](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/pixelformat/), nonché configurare le impostazioni del colore dell'immagine, utilizzando le seguenti proprietà: [ImageBrightness](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/papercolor/).

Esistono anche proprietà che si applicano a un determinato formato, ad esempio [JpegQuality](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/jpegquality/) o [TiffCompression](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Il seguente esempio di codice mostra come creare un'anteprima della prima pagina del documento applicando alcune impostazioni aggiuntive:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
