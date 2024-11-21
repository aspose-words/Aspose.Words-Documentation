---
title: Word omzetten naar Excel in Python
second_title: Aspose.Words voor Python via .NET
articleTitle: Een document omzetten naar Excel
linktitle: Een document omzetten naar Excel
description: "PDF omzetten naar Excel, XML naar Excel, DOCX naar Excel Python. Een document opslaan in verschillende formaten naar XLSX met behulp van Python."
type: docs
weight: 15
url: /nl/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Het omzetten van documenten van het ene formaat naar het andere is het vlaggenschip kenmerk van Aspose.Words. U kunt documenten converteren in alle beschikbare [laadformaat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) ook naar XLSX formaat.

## Een document omzetten naar XLSX

Een document omzetten naar XLSX is een vrij ingewikkeld proces. Om uw document op te slaan in XLSX formaat met behulp van <span notrans="<span notrans=" Aspose.Words"=""></span>,"> gebruik [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) klasse en de nieuwe `Xlsx` element in de [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Lijst. Zoals hierboven vermeld, kunt u het document opslaan in elk laadformaat ondersteund door Aspose.Words naar XLSX.

Het volgende voorbeeld van code laat zien hoe u PDF kunt opslaan naar XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Soms is het noodzakelijk om extra opties op te geven, die het resultaat kunnen beïnvloeden van het opslaan van een document als XLSX. Deze opties kunnen worden gespecificeerd door het gebruik van de [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) klasse, met eigenschappen die bepalen hoe de XLSX-uitvoer wordt weergegeven.

{{% /alert %}}

## Zoeken en vervangen bij opslaan naar XLSX

Ook gebruiken Aspose.Words, U kunt een specifieke tekenreeks of reguliere expressie in uw document vinden en vervangen door de bijpassende tekst die u nodig hebt. Dan kunt u het resultaat ook opslaan in XLSX formaat.

Het volgende voorbeeld van code laat zien hoe u de zoek- en vervangoperatie uitvoert en het resultaat opslaat in XLSX:

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

## Compressieniveau opgeven bij opslaan naar XLSX

U kunt ook het compressieniveau specificeren bij het opslaan van de [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) eigendom.

Het volgende voorbeeld van code laat zien hoe u het compressieniveau kunt specificeren bij het opslaan naar XLSX formaat:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Zie ook

- Documentatie [Een document beschermen of versleutelen](/words/nl/python-net/protect-or-encrypt-a-document/) voor meer informatie over het beschermen en versleutelen van een document
- Het artikel [Zoeken en vervangen](/words/nl/python-net/find-and-replace/) voor meer informatie over het vinden en vervangen van de gewenste inhoud
