---
title: Panoramica della tabella
second_title: Aspose.Words per .NET
articleTitle: Panoramica della tabella
linktitle: Panoramica della tabella
description: "Lavora con tabelle e i loro componenti come celle, righe, colonne in Aspose.Words per .NET. Come lavorare con le tabelle in C#."
type: docs
weight: 10
url: /it/net/table-overview/
---

Aspose.Words è una libreria di classi progettata per l'elaborazione lato server di documenti in vari formati – PDF, HTML, diversi formati Microsoft Word e altri – e supporta le tabelle nei seguenti modi:

* le tabelle in un documento vengono conservate durante l'apertura/salvataggio e le conversioni
* è possibile modificare la tabella, il contenuto e la sua formattazione, quindi esportare le modifiche in un file in un formato che supporti le tabelle

In questo articolo impareremo di più sulla struttura della tabella, sulle celle, sulle righe e sulle colonne supportate da Aspose.Words e sui dettagli su come lavorare con tali tabelle.

## Struttura della tabella

Come già accennato, la tabella è composta da elementi come **Cell**, **Row** e **Column**. Si tratta di concetti comuni a tutte le tabelle in generale, indipendentemente dal formato del documento.

Questo è un esempio comune di tabella trovata in un documento Microsoft Word:

![tables-overview-aspose-words-net-1](/words/net/table-overview/tables-overview-1.png)

### Nodi della tabella

Una tabella di qualsiasi documento caricato in Aspose.Words viene importata come **Nodo tabella**. La tabella può essere trovata come figlia di:

- testo principale
- una storia in linea come un commento o una nota a piè di pagina
- celle quando una tabella è nidificata all'interno di un'altra tabella

{{% alert color="primary" %}}

Tieni presente che le tabelle possono essere nidificate all'interno di altre tabelle a qualsiasi profondità.

{{% /alert %}}

### Contenuto della tabella

Il nodo della tabella non contiene alcun contenuto reale, ma è un contenitore per altri nodi simili che compongono il contenuto:

- **Table** contiene molti nodi **Row**. La tabella fornisce tutti i consueti elementi del nodo, consentendoti di spostare, modificare e rimuovere liberamente la tabella nel documento.
- **Row** rappresenta una singola riga di tabella e contiene molti nodi **Cell**. Inoltre, il **Row** fornisce elementi che definiscono come viene visualizzata la riga, come altezza e allineamento.
- **Cell** è ciò che contiene il contenuto true visibile nella tabella ed è composto da un **Paragraph** e da altri nodi a livello di blocco. Inoltre, le celle possono contenere tabelle nidificate.

![tables-overview-aspose-words-net-2](/words/net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Puoi controllare la struttura dei nodi della tabella in un documento utilizzando **DocumentExplorer**.

{{% /alert %}}

### Paragrafo vuoto dopo la tabella

L'immagine sopra mostra che il documento contiene una tabella composta da più righe, che a loro volta è composta da due celle. Ognuna delle due celle include un paragrafo, che è il contenitore del testo formattato della cella.

Vale anche la pena notare che per separare due tabelle consecutive in un documento è necessario almeno un paragrafo vuoto dopo la tabella. Senza tale paragrafo, le tabelle consecutive verrebbero unite in una sola. Questo comportamento è identico sia in Microsoft Word che in Aspose.Words.

In Aspose.Words, tutte le classi e le proprietà relative alle tabelle sono contenute nello spazio dei nomi [Aspose.Words.Tables](https://reference.aspose.com/words/net/aspose.words.tables/).

## Guarda anche

* [Aspose.Words Document Object Model (DOM)](/words/it/net/aspose-words-document-object-model/)
* [Livelli logici dei nodi in un documento](/words/it/net/logical-levels-of-nodes-in-a-document/)