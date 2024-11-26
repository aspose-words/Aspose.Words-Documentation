---
title: Lavorare con gli intervalli in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con le gamme
linktitle: Lavorare con le gamme
description: "Introduzione alla funzione Range in Aspose.Words per Java."
type: docs
weight: 130
url: /it/java/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

In Aspose.Words, un intervallo è una "finestra piatta"in un modello ad albero del documento.

{{% /alert %}}

Se hai lavorato con l'automazione Microsoft Word, probabilmente sai che uno degli strumenti principali per esaminare e modificare il contenuto del documento è l'oggetto `Range`.L'intervallo è come una "finestra" nel contenuto e nella formattazione del documento.

Aspose.Words ha anche la classe [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) ed è progettato per apparire e agire in modo simile a **Range** in Microsoft Word. Sebbene **Range** non possa coprire una porzione arbitraria di un documento e non abbia **Start** e **End**, è possibile accedere all'intervallo coperto da qualsiasi nodo del documento incluso [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) stesso. In altre parole, ogni nodo ha il proprio intervallo. L'oggetto **Range** consente di accedere e modificare testo, segnalibri e campi modulo all'interno dell'intervallo.

## Recupero del testo normale

Utilizzare la proprietà [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) per recuperare il testo semplice e non formattato dell'intervallo.

Il seguente esempio di codice mostra come ottenere un testo semplice e non formattato di un intervallo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Elimina testo

La classe `Range` consente l'eliminazione di tutti i caratteri dell'intervallo chiamando [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

L'esempio di codice seguente mostra come eliminare tutti i caratteri di un intervallo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


