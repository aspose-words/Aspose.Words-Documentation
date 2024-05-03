---
title: Risparmio di un documento come TIFF multipagina Java
second_title: Aspose.Words per Java
articleTitle: Salvataggio di un documento come TIFF Multipage
linktitle: Salvataggio di un documento come TIFF Multipage
description: "Convertire un documento in un'immagine raster, che viene discusso sull'esempio del formato TIFF. Per determinare come viene visualizzato TIFF è necessario specificare opzioni aggiuntive: risoluzione, numero di pagine, file binario di immagini, ecc Java."
type: docs
weight: 30
url: /it/java/saving-a-document-as-a-multipage-tiff/
---

Quando si lavora con i documenti, è spesso necessario convertire il documento in un file immagine raster. Questo è particolarmente rilevante se è necessario presentare il documento in un formato leggibile e stampabile, ma non modificabile. Ad esempio, è possibile utilizzare un'immagine raster della prima pagina del documento come anteprima. Questo articolo descrive come convertire un documento in un'immagine raster utilizzando l'esempio del formato TIFF – uno dei formati di immagine più popolari.

## Convertire DOC in Multi-Page TIFF

In Aspose.Words, la conversione da DOC a TIFF può essere eseguita con una riga di codice, semplicemente passando il percorso "salva a" e l’estensione del file rilevante al [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) metodo. The **Save** metodo deriva automaticamente il `SaveFormat` dall'estensione del nome del file specificato nel percorso. L'esempio seguente mostra come convertire un documento nel formato TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Specificare le opzioni aggiuntive durante la Rendering TIFF

Spesso è necessario specificare opzioni aggiuntive, che influiscono sul risultato di rendering. Con questo scopo, utilizzare il [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) classe, che contiene proprietà che determinano come il documento viene visualizzato sull'immagine. È possibile specificare quanto segue:

- Salva il formato per determinare l'elenco delle opzioni disponibili ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Risoluzione ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Numero di pagine ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Impostazioni di colore e illuminazione ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Qualità delle immagini ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Il metodo utilizzato per binariare l'immagine ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Formato pixel per immagini generate ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- No. Windows metafiles gestione da Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Opzioni aggiuntive che puoi vedere nel **ImageSaveOptions** classe

L'esempio seguente mostra come convertire DOC in TIFF con opzioni configurate:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Soglia per TIFF Binarization

Un'immagine TIFF può essere salvata in formato 1bpp b/w impostando [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) proprietà di Format1bppIndexed tipo di formato pixel, e il [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) proprietà a Ccittt3 o Ccitt4.

Per la segmentazione delle immagini, Aspose.Words utilizza il metodo più semplice - soglia. Questo metodo converte un'immagine TIFF in scala grigia in un'immagine binaria, utilizzando un valore di soglia. Pertanto, quando un documento deve essere convertito in formato file TIFF, è possibile ottenere o impostare la soglia per la binarizzazione TIFF tramite il [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) proprieta'. Il valore predefinito per questa proprietà è impostato a 128, e più alto questo valore, più scuro l'immagine.

L'esempio seguente mostra come eseguire la binarizzazione TIFF con una soglia specificata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Qui di seguito è possibile confrontare le immagini su cui è stata eseguita la binarizzazione TIFF a vari valori di soglia:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
