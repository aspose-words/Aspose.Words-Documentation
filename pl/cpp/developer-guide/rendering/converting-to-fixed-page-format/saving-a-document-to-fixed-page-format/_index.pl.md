---
title: Zapisywanie w formacie stałej strony w C++
second_title: Aspose.Words dla C++
articleTitle: Zapisywanie dokumentu w formacie stałej strony
linktitle: Zapisywanie dokumentu w formacie stałej strony
description: "Jak zapisać dokument w formacie stałej strony– PDF, XPS, HTML, XAML, PostScript, i PCL? Zobacz instrukcje."
type: docs
weight: 15
url: /pl/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Po zbudowaniu układu strony i obliczeniu geometrii obiektów i ich położenia na stronie dokument można zapisać w formacie stałej strony obsługiwanym przez Aspose.Words.

Podczas zapisywania dokumentów w formatach ze stałymi stronami można użyć opcji renderowania wspólnych dla wszystkich tych formatów. Pozwalają kontrolować:

- Liczba i zakres stron zawartych w dokumencie wyjściowym([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Postęp zapisywania dokumentów strona po stronie ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Zestaw znaków używanych do renderowania liczb ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Gracz metafile ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Aby uzyskać więcej informacji, zobacz [Obsługa Windows Metaplików](/words/cpp/handling-windows-metafiles/) artykuł.
- Współczynnik jakości dla rekompresji JPEG obrazów, których wartość może się nieznacznie różnić w zależności od wybranego formatu zapisu ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optymalizacja grafiki wektorowej na wyjściu Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Opcje graficzne podczas zapisywania w formatach Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Zapisywanie dokumentu w skali szarości ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Przełączanie między renderowaniem kształtów DrawingML a kształtami rezerwowymi ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Przełączanie między trybami renderowania efektów DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Poniższy przykład pokazuje, jak zapisać dokument w formacie JPEG przy użyciu metody `Save` i opcji renderowania:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
