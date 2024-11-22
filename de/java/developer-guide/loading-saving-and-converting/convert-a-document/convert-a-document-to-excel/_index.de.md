---
title: Word in Excel umrechnen Java
second_title: Aspose.Words für Java
articleTitle: Dokument nach Excel umrechnen
linktitle: Dokument nach Excel umrechnen
description: "PDF in Excel, XML in Excel, DOCX in Excel umrechnen Java. Speichern Sie ein Dokument in verschiedenen Formaten zu XLSX mit Java."
type: docs
weight: 15
url: /de/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Konvertieren von Dokumenten von einem Format in ein anderes ist die Flaggschiff-Funktion von Aspose.Words. Sie können Dokumente in jedem verfügbaren konvertieren [Lastformat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) auch im XLSX-Format.

## Dokument nach XLSX umrechnen

Die Umwandlung eines Dokuments in XLSX ist ein ziemlich komplizierter Prozess. Um Ihr Dokument im XLSX Format zu speichern Aspose.Words verwenden, [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) Klasse und die neue `Xlsx` Element in der [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Aufzählung. Wie oben erwähnt, können Sie das Dokument in jedem von Aspose.Words zu XLSX.

Das folgende Codebeispiel zeigt, wie man PDF zu XLSX speichert:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die das Ergebnis des Speicherns eines Dokuments als XLSX beeinflussen können. Diese Optionen können durch die Verwendung der [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) Klasse, mit Eigenschaften, die bestimmen, wie der XLSX-Ausgang angezeigt wird.

{{% /alert %}}

## Suchen und Ersetzen, wenn Sie XLSX sparen

Auch mit Aspose.Words, Sie können einen bestimmten String oder einen regelmäßigen Ausdruck in Ihrem Dokument finden und ihn durch den passenden ersetzen, den Sie benötigen. Dann können Sie das Ergebnis auch im XLSX-Format speichern.

Das folgende Codebeispiel zeigt, wie Sie den Betrieb finden und ersetzen und das Ergebnis auf XLSX speichern:

{{< highlight java >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.setMatchCase(true);

doc.getRange().replace("Ruby", "Jade", options);
doc.save(getArtifactsDir() + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Geben Sie die Kompressionsstufe an, wenn Sie XLSX speichern

Sie können auch die Kompressionsstufe beim Speichern mit der [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) Eigentum.

Das folgende Codebeispiel zeigt, wie man die Kompressionsstufe beim Speichern in XLSX-Format angibt:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Siehe auch

- Dokumentation [Schützen oder Verschlüsseln eines Dokuments](/words/de/java/protect-or-encrypt-a-document/) für weitere Informationen zum Schutz und Verschlüsselung eines Dokuments
- Der Artikel [Finden und entdecken](/words/de/java/find-and-replace/) mehr Informationen zum Finden und Ersetzen der gewünschten Inhalte
