---
title: Stoor'n Dokument As'n Veelbladsy TIFF in C++
second_title: Aspose.Words vir C++
articleTitle: Stoor'n Dokument as'n Veelbladsy TIFF
linktitle: Stoor'n Dokument as'n Veelbladsy TIFF
description: "Skakel'n dokument na'n multi-bladsy TIFF met behulp van C++. Om te bepaal hoe die dokument op die prent vertoon word, moet u addisionele opsies spesifiseer: resolusie, aantal bladsye, beeldbinarisering, ens."
type: docs
weight: 40
url: /af/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy met dokumente werk, moet jy dikwels jou dokument omskakel na'n rasterbeeldlêer(s). Dit is veral relevant as u u dokument in'n leesbare en drukbare, maar nie bewerkbare formaat moet aanbied nie. U kan byvoorbeeld'n rasterbeeld van die eerste bladsy van u dokument as'n voorskou gebruik. Hierdie artikel beskryf hoe om'n dokument om te skakel na'n raster beeld met behulp van die voorbeeld van die TIFF formaat – een van die meer gewilde beeld formate.

## Omskakeling DOC Na Multi-Bladsy TIFF

In Aspose.Words kan omskakeling van DOC na TIFF uitgevoer word met een reël kode, deur eenvoudig die "save to" pad en die relevante lêer uitbreiding na die [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) metode te slaag. Die **Save** metode lei outomaties die `SaveFormat` af van die lêernaam uitbreiding wat in die pad gespesifiseer word. Die volgende voorbeeld toon hoe om'n dokument te omskep in die TIFF formaat:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Spesifiseer Addisionele Opsies Wanneer TIFFWeergegee Word

U moet dikwels addisionele opsies spesifiseer, wat die leweringsresultaat beïnvloed. Vir hierdie doel, gebruik die [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die dokument op die beeld vertoon word. U kan die volgende spesifiseer:

- Stoor formaat om die lys beskikbare opsies te bepaal ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Resolusie ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Aantal bladsye ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Kleur en beligting instellings ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Beeldkwaliteit ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Metode wat gebruik word om die beeld te binariseer ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Pixel formaat vir gegenereerde beelde ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows meta lêers hantering deur Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Bykomende opsies wat u in die **ImageSaveOptions** - klas kan sien

Die volgende voorbeeld toon hoe om DOC om te skakel na TIFF met gekonfigureerde opsies:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Drempel vir TIFF Binarisasie

'n TIFF beeld kan gestoor word in 1bpp b/w formaat deur die [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) eienskap te Stel om1bppIndexed pixel formaat tipe Te Formateer, en die `TiffCompression` eienskap Om Ccitt3 of Ccitt4.

Vir beeldsegmentering gebruik Aspose.Words die eenvoudigste metode - drempels. Hierdie metode omskep'n grysskaal TIFF beeld in'n binêre beeld, met behulp van'n drempelwaarde. Daarom, wanneer'n dokument moet omgeskakel word na die TIFF lêer formaat, is dit moontlik om te kry of stel die drempel vir TIFF binarization via die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/) eiendom. Die verstekwaarde vir hierdie eienskap is ingestel op 128, en hoe hoër hierdie waarde, hoe donkerder die beeld.

Die volgende voorbeeld toon hoe om TIFF binarisasie met'n gespesifiseerde drempel uit te voer:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Hieronder kan u beelde vergelyk waarop TIFF binarisering teen verskillende drempelwaardes uitgevoer is:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
