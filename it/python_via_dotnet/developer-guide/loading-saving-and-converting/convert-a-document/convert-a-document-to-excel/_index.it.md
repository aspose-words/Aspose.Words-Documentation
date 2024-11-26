---
title: Converti Word in Excel in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Converti un documento in Excel
linktitle: Converti un documento in Excel
description: "Converti PDF in Excel, XML in Excel, DOCX in Excel Python. Salva un documento in vari formati su XLSX utilizzando Python."
type: docs
weight: 15
url: /it/python-net/convert-a-document-to-excel/
timestamp: 2024-01-31-14-23-37
---

La conversione di documenti da un formato all'altro è la caratteristica principale di Aspose.Words. Puoi convertire documenti in qualsiasi formato [caricare il formato](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) disponibile anche nel formato XLSX.

## Converti un documento in XLSX

Convertire un documento in XLSX è un processo piuttosto complicato. Per salvare il documento in formato XLSX utilizzando Aspose.Words, utilizza la classe [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/) e il nuovo elemento `Xlsx` nell'enumerazione [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Come accennato in precedenza, puoi salvare il documento in qualsiasi formato di caricamento supportato da Aspose.Words a XLSX.

Il seguente esempio di codice mostra come salvare PDF in XLSX:

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Pdf Document.pdf")

doc.save(docs_base.artifacts_dir + "BaseConversions.PdfToXlsx.xlsx")
{{< /highlight >}}

{{% alert color="primary" %}}

A volte è necessario specificare opzioni aggiuntive, che possono influenzare il risultato del salvataggio di un documento come XLSX. Queste opzioni possono essere specificate utilizzando la classe [XlsxSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/), contenente proprietà che determinano come verrà visualizzato l'output XLSX.

{{% /alert %}}

## Trova e sostituisci durante il salvataggio in XLSX

Inoltre, utilizzando Aspose.Words, puoi trovare una stringa specifica o un'espressione regolare nel tuo documento e sostituirla con quella corrispondente di cui hai bisogno. Quindi puoi anche salvare il risultato nel formato XLSX.

Il seguente esempio di codice mostra come eseguire l'operazione di ricerca e sostituzione e salvare il risultato in XLSX:

{{< highlight python >}}
from aspose.words import Document, DocumentBuilder
from aspose.words.replacing import FindReplaceOptions

doc =  Document()

builder = DocumentBuilder(doc)
builder.writeln("Ruby bought a ruby necklace.")

# We can use a "FindReplaceOptions" object to modify the find - and -replace process.
options = FindReplaceOptions()

# Set the "match_case" flag to "True" to apply case sensitivity while finding strings to replace.
# Set the "match_case" flag to "False" to ignore character case while searching for text to replace.
options.match_case = True

doc.range.replace("Ruby", "Jade", options)
doc.save(ARTIFACTS_DIR + "BaseConversions.FindReplaceXlsx.xlsx")
{{< /highlight >}}

## Specificare il livello di compressione durante il salvataggio su XLSX

È inoltre possibile specificare il livello di compressione durante il salvataggio utilizzando la proprietà [CompressionLevel](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/compression_level/).

Il seguente esempio di codice mostra come specificare il livello di compressione durante il salvataggio nel formato XLSX:

{{< highlight python >}}
from aspose.words import Document
from aspose.words.saving import XlsxSaveOptions, CompressionLevel

doc = Document(MY_DIR + "Document.docx")

saveOptions = XlsxSaveOptions()
saveOptions.compression_level = CompressionLevel.MAXIMUM

doc.save(ARTIFACTS_DIR + "BaseConversions.CompressXlsx.xlsx", saveOptions)
{{< /highlight >}}

## Guarda anche

- Sezione documentazione [Proteggi o crittografa un documento](/words/it/python-net/protect-or-encrypt-a-document/) per ulteriori informazioni sulla protezione e crittografia di un documento
- L'articolo [Trova e sostituisci](/words/it/python-net/find-and-replace/) per ulteriori informazioni su come trovare e sostituire il contenuto desiderato
