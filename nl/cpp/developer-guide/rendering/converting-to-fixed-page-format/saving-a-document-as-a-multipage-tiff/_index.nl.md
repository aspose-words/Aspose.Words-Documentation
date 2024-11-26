---
title: Een Document opslaan als een Multipagina TIFF in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document opslaan als een Multipagina TIFF
linktitle: Een Document opslaan als een Multipagina TIFF
description: "Converteer een document naar een TIFF met meerdere pagina ' s met C++. Om te bepalen hoe het document op de afbeelding wordt weergegeven, moet u extra opties opgeven: resolutie, aantal pagina ' s, binarisatie van afbeeldingen, enz."
type: docs
weight: 40
url: /nl/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Wanneer u met documenten werkt, moet u uw document vaak converteren naar een rasterafbeeldbestand(en). Dit is vooral relevant als u uw document in een leesbaar en afdrukbaar, maar niet bewerkbaar formaat moet presenteren. U kunt bijvoorbeeld een rasterafbeelding van de eerste pagina van uw document als voorbeeld gebruiken. In dit artikel wordt beschreven hoe u een document converteert naar een rasterafbeelding met behulp van het voorbeeld van de TIFF – indeling, een van de populairste afbeeldingsindelingen.

## DOC converteren naar TIFFmet meerdere pagina ' s

In Aspose.Words kan de conversie van DOC naar TIFF worden uitgevoerd met één regel code, door simpelweg het pad "opslaan naar" en de relevante bestandsextensie naar de [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) - methode door te geven. De methode **Save** leidt de `SaveFormat` automatisch af van de bestandsextensie die in het pad is opgegeven. Het volgende voorbeeld laat zien hoe u een document converteert naar de TIFF - indeling:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Extra Opties Opgeven Bij Het Renderen Van TIFF

U moet vaak extra opties opgeven die van invloed zijn op het renderresultaat. Gebruik hiervoor de klasse [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), die eigenschappen bevat die bepalen hoe het document in de afbeelding wordt weergegeven. U kunt het volgende opgeven:

- Opmaak opslaan om de lijst met beschikbare opties te bepalen ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Resolutie ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Aantal pagina ' s ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Kleur - en lichtinstellingen([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Beeldkwaliteit ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Methode gebruikt om de afbeelding te binariseren ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Pixelindeling voor gegenereerde afbeeldingen ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows metafiles handling by Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Extra opties die u kunt zien in de klasse **ImageSaveOptions**

Het volgende voorbeeld laat zien hoe DOC te converteren naar TIFF met geconfigureerde opties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Drempel voor TIFF binarisatie

Een TIFF afbeelding kan worden opgeslagen in 1bpp b/w formaat door de [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) eigenschap in te stellen op Format1bppIndexed pixel format type, en de `TiffCompression` eigenschap op Ccitt3 of Ccitt4.

Voor beeldsegmentatie gebruikt Aspose.Words de eenvoudigste methode - drempelwaarde. Deze methode zet een grijsschaal TIFF afbeelding om in een binaire afbeelding, met behulp van een drempelwaarde. Daarom, wanneer een document moet worden geconverteerd naar de TIFF bestandsindeling, is het mogelijk om de drempel voor TIFF binarisatie te krijgen of in te stellen via de eigenschap [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). De standaardwaarde voor deze eigenschap is ingesteld op 128, en hoe hoger deze waarde, hoe donkerder de afbeelding.

Het volgende voorbeeld toont hoe TIFF binarisatie met een gespecificeerde drempel moet worden uitgevoerd:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Hieronder kunt u afbeeldingen vergelijken waarop TIFF binarisatie werd uitgevoerd bij verschillende drempelwaarden:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
