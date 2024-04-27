---
title: Word omzetten naar Excel in Java
second_title: Aspose.Words voor Java
articleTitle: Een document omzetten naar Excel
linktitle: Een document omzetten naar Excel
description: "PDF omzetten naar Excel, XML naar Excel, DOCX naar Excel Java. Een document opslaan in verschillende formaten naar XLSX met behulp van Java."
type: docs
weight: 15
url: /nl/java/convert-a-document-to-excel/
---

Het omzetten van documenten van het ene formaat naar het andere is het vlaggenschip kenmerk van Aspose.Words. U kunt documenten converteren in alle beschikbare [laadformaat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ook naar XLSX formaat.

## Een document omzetten naar XLSX

Een document omzetten naar XLSX is een vrij ingewikkeld proces. Om uw document op te slaan in XLSX formaat met behulp van <span notrans="<span notrans=" Aspose.Words"=""></span>,"> gebruik [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) klasse en de nieuwe `Xlsx` element in de [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Samenvatting. Zoals hierboven vermeld, kunt u het document opslaan in eender welk laadformaat ondersteund door Aspose.Words naar XLSX.

Het volgende voorbeeld van code laat zien hoe u PDF kunt opslaan naar XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Soms is het nodig om extra opties op te geven, die het resultaat kunnen beïnvloeden van het opslaan van een document als XLSX. Deze opties kunnen worden gespecificeerd door het gebruik van de [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) klasse, met eigenschappen die bepalen hoe de XLSX-uitvoer wordt weergegeven.

{{% /alert %}}

## Zoeken en vervangen bij opslaan naar XLSX

Ook gebruiken Aspose.Words, U kunt een specifieke tekenreeks of reguliere expressie vinden in uw document en deze vervangen door de bijpassende tekst die u nodig hebt. Dan kunt u het resultaat ook opslaan in XLSX formaat.

Het volgende voorbeeld van code laat zien hoe u de zoek- en vervangoperatie uitvoert en het resultaat opslaat in XLSX:

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

## Compressieniveau opgeven bij opslaan naar XLSX

U kunt ook het compressieniveau bij het opslaan van de [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) eigendom.

Het volgende voorbeeld van code laat zien hoe u het compressieniveau kunt specificeren bij het opslaan naar XLSX formaat:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Zie ook

- Documentatie [Een document beschermt of verkoopt](/words/nl/java/protect-or-encrypt-a-document/) voor meer informatie over het beschermen en versleutelen van een document
- Het artikel [Zoeken en ontvangen](/words/nl/java/find-and-replace/) voor meer informatie over het vinden en vervangen van de inhoud die u wilt
