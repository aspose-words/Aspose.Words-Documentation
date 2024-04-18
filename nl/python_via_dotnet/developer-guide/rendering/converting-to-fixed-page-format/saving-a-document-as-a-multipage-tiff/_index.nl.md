---
title: Een document opslaan als Multipage TIFF
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document opslaan als Multipage TIFF
linktitle: Een document opslaan als Multipage TIFF
description: "Een document omzetten naar een TIFF met meerdere pagina's Python. Om te bepalen hoe het document wordt weergegeven op de afbeelding moet u extra opties opgeven: resolutie, aantal pagina's, image binarization, etc."
type: docs
weight: 30
url: /nl/python-net/saving-a-document-as-a-multipage-tiff/
---

Wanneer u met documenten werkt, moet u vaak uw document converteren naar een rasterbestand(s). Dit is vooral relevant als u uw document moet presenteren in een leesbaar en afdrukbaar formaat, maar niet bewerkbaar. U kunt bijvoorbeeld een rasterafbeelding van de eerste pagina van uw document als voorbeeld gebruiken. Dit artikel beschrijft hoe u een document naar een rasterafbeelding kunt converteren met behulp van het voorbeeld van het TIFF-formaat.

## DOC converteren naar Multi-Page TIFF

In Aspose.Words, conversie van DOC naar TIFF kan worden uitgevoerd met een regel van code, door gewoon door te gaan met het opslaan naar het pad en de relevante bestandsextensie naar de [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode. De [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) methode automatisch afgeleid van de [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) van de bestandsnaam extensie opgegeven in het pad. Het volgende voorbeeld laat zien hoe een document naar het TIFF-formaat kan worden omgezet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Aanvullende opties specificeren bij het renderen van TIFF

Vaak moet je extra opties opgeven, die het renderingsresultaat beïnvloeden. Gebruik hiervoor de [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klasse, die eigenschappen bevat die bepalen hoe het document op de afbeelding wordt weergegeven. U kunt het volgende specificeren:

- Opmaak opslaan om de lijst met beschikbare opties te bepalen ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Resolutie ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Aantal bladzijden ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Kleur- en verlichtingsinstellingen ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Beeldkwaliteit ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Methode gebruikt om de afbeelding te binariseren ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Pixelformaat voor gegenereerde afbeeldingen ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Windows metafiles verwerken door Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Extra opties die u kunt zien in de [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klasse

Het volgende voorbeeld laat zien hoe je DOC naar TIFF kunt converteren met geconfigureerde opties:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Drempelwaarde voor TIFF-binarisatie

Een TIFF-afbeelding kan in 1bpp b/w formaat worden opgeslagen door de [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) eigendom aan [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) pixel formaat type, en de [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) eigendom aan [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) of [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Voor afbeeldingssegmentatie, Aspose.Words maakt gebruik van de eenvoudigste methode. Deze methode zet een grijs-schaal TIFF-afbeelding om in een binaire afbeelding, met behulp van een drempelwaarde. Daarom, wanneer een document moet worden omgezet in het TIFF bestandsformaat, is het mogelijk om de drempel voor TIFF binarization via de [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/) eigendom. De standaardwaarde voor deze eigenschap is ingesteld op 128, en hoe hoger deze waarde, hoe donkerder de afbeelding.

Het volgende voorbeeld laat zien hoe TIFF-binarisatie met een bepaalde drempel kan worden uitgevoerd:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Hieronder kunt u afbeeldingen vergelijken waarop TIFF binarisatie werd uitgevoerd bij verschillende drempelwaarden:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-net" style="width:800px"/>
