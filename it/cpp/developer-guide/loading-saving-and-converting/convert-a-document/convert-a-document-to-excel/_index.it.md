---
title: Convertire Word in Excel in C++
second_title: Aspose.Words per C++
articleTitle: Convertire un documento in Excel
linktitle: Convertire un documento in Excel
description: "Convertire PDF in Excel, XML in Excel, DOCX in Excel C++. Salvare un documento in vari formati in XLSX utilizzando C++."
type: docs
weight: 15
url: /it/cpp/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversione di documenti da un formato all'altro è la caratteristica principale di Aspose.Words. È possibile convertire i documenti in qualsiasi [load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) disponibile anche in formato XLSX.

## Convertire un documento in XLSX

Convertire un documento in XLSX è un processo piuttosto complicato. Per salvare il documento in formato XLSX utilizzando Aspose.Words, utilizzare la classe **XlsxSaveOptions** e il nuovo elemento `Xlsx` nell'enumerazione [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Come accennato in precedenza, è possibile salvare il documento in qualsiasi formato di caricamento supportato da Aspose.Words su XLSX.

Il seguente esempio di codice mostra come salvare PDF in XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Pdf Document.pdf");
doc->Save(ArtifactsDir + u"BaseConversions.PdfToXlsx.xlsx");
{{< /highlight >}}

## Trova e sostituisci quando si salva su XLSX

Usando anche Aspose.Words, puoi trovare una stringa o un'espressione regolare specifica nel tuo documento e sostituirla con quella corrispondente che ti serve. Quindi puoi anche salvare il risultato in formato XLSX.

Il seguente esempio di codice mostra come eseguire l'operazione trova e sostituisci e salvare il risultato in XLSX:

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

## Specificare il livello di compressione quando si salva su XLSX

È inoltre possibile specificare il livello di compressione quando si salva utilizzando la proprietà **CompressionLevel**.

Il seguente esempio di codice mostra come specificare il livello di compressione quando si salva in formato XLSX:

{{< highlight cpp >}}
auto doc = MakeObject<Document>(MyDir + u"Document.docx");
auto saveOptions = MakeObject<XlsxSaveOptions>();
saveOptions->set_CompressionLevel(CompressionLevel::Maximum);

doc->Save(ArtifactsDir + u"BaseConversions.CompressXlsx.xlsx", saveOptions);
{{< /highlight >}}

## Vedi anche

- Sezione documentazione [Proteggere o crittografare un documento](/words/cpp/protect-or-encrypt-a-document/) per ulteriori informazioni sulla protezione e la crittografia di un documento
- Articolo [Trova e sostituisci](/words/cpp/find-and-replace/) per ulteriori informazioni sulla ricerca e la sostituzione del contenuto desiderato
