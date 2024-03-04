---
title: Lavorare con gli intervalli in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con gli intervalli
linktitle: Lavorare con gli intervalli
description: "Introduzione alla funzionalità Intervallo in Aspose.Words per .NET."
type: docs
weight: 130
url: /it/net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, un intervallo è una "finestra piatta" in un modello altrimenti ad albero del documento.

{{% /alert %}}

Se hai lavorato con Microsoft Word Automation, probabilmente saprai che uno dei principali strumenti per esaminare e modificare il contenuto dei documenti è l'oggetto **Range**. **Range** è come una "finestra" sul contenuto e sulla formattazione del documento.

Aspose.Words ha anche la classe [Range](https://reference.aspose.com/words/it/net/aspose.words/range/) ed è progettata per apparire e agire in modo simile a **Range** in Microsoft Word. Sebbene **Range** non possa coprire una porzione arbitraria di un documento e non disponga di **Start** e **End**, puoi accedere all'intervallo coperto da qualsiasi nodo di documento incluso il [Document](https://reference.aspose.com/words/it/net/aspose.words/document/) stesso. In altre parole, ogni nodo ha il proprio intervallo. L'oggetto **Range** consente di accedere e modificare testo, segnalibri e campi modulo all'interno dell'intervallo.

## Recupera testo normale

Utilizzare la proprietà [Text](https://reference.aspose.com/words/it/net/aspose.words/range/text/) per recuperare testo semplice e non formattato dell'intervallo.

L'esempio di codice seguente mostra come ottenere un testo semplice e non formattato di un intervallo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Elimina testo

Range consente la cancellazione di tutti i caratteri dell'intervallo chiamando [Delete](https://reference.aspose.com/words/it/net/aspose.words/range/delete/).

L'esempio di codice seguente mostra come eliminare tutti i caratteri di un intervallo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}