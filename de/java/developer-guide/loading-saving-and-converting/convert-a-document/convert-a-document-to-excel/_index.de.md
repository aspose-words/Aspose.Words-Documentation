---
title: Konvertieren Sie Word in Excel in Java
second_title: Aspose.Words für Java
articleTitle: Konvertieren Sie ein Dokument in Excel
linktitle: Konvertieren Sie ein Dokument in Excel
description: "Konvertieren Sie PDF in Excel, XML in Excel, DOCX in Excel Java. Speichern Sie ein Dokument in verschiedenen Formaten mit Java in XLSX."
type: docs
weight: 15
url: /de/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Das Konvertieren von Dokumenten von einem Format in ein anderes ist das Flaggschiff von Aspose.Words. Sie können Dokumente in jedem verfügbaren [format laden](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) -Format auch in XLSX -Format konvertieren.

## Konvertieren eines Dokuments in XLSX

Das Konvertieren eines Dokuments in XLSX ist ein ziemlich komplizierter Vorgang. Um Ihr Dokument mit Aspose.Words im XLSX -Format zu speichern, verwenden Sie die [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/)-Klasse und das neue `Xlsx`-Element in der [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/)-Aufzählung. Wie oben erwähnt, können Sie das Dokument in jedem Ladeformat speichern, das von Aspose.Words bis XLSX unterstützt wird.

Das folgende Codebeispiel zeigt, wie PDF in XLSX gespeichert wird:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis des Speicherns eines Dokuments als XLSX auswirken können. Diese Optionen können durch die Verwendung der Klasse [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) angegeben werden, die Eigenschaften enthält, die bestimmen, wie die Ausgabe von XLSX angezeigt wird.

{{% /alert %}}

## Suchen und Ersetzen beim Speichern in XLSX

Mit Aspose.Words können Sie auch eine bestimmte Zeichenfolge oder einen regulären Ausdruck in Ihrem Dokument finden und durch die passende ersetzen, die Sie benötigen. Dann können Sie das Ergebnis auch im Format XLSX speichern.

Das folgende Codebeispiel zeigt, wie Sie den Such- und Ersetzungsvorgang ausführen und das Ergebnis in XLSX speichern:

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

## Komprimierungsstufe beim Speichern auf XLSX angeben

Sie können die Komprimierungsstufe auch beim Speichern mit der Eigenschaft [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) angeben.

Das folgende Codebeispiel zeigt, wie Sie die Komprimierungsstufe beim Speichern im Format XLSX angeben:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Siehe auch

- Dokumentationsbereich [Schützen oder Verschließen eines Dokuments](/words/java/protect-or-encrypt-a-document/) weitere Informationen zum Schützen und Verschlüsseln eines Dokuments
- Beitrag [Suchen und Ersetzen](/words/java/find-and-replace/) weitere Informationen zum Suchen und Ersetzen des gewünschten Inhalts
