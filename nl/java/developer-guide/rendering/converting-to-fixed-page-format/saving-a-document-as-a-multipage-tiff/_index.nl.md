---
title: Een document opslaan als Multipage TIFF in Java
second_title: Aspose.Words voor Java
articleTitle: Een document opslaan als Multipage TIFF
linktitle: Een document opslaan als Multipage TIFF
description: "Een document omzetten naar een rasterafbeelding, die wordt besproken op het voorbeeld van het TIFF-formaat. Om te bepalen hoe TIFF wordt weergegeven moet u extra opties opgeven: resolutie, aantal pagina's, image binarization, enz. Java."
type: docs
weight: 30
url: /nl/java/saving-a-document-as-a-multipage-tiff/
---

Wanneer u met documenten werkt, moet u uw document vaak converteren naar een rasterbestand(s). Dit is vooral relevant als u uw document in een leesbaar en afdrukbaar formaat moet presenteren, maar niet bewerkbaar. U kunt bijvoorbeeld een rasterafbeelding van de eerste pagina van uw document als voorbeeld gebruiken. Dit artikel beschrijft hoe u een document naar een rasterafbeelding kunt converteren met behulp van het voorbeeld van het TIFF-formaat.

## DOC omzetten naar Multi-Page TIFF

In Aspose.Words, conversie van DOC naar TIFF kan worden uitgevoerd met een regel van code, door gewoon door te geven de [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) methode. De **Save** methode automatisch afgeleid van de `SaveFormat` van de bestandsnaamextensie opgegeven in het pad. Het volgende voorbeeld laat zien hoe een document naar het TIFF-formaat kan worden omgezet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Extra opties specificeren bij het renderen van TIFF

Je moet vaak extra opties opgeven, die het renderingsresultaat beïnvloeden. Gebruik hiervoor de [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klasse, die eigenschappen bevat die bepalen hoe het document op de afbeelding wordt weergegeven. U kunt het volgende specificeren:

- Opmaak opslaan om de lijst met beschikbare opties te bepalen ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Resolutie ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Aantal bladzijden ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Kleur- en verlichtingsinstellingen ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Beeldkwaliteit ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- De gebruikte methode om de afbeelding te binariseren ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Pixelformaat voor gegenereerde afbeeldingen ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows metafiles verwerken door Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Extra opties die u kunt zien in de **ImageSaveOptions** klasse

Het volgende voorbeeld laat zien hoe je DOC naar TIFF kunt converteren met geconfigureerde opties:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Drempelwaarde voor TIFF-binarisatie

Een TIFF-afbeelding kan worden opgeslagen in 1bpp b/w formaat door de [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) eigenschap van Format1bppIndexed pixel formaat type, en de [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) eigendom van Ccitt3 of Ccitt4.

Voor afbeeldingssegmentatie, Aspose.Words maakt gebruik van de eenvoudigste methode. Deze methode zet een grijs-schaal TIFF-afbeelding om in een binaire afbeelding, met behulp van een drempelwaarde. Daarom, wanneer een document moet worden omgezet naar het TIFF bestandsformaat, is het mogelijk om de drempel voor TIFF binarization via de [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) eigendom. De standaard waarde voor deze eigenschap is ingesteld op 128, en hoe hoger deze waarde, hoe donkerder de afbeelding.

Het volgende voorbeeld laat zien hoe TIFF-binarisatie met een bepaalde drempel kan worden uitgevoerd:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Hieronder kunt u afbeeldingen vergelijken waarop TIFF binarisatie werd uitgevoerd bij verschillende drempelwaarden:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
