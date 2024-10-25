---
title: Speichern im festen Seitenformat in C++
second_title: Aspose.Words für C++
articleTitle: Speichern eines Dokuments im Festseitenformat
linktitle: Speichern eines Dokuments im Festseitenformat
description: "So speichern Sie ein Dokument in einem Format mit fester Seite – PDF, XPS, HTML, XAML, PostScript, und PCL? Siehe die Anweisungen."
type: docs
weight: 15
url: /de/cpp/saving-a-document-to-fixed-page-format/
---

Nachdem das Seitenlayout erstellt und die Geometrie der Objekte und ihre Position auf der Seite berechnet wurden, kann das Dokument in einem festen Seitenformat gespeichert werden, das von Aspose.Words unterstützt wird.

Beim Speichern von Dokumenten in Festseitenformaten können die Renderoptionen verwendet werden, die allen diesen Formaten gemeinsam sind. Sie ermöglichen die Kontrolle:

- Die Anzahl und der Bereich der im Ausgabedokument enthaltenen Seiten ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Fortschritt der seitenweisen Dokumentenspeicherung ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Eine Reihe von Zeichen, die zum Rendern von Zahlen ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)) verwendet werden.
- Ein Metadatei-Player ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Weitere Einzelheiten finden Sie in der [Umgang mit Windows Metadateien](/words/cpp/handling-windows-metafiles/) Beitrag.
- Eine Qualitätsrate für die erneute Komprimierung von JPEG-Bildern, deren Wert je nach ausgewähltem Speicherformat ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)) geringfügig abweichen kann.
- Optimierung von Vektorgrafiken in der Aspose.Words -Ausgabe ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Grafikoptionen beim Speichern in den Formaten Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Speichern des Dokuments in Graustufen ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Umschalten zwischen dem Rendern von DrawingML-Formen und Fallback-Formen ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Umschalten zwischen DML Effekt-Rendering-Modi ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

Das folgende Beispiel zeigt, wie Sie ein Dokument mit der Methode `Save` und den Renderoptionen im Format JPEG speichern:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
