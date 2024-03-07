---
title: Salvare un documento come TIFF multipagina in C#
second_title: Aspose.Words per .NET
articleTitle: Salvare un documento come TIFF multipagina
linktitle: Salvare un documento come TIFF multipagina
description: "Converti un documento in un TIFF multipagina utilizzando C#. Per determinare come verrà visualizzato il documento sull'immagine è necessario specificare opzioni aggiuntive: risoluzione, numero di pagine, binarizzazione dell'immagine, ecc."
type: docs
weight: 30
url: /it/net/saving-a-document-as-a-multipage-tiff/
---

Quando si lavora con i documenti, spesso è necessario convertirli in file di immagine raster. Ciò è particolarmente rilevante se devi presentare il tuo documento in un formato leggibile e stampabile, ma non modificabile. Ad esempio, puoi utilizzare un'immagine raster della prima pagina del documento come anteprima. Questo articolo descrive come convertire un documento in un'immagine raster utilizzando l'esempio del formato TIFF, uno dei formati di immagine più popolari.

## Conversione di DOC in TIFF multipagina

In Aspose.Words la conversione da DOC a TIFF può essere effettuata con una sola riga di codice, semplicemente passando il percorso "salva in" e la relativa estensione del file al metodo [Save](https://reference.aspose.com/words/it/net/aspose.words/document/save/#save). Il metodo **Save** deriva automaticamente il `SaveFormat` dall'estensione del nome file specificata nel percorso. L'esempio seguente mostra come convertire un documento nel formato TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Specifica di opzioni aggiuntive durante il rendering TIFF

Spesso è necessario specificare opzioni aggiuntive, che influiscono sul risultato del rendering. A questo scopo, utilizzare la classe [ImageSaveOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/), che contiene proprietà che determinano come viene visualizzato il documento sull'immagine. È possibile specificare quanto segue:

- Salva formato per determinare l'elenco delle opzioni disponibili ([SaveFormat](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Risoluzione ([HorizontalResolution](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Numero di pagine ([PageIndex](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/))
- Impostazioni di colore e illuminazione ([PaperColor](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Qualità dell'immagine ([JpegQuality](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Metodo utilizzato per binarizzare l'immagine ([TiffBinarizationMethod](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Formato pixel per le immagini generate ([PixelFormat](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Gestione dei metafile Windows tramite Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Opzioni aggiuntive che puoi vedere nella classe **ImageSaveOptions**

L'esempio seguente mostra come convertire DOC in TIFF con le opzioni configurate:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Soglia per la binarizzazione TIFF

Un'immagine TIFF può essere salvata in formato b/n 1bpp impostando la proprietà [PixelFormat](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/pixelformat/) sul tipo di formato pixel Format1bppIndexed e la proprietà [TiffCompression](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/tiffcompression/) su Ccitt3 o Ccitt4.

Per la segmentazione delle immagini, Aspose.Words utilizza il metodo più semplice: la soglia. Questo metodo converte un'immagine TIFF in scala di grigi in un'immagine binaria, utilizzando un valore di soglia. Pertanto, quando è necessario convertire un documento nel formato file TIFF, è possibile ottenere o impostare la soglia per la binarizzazione TIFF tramite la proprietà [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/it/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). Il valore predefinito per questa proprietà è impostato su 128 e quanto più alto è questo valore, tanto più scura sarà l'immagine.

L'esempio seguente mostra come eseguire la binarizzazione TIFF con una soglia specificata:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Di seguito è possibile confrontare le immagini su cui è stata eseguita la binarizzazione TIFF a vari valori di soglia:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="salvare-un-documento-come-tiff-multipagina-aspose-words-net" style="width:800px"/>
