---
title: Speichern eines Dokuments als mehrseitiges TIFF
second_title: Aspose.Words für Python via .NET
articleTitle: Speichern eines Dokuments als mehrseitiges TIFF
linktitle: Speichern eines Dokuments als mehrseitiges TIFF
description: "Konvertieren Sie ein Dokument mit Python in ein mehrseitiges TIFF. Um festzulegen, wie das Dokument auf dem Bild angezeigt wird, müssen Sie zusätzliche Optionen angeben: Auflösung, Anzahl der Seiten, Bildbinarisierung usw."
type: docs
weight: 30
url: /de/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Wenn Sie mit Dokumenten arbeiten, müssen Sie Ihr Dokument häufig in eine oder mehrere Rasterbilddateien konvertieren. Dies ist insbesondere dann relevant, wenn Sie Ihr Dokument in einem lesbaren und druckbaren, aber nicht bearbeitbaren Format präsentieren müssen. Sie können beispielsweise ein Rasterbild der ersten Seite Ihres Dokuments als Vorschau verwenden. In diesem Artikel wird am Beispiel des TIFF-Formats – einem der beliebtesten Bildformate – beschrieben, wie Sie ein Dokument in ein Rasterbild konvertieren.

## Konvertieren von DOC in mehrseitiges TIFF

In Aspose.Words kann die Konvertierung von DOC in TIFF mit einer Codezeile durchgeführt werden, indem einfach der "Speichern unter"-Pfad und die entsprechende Dateierweiterung an die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode übergeben werden. Die [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/)-Methode leitet das [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) automatisch aus der im Pfad angegebenen Dateinamenerweiterung ab. Das folgende Beispiel zeigt, wie ein Dokument in das TIFF-Format konvertiert wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Angeben zusätzlicher Optionen beim Rendern von TIFF

Oft müssen Sie zusätzliche Optionen angeben, die sich auf das Rendering-Ergebnis auswirken. Nutzen Sie dazu die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)-Klasse, die Eigenschaften enthält, die bestimmen, wie das Dokument auf dem Bild dargestellt wird. Sie können Folgendes angeben:

- Format speichern, um die Liste der verfügbaren Optionen zu ermitteln ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Auflösung ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Anzahl der Seiten ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Farb- und Beleuchtungseinstellungen ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Bildqualität ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Methode zur Binarisierung des Bildes ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Pixelformat für generierte Bilder ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Verarbeitung von Windows-Metadateien durch Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Zusätzliche Optionen, die Sie in der [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)-Klasse sehen können

Das folgende Beispiel zeigt, wie Sie DOC mit konfigurierten Optionen in TIFF konvertieren:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Schwellenwert für die TIFF-Binarisierung

Ein TIFF-Bild kann im 1bpp-S/W-Format gespeichert werden, indem die [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/)-Eigenschaft auf den [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed)-Pixelformattyp und die [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/)-Eigenschaft entweder auf [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) oder [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4) gesetzt wird.

Für die Bildsegmentierung verwendet Aspose.Words die einfachste Methode – Thresholding. Diese Methode wandelt ein Graustufen-TIFF-Bild mithilfe eines Schwellenwerts in ein Binärbild um. Wenn ein Dokument in das TIFF-Dateiformat konvertiert werden muss, ist es daher möglich, den Schwellenwert für die TIFF-Binarisierung über die [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/)-Eigenschaft abzurufen oder festzulegen. Der Standardwert für diese Eigenschaft ist auf 128 eingestellt. Je höher dieser Wert, desto dunkler ist das Bild.

Das folgende Beispiel zeigt, wie die TIFF-Binarisierung mit einem angegebenen Schwellenwert durchgeführt wird:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Unten können Sie Bilder vergleichen, bei denen die TIFF-Binarisierung bei verschiedenen Schwellenwerten durchgeführt wurde:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="Speichern eines Dokuments als mehrseitiges TIFF-Aspose-Words-Net" style="width:800px"/>
