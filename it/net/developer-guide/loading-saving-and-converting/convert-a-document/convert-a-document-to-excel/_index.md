---
title: Converti Word in Excel in C#
second_title: Aspose.Words per .NET
articleTitle: Converti un documento in Excel
linktitle: Converti un documento in Excel
description: "Converti PDF in Excel, XML in Excel, DOCX in Excel C#. Salva un documento in vari formati su XLSX utilizzando C#."
type: docs
weight: 15
url: /it/net/convert-a-document-to-excel/
---

La conversione di documenti da un formato all'altro è la caratteristica principale di Aspose.Words. Puoi convertire documenti in qualsiasi formato [caricare il formato](https://reference.aspose.com/words/net/aspose.words/loadformat/) disponibile anche nel formato XLSX.

## Converti un documento in XLSX

Convertire un documento in XLSX è un processo piuttosto complicato. Per salvare il documento in formato XLSX utilizzando Aspose.Words, utilizza la classe [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/) e il nuovo elemento `Xlsx` nell'enumerazione [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Come accennato in precedenza, puoi salvare il documento in qualsiasi formato di caricamento supportato da Aspose.Words a XLSX.

Il seguente esempio di codice mostra come salvare PDF in XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Pdf Document.pdf");
doc.Save(ArtifactsDir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato del salvataggio di un documento come XLSX. Queste opzioni possono essere specificate utilizzando la classe [XlsxSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/), contenente proprietà che determinano come verrà visualizzato l'output XLSX.

{{% /alert %}}

## Trova e sostituisci durante il salvataggio in XLSX

Inoltre, utilizzando Aspose.Words, puoi trovare una stringa specifica o un'espressione regolare nel tuo documento e sostituirla con quella corrispondente di cui hai bisogno. Quindi puoi anche salvare il risultato nel formato XLSX.

Il seguente esempio di codice mostra come eseguire l'operazione di ricerca e sostituzione e salvare il risultato in XLSX:

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

## Specificare il livello di compressione durante il salvataggio su XLSX

È inoltre possibile specificare il livello di compressione durante il salvataggio utilizzando la proprietà [CompressionLevel](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/compressionlevel/).

Il seguente esempio di codice mostra come specificare il livello di compressione durante il salvataggio nel formato XLSX:

{{< highlight csharp >}}
Document doc = new Document(MyDir + "Document.docx");

XlsxSaveOptions saveOptions = new XlsxSaveOptions();
saveOptions.CompressionLevel = CompressionLevel.Maximum;

doc.Save(ArtifactsDir + "BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Guarda anche

- Sezione documentazione [Proteggi o crittografa un documento](/words/it/net/protect-or-encrypt-a-document/) per ulteriori informazioni sulla protezione e crittografia di un documento
- L'articolo [Trova e sostituisci](/words/it/net/find-and-replace/) per ulteriori informazioni su come trovare e sostituire il contenuto desiderato
