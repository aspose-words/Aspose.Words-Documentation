---
title: Konwertuj dokument na obraz w C#
second_title: Aspose.Words dla .NET
articleTitle: Konwertuj dokument na obraz
linktitle: Konwertuj dokument na obraz
type: docs
description: "Konwertuj dokument na format obrazu (JPG, PNG itp.). Utwórz podgląd dokumentu lub utwórz skan dokumentu, aby wysłać fakturę za pomocą C#."
weight: 43
url: /pl/net/convert-a-document-to-an-image/
---

Czasami zamiast dokumentów w innych formatach, takich jak DOCX lub PDF, wymagane jest uzyskanie obrazu. Na przykład musisz dodać podgląd dowolnej strony dokumentu do swojej witryny lub aplikacji lub utworzyć "skan" dokumentu, aby wysłać fakturę. W takiej sytuacji może zaistnieć potrzeba przekonwertowania dokumentu w dowolnym formacie [obsługiwany format ładowania](https://reference.aspose.com/words/net/aspose.words/loadformat/) na obraz w dowolnym formacie [obsługiwany format zapisu](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Konwertuj na obraz {#convert-to-image-format}

Podobnie jak w przypadku wszystkich opisanych już przykładów konwersji, należy utworzyć nowy dokument lub załadować istniejący w dowolnym obsługiwanym formacie, wprowadzić niezbędne zmiany i zapisać go w dowolnym dostępnym formacie obrazu, na przykład JPEG, PNG lub BMP.

Poniższy przykład kodu pokazuje, jak przekonwertować plik PDF na JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Określ opcje zapisu podczas konwersji do obrazu {#specify-save-options-when-converting-to-an-image}

Aspose.Words udostępnia klasę [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), która daje większą kontrolę nad sposobem zapisywania dokumentów w różnych formatach obrazu. Niektóre właściwości tej klasy dziedziczą lub przeciążają właściwości klas podstawowych, takich jak [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) lub [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), ale istnieją również opcje specyficzne dla zapisywania obrazów.

Istnieje możliwość określenia stron, które mają zostać skonwertowane do formatu obrazu za pomocą właściwości [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/). Można go zastosować np. jeśli potrzebny jest podgląd tylko pierwszej lub określonej strony.

Można także kontrolować jakość obrazu wyjściowego i format pikseli za pomocą właściwości – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), a także konfigurować ustawienia kolorów obrazu za pomocą właściwości – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Istnieją również właściwości, które mają zastosowanie do określonego formatu, na przykład [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) lub [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Poniższy przykład kodu pokazuje, jak utworzyć podgląd pierwszej strony dokumentu z zastosowaniem dodatkowych ustawień:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
