---
title: Salvataggio di un documento come multipagina TIFFin Java
second_title: Aspose.Words per Java
articleTitle: Salvataggio di un documento come multipagina TIFF
linktitle: Salvataggio di un documento come multipagina TIFF
description: "Convertire un documento in un'immagine raster, che è discusso sull'esempio del formato TIFF. Per determinare come viene visualizzato TIFF è necessario specificare opzioni aggiuntive: risoluzione, numero di pagine, binarizzazione delle immagini, ecc. utilizzando Java."
type: docs
weight: 30
url: /it/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Quando si lavora con i documenti, spesso è necessario convertire il documento in un file di immagine raster(s). Ciò è particolarmente rilevante se si deve presentare il documento in un formato leggibile e stampabile, ma non modificabile. Ad esempio, è possibile utilizzare un'immagine raster della prima pagina del documento come anteprima. In questo articolo viene descritto come convertire un documento in un'immagine raster utilizzando l'esempio del formato TIFF, uno dei formati di immagine più diffusi.

## Conversione da DOC a più pagine TIFF

In Aspose.Words, la conversione da DOC a TIFF può essere eseguita con una riga di codice, semplicemente passando il percorso "salva in" e l'estensione del file pertinente al metodo [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Il metodo **Save** deriva automaticamente il `SaveFormat` dall'estensione del nome file specificata nel percorso. Nell'esempio seguente viene illustrato come convertire un documento nel formato TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Specificare opzioni aggiuntive durante il rendering di TIFF

Spesso è necessario specificare opzioni aggiuntive, che influenzano il risultato del rendering. A tale scopo, utilizzare la classe [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), che contiene proprietà che determinano la modalità di visualizzazione del documento sull'immagine. È possibile specificare quanto segue:

- Salva formato per determinare l'elenco delle opzioni disponibili ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Risoluzione ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Numero di pagine ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Impostazioni di colore e illuminazione([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Qualità dell'immagine([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Il metodo utilizzato per binarizzare l'immagine ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formato pixel per immagini generate ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows gestione dei metafile da parte di Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opzioni aggiuntive che puoi vedere nella classe **ImageSaveOptions**

L'esempio seguente mostra come convertire DOC in TIFF con le opzioni configurate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Soglia per TIFF Binarizzazione

Un'immagine TIFF può essere salvata in formato b/n 1bpp impostando la proprietà [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) sul tipo di formato pixel Format1bppIndexed e la proprietà [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) su Ccitt3 o Ccitt4.

Per la segmentazione delle immagini, Aspose.Words utilizza il metodo più semplice: thresholding. Questo metodo converte un'immagine in scala di grigi TIFF in un'immagine binaria, utilizzando un valore di soglia. Pertanto, quando un documento deve essere convertito nel formato di file TIFF, è possibile ottenere o impostare la soglia per la binarizzazione TIFF tramite la proprietà [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering). Il valore predefinito per questa proprietà è impostato su 128 e più alto è questo valore, più scura è l'immagine.

L'esempio seguente mostra come eseguire la binarizzazione TIFF con una soglia specificata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Di seguito è possibile confrontare le immagini su cui è stata eseguita la binarizzazione TIFF a vari valori di soglia:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
