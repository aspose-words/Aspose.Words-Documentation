---
title: Lavorare con testo in una tabella
second_title: Aspose.Words per Java
articleTitle: Lavorare con testo in una tabella
linktitle: Lavorare con testo in una tabella
description: "Sostituire il testo in una tabella Java. Estrarre il testo normale dalla tabella o dalla cella utilizzando Java."
type: docs
weight: 60
url: /it/java/extract-text-from-and-replace-text-in-a-table/
---

Come accennato negli articoli precedenti, una tabella di solito contiene testo normale, anche se altri contenuti come le immagini o anche altre tabelle possono essere inseriti nelle celle della tabella.

L'aggiunta di testo o di altri contenuti alla tabella viene effettuata utilizzando i metodi appropriati [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe ed è descritto nel **"Crea un tavolo"** articolo. In questo articolo, parleremo di come lavorare con il testo in una tabella già esistente.

## Sostituire il testo in una tabella

Il tavolo, come qualsiasi altro nodo Aspose.Words, ha accesso al [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) oggetto. Utilizzando l'oggetto della tabella, è possibile sostituire il testo in una tabella.

La capacità di utilizzare caratteri speciali durante la sostituzione è attualmente supportata, quindi è possibile sostituire il testo esistente con testo multi-paragrafo. Per fare questo, è necessario utilizzare i metacaratteri speciali descritti nella corrispondente [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) metodo.

{{% alert color="primary" %}}

In genere, la sostituzione del testo deve essere effettuata a livello di cella (per cella) o a livello di paragrafo.

{{% /alert %}}

Il seguente esempio di codice mostra come sostituire tutte le istanze di una stringa di testo nelle celle di un'intera tabella:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Estratto di testo normale da una tabella

Usare il **Range** oggetto, è anche possibile chiamare metodi sull'intera gamma di tabelle ed estrarre la tabella come testo semplice. Per fare questo, usare il [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) proprieta'

Il seguente esempio di codice mostra come stampare l'intervallo di testo di una tabella:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

La stessa tecnica viene utilizzata per estrarre il contenuto solo dalle singole celle della tabella.

Il seguente esempio di codice mostra come stampare un intervallo di testo di elementi di riga e tabella:

{{% /alert %}}

Il seguente esempio di codice mostra come stampare l'intervallo di testo di elementi di riga e tabella.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Lavorare con il testo della tabella alternativa

Microsoft Word i tavoli hanno `table title` e `table description` che forniscono una rappresentazione testuale alternativa delle informazioni contenute nella tabella.

In Aspose.Words, è anche possibile aggiungere un titolo e una descrizione della tabella utilizzando [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) e [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) proprietà. Queste proprietà sono significative per i documenti DOCX conformi alla ISO/IEC 29500. Quando si salva in formati precedenti ISO/IEC 29500, queste proprietà sono ignorate.

Il seguente esempio di codice mostra come impostare le proprietà di titolo e descrizione di una tabella:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}