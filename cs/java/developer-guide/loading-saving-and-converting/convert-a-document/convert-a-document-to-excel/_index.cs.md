---
title: Převést slovo na Excel v Java
second_title: Aspose.Words místo Java
articleTitle: Převést dokument na Excel
linktitle: Převést dokument na Excel
description: "Převést PDF na Excel, XML na Excel, DOCX na Excel Java. Uložit dokument v různých formátech do XLSX pomocí Java."
type: docs
weight: 15
url: /cs/java/convert-a-document-to-excel/
---

Převod dokumentů z jednoho formátu do druhého je vlajkový prvek Aspose.Words. Dokumenty můžete převést v jakémkoliv dostupném [formát zatížení](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) také do formátu XLSX.

## Převést dokument na XLSX

Převod dokumentu na XLSX je poměrně složitý proces. Pro uložení dokumentu do formátu XLSX pomocí <span notrans="<span notrans=" Aspose.Words"=""></span>, použijte [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) třída a nová `Xlsx` prvek [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) výčtu. Jak bylo uvedeno výše, dokument můžete uložit v jakémkoli formátu zatížení podporovaném Aspose.Words na XLSX.

Následující příklad kódu ukazuje, jak uložit PDF do XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Někdy je nutné upřesnit další možnosti, které mohou ovlivnit výsledek uložení dokumentu jako XLSX. Tyto možnosti lze určit použitím [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) třída obsahující vlastnosti, které určují, jak se zobrazí výstup XLSX.

{{% /alert %}}

## Najít a nahradit při ukládání XLSX

Také používá Aspose.Words, ve vašem dokumentu najdete konkrétní řetězec nebo regulární výraz a nahradíte jej tím, který potřebujete. Pak můžete také uložit výsledek do formátu XLSX.

Následující příklad kódu ukazuje, jak provést hledání a nahrazení operace a uložit výsledek XLSX:

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

## Zadejte úroveň kompresi při ukládání na XLSX

Můžete také určit úroveň komprese při ukládání pomocí [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) majetek.

Následující příklad kódu ukazuje, jak určit úroveň komprese při ukládání do formátu XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Viz také

- Sekce dokumentace [Chránit nebo zašifrovat dokument](/words/cs/java/protect-or-encrypt-a-document/) pro více informací o ochraně a šifrování dokumentu
- Ten článek. [Najít a nahradit](/words/cs/java/find-and-replace/) pro více informací o hledání a nahrazení obsahu, který chcete
