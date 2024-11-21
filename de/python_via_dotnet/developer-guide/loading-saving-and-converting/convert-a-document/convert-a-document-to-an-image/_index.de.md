---
title: Konvertieren Sie ein Dokument in ein Bild
second_title: Aspose.Words für Python via .NET
articleTitle: Konvertieren Sie ein Dokument in ein Bild
linktitle: Konvertieren Sie ein Dokument in ein Bild
type: docs
description: "Konvertieren Sie ein Dokument in ein Bildformat (JPG, PNG usw.). Erstellen Sie eine Dokumentenvorschau oder erstellen Sie einen Dokumentenscan, um eine Rechnung mit Python zu versenden."
weight: 43
url: /de/python-net/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Manchmal ist es erforderlich, ein Bild anstelle von Dokumenten in anderen Formaten wie DOCX oder PDF zu erhalten. Beispielsweise müssen Sie Ihrer Website oder Anwendung eine Vorschau einer beliebigen Dokumentseite hinzufügen oder einen "Scan" eines Dokuments erstellen, um eine Rechnung zu senden. In diesem Fall müssen Sie möglicherweise ein Dokument in einem beliebigen [unterstütztes Ladeformat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)-Format in ein Bild, wiederum in einem beliebigen [unterstütztes Speicherformat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)-Format, konvertieren.

## Konvertieren Sie in das Bildformat {#convert-to-image-format}

Wie bei allen bereits beschriebenen Konvertierungsbeispielen müssen Sie ein neues Dokument erstellen oder ein vorhandenes in einem beliebigen unterstützten Format laden, die erforderlichen Änderungen vornehmen und es in einem beliebigen verfügbaren Bildformat speichern, beispielsweise JPEG, PNG oder BMP.

Das folgende Codebeispiel zeigt, wie man PDF in JPEG konvertiert:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Geben Sie beim Konvertieren in ein {#specify-save-options-when-converting-to-an-image}-Bild Speicheroptionen an

Aspose.Words stellt Ihnen die [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)-Klasse zur Verfügung, die mehr Kontrolle darüber gibt, wie Dokumente in verschiedenen Bildformaten gespeichert werden. Einige Eigenschaften dieser Klasse erben oder überladen Eigenschaften von Basisklassen wie [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) oder [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), es gibt jedoch auch spezifische Optionen zum Speichern von Bildern.

Mithilfe der [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/)-Eigenschaft können Sie angeben, welche Seiten in das Bildformat konvertiert werden sollen. Es kann beispielsweise angewendet werden, wenn Sie nur eine Vorschau für die erste oder eine bestimmte Seite benötigen.

Es ist auch möglich, die Ausgabebildqualität und das Pixelformat mithilfe der folgenden Eigenschaften zu steuern – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) sowie Bildfarbeinstellungen mithilfe der folgenden Eigenschaften einzurichten – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Es gibt auch Eigenschaften, die für ein bestimmtes Format gelten, beispielsweise [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) oder [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Das folgende Codebeispiel zeigt, wie Sie unter Anwendung einiger zusätzlicher Einstellungen eine Vorschau der ersten Dokumentseite erstellen:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
