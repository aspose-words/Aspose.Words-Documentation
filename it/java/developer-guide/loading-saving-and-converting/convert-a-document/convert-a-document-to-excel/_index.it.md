---
title: Convertire Word in Excel in Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in Excel
linktitle: Convertire un documento in Excel
description: "Converti PDF in Excel, XML in Excel, DOCX in Excel Java. Salvare un documento in vari formati in XLSX utilizzando Java."
type: docs
weight: 15
url: /it/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversione di documenti da un formato all'altro è la caratteristica principale di Aspose.Words. È possibile convertire i documenti in qualsiasi formato [carica formato](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) disponibile anche in XLSX.

## Convertire un documento in XLSX

Convertire un documento in XLSX è un processo piuttosto complicato. Per salvare il documento nel formato XLSX utilizzando Aspose.Words, utilizzare la classe [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) e il nuovo elemento `Xlsx` nell'enumerazione [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Come accennato in precedenza, è possibile salvare il documento in qualsiasi formato di caricamento supportato da Aspose.Words a XLSX.

Il seguente esempio di codice mostra come salvare PDFin XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influire sul risultato del salvataggio di un documento come XLSX. Queste opzioni possono essere specificate usando la classe [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/), contenente proprietà che determinano come verrà visualizzato l'output XLSX.

{{% /alert %}}

## Trova e sostituisci quando si salva su XLSX

Usando anche Aspose.Words, puoi trovare una stringa o un'espressione regolare specifica nel tuo documento e sostituirla con quella corrispondente che ti serve. Quindi puoi anche salvare il risultato nel formato XLSX.

L'esempio di codice seguente mostra come eseguire l'operazione trova e sostituisci e salvare il risultato su XLSX:

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

## Specificare il livello di compressione quando si salva su XLSX

È inoltre possibile specificare il livello di compressione quando si salva utilizzando la proprietà [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/).

L'esempio di codice seguente mostra come specificare il livello di compressione quando si salva in formato XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vedi anche

- Sezione documentazione [Proteggere o crittografare un documento](/words/java/protect-or-encrypt-a-document/) per ulteriori informazioni sulla protezione e la crittografia di un documento
- Articolo [Trova e sostituisci](/words/java/find-and-replace/) per ulteriori informazioni sulla ricerca e la sostituzione del contenuto desiderato
