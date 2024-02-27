---
title: Zapisywanie dokumentu jako wielostronicowy plik TIFF
second_title: Aspose.Words dla Python via .NET
articleTitle: Zapisywanie dokumentu jako wielostronicowy plik TIFF
linktitle: Zapisywanie dokumentu jako wielostronicowy plik TIFF
description: "Konwertuj dokument na wielostronicowy plik TIFF za pomocą Python. Aby określić sposób wyświetlania dokumentu na obrazie należy określić dodatkowe opcje: rozdzielczość, liczbę stron, binaryzację obrazu itp."
type: docs
weight: 30
url: /pl/python-net/saving-a-document-as-a-multipage-tiff/
---

Podczas pracy z dokumentami często trzeba przekonwertować dokument na plik(i) obrazu rastrowego. Jest to szczególnie istotne, jeśli musisz przedstawić dokument w formacie czytelnym i nadającym się do wydruku, ale nie nadającym się do edycji. Na przykład jako podglądu możesz użyć obrazu rastrowego pierwszej strony dokumentu. W artykule opisano sposób konwersji dokumentu do obrazu rastrowego na przykładzie formatu TIFF – jednego z popularniejszych formatów obrazów.

## Konwersja DOC do wielostronicowego TIFF

W Aspose.Words konwersję z DOC do TIFF można wykonać za pomocą jednej linijki kodu, po prostu przekazując ścieżkę "zapisz w" i odpowiednie rozszerzenie pliku do metody [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Metoda [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) automatycznie wyprowadza kod [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) z rozszerzenia nazwy pliku określonego w ścieżce. Poniższy przykład ilustruje sposób konwersji dokumentu do formatu TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Określanie dodatkowych opcji podczas renderowania TIFF

Często trzeba określić dodatkowe opcje, które wpływają na wynik renderowania. W tym celu należy wykorzystać klasę [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), która zawiera właściwości określające sposób wyświetlania dokumentu na obrazie. Możesz określić następujące elementy:

- Zapisz format, aby określić listę dostępnych opcji ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Rozdzielczość ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Liczba stron ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Ustawienia kolorów i oświetlenia ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Jakość obrazu ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Metoda binaryzacji obrazu ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Format pikseli dla generowanych obrazów ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Obsługa metaplików Windows przez Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Dodatkowe opcje, które możesz zobaczyć w klasie [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

Poniższy przykład pokazuje, jak przekonwertować DOC na TIFF przy skonfigurowanych opcjach:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Próg binaryzacji TIFF

Obraz TIFF można zapisać w formacie czarno-białym 1 bpp, ustawiając właściwość [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) na typ formatu pikseli [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed), a właściwość [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) na [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) lub [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Do segmentacji obrazu Aspose.Words wykorzystuje najprostszą metodę - progowanie. Ta metoda konwertuje obraz TIFF w skali szarości na obraz binarny przy użyciu wartości progowej. Dlatego też, gdy dokument wymaga konwersji do formatu pliku TIFF, możliwe jest uzyskanie lub ustawienie progu binaryzacji TIFF za pomocą właściwości [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Domyślna wartość tej właściwości jest ustawiona na 128, a im wyższa wartość, tym ciemniejszy obraz.

Poniższy przykład pokazuje, jak przeprowadzić binaryzację TIFF z określonym progiem:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Poniżej można porównać obrazy, na których przeprowadzono binaryzację TIFF przy różnych wartościach progowych:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="zapisywanie-dokumentu-jako-wielostronicowego-tiff-aspose-words-net" style="width:800px"/>
