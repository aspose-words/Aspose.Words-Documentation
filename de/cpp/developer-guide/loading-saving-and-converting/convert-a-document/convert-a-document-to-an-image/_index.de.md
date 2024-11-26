---
title: Konvertieren Sie ein Dokument in ein Bild in C++
second_title: Aspose.Words für C++
articleTitle: Konvertieren eines Dokuments in ein Bild
linktitle: Konvertieren eines Dokuments in ein Bild
type: docs
description: "Konvertieren Sie ein Dokument in ein Bildformat (JPG, PNG usw.). Erstellen Sie eine Dokumentenvorschau oder erstellen Sie einen Dokumentenscan, um eine Rechnung zu senden."
weight: 43
url: /de/cpp/convert-a-document-to-an-image/
timestamp: 2024-01-30-16-22-34
---

Manchmal ist es erforderlich, ein Bild anstelle von Dokumenten in anderen Formaten wie DOCX oder PDF zu erhalten. Beispielsweise müssen Sie Ihrer Website oder Anwendung eine Vorschau einer Dokumentseite hinzufügen oder einen "Scan" eines Dokuments erstellen, um eine Rechnung zu senden. Dies ist der Fall, wenn Sie möglicherweise ein Dokument in einem beliebigen [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) in ein Bild in einem beliebigen [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) konvertieren müssen.

## In Bildformat konvertieren

Wie bei allen bereits beschriebenen Konvertierungsbeispielen müssen Sie ein neues Dokument erstellen oder ein vorhandenes Dokument in einem beliebigen unterstützten Format laden, die erforderlichen Änderungen vornehmen und es in einem beliebigen verfügbaren Bildformat speichern, z. B. JPEG, PNG oder BMP.

Das folgende Codebeispiel zeigt, wie DOCX in JPEG konvertiert wird:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Festlegen von Speicheroptionen beim Konvertieren in ein Bild

Aspose.Words bietet Ihnen die Klasse [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), mit der Sie besser steuern können, wie Dokumente in verschiedenen Bildformaten gespeichert werden. Einige Eigenschaften dieser Klasse erben oder überladen Eigenschaften von Basisklassen wie [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) oder [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), aber es gibt auch spezielle Optionen zum Speichern von Bildern.

Es ist möglich, die Seiten anzugeben, die in das Bildformat konvertiert werden sollen, indem die Eigenschaft [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/) verwendet wird. Es kann beispielsweise angewendet werden, wenn Sie nur eine Vorschau für die erste oder für eine bestimmte Seite benötigen.

Es ist auch möglich, die Ausgabebildqualität und das Pixelformat mithilfe der folgenden Eigenschaften zu steuern – [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), richten Sie außerdem die Bildfarbeinstellungen mithilfe der folgenden Eigenschaften ein – [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Es gibt auch Eigenschaften, die für ein bestimmtes Format gelten, z. B. [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) oder [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Das folgende Codebeispiel zeigt, wie Sie eine Vorschau der ersten Dokumentseite mit einigen zusätzlichen Einstellungen erstellen:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
