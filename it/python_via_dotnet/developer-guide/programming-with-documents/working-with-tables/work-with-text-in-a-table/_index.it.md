---
title: Lavorare con il testo in una tabella
second_title: Aspose.Words per Python
articleTitle: Lavorare con il testo in una tabella
linktitle: Lavorare con il testo in una tabella
description: "Sostituisci il testo in una tabella in Python. Estrai testo semplice da una tabella o cella utilizzando Python."
type: docs
weight: 60
url: /it/python-net/work-with-text-in-a-table/
---

Come accennato negli articoli precedenti, una tabella solitamente contiene testo semplice, sebbene nelle celle della tabella sia possibile inserire altri contenuti come immagini o anche altre tabelle.

L'aggiunta di testo o altro contenuto alla tabella viene effettuata utilizzando gli appositi metodi della classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ed è descritta nell'articolo **"Crea una tabella"**. In questo articolo parleremo di come lavorare con il testo in una tabella già esistente.

## Sostituisci il testo in una tabella

La tabella, come qualsiasi altro nodo in Aspose.Words, ha accesso all'oggetto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). Utilizzando l'oggetto intervallo tabella, puoi sostituire il testo in una tabella.

La possibilità di utilizzare caratteri speciali durante la sostituzione è attualmente supportata, quindi è possibile sostituire il testo esistente con testo composto da più paragrafi. Per fare ciò è necessario utilizzare i metacaratteri speciali descritti nel corrispondente metodo [Replace](https://reference.aspose.com/words/python-net/aspose.words/range/replace/#str_str).

{{% alert color="primary" %}}

In genere, la sostituzione del testo deve essere eseguita a livello di cella (per cella) o a livello di paragrafo.

{{% /alert %}}

L'esempio di codice seguente mostra come sostituire tutte le istanze di una stringa di testo nelle celle di un'intera tabella:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "replace-text.py" >}}

## Estrai testo semplice da una tabella o da una cella

Utilizzando l'oggetto **Range**, puoi anche chiamare metodi sull'intero intervallo di tabelle ed estrarre la tabella come testo semplice. A tale scopo, utilizzare la proprietà [Text](https://reference.aspose.com/words/python-net/aspose.words/range/text/)

L'esempio di codice seguente mostra come stampare l'intervallo di testo di una tabella:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "extract-text.py" >}}

La stessa tecnica viene utilizzata per estrarre il contenuto solo dalle singole celle della tabella.

L'esempio di codice seguente mostra come stampare un intervallo di testo di elementi di riga e tabella:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "print-text-range-row-and-table.py" >}}

## Lavorare con testo di tabella alternativo

Le tabelle Microsoft Word hanno un formato `table title` e `table description` che forniscono una rappresentazione testuale alternativa delle informazioni contenute nella tabella.

In Aspose.Words è anche possibile aggiungere un titolo e una descrizione alla tabella utilizzando le proprietà [Title](https://reference.aspose.com/words/python-net/aspose.words.tables/table/title/) e [Description](https://reference.aspose.com/words/python-net/aspose.words.tables/table/description/). Queste proprietà sono significative per i documenti DOCX conformi a ISO/IEC 29500. Quando si salvano in formati precedenti a ISO/IEC 29500, queste proprietà vengono ignorate.

L'esempio di codice seguente mostra come impostare le proprietà titolo e descrizione di una tabella:

{{< gist "aspose-words-gists" "a47401178cba165f62701f6c94e8a4ec" "table-title-and-description.py" >}}

