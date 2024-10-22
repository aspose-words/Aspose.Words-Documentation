---
title: Panoramica della tabella
second_title: Aspose.Words per C++
articleTitle: Panoramica della tabella
linktitle: Panoramica della tabella
description: "Lavorare con le tabelle e i loro componenti come celle, righe, colonne in Aspose.Words per C++. Come lavorare con le tabelle in C++."
type: docs
weight: 10
url: /it/cpp/table-overview/
---

Aspose.Words è una libreria di classi progettata per l'elaborazione lato server di documenti in vari formati - PDF, HTML, diversi formati Microsoft Word e altri-e supporta le tabelle nei seguenti modi:

* le tabelle in un documento vengono conservate durante l'apertura/salvataggio e le conversioni
* è possibile modificare la tabella, il contenuto e la relativa formattazione, quindi esportare le modifiche in un file in un formato che supporti le tabelle

In questo articolo, impareremo di più sulla struttura delle tabelle, le celle, le righe e le colonne supportate da Aspose.Words e i dettagli su come lavorare con tali tabelle.

## Struttura della tabella

Come già accennato, la tabella è composta da elementi come **Cell**, **Row** e **Column**. Questi sono concetti comuni a tutte le tabelle in generale, indipendentemente dal formato del documento.

Questo è un esempio comune di una tabella trovata in un documento Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Nodi tabella

Una tabella da qualsiasi documento caricato in Aspose.Words viene importata come **Table node**. Il tavolo può essere trovato come un bambino di:

- testo principale
- una storia in linea come un commento o una nota a piè di pagina
- celle quando una tabella è annidata all'interno di un'altra tabella

{{% alert color="primary" %}}

Si noti che le tabelle possono essere annidate all'interno di altre tabelle a qualsiasi profondità.

{{% /alert %}}

### Contenuto della tabella

Il nodo della tabella non contiene alcun contenuto reale, ma è un contenitore per altri nodi che compongono il contenuto:

- **Table** contiene molti nodi **Row**. La tabella fornisce tutti i soliti elementi del nodo, consentendo di spostare, modificare e rimuovere liberamente la tabella nel documento.
- **Row** rappresenta una singola riga di tabella e contiene molti nodi **Cell**. Inoltre, il **Row** fornisce elementi che definiscono la modalità di visualizzazione della riga, come l'altezza e l'allineamento.
- **Cell** è ciò che contiene il vero contenuto visibile nella tabella ed è composto da un **Paragraph** e altri nodi a livello di blocco. Inoltre, le celle possono contenere tabelle nidificate.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

È possibile controllare la struttura dei nodi della tabella in un documento utilizzando **DocumentExplorer**.

{{% /alert %}}

### Paragrafo vuoto dopo la tabella

L'immagine sopra mostra che il documento contiene una tabella di più righe, che a sua volta consiste di due celle. Ciascuna delle due celle include un paragrafo, che è il contenitore per il testo formattato della cella.

Vale anche la pena notare che la separazione di due tabelle consecutive in un documento richiede almeno un paragrafo vuoto dopo la tabella. Senza tale paragrafo, le tabelle consecutive sarebbero unite in una sola. Questo comportamento è identico sia in Microsoft Word che in Aspose.Words.

In Aspose.Words, tutte le classi e le proprietà correlate alle tabelle sono contenute nello spazio dei nomi [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Vedi anche

* [Aspose.Words Modello a oggetti documento (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Livelli logici di nodi in un documento](/words/cpp/logical-levels-of-nodes-in-a-document/)