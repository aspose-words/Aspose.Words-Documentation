---
title: Dokument in ein Bild umwandeln Java
second_title: Aspose.Words für Java
articleTitle: Dokument in ein Bild umwandeln
linktitle: Dokument in ein Bild umwandeln
type: docs
description: "Konvertieren Sie ein Dokument in das Bildformat (JPG, PNG, etc.). Erstellen Sie eine Dokumentvorschau oder erstellen Sie einen Dokumentenscan, um eine Rechnung zu senden. Java."
weight: 35
url: /de/java/convert-a-document-to-an-image/
timestamp: 2024-01-27-14-07-04
---

Manchmal ist es erforderlich, ein Bild anstelle von Dokumenten in anderen Formaten wie DOCX oder PDF zu erhalten. Zum Beispiel müssen Sie eine Vorschau von jeder Dokumentseite zu Ihrer Website oder Anwendung hinzufügen oder einen "Scan" eines Dokuments erstellen, um eine Rechnung zu senden. Dies ist, wenn Sie ein Dokument in jedem konvertieren müssen [In den Warenkorb](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) zu einem Bild, wieder in jedem [Software und Software](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Bildformat umrechnen

Wie bei allen bereits beschriebenen Conversion-Beispielen müssen Sie ein neues Dokument erstellen oder ein bestehendes in einem beliebigen unterstützten Format laden, die notwendigen Änderungen vornehmen und in jedem verfügbaren Bildformat, beispielsweise JPEG, PNG oder BMP speichern.

Das folgende Codebeispiel zeigt, wie man DOCX in JPEG umwandelt:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Speicheroptionen beim Konvertieren in ein Bild angeben

Aspose.Words bietet Ihnen die [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) Klasse, die mehr Kontrolle darüber gibt, wie Dokumente in verschiedenen Bildformaten gespeichert werden. Einige Eigenschaften dieser Klasse erben oder Überlasteigenschaften von Basisklassen wie [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) oder [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), aber es gibt auch Optionen, die spezifisch sind, um Bilder zu speichern.

Es ist möglich, die zu konvertierenden Seiten mit dem Bildformat anzugeben [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet) Eigentum. Zum Beispiel kann es angewendet werden, wenn Sie nur eine Vorschau für die erste oder für eine bestimmte Seite benötigen.

Es ist auch möglich, die Ausgabebildqualität und das Pixelformat anhand der folgenden Eigenschaften zu steuern – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), sowie die Einstellung von Bildfarbeneinstellungen unter Verwendung der folgenden Eigenschaften – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Es gibt auch Eigenschaften, die für ein bestimmtes Format gelten, beispielsweise [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) oder [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Das folgende Codebeispiel zeigt, wie eine Vorschau der ersten Dokumentseite erstellt werden kann, wobei einige zusätzliche Einstellungen angewendet werden:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
