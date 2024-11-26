---
title: Zapisywanie dokumentu jako wielostronicowego pliku TIFF w formacie C#
second_title: Aspose.Words dla .NET
articleTitle: Zapisywanie dokumentu jako wielostronicowy plik TIFF
linktitle: Zapisywanie dokumentu jako wielostronicowy plik TIFF
description: "Konwertuj dokument na wielostronicowy plik TIFF za pomocą C#. Aby określić sposób wyświetlania dokumentu na obrazie należy określić dodatkowe opcje: rozdzielczość, liczbę stron, binaryzację obrazu itp."
type: docs
weight: 30
url: /pl/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Podczas pracy z dokumentami często trzeba przekonwertować dokument na plik(i) obrazu rastrowego. Jest to szczególnie istotne, jeśli musisz przedstawić dokument w formacie czytelnym i nadającym się do wydruku, ale nie nadającym się do edycji. Na przykład jako podglądu możesz użyć obrazu rastrowego pierwszej strony dokumentu. W artykule opisano sposób konwersji dokumentu do obrazu rastrowego na przykładzie formatu TIFF – jednego z popularniejszych formatów obrazów.

## Konwersja DOC do wielostronicowego TIFF

W Aspose.Words konwersję z DOC do TIFF można wykonać za pomocą jednej linijki kodu, po prostu przekazując ścieżkę "zapisz w" i odpowiednie rozszerzenie pliku do metody [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Metoda **Save** automatycznie wyprowadza `SaveFormat` z rozszerzenia nazwy pliku określonego w ścieżce. Poniższy przykład ilustruje sposób konwersji dokumentu do formatu TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Określanie dodatkowych opcji podczas renderowania TIFF

Często trzeba określić dodatkowe opcje, które wpływają na wynik renderowania. W tym celu należy wykorzystać klasę [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), która zawiera właściwości określające sposób wyświetlania dokumentu na obrazie. Możesz określić następujące elementy:

- Zapisz format, aby określić listę dostępnych opcji ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Rozdzielczość ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Liczba stron ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Ustawienia kolorów i oświetlenia ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Jakość obrazu ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Metoda binaryzacji obrazu ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Format pikseli dla generowanych obrazów ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Obsługa metaplików Windows przez Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Dodatkowe opcje, które możesz zobaczyć w klasie **ImageSaveOptions**

Poniższy przykład pokazuje, jak przekonwertować DOC na TIFF przy skonfigurowanych opcjach:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Próg binaryzacji TIFF

Obraz TIFF można zapisać w formacie czarno-białym 1bpp, ustawiając właściwość [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) na typ formatu pikseli Format1bppIndexed, a właściwość [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) na Ccitt3 lub Ccitt4.

Do segmentacji obrazu Aspose.Words wykorzystuje najprostszą metodę - progowanie. Ta metoda konwertuje obraz TIFF w skali szarości na obraz binarny przy użyciu wartości progowej. Dlatego też, gdy dokument wymaga konwersji do formatu pliku TIFF, możliwe jest uzyskanie lub ustawienie progu binaryzacji TIFF za pomocą właściwości [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). Domyślna wartość tej właściwości jest ustawiona na 128, a im wyższa wartość, tym ciemniejszy obraz.

Poniższy przykład pokazuje, jak przeprowadzić binaryzację TIFF z określonym progiem:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Poniżej można porównać obrazy, na których przeprowadzono binaryzację TIFF przy różnych wartościach progowych:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="zapisywanie-dokumentu-jako-wielostronicowego-tiff-aspose-words-net" style="width:800px"/>
