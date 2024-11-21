---
title: Konvertieren Sie Word in Excel in C++
second_title: Aspose.Words für C++
articleTitle: Konvertieren Sie ein Dokument in Excel
linktitle: Konvertieren Sie ein Dokument in Excel
description: "Konvertieren Sie PDF in Excel, XML in Excel, DOCX in Excel C++. Speichern Sie ein Dokument in verschiedenen Formaten mit C++ in XLSX."
type: docs
weight: 15
url: /de/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Das Konvertieren von Dokumenten von einem Format in ein anderes ist das Flaggschiff von Aspose.Words. Sie können Dokumente in jedem verfügbaren [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) -Format auch in XLSX -Format konvertieren.

## Konvertieren eines Dokuments in XLSX

Das Konvertieren eines Dokuments in XLSX ist ein ziemlich komplizierter Vorgang. Um Ihr Dokument mit Aspose.Words im XLSX -Format zu speichern, verwenden Sie die **XlsxSaveOptions**-Klasse und das neue `Xlsx`-Element in der [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/)-Aufzählung. Wie oben erwähnt, können Sie das Dokument in jedem Ladeformat speichern, das von Aspose.Words bis XLSX unterstützt wird.

Das folgende Codebeispiel zeigt, wie PDF in XLSX gespeichert wird:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Suchen und Ersetzen beim Speichern in XLSX

Mit Aspose.Words können Sie auch eine bestimmte Zeichenfolge oder einen regulären Ausdruck in Ihrem Dokument finden und durch die passende ersetzen, die Sie benötigen. Dann können Sie das Ergebnis auch im Format XLSX speichern.

Das folgende Codebeispiel zeigt, wie Sie den Such- und Ersetzungsvorgang ausführen und das Ergebnis in XLSX speichern:

{{< highlight cpp >}}
auto doc = MakeObject<Document>();
auto builder = MakeObject<DocumentBuilder>(doc);

builder->Writeln(u"Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
auto options = MakeObject<FindReplaceOptions>();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options->set_MatchCase(true);

doc->get_Range()->Replace(u"Ruby", u"Jade", options);
doc->Save(ArtifactsDir + u"BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Komprimierungsstufe beim Speichern auf XLSX angeben

Sie können die Komprimierungsstufe auch beim Speichern mit der Eigenschaft **CompressionLevel** angeben.

Das folgende Codebeispiel zeigt, wie Sie die Komprimierungsstufe beim Speichern im Format XLSX angeben:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Siehe auch

- Dokumentationsbereich [Schützen oder Verschlüsseln eines Dokuments](/words/cpp/protect-or-encrypt-a-document/) weitere Informationen zum Schützen und Verschlüsseln eines Dokuments
- Beitrag [Suchen und Ersetzen](/words/cpp/find-and-replace/) weitere Informationen zum Suchen und Ersetzen des gewünschten Inhalts
