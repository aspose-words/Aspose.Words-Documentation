---
title: Converti un documento in un'immagine
second_title: Aspose.Words per Python via .NET
articleTitle: Converti un documento in un'immagine
linktitle: Converti un documento in un'immagine
type: docs
description: "Converti un documento in formato immagine (JPG, PNG, ecc.). Crea un'anteprima del documento o crea una scansione del documento per inviare una fattura utilizzando Python."
weight: 43
url: /it/python-net/convert-a-document-to-an-image/
---

A volte è necessario ottenere un'immagine anziché documenti in altri formati, come DOCX o PDF. Ad esempio, devi aggiungere un'anteprima di qualsiasi pagina di un documento al tuo sito web o alla tua applicazione oppure creare una "scansione" di un documento per inviare una fattura. Questo è il momento in cui potresti dover convertire un documento in qualsiasi [formato di caricamento supportato](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) in un'immagine, ancora una volta, in qualsiasi [formato di salvataggio supportato](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Converti in formato immagine {#convert-to-image-format}

Come per tutti gli esempi di conversione già descritti, è necessario creare un nuovo documento o caricarne uno esistente in qualsiasi formato supportato, apportare le modifiche necessarie e salvarlo in qualsiasi formato immagine disponibile, ad esempio JPEG, PNG o BMP.

Il seguente esempio di codice mostra come convertire PDF in JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Specificare le opzioni di salvataggio durante la conversione in un'immagine {#specify-save-options-when-converting-to-an-image}

Aspose.Words fornisce la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), che offre un maggiore controllo su come i documenti vengono salvati in vari formati di immagine. Alcune proprietà di questa classe ereditano o sovraccaricano le proprietà delle classi base come [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) o [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), ma esistono anche opzioni specifiche per il salvataggio delle immagini.

È possibile specificare le pagine da convertire in formato immagine utilizzando la proprietà [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Ad esempio, può essere applicato se hai bisogno solo di un'anteprima per la prima o per una pagina definita.

È anche possibile controllare la qualità dell'immagine di output e il formato pixel utilizzando le seguenti proprietà: [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), nonché configurare le impostazioni del colore dell'immagine, utilizzando le seguenti proprietà: [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Esistono anche proprietà che si applicano a un determinato formato, ad esempio [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) o [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Il seguente esempio di codice mostra come creare un'anteprima della prima pagina del documento applicando alcune impostazioni aggiuntive:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
