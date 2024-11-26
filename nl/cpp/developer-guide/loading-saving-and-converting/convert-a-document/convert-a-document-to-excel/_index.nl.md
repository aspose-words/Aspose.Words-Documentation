---
title: Word converteren naar Excel in C++
second_title: Aspose.Words voor C++
articleTitle: Een Document converteren naar Excel
linktitle: Een Document converteren naar Excel
description: "Converteer PDF naar Excel, XML naar Excel, DOCX Naar Excel C++. Sla een document op in verschillende formaten op XLSX met behulp van C++."
type: docs
weight: 15
url: /nl/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Het converteren van documenten van het ene formaat naar het andere is het vlaggenschip van Aspose.Words. U kunt documenten in elke beschikbare [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) ook converteren naar XLSX - indeling.

## Een Document converteren naar XLSX

Het omzetten van een document naar XLSX is een vrij ingewikkeld proces. Als u uw document wilt opslaan in XLSX - indeling met behulp van Aspose.Words, gebruikt u de **XlsxSaveOptions** - klasse en het nieuwe `Xlsx` - element in de [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) - opsomming. Zoals hierboven vermeld, kunt u het document opslaan in elke laadindeling die wordt ondersteund door Aspose.Words tot XLSX.

Het volgende codevoorbeeld laat zien hoe PDF op te slaan in XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Zoeken en vervangen bij Opslaan naar XLSX

Ook met Aspose.Words kunt u een specifieke tekenreeks of reguliere expressie in uw document vinden en deze vervangen door de overeenkomende die u nodig hebt. Vervolgens kunt u het resultaat ook opslaan in XLSX - Indeling.

Het volgende codevoorbeeld laat zien hoe u bewerking zoeken en vervangen uitvoert en resultaat opslaan in XLSX:

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

## Compressieniveau opgeven bij Opslaan naar XLSX

U kunt ook het compressieniveau opgeven bij het opslaan met de eigenschap **CompressionLevel**.

Het volgende codevoorbeeld laat zien hoe u het compressieniveau kunt opgeven bij het opslaan in XLSX - indeling:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Zie Ook

- Sectie documentatie [Een Document beveiligen of versleutelen](/words/cpp/protect-or-encrypt-a-document/) voor meer informatie over het beveiligen en versleutelen van een document
- Artikel [Zoeken en vervangen](/words/cpp/find-and-replace/) meer informatie over het vinden en vervangen van de gewenste inhoud
