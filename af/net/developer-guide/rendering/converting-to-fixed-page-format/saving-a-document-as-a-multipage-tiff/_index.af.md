---
title: Stoor'n Dokument As'n Veelbladsy TIFF in C#
second_title: Aspose.Words vir .NET
articleTitle: Stoor'n Dokument as'n Veelbladsy TIFF
linktitle: Stoor'n Dokument as'n Veelbladsy TIFF
description: "Skakel'n dokument na'n multi-bladsy TIFF met behulp van C#. Om te bepaal hoe die dokument op die prent vertoon word, moet u addisionele opsies spesifiseer: resolusie, aantal bladsye, beeldbinarisering, ens."
type: docs
weight: 30
url: /af/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Wanneer jy met dokumente werk, moet jy dikwels jou dokument omskakel na'n rasterbeeldlêer(s). Dit is veral relevant as u u dokument in'n leesbare en drukbare, maar nie bewerkbare formaat moet aanbied nie. U kan byvoorbeeld'n rasterbeeld van die eerste bladsy van u dokument as'n voorskou gebruik. Hierdie artikel beskryf hoe om'n dokument om te skakel na'n raster beeld met behulp van die voorbeeld van die TIFF formaat – een van die meer gewilde beeld formate.

## Omskakeling DOC Na Multi-Bladsy TIFF

In Aspose.Words kan omskakeling van DOC na TIFF uitgevoer word met een reël kode, deur eenvoudig die "save to" pad en die relevante lêer uitbreiding na die [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save) metode te slaag. Die **Save** metode lei outomaties die `SaveFormat` af van die lêernaam uitbreiding wat in die pad gespesifiseer word. Die volgende voorbeeld toon hoe om'n dokument te omskep in die TIFF formaat:

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "save-as-tiff.cs" >}}

## Spesifiseer Addisionele Opsies Wanneer TIFFWeergegee Word

U moet dikwels addisionele opsies spesifiseer, wat die leweringsresultaat beïnvloed. Vir hierdie doel, gebruik die [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die dokument op die beeld vertoon word. U kan die volgende spesifiseer:

- Stoor formaat om die lys beskikbare opsies te bepaal ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Resolusie ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Aantal bladsye ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Kleur en beligting instellings ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Beeldkwaliteit ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Metode wat gebruik word om die beeld te binariseer ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Pixel formaat vir gegenereerde beelde ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Windows meta lêers hantering deur Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Bykomende opsies wat u in die **ImageSaveOptions** - klas kan sien

Die volgende voorbeeld toon hoe om DOC om te skakel na TIFF met gekonfigureerde opsies:

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "get-tiff-page-range.cs" >}}

## Drempel vir TIFF Binarisasie

'n TIFF beeld kan in 1bpp b/w formaat gestoor word deur die [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) eienskap op Format1bppIndexed pixel formaat tipe te stel, en die [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) eienskap Op Ccitt3 of Ccitt4.

Vir beeldsegmentering gebruik Aspose.Words die eenvoudigste metode - drempels. Hierdie metode omskep'n grysskaal TIFF beeld in'n binêre beeld, met behulp van'n drempelwaarde. Daarom, wanneer'n dokument moet omgeskakel word na die TIFF lêer formaat, is dit moontlik om te kry of stel die drempel vir TIFF binarization via die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/) eiendom. Die verstekwaarde vir hierdie eienskap is ingestel op 128, en hoe hoër hierdie waarde, hoe donkerder die beeld.

Die volgende voorbeeld toon hoe om TIFF binarisasie met'n gespesifiseerde drempel uit te voer:

{{< gist "aspose-words-gists" "b20a0ec0e1ff0556aa20d12f486e1963" "expose-threshold-control.cs" >}}

Hieronder kan u beelde vergelyk waarop TIFF binarisering teen verskillende drempelwaardes uitgevoer is:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
