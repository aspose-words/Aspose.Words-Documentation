---
title: Konvertieren Sie Word in Python in Excel
second_title: Aspose.Words für Python via .NET
articleTitle: Konvertieren Sie ein Dokument in Excel
linktitle: Konvertieren Sie ein Dokument in Excel
description: "Konvertieren Sie PDF in Excel, XML in Excel, DOCX in Excel Python. Speichern Sie ein Dokument in verschiedenen Formaten mit Python in XLSX."
type: docs
weight: 15
url: /de/python-net/convert-a-document-to-excel/
---

Das Konvertieren von Dokumenten von einem Format in ein anderes ist die Hauptfunktion von Aspose.Words. Sie können Dokumente in jedem verfügbaren [Format laden](https://reference.aspose.com/words/python-net/aspose.words/loadformat/)-Format auch in das XLSX-Format konvertieren.

## Konvertieren Sie ein Dokument in XLSX

Das Konvertieren eines Dokuments in XLSX ist ein ziemlich komplizierter Prozess. Um Ihr Dokument mit Aspose.Words im XLSX-Format zu speichern, verwenden Sie die [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/)-Klasse und das neue `Xlsx`-Element in der [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/)-Enumeration. Wie oben erwähnt, können Sie das Dokument in jedem von Aspose.Words unterstützten Ladeformat in XLSX speichern.

Das folgende Codebeispiel zeigt, wie PDF im XLSX-Format gespeichert wird:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Manchmal ist es notwendig, zusätzliche Optionen anzugeben, die sich auf das Ergebnis der Speicherung eines Dokuments als XLSX auswirken können. Diese Optionen können mithilfe der [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/)-Klasse angegeben werden, die Eigenschaften enthält, die bestimmen, wie die XLSX-Ausgabe angezeigt wird.

{{% /alert %}}

## Suchen und Ersetzen beim Speichern in XLSX

Mit Aspose.Words können Sie auch eine bestimmte Zeichenfolge oder einen regulären Ausdruck in Ihrem Dokument finden und durch die passende Zeichenfolge oder einen regulären Ausdruck ersetzen, die Sie benötigen. Anschließend können Sie das Ergebnis auch im XLSX-Format speichern.

Das folgende Codebeispiel zeigt, wie Sie den Such- und Ersetzungsvorgang durchführen und das Ergebnis in XLSX speichern:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Geben Sie beim Speichern in XLSX die Komprimierungsstufe an

Sie können die Komprimierungsstufe auch beim Speichern mithilfe der [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/)-Eigenschaft festlegen.

Das folgende Codebeispiel zeigt, wie die Komprimierungsstufe beim Speichern im XLSX-Format angegeben wird:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Siehe auch

- Dokumentationsabschnitt [Schützen oder verschlüsseln Sie ein Dokument](/words/de/python-net/protect-or-encrypt-a-document/) für weitere Informationen zum Schutz und zur Verschlüsselung eines Dokuments
– Der Artikel [Suchen und Ersetzen](/words/de/python-net/find-and-replace/) enthält weitere Informationen zum Suchen und Ersetzen der gewünschten Inhalte
