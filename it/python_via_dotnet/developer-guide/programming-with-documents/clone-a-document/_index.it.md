---
title: Clonare un documento in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Clonare un documento
linktitle: Clonare un documento
type: docs
description: "Clona un documento per ottenere la sua copia identica utilizzando Python. Quando si crea una copia, i nodi e le proprietà del documento originale vengono clonati."
weight: 70
url: /it/python-net/clone-a-document/
timestamp: 2024-01-27-14-07-04
---

La clonazione di un documento è il processo di creazione di una copia identica di un documento originale, che può migliorare le prestazioni e salvarti da potenziali perdite di memoria.

Questo articolo spiegherà i principali casi d'uso della clonazione di un documento e come creare un clone di documento utilizzando Aspose.Words.

## Operazioni con clonazione di documenti

L'operazione di clonazione ti consente di rendere più veloce il processo di creazione dei documenti poiché non avrai bisogno di caricare e analizzare ogni volta un documento da un file.

Dopo aver creato un clone del tuo documento, potrai modificarlo ed eseguire diverse operazioni su di esso, ad esempio confrontarlo con il documento originale, aggiungerlo o inserirlo in un altro documento. Puoi anche modificare gli elementi clonati o il loro contenuto prima di inserirli in un altro documento.

## Creazione di un clone di documento

Aspose.Words ti consente di clonare un documento utilizzando il metodo [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) che esegue una copia profonda del documento e lo restituisce. In altre parole, otterrà una copia completa dell'DOM. Il metodo [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) velocizza la generazione dei documenti e ti basta una sola riga di codice per ottenere una copia del tuo documento.

La clonazione produce un nuovo documento con lo stesso contenuto dell'originale, ma con una copia unica di ciascuno dei nodi del documento originale. È inoltre possibile applicare l'operazione di clonazione a un nodo di documento utilizzando il metodo [clone](https://reference.aspose.com/words/python-net/aspose.words/document/clone/) del nodo, che consente di duplicare i nodi di documenti compositi con e senza i relativi nodi figlio.

{{% alert color="primary" %}}

Tieni presente che quando applichi il metodo di clonazione, tutte le proprietà del documento verranno clonate.

{{% /alert %}}

Il seguente esempio di codice mostra come clonare un documento e creare un duplicato di una sezione in quel documento:

{{< highlight python >}}
# Create a document.
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("This is the original document before applying the clone method")

# Clone the document.
clone = doc.clone().as_document()

# Edit the cloned document.
builder = aw.DocumentBuilder(clone)
builder.write("Section 1")
builder.insert_break(aw.BreakType.SECTION_BREAK_NEW_PAGE)
builder.write("Section 2")

# This shows what is in the document originally. The document has two sections.
self.assertEqual(clone.sections.count, 2)

# Duplicate the last section and append the copy to the end of the document.
lastSectionIdx = clone.sections.count - 1
newSection = clone.sections[lastSectionIdx].clone()
clone.sections.add(newSection)

# Check what the document contains after we changed it.
self.assertEqual(clone.sections.count, 3)
{{< /highlight >}}
