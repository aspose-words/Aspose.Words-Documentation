---
title: Skakel'n Dokument om na'n Prent in C++
second_title: Aspose.Words vir C++
articleTitle: Skakel'n Dokument om Na'n Beeldlêer
linktitle: Skakel'n Dokument om Na'n Beeldlêer
type: docs
description: "Skakel'n dokument om na beeldformaat (JPG, PNG, ens.). Skep'n dokumentvoorskou of skep'n dokumentskandering om'n faktuur te stuur."
weight: 43
url: /af/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Soms is dit nodig om'n beeld te kry in plaas van dokumente in ander formate, soos DOCX of PDF. Byvoorbeeld, jy moet'n voorskou van enige dokumentbladsy by jou webwerf of toepassing voeg, of'n "skandering" van'n dokument skep om'n faktuur te stuur. Dit is wanneer jy dalk'n dokument in enige [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) moet omskep in'n prent, weer, in enige [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Skakel Na Beeldformaat

Soos met alle omskakelingsvoorbeelde wat reeds beskryf is, moet jy'n nuwe dokument skep of'n bestaande een in enige ondersteunde formaat laai, die nodige veranderinge aanbring en dit in enige beskikbare beeldformaat stoor, byvoorbeeld JPEG, PNG of BMP.

Die volgende kode voorbeeld toon hoe om te omskep DOCX om JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Spesifiseer Stoorkeuses wanneer Na'n Prent Omgeskakel Word

Aspose.Words bied u die [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) klas, wat meer beheer gee oor hoe dokumente in verskillende beeldformate gestoor word. Sommige eienskappe van hierdie klas erf of oorlaai eienskappe van basis klasse soos [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), maar daar is ook opsies spesifiek vir die stoor van beelde.

Dit is moontlik om die bladsye wat omgeskakel moet word na beeldformaat te spesifiseer met behulp van die [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/) eienskap. Dit kan byvoorbeeld toegepas word as u slegs'n voorskou vir die eerste of vir'n definitiewe bladsy benodig.

Dit is ook moontlik om die uitset beeld kwaliteit en pixel formaat te beheer met behulp van die volgende eienskappe– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), sowel as die opstel van beeld kleur instellings, met behulp van die volgende eienskappe– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Daar is ook eienskappe wat van toepassing is op'n sekere formaat, byvoorbeeld [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) of [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Die volgende kode voorbeeld toon hoe om'n voorskou van die eerste dokument bladsy te skep met die toepassing van'n paar bykomende instellings:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
