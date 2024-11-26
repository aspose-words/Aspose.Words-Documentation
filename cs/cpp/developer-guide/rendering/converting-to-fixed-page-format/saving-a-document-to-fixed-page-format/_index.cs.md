---
title: Uložení do formátu pevné stránky v C++
second_title: Aspose.Words pro C++
articleTitle: Uložení dokumentu do formátu pevné stránky
linktitle: Uložení dokumentu do formátu pevné stránky
description: "Jak uložit dokument do formátu s pevnou stránkou– PDF, XPS, HTML, XAML, PostScript, a PCL? Viz pokyny."
type: docs
weight: 15
url: /cs/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Po sestavení rozvržení stránky a výpočtu geometrie objektů a jejich polohy na stránce lze dokument uložit ve formátu pevné stránky podporovaném Aspose.Words.

Při ukládání dokumentů do formátů s pevnou stránkou lze použít možnosti Vykreslování společné pro všechny tyto formáty. Umožňují kontrolu:

- Počet a rozsah stránek obsažených ve výstupním dokumentu ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Průběh ukládání dokumentů po jednotlivých stránkách ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Sada znaků, které se používají k Vykreslování čísel ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Metasoubor hráč ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Pro více informací, viz [Manipulace Windows Metafile](/words/cpp/handling-windows-metafiles/) článek.
- Míra kvality pro rekompresi obrázků JPEG, jejichž hodnota se může mírně lišit v závislosti na zvoleném formátu uložení ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimalizace vektorové grafiky v Aspose.Words výstupu ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Grafické možnosti při ukládání do formátů Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Uložení dokumentu ve stupních šedi ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Přepínání mezi vykreslením tvarů DrawingML a záložních tvarů ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Přepínání mezi režimy vykreslování efektů DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Níže uvedený příklad ukazuje, jak uložit dokument do formátu JPEG pomocí metody `Save` a možností vykreslení:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
