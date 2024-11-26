---
title: Salvataggio di un documento come TIFF multipagina in C++
second_title: Aspose.Words per C++
articleTitle: Salvataggio di un documento come TIFF multipagina
linktitle: Salvataggio di un documento come TIFF multipagina
description: "Convertire un documento in un TIFF multipagina utilizzando C++. Per determinare come viene visualizzato il documento sull'immagine è necessario specificare opzioni aggiuntive: risoluzione, numero di pagine, binarizzazione dell'immagine, ecc."
type: docs
weight: 40
url: /it/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Quando si lavora con i documenti, spesso è necessario convertire il documento in un file di immagine raster(s). Ciò è particolarmente rilevante se si deve presentare il documento in un formato leggibile e stampabile, ma non modificabile. Ad esempio, è possibile utilizzare un'immagine raster della prima pagina del documento come anteprima. In questo articolo viene descritto come convertire un documento in un'immagine raster utilizzando l'esempio del formato TIFF, uno dei formati di immagine più diffusi.

## Conversione di DOC in TIFF multipagina

In Aspose.Words, la conversione da DOC a TIFF può essere eseguita con una riga di codice, semplicemente passando il percorso "salva in" e l'estensione del file pertinente al metodo [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Il metodo **Save** deriva automaticamente il `SaveFormat` dall'estensione del nome file specificata nel percorso. Nell'esempio seguente viene illustrato come convertire un documento nel formato TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Specificare opzioni aggiuntive durante il rendering di TIFF

Spesso è necessario specificare opzioni aggiuntive, che influenzano il risultato del rendering. A tale scopo, utilizzare la classe [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), che contiene proprietà che determinano la modalità di visualizzazione del documento sull'immagine. È possibile specificare quanto segue:

- Salva formato per determinare l'elenco delle opzioni disponibili ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Risoluzione ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Numero di pagine ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Impostazioni di colore e illuminazione([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Qualità dell'immagine([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Metodo utilizzato per binarizzare l'immagine ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Formato pixel per immagini generate ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows gestione dei metafile da parte di Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Opzioni aggiuntive che puoi vedere nella classe **ImageSaveOptions**

L'esempio seguente mostra come convertire DOC in TIFF con le opzioni configurate:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Soglia per la binarizzazione TIFF

Un'immagine TIFF può essere salvata in formato b/n 1 bpp impostando la proprietà[PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) su Format1 bppIndexed pixel format type e la proprietà `TiffCompression` su Ccitt3 o Ccitt4.

Per la segmentazione delle immagini, Aspose.Words utilizza il metodo più semplice: thresholding. Questo metodo converte un'immagine TIFF in scala di grigi in un'immagine binaria, utilizzando un valore di soglia. Pertanto, quando un documento deve essere convertito nel formato di file TIFF, è possibile ottenere o impostare la soglia per la binarizzazione TIFF tramite la proprietà [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Il valore predefinito per questa proprietà è impostato su 128 e più alto è questo valore, più scura è l'immagine.

L'esempio seguente mostra come eseguire la binarizzazione TIFF con una soglia specificata:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Di seguito è possibile confrontare le immagini su cui è stata eseguita la binarizzazione TIFF a vari valori di soglia:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
