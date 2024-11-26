---
title: Skakel Word Na Excel in Java
second_title: Aspose.Words vir Java
articleTitle: Skakel'n Dokument Om Na Excel
linktitle: Skakel'n Dokument Om Na Excel
description: "Omskep PDF Na Excel, XML Na Excel, DOCX na Excel Java. Stoor'n dokument in verskillende formate na XLSX met behulp van Java."
type: docs
weight: 15
url: /af/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

Die omskakeling van dokumente van een formaat na'n ander is die vlagskip kenmerk van Aspose.Words. U kan dokumente in enige beskikbare [load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) ook omskakel na XLSX formaat.

## Skakel'n Dokument om na XLSX

Die omskakeling van'n dokument na XLSX is'n taamlik ingewikkelde proses. Om jou dokument te stoor na XLSX formaat met behulp van Aspose.Words, gebruik die [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) klas en die nuwe `Xlsx` element in die [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) opsomming. Soos hierbo genoem, kan u die dokument stoor in enige laai formaat ondersteun deur Aspose.Words tot XLSX.

Die volgende kode voorbeeld toon hoe om PDF te stoor na XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

Soms is dit nodig om addisionele opsies te spesifiseer, wat die resultaat van die stoor van'n dokument as'n XLSX kan beïnvloed. Hierdie opsies kan gespesifiseer word deur die gebruik van die [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) klas, wat eienskappe bevat wat bepaal hoe die XLSX uitset vertoon sal word.

{{% /alert %}}

## Vind en Vervang Wanneer Stoor na XLSX

Ook met behulp van Aspose.Words, kan jy'n spesifieke string of gereelde uitdrukking in jou dokument te vind en vervang dit met die ooreenstemmende een wat jy nodig het. Dan kan jy ook die resultaat stoor na XLSX formaat.

Die volgende kode voorbeeld toon hoe om te voer vind en vervang operasie en stoor resultaat te XLSX:

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

## Spesifiseer Kompressievlak Wanneer Gestoor Word na XLSX

U kan ook die kompressievlak spesifiseer wanneer u die [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) - eienskap gebruik.

Die volgende kode voorbeeld toon hoe om die kompressie vlak spesifiseer wanneer die stoor na XLSX formaat:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Sien Ook

- Dokumentasie afdeling [Beskerm of Enkripteer'n Dokument](/words/java/protect-or-encrypt-a-document/) vir meer inligting oor die beskerming en enkripsie van'n dokument
- Die artikel [Vind en Vervang](/words/java/find-and-replace/) vir meer inligting oor die vind en vervanging van die inhoud wat u wil hê
