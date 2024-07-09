---
title: Lavorare con Gamma in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Gamma
linktitle: Lavorare con Gamma
description: "Introduzione alla funzione Range in Aspose.Words per Java."
type: docs
weight: 130
url: /it/java/working-with-ranges/
---

{{% alert color="primary" %}}

In Aspose.Words, una Gamma è una "finestra appiattita" in un modello altrimenti simile all’albero del documento.

{{% /alert %}}

Se hai lavorato con te Microsoft Word Automazione, probabilmente sapete che uno dei principali strumenti per esaminare e modificare il contenuto dei documenti è il `Range` oggetto. La gamma è come una "finestra" nel contenuto del documento e nella formattazione.

Aspose.Words ha anche il [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) classe ed è progettato per guardare e agire allo stesso modo **Range** in Microsoft Word. Anche se **Range** non può coprire una parte arbitraria di un documento e non ha **Start** e **End**, è possibile accedere all'intervallo coperto da qualsiasi nodo di documento compreso il [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) stesso. In altre parole, ogni nodo ha una propria gamma. The **Range** oggetto consente di accedere e modificare i campi di testo, segnalibri e form all'interno dell'intervallo.

## Recuperare il Testo della Pianura

Utilizzare [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) proprietà per recuperare il testo semplice e non formattato dell'intervallo.

Il seguente esempio di codice mostra come ottenere un testo semplice e non formattato di un intervallo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Eliminare il testo

The `Range` classe permette la cancellazione di tutti i caratteri della gamma chiamando [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Il seguente esempio di codice mostra come eliminare tutti i caratteri di un intervallo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 