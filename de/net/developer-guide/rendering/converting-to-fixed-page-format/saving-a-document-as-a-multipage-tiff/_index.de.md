---
title: Speichern eines Dokuments als mehrseitiges TIFF in C#
second_title: Aspose.Words für .NET
articleTitle: Speichern eines Dokuments als mehrseitiges TIFF
linktitle: Speichern eines Dokuments als mehrseitiges TIFF
description: "Konvertieren Sie ein Dokument mit C# in ein mehrseitiges TIFF. Um festzulegen, wie das Dokument auf dem Bild angezeigt wird, müssen Sie zusätzliche Optionen angeben: Auflösung, Anzahl der Seiten, Bildbinarisierung usw."
type: docs
weight: 30
url: /de/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Wenn Sie mit Dokumenten arbeiten, müssen Sie Ihr Dokument häufig in eine oder mehrere Rasterbilddateien konvertieren. Dies ist insbesondere dann relevant, wenn Sie Ihr Dokument in einem lesbaren und druckbaren, aber nicht bearbeitbaren Format präsentieren müssen. Sie können beispielsweise ein Rasterbild der ersten Seite Ihres Dokuments als Vorschau verwenden. In diesem Artikel wird am Beispiel des TIFF-Formats – einem der beliebtesten Bildformate – beschrieben, wie Sie ein Dokument in ein Rasterbild konvertieren.

## Konvertieren von DOC in mehrseitiges TIFF

In Aspose.Words kann die Konvertierung von DOC in TIFF mit einer Codezeile durchgeführt werden, indem einfach der "Speichern unter"-Pfad und die entsprechende Dateierweiterung an die [Save](https://reference.aspose.com/words/de/net/aspose.words/document/save/#save)-Methode übergeben werden. Die **Save**-Methode leitet den `SaveFormat` automatisch aus der im Pfad angegebenen Dateinamenerweiterung ab. Das folgende Beispiel zeigt, wie ein Dokument in das TIFF-Format konvertiert wird:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Angeben zusätzlicher Optionen beim Rendern von TIFF

Oft müssen Sie zusätzliche Optionen angeben, die sich auf das Rendering-Ergebnis auswirken. Nutzen Sie dazu die [ImageSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/)-Klasse, die Eigenschaften enthält, die bestimmen, wie das Dokument auf dem Bild dargestellt wird. Sie können Folgendes angeben:

- Format speichern, um die Liste der verfügbaren Optionen zu ermitteln ([SaveFormat](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Auflösung ([HorizontalResolution](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Anzahl der Seiten ([PageIndex](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/))
- Farb- und Beleuchtungseinstellungen ([PaperColor](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Bildqualität ([JpegQuality](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Methode zur Binarisierung des Bildes ([TiffBinarizationMethod](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Pixelformat für generierte Bilder ([PixelFormat](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Verarbeitung von Windows-Metadateien durch Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Zusätzliche Optionen, die Sie in der **ImageSaveOptions**-Klasse sehen können

Das folgende Beispiel zeigt, wie Sie DOC mit konfigurierten Optionen in TIFF konvertieren:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Schwellenwert für die TIFF-Binarisierung

Ein TIFF-Bild kann im 1bpp-S/W-Format gespeichert werden, indem die [PixelFormat](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/pixelformat/)-Eigenschaft auf den Pixelformattyp Format1bppIndexed und die [TiffCompression](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/tiffcompression/)-Eigenschaft entweder auf Ccitt3 oder Ccitt4 gesetzt wird.

Für die Bildsegmentierung verwendet Aspose.Words die einfachste Methode – Thresholding. Diese Methode wandelt ein Graustufen-TIFF-Bild mithilfe eines Schwellenwerts in ein Binärbild um. Wenn ein Dokument in das TIFF-Dateiformat konvertiert werden muss, ist es daher möglich, den Schwellenwert für die TIFF-Binarisierung über die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/)-Eigenschaft abzurufen oder festzulegen. Der Standardwert für diese Eigenschaft ist auf 128 eingestellt. Je höher dieser Wert, desto dunkler ist das Bild.

Das folgende Beispiel zeigt, wie die TIFF-Binarisierung mit einem angegebenen Schwellenwert durchgeführt wird:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Unten können Sie Bilder vergleichen, bei denen die TIFF-Binarisierung bei verschiedenen Schwellenwerten durchgeführt wurde:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="Speichern eines Dokuments als mehrseitiges TIFF-Aspose-Words-Net" style="width:800px"/>
