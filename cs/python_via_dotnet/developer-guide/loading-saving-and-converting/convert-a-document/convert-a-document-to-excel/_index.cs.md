---
title: Převést slovo na Excel v Python
second_title: Aspose.Words místo Python via .NET
articleTitle: Převést dokument na Excel
linktitle: Převést dokument na Excel
description: "Převést PDF na Excel, XML na Excel, DOCX na Excel Python. Uložit dokument v různých formátech do XLSX pomocí Python."
type: docs
weight: 15
url: /cs/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Převod dokumentů z jednoho formátu do druhého je vlajkovou lodí Aspose.Words. Dokumenty můžete převést v jakémkoliv dostupném [formát zatížení](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) i do formátu XLSX.

## Převést dokument na XLSX

Převést dokument na XLSX je poměrně složitý proces. Pro uložení dokumentu do formátu XLSX pomocí <span notrans="<span notrans=" Aspose.Words"=""></span>,? použijte [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) třída a nová `Xlsx` prvek [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) vyjmenování. Jak bylo uvedeno výše, dokument můžete uložit v jakémkoli formátu zatížení podporovaném Aspose.Words na XLSX.

Následující příklad kódu ukazuje, jak uložit PDF do XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Někdy je nutné upřesnit další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako XLSX. Tyto možnosti lze určit použitím [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup XLSX.

{{% /alert %}}

## Najít a nahradit při ukládání XLSX

Také používá Aspose.Words, ve vašem dokumentu najdete konkrétní řetězec nebo regulární výraz a nahradíte jej tím, který potřebujete. Pak můžete také uložit výsledek do formátu XLSX.

Následující příklad kódu ukazuje, jak provést hledání a nahrazení operace a uložit výsledek XLSX:

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

## Určete úroveň kompresi při úsporách na XLSX

Můžete také určit úroveň komprese při ukládání pomocí [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/) majetek.

Následující příklad kódu ukazuje, jak určit úroveň komprese při uložení do formátu XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Viz také

- Sekce dokumentace [Chránit nebo zašifrovat dokument](/words/cs/python-net/protect-or-encrypt-a-document/) pro více informací o ochraně a šifrování dokumentu
- Ten článek. [Najít a nahradit](/words/cs/python-net/find-and-replace/) pro více informací o hledání a nahrazení obsahu, který chcete
