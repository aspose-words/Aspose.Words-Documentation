---
title: Een document opslaan als Multipage TIFF in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document opslaan als Multipage TIFF
linktitle: Een document opslaan als Multipage TIFF
description: "Een document omzetten naar een TIFF met meerdere pagina's C#. Om te bepalen hoe het document wordt weergegeven op de afbeelding moet u extra opties opgeven: resolutie, aantal pagina's, image binarization, etc."
type: docs
weight: 30
url: /nl/net/saving-a-document-as-a-multipage-tiff/
---

Wanneer u met documenten werkt, moet u vaak uw document converteren naar een rasterbestand(s). Dit is vooral relevant als u uw document moet presenteren in een leesbaar en afdrukbaar formaat, maar niet bewerkbaar. U kunt bijvoorbeeld een rasterafbeelding van de eerste pagina van uw document als voorbeeld gebruiken. Dit artikel beschrijft hoe u een document naar een rasterafbeelding kunt converteren met behulp van het voorbeeld van het TIFF-formaat.

## DOC converteren naar Multi-Page TIFF

In Aspose.Words, conversie van DOC naar TIFF kan worden uitgevoerd met een regel van code, door gewoon door te gaan met het opslaan naar het pad en de relevante bestandsextensie naar de [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) methode. De **Save** methode automatisch afgeleid van de `SaveFormat` van de bestandsnaam extensie opgegeven in het pad. Het volgende voorbeeld laat zien hoe een document naar het TIFF-formaat kan worden omgezet:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Aanvullende opties specificeren bij het renderen van TIFF

Vaak moet je extra opties opgeven, die het renderingsresultaat beïnvloeden. Gebruik hiervoor de [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) klasse, die eigenschappen bevat die bepalen hoe het document op de afbeelding wordt weergegeven. U kunt het volgende specificeren:

- Opmaak opslaan om de lijst met beschikbare opties te bepalen ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolutie ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Aantal bladzijden ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Kleur- en verlichtingsinstellingen ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Beeldkwaliteit ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Methode gebruikt om de afbeelding te binariseren ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Pixelformaat voor gegenereerde afbeeldingen ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows metafiles verwerken door Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Extra opties die u kunt zien in de **ImageSaveOptions** klasse

Het volgende voorbeeld laat zien hoe je DOC naar TIFF kunt converteren met geconfigureerde opties:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Drempelwaarde voor TIFF-binarisatie

Een TIFF-afbeelding kan in 1bpp b/w formaat worden opgeslagen door de [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) eigenschap van Format1bppIndexed pixel formaat type, en de [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) eigendom van Ccitt3 of Ccitt4.

Voor afbeeldingssegmentatie, Aspose.Words maakt gebruik van de eenvoudigste methode. Deze methode zet een grijs-schaal TIFF-afbeelding om in een binaire afbeelding, met behulp van een drempelwaarde. Daarom, wanneer een document moet worden omgezet in het TIFF bestandsformaat, is het mogelijk om de drempel voor TIFF binarization via de [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) eigendom. De standaardwaarde voor deze eigenschap is ingesteld op 128, en hoe hoger deze waarde, hoe donkerder de afbeelding.

Het volgende voorbeeld laat zien hoe TIFF-binarisatie met een bepaalde drempel kan worden uitgevoerd:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Hieronder kunt u afbeeldingen vergelijken waarop TIFF binarisatie werd uitgevoerd bij verschillende drempelwaarden:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
