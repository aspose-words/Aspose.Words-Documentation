---
title: Konwertuj dokument na obraz w C++
second_title: Aspose.Words dla C++
articleTitle: Konwertuj dokument na obraz
linktitle: Konwertuj dokument na obraz
type: docs
description: "Konwertuj dokument do formatu obrazu (JPG, PNG itp.). Utwórz podgląd dokumentu lub utwórz skan dokumentu, aby wysłać fakturę."
weight: 43
url: /pl/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Czasami wymagane jest uzyskanie obrazu zamiast dokumentów w innych formatach, takich jak DOCX lub PDF. Na przykład musisz dodać podgląd dowolnej strony dokumentu do swojej witryny lub aplikacji lub utworzyć "skan" dokumentu, aby wysłać fakturę. Wtedy może być konieczne przekonwertowanie dokumentu z dowolnego [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) Na obraz, ponownie w dowolnym [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Konwertuj na Format obrazu

Podobnie jak w przypadku wszystkich opisanych już przykładów konwersji, musisz utworzyć nowy dokument lub załadować istniejący w dowolnym obsługiwanym formacie, wprowadzić niezbędne zmiany i zapisać go w dowolnym dostępnym formacie obrazu, na przykład JPEG, PNG lub BMP.

Poniższy przykład kodu pokazuje, jak przekonwertować DOCX na JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Określ opcje zapisywania podczas konwersji na obraz

Aspose.Words zapewnia klasę [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), która daje większą kontrolę nad sposobem zapisywania dokumentów w różnych formatach graficznych. Niektóre właściwości tej klasy dziedziczą lub przeciążają właściwości klas bazowych, takie jak [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) lub [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), ale istnieją również opcje specyficzne dla zapisywania obrazów.

Możliwe jest określenie stron do konwersji na format obrazu za pomocą właściwości [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Na przykład można go zastosować, jeśli potrzebujesz tylko podglądu dla pierwszej lub określonej strony.

Możliwe jest również kontrolowanie jakości obrazu wyjściowego i formatu pikseli za pomocą następujących właściwości– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), jak również skonfigurować ustawienia kolorów obrazu, używając następujących właściwości– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Istnieją również właściwości, które mają zastosowanie do określonego formatu, na przykład [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) lub [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Poniższy przykład kodu pokazuje, jak utworzyć podgląd pierwszej strony dokumentu z zastosowaniem dodatkowych ustawień:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
