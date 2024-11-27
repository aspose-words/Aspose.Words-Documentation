---
title: Een Document converteren naar een afbeelding in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document converteren naar een afbeelding
linktitle: Een Document converteren naar een afbeelding
type: docs
description: "Converteer een document naar afbeeldingsindeling (JPG, PNG, enz.). Maak een documentvoorbeeld of maak een documentscan om een factuur te verzenden."
weight: 43
url: /nl/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Soms is het nodig om een afbeelding te krijgen in plaats van documenten in andere formaten, zoals DOCX of PDF. U moet bijvoorbeeld een voorbeeld van een documentpagina aan uw website of applicatie toevoegen of een "scan" van een document maken om een factuur te verzenden. Dit is wanneer u mogelijk een document in een [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) moet converteren naar een afbeelding, opnieuw in een [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Converteren naar afbeeldingsformaat

Zoals bij alle conversievoorbeelden die al zijn beschreven, moet u een nieuw document maken of een bestaand document laden in een ondersteunde indeling, de nodige wijzigingen aanbrengen en het opslaan in een beschikbare afbeeldingsindeling, bijvoorbeeld JPEG, PNG of BMP.

Het volgende codevoorbeeld laat zien hoe DOCX te converteren naar JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Opties voor Opslaan opgeven bij het converteren naar een afbeelding

Aspose.Words biedt u de [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) - klasse, die meer controle geeft over hoe documenten in verschillende afbeeldingsindelingen worden opgeslagen. Sommige eigenschappen van deze klasse erven of overbelasten eigenschappen van basisklassen zoals [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), maar er zijn ook opties die specifiek zijn voor het opslaan van afbeeldingen.

Het is mogelijk om de pagina ' s op te geven die geconverteerd moeten worden naar afbeeldingsindeling met behulp van de eigenschap [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Het kan bijvoorbeeld worden toegepast als u alleen een voorbeeld nodig hebt voor de eerste of voor een bepaalde pagina.

Het is ook mogelijk om de beeldkwaliteit en het pixelformaat van de uitgang te regelen met behulp van de volgende eigenschappen:– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), en stel de kleurinstellingen van de afbeelding in met behulp van de volgende eigenschappen– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Er zijn ook eigenschappen die van toepassing zijn op een bepaalde indeling, bijvoorbeeld [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) of [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Het volgende codevoorbeeld laat zien hoe u een voorbeeld van de eerste documentpagina kunt maken met enkele extra instellingen:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
