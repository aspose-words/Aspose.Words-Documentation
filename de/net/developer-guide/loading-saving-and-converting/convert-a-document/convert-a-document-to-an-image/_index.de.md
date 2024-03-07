---
title: Konvertieren Sie ein Dokument in ein Bild in C#
second_title: Aspose.Words für .NET
articleTitle: Konvertieren Sie ein Dokument in ein Bild
linktitle: Konvertieren Sie ein Dokument in ein Bild
type: docs
description: "Konvertieren Sie ein Dokument in ein Bildformat (JPG, PNG usw.). Erstellen Sie eine Dokumentenvorschau oder erstellen Sie einen Dokumentenscan, um eine Rechnung mit C# zu versenden."
weight: 43
url: /de/net/convert-a-document-to-an-image/
---

Manchmal ist es erforderlich, ein Bild anstelle von Dokumenten in anderen Formaten wie DOCX oder PDF zu erhalten. Beispielsweise müssen Sie Ihrer Website oder Anwendung eine Vorschau einer beliebigen Dokumentseite hinzufügen oder einen "Scan" eines Dokuments erstellen, um eine Rechnung zu senden. In diesem Fall müssen Sie möglicherweise ein Dokument in einem beliebigen [unterstütztes Ladeformat](https://reference.aspose.com/words/de/net/aspose.words/loadformat/)-Format in ein Bild, wiederum in einem beliebigen [unterstütztes Speicherformat](https://reference.aspose.com/words/de/net/aspose.words/saveformat/)-Format, konvertieren.

## In Image {#convert-to-image-format} konvertieren

Wie bei allen bereits beschriebenen Konvertierungsbeispielen müssen Sie ein neues Dokument erstellen oder ein vorhandenes in einem beliebigen unterstützten Format laden, die erforderlichen Änderungen vornehmen und es in einem beliebigen verfügbaren Bildformat speichern, beispielsweise JPEG, PNG oder BMP.

Das folgende Codebeispiel zeigt, wie man PDF in JPEG konvertiert:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Geben Sie beim Konvertieren in Bild-{#specify-save-options-when-converting-to-an-image} Speicheroptionen an

Aspose.Words stellt Ihnen die [ImageSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/)-Klasse zur Verfügung, die mehr Kontrolle darüber gibt, wie Dokumente in verschiedenen Bildformaten gespeichert werden. Einige Eigenschaften dieser Klasse erben oder überladen Eigenschaften von Basisklassen wie [FixedPageSaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/fixedpagesaveoptions/) oder [SaveOptions](https://reference.aspose.com/words/de/net/aspose.words.saving/saveoptions/), es gibt jedoch auch spezifische Optionen zum Speichern von Bildern.

Mithilfe der [PageSet](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/pageset/)-Eigenschaft können Sie angeben, welche Seiten in das Bildformat konvertiert werden sollen. Es kann beispielsweise angewendet werden, wenn Sie nur eine Vorschau für die erste oder eine bestimmte Seite benötigen.

Es ist auch möglich, die Ausgabebildqualität und das Pixelformat mithilfe der folgenden Eigenschaften zu steuern – [HorizontalResolution](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/pixelformat/) sowie Bildfarbeinstellungen mithilfe der folgenden Eigenschaften einzurichten – [ImageBrightness](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/papercolor/).

Es gibt auch Eigenschaften, die für ein bestimmtes Format gelten, beispielsweise [JpegQuality](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/jpegquality/) oder [TiffCompression](https://reference.aspose.com/words/de/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Das folgende Codebeispiel zeigt, wie Sie unter Anwendung einiger zusätzlicher Einstellungen eine Vorschau der ersten Dokumentseite erstellen:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
