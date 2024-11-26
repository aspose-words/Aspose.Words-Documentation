---
title: Zapisywanie dokumentu jako multipage TIFF w Java
second_title: Aspose.Words zamiast Java
articleTitle: Zapisywanie dokumentu jako multipage TIFF
linktitle: Zapisywanie dokumentu jako multipage TIFF
description: "Konwertuj dokument na obraz rastrowy, który jest omawiany na przykładzie formatu TIFF. Aby określić sposób wyświetlania TIFF należy określić dodatkowe opcje: rozdzielczość, liczba stron, binaryzacja obrazu, itp. Java."
type: docs
weight: 30
url: /pl/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Podczas pracy z dokumentami, często trzeba przekonwertować swój dokument do rastrowego pliku (-ów) obrazu. Jest to szczególnie istotne, jeśli musisz przedstawić swój dokument w czytelnym i drukowanym formacie, ale nie edytowalnym. Na przykład można użyć rastrowego obrazu pierwszej strony dokumentu jako podglądu. Ten artykuł opisuje, jak przekonwertować dokument do grafiki rasterowej za pomocą przykładu formatu TIFF - jednego z bardziej popularnych formatów obrazu.

## Konwersja DOC do Multipage TIFF

W Aspose.Words, konwersję z DOC do TIFF można wykonać za pomocą jednej linii kodu, po prostu przekazując ścieżkę "zapisz do" i odpowiednie rozszerzenie pliku do [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Metoda. W **Save** Metoda automatycznie generuje `SaveFormat` z rozszerzenia nazwy pliku określonego w ścieżce. Poniższy przykład pokazuje, jak przekonwertować dokument do formatu TIFF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Określanie dodatkowych opcji przy wynajmowaniu TIFF

Często trzeba określić dodatkowe opcje, które wpływają na wynik renderowania. W tym celu należy użyć [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) klasa, która zawiera właściwości określające sposób wyświetlania dokumentu na obrazku. Możesz określić:

- Zapisz format, aby określić listę dostępnych opcji ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Rozdzielczość ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Liczba stron ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Ustawienia kolorów i oświetlenia ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Jakość obrazu ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Metoda stosowana do symulacji obrazu ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Format pikseli dla generowanych obrazów ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows metafile do przerobu Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Dodatkowe opcje, które można zobaczyć w **ImageSaveOptions** klasa

Poniższy przykład pokazuje jak przekonwertować DOC do TIFF z skonfigurowanymi opcjami:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Próg dla BINARIZACJI TIFF

Obraz TIFF można zapisać w formacie 1bpp b / w przez ustawienie [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) właściwość Format1bppIndixed pixel format typu, i [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) nieruchomości do Ccitt3 lub Ccitt4.

Dla segmentacji obrazu, Aspose.Words korzysta z najprostszej metody - rowing. Metoda ta konwertuje obraz TIFF w skali szarości na obraz binarny, używając wartości progowej. W związku z tym, gdy dokument musi być przekonwertowany do formatu pliku TIFF, możliwe jest uzyskanie lub ustalenie progu binarizacji TIFF poprzez [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) nieruchomości. Wartość domyślna dla tej właściwości jest ustawiona na 128, a im wyższa ta wartość, tym ciemniejszy obraz.

Poniższy przykład pokazuje, jak wykonać binaryzację TIFF z określonym progiem:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Poniżej można porównać obrazy, na których binaryzacja TIFF została wykonana przy różnych wartościach progowych:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
