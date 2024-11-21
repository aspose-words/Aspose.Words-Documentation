---
title: Een document omzetten naar een afbeelding in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document omzetten naar een afbeelding
linktitle: Een document omzetten naar een afbeelding
type: docs
description: "Een document omzetten naar afbeeldingsformaat (JPG, PNG, etc). Een documentvoorbeeld aanmaken of een documentscan maken om een factuur te versturen met behulp van C#."
weight: 43
url: /nl/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

Soms is het nodig om een afbeelding in plaats van documenten in andere formaten, zoals DOCX of PDF. U moet bijvoorbeeld een voorbeeld van een documentpagina toevoegen aan uw website of toepassing, of een "scan" van een document maken om een factuur te versturen. Dit is wanneer u nodig hebt om een document te converteren in een [ondersteund laadformaat](https://reference.aspose.com/words/net/aspose.words/loadformat/) naar een afbeelding, opnieuw, in elke [ondersteund opslagformaat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Naar afbeelding converteren {#convert-to-image-format}

Zoals bij alle reeds beschreven conversievoorbeelden, moet je een nieuw document maken of een bestaand document laden in elk ondersteund formaat, de nodige wijzigingen aanbrengen en opslaan in elk beschikbaar afbeeldingsformaat, bijvoorbeeld JPEG, PNG of BMP.

Het volgende voorbeeld van code laat zien hoe PDF naar JPEG te converteren:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Opties opslaan bij omzetten naar afbeelding specificeren {#specify-save-options-when-converting-to-an-image}

Aspose.Words geeft u de [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) klasse, wat meer controle geeft over hoe documenten worden opgeslagen in verschillende afbeeldingsformaten. Sommige eigenschappen van deze klasse erven of overbelasting eigenschappen van basisklassen zoals [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), maar er zijn ook opties specifiek voor het opslaan van afbeeldingen.

Het is mogelijk om de pagina's om te zetten naar afbeelding formaat met behulp van de [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) eigendom. Bijvoorbeeld, het kan worden toegepast als je alleen een voorbeeld voor de eerste of voor een bepaalde pagina.

Het is ook mogelijk om de output beeldkwaliteit en pixelformaat met behulp van de volgende eigenschappen te regelen. [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), evenals het instellen van afbeeldingskleurinstellingen, met behulp van de volgende eigenschappen [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Er zijn ook eigenschappen die van toepassing zijn op een bepaald formaat, bijvoorbeeld, [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) of [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Het volgende voorbeeld van code laat zien hoe u een voorbeeld van de eerste documentpagina kunt maken met een aantal extra instellingen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
