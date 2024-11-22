---
title: Word omzetten naar Excel in C#
second_title: Aspose.Words voor .NET
articleTitle: Een document omzetten naar Excel
linktitle: Een document omzetten naar Excel
description: "PDF omzetten naar Excel, XML naar Excel, DOCX naar Excel C#. Een document opslaan in verschillende formaten naar XLSX met behulp van C#."
type: docs
weight: 15
url: /nl/net/convert-a-document-to-excel/
timestamp: 2024-07-09-19-00-42
---

Het omzetten van documenten van het ene formaat naar het andere is het vlaggenschip kenmerk van Aspose.Words. U kunt documenten converteren in alle beschikbare [laadformaat](https://reference.aspose.com/words/net/aspose.words/loadformat/) ook naar XLSX formaat.

## Een document omzetten naar XLSX

Een document omzetten naar XLSX is een vrij ingewikkeld proces. Om uw document op te slaan in XLSX formaat met behulp van Aspose.Words gebruik [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) klasse en de nieuwe `Xlsx` element in de [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/) Lijst. Zoals hierboven vermeld, kunt u het document opslaan in elk laadformaat ondersteund door Aspose.Words naar XLSX.

Het volgende voorbeeld van code laat zien hoe u PDF kunt opslaan naar XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

Soms is het noodzakelijk om extra opties op te geven, die het resultaat kunnen beïnvloeden van het opslaan van een document als XLSX. Deze opties kunnen worden gespecificeerd door het gebruik van de [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) klasse, met eigenschappen die bepalen hoe de XLSX-uitvoer wordt weergegeven.

{{% /alert %}}

## Zoeken en vervangen bij opslaan naar XLSX

Ook gebruiken Aspose.Words, U kunt een specifieke tekenreeks of reguliere expressie in uw document vinden en vervangen door de bijpassende tekst die u nodig hebt. Dan kunt u het resultaat ook opslaan in XLSX formaat.

Het volgende voorbeeld van code laat zien hoe u de zoek- en vervangoperatie uitvoert en het resultaat opslaat in XLSX:

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

## Compressieniveau opgeven bij opslaan naar XLSX

U kunt ook het compressieniveau specificeren bij het opslaan van de [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/) eigendom.

Het volgende voorbeeld van code laat zien hoe u het compressieniveau kunt specificeren bij het opslaan naar XLSX formaat:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Zie ook

- Documentatie [Een document beschermen of versleutelen](/words/nl/net/protect-or-encrypt-a-document/) voor meer informatie over het beschermen en versleutelen van een document
- Het artikel [Zoeken en vervangen](/words/nl/net/find-and-replace/) voor meer informatie over het vinden en vervangen van de gewenste inhoud
