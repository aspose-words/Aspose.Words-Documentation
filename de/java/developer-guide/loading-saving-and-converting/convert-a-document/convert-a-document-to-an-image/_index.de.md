---
title: Konvertieren Sie ein Dokument in ein Bild in Java
second_title: Aspose.Words für Java
articleTitle: Konvertieren eines Dokuments in ein Bild
linktitle: Konvertieren eines Dokuments in ein Bild
type: docs
description: "Konvertieren Sie ein Dokument in ein Bildformat (JPG, PNG usw.). Erstellen Sie eine Dokumentenvorschau oder erstellen Sie einen Dokumentenscan, um eine Rechnung mit Java zu senden."
weight: 35
url: /de/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Manchmal ist es erforderlich, ein Bild anstelle von Dokumenten in anderen Formaten wie DOCX oder PDF zu erhalten. Beispielsweise müssen Sie Ihrer Website oder Anwendung eine Vorschau einer Dokumentseite hinzufügen oder einen "Scan" eines Dokuments erstellen, um eine Rechnung zu senden. Dies ist der Fall, wenn Sie möglicherweise ein Dokument in einem beliebigen [unterstütztes Ladeformat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) in ein Bild in einem beliebigen [unterstütztes Speicherformat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) konvertieren müssen.

## In Bildformat konvertieren

Wie bei allen bereits beschriebenen Konvertierungsbeispielen müssen Sie ein neues Dokument erstellen oder ein vorhandenes Dokument in einem beliebigen unterstützten Format laden, die erforderlichen Änderungen vornehmen und es in einem beliebigen verfügbaren Bildformat speichern, z. B. JPEG, PNG oder BMP.

Das folgende Codebeispiel zeigt, wie DOCX in JPEG konvertiert wird:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Festlegen von Speicheroptionen beim Konvertieren in ein Bild

Aspose.Words bietet Ihnen die Klasse [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), mit der Sie besser steuern können, wie Dokumente in verschiedenen Bildformaten gespeichert werden. Einige Eigenschaften dieser Klasse erben oder überladen Eigenschaften von Basisklassen wie [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) oder [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), aber es gibt auch spezielle Optionen zum Speichern von Bildern.

Es ist möglich, die Seiten anzugeben, die in das Bildformat konvertiert werden sollen, indem die Eigenschaft [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) verwendet wird. Es kann beispielsweise angewendet werden, wenn Sie nur eine Vorschau für die erste oder für eine bestimmte Seite benötigen.

Es ist auch möglich, die Ausgabebildqualität und das Pixelformat mithilfe der folgenden Eigenschaften zu steuern – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), richten Sie außerdem die Bildfarbeinstellungen mithilfe der folgenden Eigenschaften ein – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Es gibt auch Eigenschaften, die für ein bestimmtes Format gelten, z. B. [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) oder [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Das folgende Codebeispiel zeigt, wie Sie eine Vorschau der ersten Dokumentseite mit einigen zusätzlichen Einstellungen erstellen:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
