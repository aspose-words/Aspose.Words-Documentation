---
title: Converti Word in Excel in Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in Excel
linktitle: Convertire un documento in Excel
description: "Converti PDF in Excel, XML in Excel, DOCX in Excel Java. Salvare un documento in vari formati a XLSX utilizzando Java."
type: docs
weight: 15
url: /it/java/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversione di documenti da un formato all'altro è la caratteristica di punta di Aspose.Words. È possibile convertire i documenti in qualsiasi disponibile [formato di carico](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) anche in formato XLSX.

## Convertire un documento in XLSX

La conversione di un documento in XLSX è un processo piuttosto complicato. Per salvare il documento in formato XLSX utilizzando Aspose.Words> utilizzare [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) classe e il nuovo `Xlsx` elemento nel [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumerazione. Come accennato in precedenza, è possibile salvare il documento in qualsiasi formato di carico supportato da Aspose.Words a XLSX.

Il seguente esempio di codice mostra come salvare PDF a XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Pdf Document.pdf");
doc.save(getArtifactsDir() + "BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato del salvataggio di un documento come XLSX. Queste opzioni possono essere specificate dall'uso del [XlsxSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/) classe, contenenti proprietà che determinano come verrà visualizzata l'uscita XLSX.

{{% /alert %}}

## Trova e sostituisci Quando Risparmi a XLSX

Anche usando Aspose.Words, è possibile trovare una stringa specifica o un'espressione regolare nel documento e sostituirlo con quella corrispondente di cui hai bisogno. Quindi puoi anche salvare il risultato in formato XLSX.

Il seguente esempio di codice mostra come eseguire l'operazione trovare e sostituire e salvare il risultato a XLSX:

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

## Specificare il livello di compressione quando si salva a XLSX

È inoltre possibile specificare il livello di compressione durante il salvataggio utilizzando [CompressionLevel](https://reference.aspose.com/words/java/com.aspose.words/compressionlevel/) proprieta'.

Il seguente esempio di codice mostra come specificare il livello di compressione durante il salvataggio in formato XLSX:

{{< highlight java >}}
Document doc = new Document(getMyDir() + "Document.docx");
XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.setCompressionLevel(CompressionLevel.MAXIMUM);

doc.save(getArtifactsDir() + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vedi anche

- Sezione documentazione [Condividi su Facebook](/words/it/java/protect-or-encrypt-a-document/) per ulteriori informazioni sulla protezione e la crittografia di un documento
- L'articolo [Trova e sostituisci](/words/it/java/find-and-replace/) per ulteriori informazioni su come trovare e sostituire il contenuto che si desidera
