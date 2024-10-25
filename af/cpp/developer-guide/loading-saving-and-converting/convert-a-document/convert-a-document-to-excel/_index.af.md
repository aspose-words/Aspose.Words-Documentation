---
title: Skakel Word Na Excel in C++
second_title: Aspose.Words vir C++
articleTitle: Skakel'n Dokument Om Na Excel
linktitle: Skakel'n Dokument Om Na Excel
description: "Omskep PDF Na Excel, XML Na Excel, DOCX na Excel C++. Stoor'n dokument in verskillende formate na XLSX met behulp van C++."
type: docs
weight: 15
url: /af/cpp/convert-a-document-to-excel/
---

Die omskakeling van dokumente van een formaat na'n ander is die vlagskip kenmerk van Aspose.Words. U kan dokumente in enige beskikbare [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) ook omskakel na XLSX formaat.

## Skakel'n Dokument om na XLSX

Die omskakeling van'n dokument na XLSX is'n taamlik ingewikkelde proses. Om jou dokument te stoor na XLSX formaat met behulp van Aspose.Words, gebruik die **XlsxSaveOptions** klas en die nuwe `Xlsx` element in die [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) opsomming. Soos hierbo genoem, kan u die dokument stoor in enige laai formaat ondersteun deur Aspose.Words tot XLSX.

Die volgende kode voorbeeld toon hoe om PDF te stoor na XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Vind en Vervang Wanneer Stoor na XLSX

Ook met behulp van Aspose.Words, kan jy'n spesifieke string of gereelde uitdrukking in jou dokument te vind en vervang dit met die ooreenstemmende een wat jy nodig het. Dan kan jy ook die resultaat stoor na XLSX formaat.

Die volgende kode voorbeeld toon hoe om te voer vind en vervang operasie en stoor resultaat te XLSX:

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

## Spesifiseer Kompressievlak Wanneer Gestoor Word na XLSX

U kan ook die kompressievlak spesifiseer wanneer u die **CompressionLevel** - eienskap gebruik.

Die volgende kode voorbeeld toon hoe om die kompressie vlak spesifiseer wanneer die stoor na XLSX formaat:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Sien Ook

- Dokumentasie afdeling [Beskerm of Enkripteer'n Dokument](/words/cpp/protect-or-encrypt-a-document/) vir meer inligting oor die beskerming en enkripsie van'n dokument
- Die artikel [Vind en Vervang](/words/cpp/find-and-replace/) vir meer inligting oor die vind en vervanging van die inhoud wat u wil hê
