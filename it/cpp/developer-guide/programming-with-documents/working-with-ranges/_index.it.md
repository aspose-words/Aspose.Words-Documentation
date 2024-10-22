---
title: Lavorare con gli intervalli in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con le gamme
linktitle: Lavorare con le gamme
description: "Introduzione alla funzione Range in Aspose.Words per C++."
type: docs
weight: 130
url: /it/cpp/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, un intervallo è una "finestra piatta"in un modello ad albero del documento.

{{% /alert %}}

Se hai lavorato con l'automazione Microsoft Word, probabilmente sai che uno degli strumenti principali per esaminare e modificare il contenuto del documento è l'oggetto **Range**. **Range** è come una "finestra" nel contenuto e nella formattazione del documento.

Aspose.Words ha anche la classe [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) ed è progettato per apparire e agire in modo simile a **Range** in Microsoft Word. Sebbene **Range** non possa coprire una porzione arbitraria di un documento e non abbia un **Start** e un **End**, è possibile accedere all'intervallo coperto da qualsiasi nodo del documento incluso il [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) stesso. In altre parole, ogni nodo ha il proprio intervallo. L'oggetto **Range** consente di accedere e modificare testo, segnalibri e campi modulo all'interno dell'intervallo.

## Recupera testo normale

Utilizzare la proprietà [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) per recuperare testo semplice e non formattato dell'intervallo.

Il seguente esempio di codice mostra come ottenere un testo semplice e non formattato di un intervallo:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Eliminazione del testo

Range consente l'eliminazione di tutti i caratteri dell'intervallo chiamando [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

L'esempio di codice seguente mostra come eliminare tutti i caratteri di un intervallo:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}