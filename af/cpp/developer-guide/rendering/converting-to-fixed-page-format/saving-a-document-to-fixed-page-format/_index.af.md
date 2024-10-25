---
title: Stoor Na Vaste bladsy Formaat in C++
second_title: Aspose.Words vir C++
articleTitle: Stoor'n Dokument Na Vaste bladsy Formaat
linktitle: Stoor'n Dokument Na Vaste bladsy Formaat
description: "Hoe om'n dokument op'n vaste bladsy te stoor– PDF, XPS, HTML, XAML, PostScript, en PCL? Sien die instruksies."
type: docs
weight: 15
url: /af/cpp/saving-a-document-to-fixed-page-format/
---

Nadat die bladsy uitleg gebou is en die meetkunde van voorwerpe en hul posisie op die bladsy bereken is, kan die dokument gestoor word in'n vaste bladsy formaat ondersteun deur Aspose.Words.

Wanneer dokumente in vaste bladsy formate gestoor word, kan die weergawe opsies wat algemeen is vir al hierdie formate gebruik word. Hulle laat toe om te beheer:

- Die aantal en omvang van bladsye vervat in die uitset dokument ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Vordering van bladsy-vir-bladsy dokument stoor ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- 'n stel karakters wat gebruik word om getalle te vertoon ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- 'n meta-lêer speler ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Vir meer besonderhede, sien die [Hantering Windows Meta Lêers](/words/cpp/handling-windows-metafiles/) artikel.
- 'n kwaliteitskoers vir die herkomprimering van JPEG beelde, waarvan die waarde effens kan verskil, afhangende van die geselekteerde stoorformaat ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimalisering van vektorgrafika in Aspose.Words uitset ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Grafiese opsies wanneer jy stoor Na Tiff, Png, Bmp, Jpeg, Emf formate ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Stoor die dokument in grysskaal ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Skakel tussen Die weergawe van DrawingML vorms en fallback vorms ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Skakel tussen DML effekte vertoon modes ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Die onderstaande voorbeeld toon hoe om'n dokument te stoor na JPEG formaat met behulp van die `Save` metode en weergawe opsies:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
