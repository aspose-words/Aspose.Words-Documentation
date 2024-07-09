---
title: Ein Dokument als Multipage TIFF in Java
second_title: Aspose.Words für Java
articleTitle: Ein Dokument als Multipage TIFF speichern
linktitle: Ein Dokument als Multipage TIFF speichern
description: "Konvertieren Sie ein Dokument in ein Rasterbild, das am Beispiel des TIFF-Formats diskutiert wird. Um festzustellen, wie TIFF angezeigt wird, müssen Sie zusätzliche Optionen angeben: Auflösung, Anzahl der Seiten, Bildbindung, etc. Java."
type: docs
weight: 30
url: /de/java/saving-a-document-as-a-multipage-tiff/
---

Wenn Sie mit Dokumenten arbeiten, müssen Sie Ihr Dokument oft in eine Rasterbilddatei(en) konvertieren. Dies ist besonders relevant, wenn Sie Ihr Dokument in einem lesbaren und bedruckbaren, aber nicht bearbeitbaren Format präsentieren müssen. Zum Beispiel können Sie ein Rasterbild der ersten Seite Ihres Dokuments als Vorschau verwenden. Dieser Artikel beschreibt, wie man ein Dokument mit dem Beispiel des TIFF-Formats in ein Rasterbild umwandelt – eines der beliebtesten Bildformate.

## DOC in Multi-Page TIFF umrechnen

In Aspose.Words, Konvertierung von DOC zu TIFF kann mit einer Zeile des Codes durchgeführt werden, indem man einfach den Pfad "save to" und die entsprechende Dateierweiterung an die [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Methode. Die **Save** das Verfahren automatisch ableitet `SaveFormat` aus der im Pfad angegebenen Dateinamenerweiterung. Das folgende Beispiel zeigt, wie man ein Dokument in das TIFF-Format umwandelt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Zusätzliche Optionen beim Rendering TIFF angeben

Sie müssen oft zusätzliche Optionen angeben, die das Rendering-Ergebnis beeinflussen. Zu diesem Zweck verwenden Sie die [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) Klasse, die Eigenschaften enthält, die bestimmen, wie das Dokument auf dem Bild angezeigt wird. Sie können Folgendes angeben:

- Speichern Sie Format, um die Liste der verfügbaren Optionen ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Entschließung ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Anzahl der Seiten ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))
- Farb- und Beleuchtungseinstellungen ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Bildqualität ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Die Methode verwendet, um das Bild zu binarisieren ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Pixelformat für generierte Bilder ([PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat))
- Ja. Windows metafiles Handling durch Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
- Zusätzliche Optionen, die Sie in der **ImageSaveOptions** Klasse

Das folgende Beispiel zeigt, wie man DOC in TIFF mit konfigurierten Optionen umwandelt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Schwelle für TIFF Binarisierung

Ein TIFF-Bild kann in 1bpp b/w Format gespeichert werden, indem die [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) Eigenschaft zu Format1bppIndexed Pixel-Format-Typ, und die [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) Eigentum an Ccitt3 oder Ccitt4.

Für Bildsegmentierung, Aspose.Words verwendet die einfachste Methode - Schwellung. Dieses Verfahren wandelt ein graues TIFF-Bild unter Verwendung eines Schwellwertes in ein binäres Bild um. Wenn also ein Dokument in das TIFF-Dateiformat umgewandelt werden muss, ist es möglich, die Schwelle für die TIFF-Biarisierung über die [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) Eigentum. Der Standardwert für diese Eigenschaft wird auf 128 gesetzt, und je höher dieser Wert, desto dunkler das Bild.

Das folgende Beispiel zeigt, wie man TIFF-Biarisation mit einer vorgegebenen Schwelle durchführt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Im Folgenden können Sie Bilder vergleichen, auf denen TIFF-Biarisierung bei verschiedenen Schwellenwerten durchgeführt wurde:

<img src="/words/java/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
