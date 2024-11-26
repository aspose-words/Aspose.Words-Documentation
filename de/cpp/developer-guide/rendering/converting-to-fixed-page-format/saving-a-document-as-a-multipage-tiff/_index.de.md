---
title: Speichern eines Dokuments als mehrseitiges TIFF in C++
second_title: Aspose.Words für C++
articleTitle: Speichern eines Dokuments als mehrseitiges TIFF
linktitle: Speichern eines Dokuments als mehrseitiges TIFF
description: "Konvertieren Sie ein Dokument mit C++ in ein mehrseitiges TIFF. Um zu bestimmen, wie das Dokument auf dem Bild angezeigt wird, müssen Sie zusätzliche Optionen angeben: Auflösung, Anzahl der Seiten, Bildbinarisierung usw."
type: docs
weight: 40
url: /de/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Wenn Sie mit Dokumenten arbeiten, müssen Sie Ihr Dokument häufig in eine oder mehrere Rasterbilddateien konvertieren. Dies ist besonders relevant, wenn Sie Ihr Dokument in einem lesbaren und druckbaren, aber nicht bearbeitbaren Format präsentieren müssen. Sie können beispielsweise ein Rasterbild der ersten Seite Ihres Dokuments als Vorschau verwenden. In diesem Artikel wird beschrieben, wie Sie ein Dokument am Beispiel des TIFF –Formats - eines der beliebtesten Bildformate - in ein Rasterbild konvertieren.

## DOC in mehrseitige TIFF konvertieren

In Aspose.Words kann die Konvertierung von DOC nach TIFF mit einer Codezeile durchgeführt werden, indem einfach der Pfad "Speichern unter" und die entsprechende Dateierweiterung an die Methode [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) übergeben werden. Die Methode **Save** leitet die `SaveFormat` automatisch von der im Pfad angegebenen Dateinamenerweiterung ab. Das folgende Beispiel zeigt, wie Sie ein Dokument in das Format TIFF konvertieren:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Angeben zusätzlicher Optionen beim Rendern von TIFF

Häufig müssen Sie zusätzliche Optionen angeben, die sich auf das Renderergebnis auswirken. Verwenden Sie dazu die Klasse [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), die Eigenschaften enthält, die bestimmen, wie das Dokument auf dem Bild angezeigt wird. Sie können Folgendes angeben:

- Format speichern, um die Liste der verfügbaren Optionen zu ermitteln ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Entschließung ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Anzahl der Seiten ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Farb- und Beleuchtungseinstellungen ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Bildqualität ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Methode zum Binarisieren des Bildes ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Pixelformat für generierte Bilder ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows Handhabung von Metadateien durch Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Zusätzliche Optionen, die Sie in der Klasse **ImageSaveOptions** sehen können

Das folgende Beispiel zeigt, wie DOC mit konfigurierten Optionen in TIFF konvertiert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Schwellenwert für TIFF-Binarisierung

Ein TIFF-Bild kann im 1bpp s/w-Format gespeichert werden, indem die Eigenschaft [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) auf Format1bppIndexed pixel format type und die Eigenschaft `TiffCompression` auf Ccitt3 oder Ccitt4 gesetzt wird.

Für die Bildsegmentierung verwendet Aspose.Words die einfachste Methode - die Schwellenwertbildung. Diese Methode konvertiert ein Graustufenbild TIFF unter Verwendung eines Schwellenwerts in ein Binärbild. Wenn ein Dokument in das TIFF -Dateiformat konvertiert werden muss, ist es daher möglich, den Schwellenwert für die TIFF -Binarisierung über die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/) -Eigenschaft abzurufen oder festzulegen. Der Standardwert für diese Eigenschaft ist auf 128 festgelegt, und je höher dieser Wert ist, desto dunkler ist das Bild.

Das folgende Beispiel zeigt, wie die TIFF-Binarisierung mit einem angegebenen Schwellenwert durchgeführt wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Unten können Sie Bilder vergleichen, auf denen die TIFF -Binarisierung bei verschiedenen Schwellenwerten durchgeführt wurde:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
