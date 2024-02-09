---
title: Clonare un documento in C#
second_title: Aspose.Words per .NET
articleTitle: Clonare un documento
linktitle: Clonare un documento
type: docs
description: "Clona un documento per ottenere la sua copia identica utilizzando C#. Quando si crea una copia, i nodi e le proprietà del documento originale vengono clonati."
weight: 70
url: /it/net/clone-a-document/
---

La clonazione di un documento è il processo di creazione di una copia identica di un documento originale, che può migliorare le prestazioni e salvarti da potenziali perdite di memoria.

Questo articolo spiegherà i principali casi d'uso della clonazione di un documento e come creare un clone di documento utilizzando Aspose.Words.

## Operazioni con clonazione di documenti

L'operazione di clonazione ti consente di rendere più veloce il processo di creazione dei documenti poiché non avrai bisogno di caricare e analizzare ogni volta un documento da un file.

Dopo aver creato un clone del tuo documento, potrai modificarlo ed eseguire diverse operazioni su di esso, ad esempio confrontarlo con il documento originale, aggiungerlo o inserirlo in un altro documento. Puoi anche modificare gli elementi clonati o il loro contenuto prima di inserirli in un altro documento.

## Creazione di un clone di documento

Aspose.Words ti consente di clonare un documento utilizzando il metodo [Clone](https://reference.aspose.com/words/net/aspose.words/document/clone/) che esegue una copia profonda del documento e lo restituisce. In altre parole, otterrà una copia completa dell'DOM. Il metodo `Clone` accelera la generazione dei documenti e ti basta una sola riga di codice per ottenere una copia del tuo documento.

La clonazione produce un nuovo documento con lo stesso contenuto dell'originale, ma con una copia unica di ciascuno dei [nodes](https://reference.aspose.com/words/net/aspose.words/node/) del documento originale. È inoltre possibile applicare l'operazione di clonazione a un nodo di documento utilizzando il metodo [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/) del nodo, che consente di duplicare i nodi di documenti compositi con e senza i relativi nodi figlio.

{{% alert color="primary" %}}

Tieni presente che quando applichi il metodo di clonazione, tutte le proprietà del documento verranno clonate.

{{% /alert %}}

Il seguente esempio di codice mostra come clonare un documento e creare un duplicato di una sezione in quel documento:

{{< highlight csharp >}}
// Create a document.
Document doc = new Document();
DocumentBuilder builder = new DocumentBuilder(doc);
builder.Writeln("This is the original document before applying the clone method"); 

// Clone the document.
Document clone = doc.Clone();

// Edit the cloned document.
DocumentBuilder builder = new DocumentBuilder(clone);
builder.Write("Section 1");
builder.InsertBreak(BreakType.SectionBreakNewPage);
builder.Write("Section 2");

// This shows what is in the document originally. The document has two sections.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());

// Duplicate the last section and append the copy to the end of the document.
int lastSectionIdx = clone.Sections.Count - 1;
Section newSection = clone.Sections[lastSectionIdx].Clone();
clone.Sections.Add(newSection);

// Check what the document contains after we changed it.
Assert.AreEqual("Section 1\x000cSection 2", clone.GetText().Trim());
{{< /highlight >}}
