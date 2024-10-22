---
title: Lavorare con colonne e righe in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con colonne e righe
linktitle: Lavorare con colonne e righe
description: "Lavorare con parti di una tabella-righe, colonne e celle utilizzando C++. Specificare la riga di intestazione C++."
type: docs
weight: 30
url: /it/cpp/working-with-columns-and-rows/
---

Per un maggiore controllo sul funzionamento delle tabelle, scopri come manipolare colonne e righe.

## Trova l'indice dell'elemento tabella

Le colonne, le righe e le celle vengono gestite accedendo al nodo del documento selezionato dal relativo indice. Trovare l'indice di qualsiasi nodo comporta la raccolta di tutti i nodi figlio del tipo di elemento dal nodo padre e quindi utilizzare il metodo [IndexOf](https://reference.aspose.com/words/cpp/aspose.words/nodecollection/indexof/) per trovare l'indice del nodo desiderato nella raccolta.

### Trovare l'indice di una tabella in un documento

A volte potrebbe essere necessario apportare modifiche a una tabella particolare in un documento. Per fare ciò, puoi fare riferimento a una tabella in base al suo indice.

L'esempio di codice seguente mostra come recuperare l'indice di una tabella in un documento:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-table-index.h" >}}

### Trova l'indice di una riga in una tabella {#find-the-index-of-a-row-in-a-table}

Allo stesso modo, potrebbe essere necessario apportare modifiche a una riga specifica in una tabella selezionata. Per fare ciò, puoi anche fare riferimento a una riga dal suo indice.

L'esempio di codice seguente mostra come recuperare l'indice di una riga in una tabella:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-row-index.h" >}}

### Trova l'indice di una cella in una riga {#find-the-index-of-a-cell-in-a-row}

Infine, potrebbe essere necessario apportare modifiche a una cella specifica, e puoi farlo anche per indice di cella.

L'esempio di codice seguente mostra come recuperare l'indice di una cella in una riga:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "retrieve-cell-index.h" >}}

## Lavorare con le colonne

Nel Aspose.Words Document Object Model (DOM), il nodo [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) è costituito da nodi [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) e quindi nodi [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/). Pertanto, nel modello a oggetti `Document` di Aspose.Words, come nei documenti Word, non esiste il concetto di colonna.

In base alla progettazione, le righe della tabella in Microsoft Word e Aspose.Words sono completamente indipendenti e le proprietà e le operazioni di base sono contenute solo nelle righe e nelle celle della tabella. Questo dà alle tabelle la possibilità di avere alcuni attributi interessanti:

- Ogni riga della tabella può avere un numero completamente diverso di celle
- Verticalmente, le celle di ogni riga possono avere larghezze diverse
- È possibile unire tabelle con diversi formati di riga e numero di celle

Tutte le operazioni eseguite sulle colonne sono in realtà "scorciatoie" che eseguono l'operazione modificando collettivamente le celle di riga in modo tale che sembra che vengano applicate alle colonne. Cioè, è possibile eseguire operazioni su colonne semplicemente iterando sullo stesso indice di cella di riga della tabella.

Il seguente esempio di codice semplifica tali operazioni dimostrando una classe facade che raccoglie le celle che costituiscono una "colonna" di una tabella:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "column-class.h" >}}

L'esempio di codice seguente mostra come inserire una colonna vuota in una tabella:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "insert-blank-column.h" >}}

L'esempio di codice seguente mostra come rimuovere una colonna da una tabella in un documento:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "remove-column.h" >}}

## Specificare le righe come righe di intestazione

È possibile scegliere di ripetere la prima riga della tabella come riga di intestazione solo nella prima pagina o in ogni pagina se la tabella è divisa in più. In Aspose.Words, è possibile ripetere la riga di intestazione su ogni pagina utilizzando la proprietà [HeadingFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_headingformat/).

È inoltre possibile contrassegnare più righe di intestazione se tali righe si trovano una dopo l'altra all'inizio della tabella. Per fare ciò, è necessario applicare le proprietà **HeadingFormat** a queste righe.

{{% alert color="primary" %}}

Si noti che le righe di intestazione non funzionano nelle tabelle nidificate. Cioè, se hai una tabella all'interno di un'altra tabella, questa impostazione non avrà alcun effetto. È una limitazione di Microsoft Word che non consente questo, non Aspose.Words.

{{% /alert %}}

L'esempio di codice seguente mostra come creare una tabella che include righe di intestazione che si ripetono nelle pagine successive:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "repeat-rows-on-subsequent-pages.h" >}}

## Evitare che tabelle e righe si rompano tra le pagine

Ci sono momenti in cui il contenuto di una tabella non deve essere diviso tra le pagine. Ad esempio, se un titolo è sopra una tabella, il titolo e la tabella dovrebbero sempre essere tenuti insieme sulla stessa pagina per preservare l'aspetto corretto.

Ci sono due tecniche separate che sono utili per raggiungere questa funzionalità:

- `Allow row break across pages`, che viene applicato alle righe della tabella
- `Keep with next`, che viene applicato ai paragrafi nelle celle della tabella

Per impostazione predefinita, le proprietà di cui sopra sono disabilitate.

### Evitare che una riga si rompa tra le pagine {#keep-a-row-from-breaking-across-pages}

Ciò comporta la limitazione del contenuto all'interno delle celle di una riga da dividere in una pagina. In Microsoft Word, questo può essere trovato sotto le proprietà della tabella come l'opzione "Consenti alla riga di suddividere le pagine". In Aspose.Words questo si trova sotto l'oggetto [RowFormat](hhttps://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) di un [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) come proprietà [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_allowbreakacrosspages/).

L'esempio di codice seguente mostra come disabilitare l'interruzione delle righe tra le pagine per ogni riga di una tabella:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "row-format-disable-break-across-pages.h" >}}

### Impedire a una tabella di attraversare le pagine {#keep-a-table-from-breaking-across-pages}

Per impedire che la tabella si divida tra le pagine, è necessario specificare che vogliamo che il contenuto contenuto all'interno della tabella rimanga insieme.

A tale scopo, Aspose.Words utilizza un metodo che consente agli utenti di selezionare una tabella e abilitare il parametro [KeepWithNext](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_keepwithnext/) su true per ogni paragrafo all'interno delle celle della tabella. L'eccezione è l'ultimo paragrafo della tabella, che dovrebbe essere impostato su false.

Il seguente esempio di codice mostra come impostare una tabella per stare insieme sulla stessa pagina:

{{< gist "aspose-words-gists" "08b4741d451b8f6519bcb0b916f18bb8" "keep-table-together.h" >}}
