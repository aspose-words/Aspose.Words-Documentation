---
title: Salvataggio in formato a pagina fissa in C++
second_title: Aspose.Words per C++
articleTitle: Salvataggio di un documento in formato a pagina fissa
linktitle: Salvataggio di un documento in formato a pagina fissa
description: "Come salvare un documento in un formato a pagina fissa - PDF, XPS, HTML, XAML, PostScript e PCL? Vedere le istruzioni."
type: docs
weight: 15
url: /it/cpp/saving-a-document-to-fixed-page-format/
---

Dopo la creazione del layout di pagina e il calcolo della geometria degli oggetti e della loro posizione sulla pagina, il documento può essere salvato in un formato a pagina fissa supportato da Aspose.Words.

Quando si salvano documenti in formati a pagina fissa, è possibile utilizzare le opzioni di rendering comuni a tutti questi formati. Permettono di controllare:

- Il numero e l'intervallo di pagine contenute nel documento di output([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Avanzamento del salvataggio del documento pagina per pagina ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Un insieme di caratteri che vengono utilizzati per il rendering dei numeri ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Un giocatore metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Per maggiori dettagli, vedere il [Gestione dei metafile Windows ](/words/cpp/handling-windows-metafiles/) articolo.
- Un tasso di qualità per la ricompressione di immagini JPEG, il cui valore può variare leggermente, a seconda del formato di salvataggio selezionato ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Ottimizzazione della grafica vettoriale nell'output Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Opzioni grafiche durante il salvataggio in formati Tiff, Png, Bmp, Jpeg, Emf([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Salvataggio del documento in scala di grigi ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Passaggio tra il rendering di forme DrawingML e forme di fallback ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Commutazione tra le modalità di rendering degli effetti DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

L'esempio seguente illustra come salvare un documento in formato JPEG utilizzando il metodo `Save` e le opzioni di rendering:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
