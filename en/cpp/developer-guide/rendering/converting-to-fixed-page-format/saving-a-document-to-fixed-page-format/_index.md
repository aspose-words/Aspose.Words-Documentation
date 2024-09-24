---
title: Saving to Fixed-page Format in C++
second_title: Aspose.Words for C++
articleTitle: Saving a Document to Fixed-page Format
linktitle: Saving a Document to Fixed-page Format
description: "How to save a document to a fixed-page format – PDF, XPS, HTML, XAML, PostScript, and PCL? See the instructions."
type: docs
weight: 15
url: /cpp/saving-a-document-to-fixed-page-format/
---

After the page layout is built and the geometry of objects and their position on the page are calculated, the document can be saved in a fixed-page format supported by Aspose.Words.

When saving documents to fixed-page formats, the rendering options common to all of these formats can be used. They allow to control:

- The number and range of pages contained in the output document ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Progress of page-by-page document saving ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- A set of characters that are used to numbers rendering ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- A metafile player ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). For more details, see the [Handling Windows Metafiles](/words/cpp/handling-windows-metafiles/) article.
- A quality rate for recompressing JPEG images, the value of which may differ slightly, depending on the selected save format ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimization of vector graphics in Aspose.Words output ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Graphics options when saving to Tiff, Png, Bmp, Jpeg, Emf formats ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Saving the document in grayscale ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Switching between the rendering of DrawingML shapes and fallback shapes ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Switching between DML effects rendering modes ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

The example below demonstrates how to save a document to JPEG format using the `Save` method and rendering options:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
