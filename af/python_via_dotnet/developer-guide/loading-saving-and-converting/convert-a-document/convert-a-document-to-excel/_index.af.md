---
title: Skakel Word Na Excel in Python
second_title: Aspose.Words vir Python via .NET
articleTitle: Skakel'n Dokument Om Na Excel
linktitle: Skakel'n Dokument Om Na Excel
description: "Omskep PDF Na Excel, XML Na Excel, DOCX na Excel Python. Stoor'n dokument in verskillende formate na XLSX met Python."
type: docs
weight: 15
url: /af/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Die omskakeling van dokumente van een formaat na'n ander is die vlagskip kenmerk van Aspose.Words. U kan dokumente in enige beskikbare [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) ook omskakel na XLSX formaat.

## Skakel'n Dokument om na XLSX

Die omskakeling van'n dokument na XLSX is'n taamlik ingewikkelde proses. Om jou dokument te stoor na XLSX formaat met behulp van Aspose.Words, gebruik die [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) klas en die nuwe `Xlsx` element in die [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) opsomming. Soos hierbo genoem, kan u die dokument stoor in enige laai formaat ondersteun deur Aspose.Words tot XLSX.

Die volgende kode voorbeeld toon hoe om PDF te stoor na XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Soms is dit nodig om addisionele opsies te spesifiseer, wat die resultaat van die stoor van'n dokument as'n XLSX kan beïnvloed. Hierdie opsies kan gespesifiseer word deur die gebruik van die [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die XLSX uitset vertoon sal word.

{{% /alert %}}

## Vind en Vervang Wanneer Stoor na XLSX

Ook met behulp van Aspose.Words, kan jy'n spesifieke string of gereelde uitdrukking in jou dokument te vind en vervang dit met die ooreenstemmende een wat jy nodig het. Dan kan jy ook die resultaat stoor na XLSX formaat.

Die volgende kode voorbeeld toon hoe om te voer vind en vervang operasie en stoor resultaat te XLSX:

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

## Spesifiseer Kompressievlak Wanneer Gestoor Word na XLSX

U kan ook die kompressievlak spesifiseer wanneer u die [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) - eienskap gebruik.

Die volgende kode voorbeeld toon hoe om die kompressie vlak spesifiseer wanneer die stoor na XLSX formaat:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Sien Ook

- Dokumentasie afdeling [Beskerm of Enkripteer'n Dokument](/words/python-net/protect-or-encrypt-a-document/) vir meer inligting oor die beskerming en enkripsie van'n dokument
- Die artikel [Vind en Vervang](/words/python-net/find-and-replace/) vir meer inligting oor die vind en vervanging van die inhoud wat u wil hê
