---
title: Convertire un documento in un'immagine in C++
second_title: Aspose.Words per C++
articleTitle: Convertire un documento in un'immagine
linktitle: Convertire un documento in un'immagine
type: docs
description: "Convertire un documento in formato immagine (JPG, PNG, ecc). Creare un'anteprima del documento o una scansione del documento per inviare una fattura."
weight: 43
url: /it/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

A volte è necessario ottenere un'immagine invece di documenti in altri formati, come DOCX o PDF. Ad esempio, è necessario aggiungere un'anteprima di qualsiasi pagina del documento al sito Web o all'applicazione o creare una "scansione" di un documento per inviare una fattura. Questo è quando potrebbe essere necessario convertire un documento in qualsiasi [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) in un'immagine, di nuovo, in qualsiasi [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Convertire in formato immagine

Come per tutti gli esempi di conversione già descritti, è necessario creare un nuovo documento o caricarne uno esistente in qualsiasi formato supportato, apportare le modifiche necessarie e salvarlo in qualsiasi formato di immagine disponibile, ad esempio JPEG, PNG o BMP.

L'esempio di codice seguente mostra come convertire DOCX in JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Specificare le opzioni di salvataggio durante la conversione in un'immagine

Aspose.Words fornisce la classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), che offre un maggiore controllo su come i documenti vengono salvati in vari formati di immagine. Alcune proprietà di questa classe ereditano o sovraccaricano le proprietà delle classi base come [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), ma ci sono anche opzioni specifiche per il salvataggio delle immagini.

È possibile specificare le pagine da convertire in formato immagine utilizzando la proprietà [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Ad esempio, può essere applicato se hai solo bisogno di un'anteprima per la prima o per una pagina definita.

È anche possibile controllare la qualità dell'immagine di output e il formato dei pixel utilizzando le seguenti proprietà– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), così come impostare le impostazioni del colore dell'immagine, utilizzando le seguenti proprietà– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Esistono anche proprietà che si applicano a un determinato formato, ad esempio [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) o [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Il seguente esempio di codice mostra come creare un'anteprima della prima pagina del documento con l'applicazione di alcune impostazioni aggiuntive:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
