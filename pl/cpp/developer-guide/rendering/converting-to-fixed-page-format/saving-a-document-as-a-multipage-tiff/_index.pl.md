---
title: Zapisywanie dokumentu jako wielostronicowego TIFF W C++
second_title: Aspose.Words dla C++
articleTitle: Zapisywanie dokumentu jako wielostronicowego TIFF
linktitle: Zapisywanie dokumentu jako wielostronicowego TIFF
description: "Konwertuj dokument na wielostronicowy TIFF za pomocą C++. Aby określić, w jaki sposób dokument jest wyświetlany na obrazie, należy określić dodatkowe opcje: rozdzielczość, liczbę stron, binaryzację obrazu itp."
type: docs
weight: 40
url: /pl/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Podczas pracy z dokumentami często trzeba przekonwertować dokument na plik(i) obrazu rastrowego. Jest to szczególnie istotne, jeśli musisz przedstawić swój dokument w formacie czytelnym i nadającym się do wydrukowania, ale nie nadającym się do edycji. Na przykład możesz użyć obrazu rastrowego pierwszej strony dokumentu jako podglądu. W tym artykule opisano, jak przekonwertować dokument na obraz rastrowy na przykładzie formatu TIFF – jednego z bardziej popularnych formatów obrazów.

## Konwertowanie DOC Na wielostronicowe TIFF

W Aspose.Words konwersję z DOC na TIFF można wykonać za pomocą jednego wiersza kodu, po prostu przekazując ścieżkę "Zapisz do" i odpowiednie rozszerzenie pliku do metody [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Metoda **Save** automatycznie wyprowadza `SaveFormat` z rozszerzenia nazwy pliku określonego w ścieżce. Poniższy przykład pokazuje, jak przekonwertować dokument do formatu TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Określanie Dodatkowych Opcji Podczas Renderowania TIFF

Często musisz określić dodatkowe opcje, które wpływają na wynik renderowania. W tym celu użyj klasy [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), która zawiera Właściwości określające sposób wyświetlania dokumentu na obrazie. Możesz określić:

- Zapisz format, aby określić listę dostępnych opcji ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Rozdzielczość ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Liczba stron ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Ustawienia kolorów i oświetlenia ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Jakość obrazu ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Metoda używana do binaryzacji obrazu ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Format pikseli dla generowanych obrazów ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows obsługa metaplików przez Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Dodatkowe opcje, które można zobaczyć w klasie **ImageSaveOptions**

Poniższy przykład pokazuje, jak przekonwertować DOC na TIFF ze skonfigurowanymi opcjami:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Próg Binaryzacji TIFF

Obraz TIFF można zapisać w formacie czarno-białym 1bpp, ustawiając właściwość [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) na Format1bppIndexed typ formatu pikseli, a właściwość `TiffCompression` na Ccitt3 lub Ccitt4.

Do segmentacji obrazu Aspose.Words używa najprostszej metody-progowania. Ta metoda konwertuje obraz w skali szarości TIFF na obraz binarny, używając wartości progowej. Dlatego, gdy dokument musi zostać przekonwertowany do formatu pliku TIFF, możliwe jest uzyskanie lub ustawienie progu binaryzacji TIFF za pomocą właściwości [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Wartość domyślna tej właściwości jest ustawiona na 128, a im wyższa ta wartość, tym ciemniejszy obraz.

Poniższy przykład pokazuje, jak wykonać binaryzację TIFF z określonym progiem:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Poniżej możesz porównać obrazy, na których przeprowadzono binaryzację TIFF przy różnych wartościach progowych:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
