---
title: Salvarea în format de pagină fixă în C++
second_title: Aspose.Words pentru C++
articleTitle: Salvarea unui Document în format de pagină fixă
linktitle: Salvarea unui Document în format de pagină fixă
description: "Cum se salvează un document într-un format de pagină fixă– PDF, XPS, HTML, XAML, PostScript, și PCL? Vezi instrucțiunile."
type: docs
weight: 15
url: /ro/cpp/saving-a-document-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

După ce aspectul paginii este construit și geometria obiectelor și poziția lor pe pagină sunt calculate, documentul poate fi salvat într-un format de pagină fixă acceptat de Aspose.Words.

Când salvați documente în formate de pagini fixe, pot fi utilizate opțiunile de redare comune tuturor acestor formate. Ele permit controlul:

- Numărul și gama de pagini conținute în documentul de ieșire([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Progresul salvării documentelor pagină cu pagină ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Un set de caractere care sunt utilizate pentru numere de redare ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Un jucător metafișier ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Pentru mai multe detalii, consultați [Manipularea Windows Metafile](/words/cpp/handling-windows-metafiles/) articolul.
- O rată de calitate pentru recomprimarea imaginilor JPEG, a căror valoare poate diferi ușor, în funcție de formatul de salvare selectat ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimizarea graficelor vectoriale în Aspose.Words Ieșire ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Opțiuni grafice la salvarea în formate Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Salvarea documentului în tonuri de gri ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Comutarea între redarea formelor DrawingML și a formelor de rezervă ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Comutarea între modurile de redare a efectelor DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Exemplul de mai jos demonstrează cum să salvați un document în format JPEG folosind metoda `Save` și opțiunile de redare:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
