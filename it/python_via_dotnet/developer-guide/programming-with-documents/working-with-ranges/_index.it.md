---
title: Lavorare con gli intervalli in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con gli intervalli
linktitle: Lavorare con gli intervalli
description: "Lavora con gli intervalli in un documento utilizzando Python."
type: docs
weight: 130
url: /it/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, un [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) è una "finestra piatta" in un modello altrimenti ad albero del documento.

{{% /alert %}}

Se hai lavorato con Microsoft Word Automation, probabilmente saprai che uno dei principali strumenti per esaminare e modificare il contenuto dei documenti è l'oggetto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) è come una "finestra" sul contenuto e sulla formattazione del documento. Aspose.Words ha anche la classe [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) ed è progettato per apparire e agire in modo simile al **Range** in Microsoft Word. Sebbene **Range** non possa coprire una parte arbitraria di un documento e non disponga di **Start** e **End**, puoi accedere all'intervallo coperto da qualsiasi nodo di documento incluso il [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) stesso. In altre parole, ogni nodo ha il proprio intervallo. L'oggetto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) consente di accedere e modificare testo, segnalibri e campi modulo all'interno dell'intervallo.

## Recupera testo normale

Utilizzare la proprietà [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) per recuperare testo semplice e non formattato dell'intervallo.

L'esempio di codice seguente mostra come ottenere un testo semplice e non formattato di un intervallo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Eliminazione del testo

Range consente la cancellazione di tutti i caratteri dell'intervallo chiamando [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

L'esempio di codice seguente mostra come eliminare tutti i caratteri di un intervallo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}