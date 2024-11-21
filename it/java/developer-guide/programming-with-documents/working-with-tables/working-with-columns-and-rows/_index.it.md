---
title: Lavorare con colonne e righe in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con colonne e righe
linktitle: Lavorare con colonne e righe
description: "Lavorare con parti di una tabella – righe, colonne e celle utilizzando Java. Specificare la riga dell'intestazione Java."
type: docs
weight: 30
url: /it/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Per un maggior controllo su come funzionano le tabelle, imparare a manipolare colonne e righe.

## Trova l'indice degli elementi della tabella

Colonne, righe e celle sono gestite accedendo al nodo del documento selezionato dal suo indice. Trovare l'indice di qualsiasi nodo comporta raccogliere tutti i nodi di bambino del tipo di elemento dal nodo genitore, e quindi utilizzare il [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) metodo per trovare l'indice del nodo desiderato nella raccolta.

### Trova l'indice di una tabella in un documento

A volte potrebbe essere necessario apportare modifiche a una tabella particolare in un documento. Per fare questo, è possibile fare riferimento a una tabella dal suo indice.

Il seguente esempio di codice mostra come recuperare l'indice di una tabella in un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Trovare l'indice di una riga in una tabella

Allo stesso modo, potrebbe essere necessario apportare modifiche a una riga specifica in una tabella selezionata. Per fare questo, è anche possibile fare riferimento a una riga per il suo indice.

Il seguente esempio di codice mostra come recuperare l'indice di una riga in una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Trovare l'indice di una cella in una riga

Infine, potrebbe essere necessario apportare modifiche a una cella specifica, e si puÃ2 fare questo per indice di cella pure.

Il seguente esempio di codice mostra come recuperare l'indice di una cella in una riga:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Lavorare con colonne

Nel Aspose.Words Document Object Model (DOM), [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) nodo è costituito da [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) nodi e poi [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) Nodi. Così, nel `Document` Modello di oggetto Aspose.Words, come nei documenti di Word, non c'è concetto di una colonna.

Per design, le righe di tabella in Microsoft Word e Aspose.Words sono completamente indipendenti, e le proprietà e le operazioni di base sono contenute solo nelle file e nelle celle della tabella. Questo dà alle tabelle la capacità di avere alcuni attributi interessanti:

- Ogni riga di tabella può avere un numero completamente diverso di celle
- Verticalmente, le celle di ogni riga possono avere larghezze diverse
- No. È possibile unire tabelle con diversi formati di riga e numero di celle

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Qualsiasi operazione eseguita su colonne sono in realtà "shortcuts" che eseguono l'operazione cambiando collettivamente le celle di riga in modo che sembra che siano applicate alle colonne. Cioè, è possibile eseguire operazioni su colonne semplicemente iterating sopra lo stesso indice della cella della riga della tabella.

Il seguente esempio di codice semplifica tali operazioni dimostrando una classe di facciata che raccoglie le celle che compongono una "colonna" di una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

Il seguente esempio di codice mostra come inserire una colonna vuota in una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

Il seguente esempio di codice mostra come rimuovere una colonna da una tabella in un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Specificare righe come righe di intestazione

È possibile scegliere di ripetere la prima riga nella tabella come intestazione riga solo sulla prima pagina o su ogni pagina se la tabella è divisa in diversi. In Aspose.Words, è possibile ripetere la riga di intestazione in ogni pagina utilizzando [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) proprieta'.

È inoltre possibile contrassegnare più righe di intestazione se tali righe si trovano uno dopo l'altro all'inizio della tabella. Per fare questo, è necessario applicare il **HeadingFormat** proprietà a queste righe.

{{% alert color="primary" %}}

Nota che le righe dell'intestazione non funzionano nelle tabelle nidificate. Cioè, se hai un tavolo all'interno di un altro tavolo, questa impostazione non avrà effetto. È una limitazione Microsoft Word che non permette questo, non Aspose.Words.

{{% /alert %}}

Il seguente esempio di codice mostra come costruire una tabella che include Header Rows che si ripetono sulle pagine successive:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Tenere tabelle e righe da Breaking Across Pages {#keep-tables-and-rows-from-breaking-across-pages}

Ci sono momenti in cui il contenuto di una tabella non dovrebbe essere diviso in pagine. Per esempio, se un titolo è sopra una tabella, il titolo e la tabella devono sempre essere tenuti insieme sulla stessa pagina per preservare l'aspetto corretto.

Ci sono due tecniche separate che sono utili per raggiungere questa funzionalità:

- No. `Allow row break across pages`, che viene applicato alle righe di tabella
- No. `Keep with next`, che si applica ai paragrafi nelle celle della tabella

Per impostazione predefinita, le proprietà di cui sopra sono disabilitate.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Tenere una riga da Breaking Across Pages {#keep-a-row-from-breaking-across-pages}

Ciò comporta la limitazione del contenuto all'interno delle celle di una riga dall'essere diviso in una pagina. In Microsoft Word, questo può essere trovato sotto Proprietà della tabella come l'opzione "Consentire la riga per rompere attraverso le pagine". In Aspose.Words questo si trova sotto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) oggetto di un [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) come la proprietà [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Il seguente esempio di codice mostra come disabilitare le righe di rottura attraverso le pagine per ogni riga in una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Tenere una tabella da Pagine di rottura {#keep-a-table-from-breaking-across-pages}

Per impedire alla tabella di dividersi tra le pagine, dobbiamo specificare che vogliamo che i contenuti contenuti contenuti all'interno della tabella rimangano insieme.

Per farlo, Aspose.Words utilizza un metodo, che consente agli utenti di selezionare una tabella e abilitare [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) parametro a true per ogni paragrafo all'interno delle celle della tabella. L'eccezione è l'ultimo paragrafo della tabella, che dovrebbe essere impostato su false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Il seguente esempio di codice mostra come impostare una tabella per stare insieme sulla stessa pagina:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
