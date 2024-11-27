---
title: Opslaan naar vaste paginaindeling in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document opslaan in een vaste paginaindeling
linktitle: Een Document opslaan in een vaste paginaindeling
description: "Hoe een document op te slaan in een formaat met vaste pagina– PDF, XPS, HTML, XAML, PostScript, en PCL? Zie de instructies."
type: docs
weight: 15
url: /nl/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Nadat de pagina-indeling is opgebouwd en de geometrie van objecten en hun positie op de pagina zijn berekend, kan het document worden opgeslagen in een vaste paginaindeling die wordt ondersteund door Aspose.Words.

Bij het opslaan van documenten naar vaste paginaindelingen kunnen de renderingsopties worden gebruikt die voor al deze indelingen gebruikelijk zijn. Ze maken controle mogelijk:

- Het aantal en het bereik van de pagina ' s in het uitvoerdocument ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Voortgang van pagina-voor-pagina document opslaan ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Een reeks tekens die worden gebruikt voor het renderen van getallen ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Een metafile player ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Voor meer details, zie de [Windows Metafiles Verwerken](/words/cpp/handling-windows-metafiles/) artikel.
- Een kwaliteitssnelheid voor het opnieuw comprimeren vanJPEG - afbeeldingen, waarvan de waarde enigszins kan verschillen, afhankelijk van de geselecteerde opslagindeling ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimalisatie van vectorafbeeldingen in Aspose.Words output ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Grafische opties bij het opslaan naar Tiff, Png, Bmp, Jpeg, Emf-formaten ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Het document opslaan in grijswaarden ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Schakelen tussen het renderen van DrawingML shapes en fallback shapes ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Schakelen tussen DML effecten rendering modi ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Het onderstaande voorbeeld laat zien hoe u een document in JPEG - indeling kunt opslaan met behulp van de `Save` - methode en weergaveopties:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
