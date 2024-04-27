---
title: Dokument in PDF konvertieren Java
second_title: Aspose.Words für Java
articleTitle: Dokument nach PDF umrechnen
linktitle: Dokument nach PDF umrechnen
description: "Konvertieren Sie ein Dokument in Word oder ein anderes unterstütztes Format in PDF, das das ursprüngliche Erscheinungsbild eines Dokuments während des Renderns auf verschiedenen Plattformen bewahrt, indem Sie Java."
type: docs
weight: 10
url: /de/java/convert-a-document-to-pdf/
---

Die Fähigkeit, Dokumente einfach und zuverlässig von einem Format in ein anderes zu konvertieren, ist ein Schlüsselmerkmal von Aspose.Words. Eines der beliebtesten Formate für die Konvertierung ist PDF – ein Festlayout-Format, das das ursprüngliche Erscheinungsbild eines Dokuments während seiner Wiedergabe auf verschiedenen Plattformen bewahrt. Der Begriff "Rendering" wird in Aspose.Words um den Prozess der Umwandlung eines Dokuments in ein Dateiformat zu beschreiben, das paginiert ist oder das Konzept von Seiten hat.

## Word-Dokument in PDF konvertieren {#convert-a-word-document-to-pdf}

Konvertierung von Word zu PDF ist ein ziemlich komplexer Prozess, der mehrere Berechnungsstufen erfordert. Aspose.Words Layout-Engine mihmt die Art der Microsoft Word’s Seite Layout-Engine funktioniert, so dass PDF-Ausgabe-Dokumente so nah wie möglich aussehen, was Sie in Microsoft Word.

Mit Aspose.Words Sie können ein Dokument aus dem DOC- oder DOCX-Format ohne Verwendung in PDF programmtechnisch konvertieren Microsoft Büro. Dieser Artikel erklärt, wie man diese Umwandlung durchführt.

{{% alert color="primary" %}}

Beachten Sie, dass die Anzahl der Seiten in einem Dokument die Konvertierungszeit beeinflusst.

{{% /alert %}}

### DOCX oder DOC nach PDF umrechnen {#converting-doc-or-docx-to-pdf}

Aus dem DOC- oder DOCX-Dokumentformat in das PDF-Format umrechnen Aspose.Words ist sehr einfach und kann mit nur zwei Zeilen von Code, die:

ANHANG Laden Sie Ihr Dokument in ein [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Objekt mit einem seiner Konstrukteuren durch Angabe des Dokumentnamens mit seiner Formaterweiterung.
ANHANG Eines der [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) Methoden auf der **Document** Objekt und geben Sie das gewünschte Ausgabeformat als PDF an, indem Sie einen Dateinamen mit der Erweiterung ".PDF" eingeben.

Das folgende Codebeispiel zeigt, wie man ein Dokument von DOCX in PDF über die `Save` Methode:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

Sie können die Vorlagendatei dieses Beispiels herunterladen [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ConvertImageToPdf/Template.doc).

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die das Ergebnis des Speicherns eines Dokuments als PDF beeinflussen können. Diese Optionen können durch die Verwendung der [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) Klasse, mit Eigenschaften, die bestimmen, wie die PDF-Ausgabe angezeigt wird.

Beachten Sie, dass Sie mit der gleichen Technik jedes Flow-layout-Format Dokument in PDF-Format konvertieren können.

{{% /alert %}}

### Konvertiert in verschiedene PDF Normen {#converting-to-various-pdf-standards}

Aspose.Words bietet [PdfCompliace](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/)Aufzählung zur Unterstützung der Konvertierung von DOC oder DOCX in verschiedene PDF-Format-Standards (z. B. PDF 1.7, PDF 1.5 usw.).

Das folgende Codebeispiel zeigt, wie man ein Dokument in PDF 1.7 umwandelt. [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) konform zu PDF17:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "conversion-to-pdf17.java" >}}

## Bilder in PDF konvertieren

Konvertieren in PDF ist nicht durch Microsoft Word Dokumentformate. Jedes Format unterstützt von Aspose.Words, einschließlich programmatisch erstellt, kann auch in PDF umgewandelt werden. Beispielsweise können wir einseitige Bilder wie JPEG, PNG, BMP, EMF oder WMF sowie mehrseitige Bilder, wie TIFF und GIF, in PDF konvertieren.

Das folgende Codebeispiel zeigt, wie man JPEG- und TIFF-Bilder in PDF umwandelt:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "image-to-pdf.java" >}}

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "convert-image-to-pdf.java" >}}

Um diese Code-Arbeit zu machen, müssen Sie Referenzen hinzufügen Aspose.Words, Java.awt.image und javax. imageio class Pakete zu Ihrem Projekt.

## PDF reduzieren Ausgangsgröße

Wenn Sie PDF speichern, können Sie festlegen, ob Sie die Ausgabe optimieren möchten. Um dies zu tun, müssen Sie die [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) Flagge true, und dann redundante geschachtelte Leinwand und leere Leinwand werden entfernt, Nachbar glyphs mit der gleichen Formatierung wird präpariert.

Das folgende Codebeispiel zeigt, wie die Ausgabe optimiert werden kann:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "optimize-output.java" >}}

{{% alert color="primary" %}}

Verwendung von **OptimizeOutput** Eigenschaft kann die Genauigkeit der Inhaltsanzeige beeinflussen.

{{% /alert %}}

## Siehe auch

- Der Artikel [Rendering](/words/de/java/rendering/) für weitere Informationen zu den Fest- und Ablaufformaten
- Der Artikel [Umrechnen in Fix-Seite Format](/words/java/converting-to-fixed-page-format/#convertingtofixed-pageformat-whatisapagelayout) Weitere Informationen zum Seitenlayout
- Der Artikel [Geben Sie Rendering-Optionen bei der Vorlage in PDF an](/words/de/java/specify-rendering-options-when-converting-to-pdf/) für weitere Informationen über die Nutzung der `PdfSaveOptions` Klasse
