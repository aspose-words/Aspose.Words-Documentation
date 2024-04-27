---
title: Panoramica della tabella
second_title: Aspose.Words per Java
articleTitle: Panoramica della tabella
linktitle: Panoramica della tabella
description: "Lavorare con le tabelle e i loro componenti come celle, righe, colonne in Aspose.Words per Java. Come lavorare con i tavoli in Java."
type: docs
weight: 10
url: /it/java/table-overview/
---

Aspose.Words è una libreria di classe progettata per l'elaborazione lato server di documenti in vari formati – PDF, HTML, diverso Microsoft Word formati e altri – e supporta le tabelle nei seguenti modi:

* le tabelle in un documento sono conservate durante l'apertura/salvata e le conversioni
* è possibile modificare la tabella, il contenuto e la sua formattazione, e quindi esportare le modifiche in un file in un formato che supporta le tabelle

In questo articolo, impareremo di più sulla struttura della tabella, le celle, le righe e le colonne supportate da Aspose.Words, e i dettagli di lavorare con tali tabelle.

## Struttura del tavolo

Come già detto, la tabella consiste in elementi come **Cell**, **Row** e **Column**. Questi sono concetti che sono comuni a tutte le tabelle in generale, indipendentemente dal formato del documento.

Questo è un esempio comune di una tabella trovata in una Microsoft Word documento:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Nomi di tabella

Una tabella da qualsiasi documento caricato in Aspose.Words è importato come **Numero della tabella**. Il tavolo può essere trovato come un bambino di:

- testo principale
- una storia in linea come un commento o una nota a piè di pagina
- celle quando un tavolo è nidificato all'interno di un'altra tabella

{{% alert color="primary" %}}

Si noti che le tabelle possono essere nidificate all'interno di altre tabelle a qualsiasi profondità.

{{% /alert %}}

### Contenuto della tabella

Il nodo della tabella non contiene alcun contenuto reale – invece, è un contenitore per altri nodi che compongono il contenuto:

- No. **Table** contiene molti **Row** Nodi. La tabella fornisce tutti i soliti elementi del nodo, consentendo di spostare, modificare e rimuovere liberamente la tabella nel documento.
- No. **Row** rappresenta una singola riga di tabella e contiene molti **Cell** Nodi. Inoltre, il **Row** fornisce elementi che definiscono come viene visualizzata la riga, come l'altezza e l'allineamento.
- No. **Cell** è ciò che contiene true contenuto visibile nella tabella ed è composto da **Paragraph** e altri nodi di livello blocco. Inoltre, le celle possono contenere tavoli nidificati.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

È possibile controllare la struttura dei nodi di tabella in un documento utilizzando **DocumentExplorer**.

{{% /alert %}}

### Paragrafo vuoto dopo tabella

L'immagine sopra mostra che il documento contiene una tabella di diverse righe, che a sua volta consiste di due celle. Ciascuna delle due celle include un paragrafo, che è il contenitore per il testo formattato della cella.

Vale anche la pena notare che la separazione di due tabelle consecutive in un documento richiede almeno un paragrafo vuoto dopo la tabella. Senza tale paragrafo, le tabelle consecutive sarebbero unite in una sola. Questo comportamento è identico in entrambi Microsoft Word e Aspose.Words.

Aspose.Words ha una serie di classi relative ai tavoli – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), e altri.

## Vedi anche

* [Aspose.Words Document Object Model (DOM)](/words/it/java/aspose-words-document-object-model/)
* [Livelli logici dei nodi in un documento](/words/it/java/logical-levels-of-nodes-in-a-document/)