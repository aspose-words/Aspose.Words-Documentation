---
title: Skakel'n Dokument om Na'n Beeldlêer
second_title: Aspose.Words vir Python via .NET
articleTitle: Skakel'n Dokument om Na'n Beeldlêer
linktitle: Skakel'n Dokument om Na'n Beeldlêer
type: docs
description: "Skakel'n dokument om na beeldformaat (JPG, PNG, ens.). Skep'n dokumentvoorskou of skep'n dokumentskandering om'n faktuur te stuur met Python."
weight: 43
url: /af/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Soms is dit nodig om'n beeld te kry in plaas van dokumente in ander formate, soos DOCX of PDF. Byvoorbeeld, jy moet'n voorskou van enige dokumentbladsy by jou webwerf of toepassing voeg, of'n "skandering" van'n dokument skep om'n faktuur te stuur. Dit is wanneer jy dalk'n dokument in enige [supported load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) moet omskep in'n prent, weer, in enige [supported save format](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

## Skakel Na Beeldformaat {#convert-to-image-format}

Soos met alle omskakelingsvoorbeelde wat reeds beskryf is, moet jy'n nuwe dokument skep of'n bestaande een in enige ondersteunde formaat laai, die nodige veranderinge aanbring en dit in enige beskikbare beeldformaat stoor, byvoorbeeld JPEG, PNG of BMP.

Die volgende kode voorbeeld toon hoe om te omskep PDF om JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Spesifiseer Stoorkeuses wanneer Na'n Prent {#specify-save-options-when-converting-to-an-image}Omgeskakel Word

Aspose.Words bied u die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) klas, wat meer beheer gee oor hoe dokumente in verskillende beeldformate gestoor word. Sommige eienskappe van hierdie klas erf of oorlaai eienskappe van basis klasse soos [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), maar daar is ook opsies spesifiek vir die stoor van beelde.

Dit is moontlik om die bladsye wat omgeskakel moet word na beeldformaat te spesifiseer met behulp van die [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/) eienskap. Dit kan byvoorbeeld toegepas word as u slegs'n voorskou vir die eerste of vir'n definitiewe bladsy benodig.

Dit is ook moontlik om die uitset beeld kwaliteit en pixel formaat te beheer met behulp van die volgende eienskappe– [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), sowel as die opstel van beeld kleur instellings, met behulp van die volgende eienskappe– [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Daar is ook eienskappe wat van toepassing is op'n sekere formaat, byvoorbeeld [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) of [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Die volgende kode voorbeeld toon hoe om'n voorskou van die eerste dokument bladsy te skep met die toepassing van'n paar bykomende instellings:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
