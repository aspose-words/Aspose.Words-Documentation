---
title: Skakel'n Dokument om na'n Prent in C#
second_title: Aspose.Words vir .NET
articleTitle: Skakel'n Dokument om Na'n Beeldlêer
linktitle: Skakel'n Dokument om Na'n Beeldlêer
type: docs
description: "Skakel'n dokument om na beeldformaat (JPG, PNG, ens.). Skep'n dokumentvoorskou of skep'n dokumentskandering om'n faktuur te stuur met C#."
weight: 43
url: /af/net/convert-a-document-to-an-image/
timestamp: 2024-07-09-19-00-42
---

Soms is dit nodig om'n beeld te kry in plaas van dokumente in ander formate, soos DOCX of PDF. Byvoorbeeld, jy moet'n voorskou van enige dokumentbladsy by jou webwerf of toepassing voeg, of'n "skandering" van'n dokument skep om'n faktuur te stuur. Dit is wanneer jy dalk'n dokument in enige [supported load format](https://reference.aspose.com/words/net/aspose.words/loadformat/) moet omskep in'n prent, weer, in enige [supported save format](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Skakel na Beeld {#convert-to-image-format}

Soos met alle omskakelingsvoorbeelde wat reeds beskryf is, moet jy'n nuwe dokument skep of'n bestaande een in enige ondersteunde formaat laai, die nodige veranderinge aanbring en dit in enige beskikbare beeldformaat stoor, byvoorbeeld JPEG, PNG of BMP.

Die volgende kode voorbeeld toon hoe om te omskep PDF om JPEG:

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "pdf-to-jpeg.cs" >}}

## Spesifiseer Stoorkeuses wanneer U Na Beeld {#specify-save-options-when-converting-to-an-image}Omskakel

Aspose.Words bied u die [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) klas, wat meer beheer gee oor hoe dokumente in verskillende beeldformate gestoor word. Sommige eienskappe van hierdie klas erf of oorlaai eienskappe van basis klasse soos [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) of [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), maar daar is ook opsies spesifiek vir die stoor van beelde.

Dit is moontlik om die bladsye wat omgeskakel moet word na beeldformaat te spesifiseer met behulp van die [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/) eienskap. Dit kan byvoorbeeld toegepas word as u slegs'n voorskou vir die eerste of vir'n definitiewe bladsy benodig.

Dit is ook moontlik om die uitset beeld kwaliteit en pixel formaat te beheer met behulp van die volgende eienskappe– [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), sowel as die opstel van beeld kleur instellings, met behulp van die volgende eienskappe– [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Daar is ook eienskappe wat van toepassing is op'n sekere formaat, byvoorbeeld [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) of [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Die volgende kode voorbeeld toon hoe om'n voorskou van die eerste dokument bladsy te skep met die toepassing van'n paar bykomende instellings:

{{< gist "aspose-words-gists" "ebbb90d74ef57db456685052a18f8e86" "get-jpeg-page-range.cs" >}}
