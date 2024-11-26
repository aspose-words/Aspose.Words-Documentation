---
title: Lavorare con il testo in una tabella
second_title: Aspose.Words per Java
articleTitle: Lavorare con il testo in una tabella
linktitle: Lavorare con il testo in una tabella
description: "Sostituire il testo in una tabella in Java. Estrarre testo normale da tabella o cella utilizzando Java."
type: docs
weight: 60
url: /it/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Come accennato negli articoli precedenti, una tabella di solito contiene testo normale, anche se altri contenuti come immagini o anche altre tabelle possono essere inseriti nelle celle della tabella.

L'aggiunta di testo o altro contenuto alla tabella viene eseguita utilizzando i metodi appropriati della classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ed è descritta nell'articolo **"Create a Table"**. In questo articolo, parleremo di come lavorare con il testo in una tabella già esistente.

## Sostituire il testo in una tabella

La tabella, come qualsiasi altro nodo in Aspose.Words, ha accesso all'oggetto [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). Utilizzando l'oggetto intervallo tabella, è possibile sostituire il testo in una tabella.

La possibilità di utilizzare caratteri speciali durante la sostituzione è attualmente supportata, quindi è possibile sostituire il testo esistente con testo a più paragrafi. Per fare ciò, è necessario utilizzare i metacaratteri speciali descritti nel metodo [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) corrispondente.

{{% alert color="primary" %}}

In genere, la sostituzione del testo deve essere eseguita a livello di cella (per cella) o a livello di paragrafo.

{{% /alert %}}

L'esempio di codice seguente mostra come sostituire tutte le istanze di una stringa di testo nelle celle di un'intera tabella:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Estrarre testo normale da una tabella

Usando l'oggetto **Range**, puoi anche chiamare metodi sull'intero intervallo di tabelle ed estrarre la tabella come testo normale. A tale scopo, utilizzare la proprietà [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

L'esempio di codice seguente mostra come stampare l'intervallo di testo di una tabella:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

La stessa tecnica viene utilizzata per estrarre il contenuto solo dalle singole celle della tabella.

L'esempio di codice seguente mostra come stampare un intervallo di testo di elementi di riga e tabella:

{{% /alert %}}

L'esempio di codice seguente mostra come stampare l'intervallo di testo degli elementi di riga e tabella.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Lavorare con testo tabella alternativo

Le tabelle Microsoft Word hanno `table title` e `table description` che forniscono una rappresentazione testuale alternativa delle informazioni contenute nella tabella.

In Aspose.Words, è anche possibile aggiungere un titolo di tabella e una descrizione utilizzando le proprietà [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) e [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). Queste proprietà sono significative per i documenti DOCX conformi aISO/IEC 29500. Quando si salvano in formati precedenti a ISO / IEC 29500, queste proprietà vengono ignorate.

Nell'esempio di codice seguente viene illustrato come impostare le proprietà title e description di una tabella:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
