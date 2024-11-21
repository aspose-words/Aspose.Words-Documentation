---
title: Převést slovo na Excel v C#
second_title: Aspose.Words místo .NET
articleTitle: Převést dokument na Excel
linktitle: Převést dokument na Excel
description: "Převést PDF na Excel, XML na Excel, DOCX na Excel C#. Uložit dokument v různých formátech do XLSX pomocí C#."
type: docs
weight: 15
url: /cs/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Převod dokumentů z jednoho formátu do druhého je vlajkovou lodí Aspose.Words. Dokumenty můžete převést v jakémkoliv dostupném [formát zatížení](https://reference.aspose.com/words/net/aspose.words/loadformat/) i do formátu XLSX.

## Převést dokument na XLSX

Převést dokument na XLSX je poměrně složitý proces. Pro uložení dokumentu do formátu XLSX pomocí <span notrans="<span notrans=" Aspose.Words"=""></span>,? použijte [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) třída a nová `Xlsx` prvek [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) vyjmenování. Jak bylo uvedeno výše, dokument můžete uložit v jakémkoli formátu zatížení podporovaném Aspose.Words na XLSX.

Následující příklad kódu ukazuje, jak uložit PDF do XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Někdy je nutné upřesnit další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako XLSX. Tyto možnosti lze určit použitím [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup XLSX.

{{% /alert %}}

## Najít a nahradit při ukládání XLSX

Také používá Aspose.Words, ve vašem dokumentu najdete konkrétní řetězec nebo regulární výraz a nahradíte jej tím, který potřebujete. Pak můžete také uložit výsledek do formátu XLSX.

Následující příklad kódu ukazuje, jak provést hledání a nahrazení operace a uložit výsledek XLSX:

{{< highlight csharp >}}
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);

builder.Writeln("Ruby bought a ruby necklace.");

// We can use a "FindReplaceOptions" object to modify the find-and-replace process.
FindReplaceOptions options = new FindReplaceOptions();
// Set the "MatchCase" flag to "true" to apply case sensitivity while finding strings to replace.
// Set the "MatchCase" flag to "false" to ignore character case while searching for text to replace.
options.MatchCase = true;

doc.Range.Replace("Ruby", "Jade", options);
doc.Save(ArtifactsDir + "BaseConversions.FindReplaceXlsx.xlsx");
{{< /highlight >}}

## Určete úroveň kompresi při úsporách na XLSX

Můžete také určit úroveň komprese při ukládání pomocí [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) majetek.

Následující příklad kódu ukazuje, jak určit úroveň komprese při uložení do formátu XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Viz také

- Sekce dokumentace [Chránit nebo zašifrovat dokument](/words/cs/net/protect-or-encrypt-a-document/) pro více informací o ochraně a šifrování dokumentu
- Ten článek. [Najít a nahradit](/words/cs/net/find-and-replace/) pro více informací o hledání a nahrazení obsahu, který chcete
