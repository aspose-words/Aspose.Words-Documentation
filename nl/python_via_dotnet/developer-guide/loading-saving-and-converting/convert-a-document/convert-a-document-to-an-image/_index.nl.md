---
title: Een document omzetten naar een afbeelding
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document omzetten naar een afbeelding
linktitle: Een document omzetten naar een afbeelding
type: docs
description: "Een document omzetten naar afbeeldingsformaat (JPG, PNG, etc). Een documentvoorbeeld aanmaken of een documentscan maken om een factuur te versturen met behulp van Python."
weight: 43
url: /nl/python-net/convert-a-document-to-an-image/
---

Soms is het nodig om een afbeelding in plaats van documenten in andere formaten, zoals DOCX of PDF. U moet bijvoorbeeld een voorbeeld van een documentpagina toevoegen aan uw website of toepassing, of een "scan" van een document maken om een factuur te versturen. Dit is wanneer u nodig hebt om een document te converteren in een [ondersteund laadformaat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) naar een afbeelding, opnieuw, in elke [ondersteund opslagformaat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Converteren naar afbeeldingsformaat {#convert-to-image-format}

Zoals bij alle reeds beschreven conversievoorbeelden, moet je een nieuw document maken of een bestaand document laden in elk ondersteund formaat, de nodige wijzigingen aanbrengen en opslaan in elk beschikbaar afbeeldingsformaat, bijvoorbeeld JPEG, PNG of BMP.

Het volgende voorbeeld van code laat zien hoe PDF naar JPEG te converteren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Opties opslaan bij omzetten naar een afbeelding {#specify-save-options-when-converting-to-an-image}

Aspose.Words geeft u de [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klasse, wat meer controle geeft over hoe documenten worden opgeslagen in verschillende afbeeldingsformaten. Sommige eigenschappen van deze klasse erven of overbelasting eigenschappen van basisklassen zoals [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), maar er zijn ook opties specifiek voor het opslaan van afbeeldingen.

Het is mogelijk om de pagina's om te zetten naar afbeelding formaat met behulp van de [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) eigendom. Bijvoorbeeld, het kan worden toegepast als je alleen een voorbeeld voor de eerste of voor een bepaalde pagina.

Het is ook mogelijk om de output beeldkwaliteit en pixelformaat met behulp van de volgende eigenschappen te regelen. [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), evenals het instellen van afbeeldingskleurinstellingen, met behulp van de volgende eigenschappen [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Er zijn ook eigenschappen die van toepassing zijn op een bepaald formaat, bijvoorbeeld, [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) of [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Het volgende voorbeeld van code laat zien hoe u een voorbeeld van de eerste documentpagina kunt maken met een aantal extra instellingen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
