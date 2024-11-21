---
title: Stoor'n Dokument as'n Veelbladsy TIFF
second_title: Aspose.Words vir Python via .NET
articleTitle: Stoor'n Dokument as'n Veelbladsy TIFF
linktitle: Stoor'n Dokument as'n Veelbladsy TIFF
description: "Skakel'n dokument na'n multi-bladsy TIFF met behulp van Python. Om te bepaal hoe die dokument op die prent vertoon word, moet u addisionele opsies spesifiseer: resolusie, aantal bladsye, beeldbinarisering, ens."
type: docs
weight: 30
url: /af/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Wanneer jy met dokumente werk, moet jy dikwels jou dokument omskakel na'n rasterbeeldlêer(s). Dit is veral relevant as u u dokument in'n leesbare en drukbare, maar nie bewerkbare formaat moet aanbied nie. U kan byvoorbeeld'n rasterbeeld van die eerste bladsy van u dokument as'n voorskou gebruik. Hierdie artikel beskryf hoe om'n dokument om te skakel na'n raster beeld met behulp van die voorbeeld van die TIFF formaat – een van die meer gewilde beeld formate.

## Omskakeling DOC Na Multi-Bladsy TIFF

In Aspose.Words kan omskakeling van DOC na TIFF uitgevoer word met een reël kode, deur eenvoudig die "save to" pad en die relevante lêer uitbreiding na die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metode te slaag. Die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) metode lei outomaties die [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) af van die lêernaam uitbreiding wat in die pad gespesifiseer word. Die volgende voorbeeld toon hoe om'n dokument te omskep in die TIFF formaat:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Spesifiseer Addisionele Opsies Wanneer TIFFWeergegee Word

U moet dikwels addisionele opsies spesifiseer, wat die leweringsresultaat beïnvloed. Vir hierdie doel, gebruik die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die dokument op die beeld vertoon word. U kan die volgende spesifiseer:

- Stoor formaat om die lys beskikbare opsies te bepaal ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Resolusie ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Aantal bladsye ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Kleur en beligting instellings ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Beeldkwaliteit ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Metode wat gebruik word om die beeld te binariseer ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Pixel formaat vir gegenereerde beelde ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows meta lêers hantering deur Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Bykomende opsies wat u in die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) - klas kan sien

Die volgende voorbeeld toon hoe om DOC om te skakel na TIFF met gekonfigureerde opsies:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Drempel vir TIFF Binarisasie

'n TIFF beeld kan in 1bpp b/w formaat gestoor word deur die [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) eienskap op [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) pixel formaat tipe te stel, en die [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) eienskap op [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) of [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Vir beeldsegmentering gebruik Aspose.Words die eenvoudigste metode - drempels. Hierdie metode omskep'n grysskaal TIFF beeld in'n binêre beeld, met behulp van'n drempelwaarde. Daarom, wanneer'n dokument moet omgeskakel word na die TIFF lêer formaat, is dit moontlik om te kry of stel die drempel vir TIFF binarization via die [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) eiendom. Die verstekwaarde vir hierdie eienskap is ingestel op 128, en hoe hoër hierdie waarde, hoe donkerder die beeld.

Die volgende voorbeeld toon hoe om TIFF binarisasie met'n gespesifiseerde drempel uit te voer:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Hieronder kan u beelde vergelyk waarop TIFF binarisering teen verskillende drempelwaardes uitgevoer is:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
