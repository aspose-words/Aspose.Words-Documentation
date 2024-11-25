---
title: Speichern eines Dokuments als mehrseitiges TIFF in Java
second_title: Aspose.Words für Java
articleTitle: Speichern eines Dokuments als mehrseitiges TIFF
linktitle: Speichern eines Dokuments als mehrseitiges TIFF
description: "Konvertieren Sie ein Dokument in ein Rasterbild, das am Beispiel des Formats TIFF erläutert wird. Um zu bestimmen, wie TIFF angezeigt wird, müssen Sie zusätzliche Optionen angeben: Auflösung, Anzahl der Seiten, Bildbinarisierung usw. mit Java."
type: docs
weight: 30
url: /de/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Wenn Sie mit Dokumenten arbeiten, müssen Sie Ihr Dokument häufig in eine oder mehrere Rasterbilddateien konvertieren. Dies ist besonders relevant, wenn Sie Ihr Dokument in einem lesbaren und druckbaren, aber nicht bearbeitbaren Format präsentieren müssen. Sie können beispielsweise ein Rasterbild der ersten Seite Ihres Dokuments als Vorschau verwenden. In diesem Artikel wird beschrieben, wie Sie ein Dokument am Beispiel des TIFF –Formats - eines der beliebtesten Bildformate - in ein Rasterbild konvertieren.

## DOC in mehrseitige TIFF konvertieren

In Aspose.Words kann die Konvertierung von DOC nach TIFF mit einer Codezeile durchgeführt werden, indem einfach der Pfad "Speichern unter" und die entsprechende Dateierweiterung an die Methode [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) übergeben werden. Die Methode **Save** leitet die `SaveFormat` automatisch von der im Pfad angegebenen Dateinamenerweiterung ab. Das folgende Beispiel zeigt, wie Sie ein Dokument in das Format TIFF konvertieren:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Angeben zusätzlicher Optionen beim Rendern von TIFF

Häufig müssen Sie zusätzliche Optionen angeben, die sich auf das Renderergebnis auswirken. Verwenden Sie dazu die Klasse [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), die Eigenschaften enthält, die bestimmen, wie das Dokument auf dem Bild angezeigt wird. Sie können Folgendes angeben:

- Format speichern, um die Liste der verfügbaren Optionen zu ermitteln ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Entschließung ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Anzahl der Seiten ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Farb- und Beleuchtungseinstellungen ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Bildqualität ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Die Methode, mit der das Bild binarisiert wurde ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Pixelformat für generierte Bilder ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Windows Handhabung von Metadateien durch Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Zusätzliche Optionen, die Sie in der Klasse **ImageSaveOptions** sehen können

Das folgende Beispiel zeigt, wie DOC mit konfigurierten Optionen in TIFF konvertiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Schwellenwert für TIFF-Binarisierung

Ein TIFF-Bild kann im 1-Bit-S/W-Format gespeichert werden, indem die Eigenschaft [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) auf den Formattyp Format1bppIndexed Pixel und die Eigenschaft [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) entweder auf Ccitt3 oder Ccitt4 festgelegt wird.

Für die Bildsegmentierung verwendet Aspose.Words die einfachste Methode - die Schwellenwertbildung. Diese Methode konvertiert ein Graustufenbild TIFF unter Verwendung eines Schwellenwerts in ein Binärbild. Wenn ein Dokument in das TIFF -Dateiformat konvertiert werden muss, ist es daher möglich, den Schwellenwert für die TIFF -Binarisierung über die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) -Eigenschaft abzurufen oder festzulegen. Der Standardwert für diese Eigenschaft ist auf 128 festgelegt, und je höher dieser Wert ist, desto dunkler ist das Bild.

Das folgende Beispiel zeigt, wie die TIFF-Binarisierung mit einem angegebenen Schwellenwert durchgeführt wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Unten können Sie Bilder vergleichen, auf denen die TIFF -Binarisierung bei verschiedenen Schwellenwerten durchgeführt wurde:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
