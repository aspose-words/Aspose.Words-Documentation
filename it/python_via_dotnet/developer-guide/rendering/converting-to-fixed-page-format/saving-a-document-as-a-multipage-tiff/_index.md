---
title: Salvare un documento come TIFF multipagina
second_title: Aspose.Words per Python via .NET
articleTitle: Salvare un documento come TIFF multipagina
linktitle: Salvare un documento come TIFF multipagina
description: "Converti un documento in un TIFF multipagina utilizzando Python. Per determinare come verrà visualizzato il documento sull'immagine è necessario specificare opzioni aggiuntive: risoluzione, numero di pagine, binarizzazione dell'immagine, ecc."
type: docs
weight: 30
url: /it/python-net/saving-a-document-as-a-multipage-tiff/
---

Quando si lavora con i documenti, spesso è necessario convertirli in file di immagine raster. Ciò è particolarmente rilevante se devi presentare il tuo documento in un formato leggibile e stampabile, ma non modificabile. Ad esempio, puoi utilizzare un'immagine raster della prima pagina del documento come anteprima. Questo articolo descrive come convertire un documento in un'immagine raster utilizzando l'esempio del formato TIFF, uno dei formati di immagine più popolari.

## Conversione di DOC in TIFF multipagina

In Aspose.Words la conversione da DOC a TIFF può essere effettuata con una sola riga di codice, semplicemente passando il percorso "salva in" e la relativa estensione del file al metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Il metodo [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) deriva automaticamente l'[SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) dall'estensione del nome file specificata nel percorso. L'esempio seguente mostra come convertire un documento nel formato TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Specifica di opzioni aggiuntive durante il rendering TIFF

Spesso è necessario specificare opzioni aggiuntive, che influiscono sul risultato del rendering. A questo scopo, utilizzare la classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), che contiene proprietà che determinano come viene visualizzato il documento sull'immagine. È possibile specificare quanto segue:

- Salva formato per determinare l'elenco delle opzioni disponibili ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Risoluzione ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Numero di pagine ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Impostazioni di colore e illuminazione ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Qualità dell'immagine ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Metodo utilizzato per binarizzare l'immagine ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Formato pixel per le immagini generate ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Gestione dei metafile Windows tramite Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Opzioni aggiuntive che puoi vedere nella classe [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

L'esempio seguente mostra come convertire DOC in TIFF con le opzioni configurate:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Soglia per la binarizzazione TIFF

Un'immagine TIFF può essere salvata in formato b/n da 1 bpp impostando la proprietà [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) sul tipo di formato pixel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) e la proprietà [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) su [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) o [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Per la segmentazione delle immagini, Aspose.Words utilizza il metodo più semplice: la soglia. Questo metodo converte un'immagine TIFF in scala di grigi in un'immagine binaria, utilizzando un valore di soglia. Pertanto, quando è necessario convertire un documento nel formato file TIFF, è possibile ottenere o impostare la soglia per la binarizzazione TIFF tramite la proprietà [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Il valore predefinito per questa proprietà è impostato su 128 e quanto più alto è questo valore, tanto più scura sarà l'immagine.

L'esempio seguente mostra come eseguire la binarizzazione TIFF con una soglia specificata:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Di seguito è possibile confrontare le immagini su cui è stata eseguita la binarizzazione TIFF a vari valori di soglia:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="salvare-un-documento-come-tiff-multipagina-aspose-words-net" style="width:800px"/>
