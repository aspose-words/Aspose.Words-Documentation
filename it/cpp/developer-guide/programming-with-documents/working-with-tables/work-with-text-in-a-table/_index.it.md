---
title: Lavorare con il testo in una tabella
second_title: Aspose.Words per C++
articleTitle: Lavorare con il testo in una tabella
linktitle: Lavorare con il testo in una tabella
description: "Sostituire il testo in una tabella in C++. Estrarre testo normale da tabella o cella utilizzando C++."
type: docs
weight: 60
url: /it/cpp/work-with-text-in-a-table/
---

Come accennato negli articoli precedenti, una tabella di solito contiene testo normale, anche se altri contenuti come immagini o anche altre tabelle possono essere inseriti nelle celle della tabella.

L'aggiunta di testo o altro contenuto alla tabella viene eseguita utilizzando i metodi appropriati della classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ed è descritta nell'articolo **"Crea una tabella"**. In questo articolo, parleremo di come lavorare con il testo in una tabella già esistente.

## Sostituire il testo in una tabella

La tabella, come qualsiasi altro nodo in Aspose.Words, ha accesso all'oggetto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). Utilizzando l'oggetto intervallo tabella, è possibile sostituire il testo in una tabella.

La possibilità di utilizzare caratteri speciali durante la sostituzione è attualmente supportata, quindi è possibile sostituire il testo esistente con testo a più paragrafi. Per fare ciò, è necessario utilizzare i metacaratteri speciali descritti nel metodo [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) corrispondente.

{{% alert color="primary" %}}

In genere, la sostituzione del testo deve essere eseguita a livello di cella (per cella) o a livello di paragrafo.

{{% /alert %}}

L'esempio di codice seguente mostra come sostituire tutte le istanze di una stringa di testo nelle celle di un'intera tabella:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Estrarre testo normale da tabella o cella

Usando l'oggetto **Range**, puoi anche chiamare metodi sull'intero intervallo di tabelle ed estrarre la tabella come testo normale. Per fare ciò, utilizzare la proprietà [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

L'esempio di codice seguente mostra come stampare l'intervallo di testo di una tabella:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

La stessa tecnica viene utilizzata per estrarre il contenuto solo dalle singole celle della tabella.

L'esempio di codice seguente mostra come stampare un intervallo di testo di elementi di riga e tabella:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Lavorare con testo tabella alternativo

Le tabelle Microsoft Word hanno `table title` e `table description` che forniscono una rappresentazione testuale alternativa delle informazioni contenute nella tabella.

In Aspose.Words, è anche possibile aggiungere un titolo di tabella e una descrizione utilizzando le proprietà [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) e [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Queste proprietà sono significative per i documenti DOCX conformi alla ISO/IEC 29500. Quando si salvano in formati precedenti a ISO / IEC 29500, queste proprietà vengono ignorate.

Nell'esempio di codice seguente viene illustrato come impostare le proprietà title e description di una tabella:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}