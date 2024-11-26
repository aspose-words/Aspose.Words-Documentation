---
title: Lavorare con colonne e righe in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con colonne e righe
linktitle: Lavorare con colonne e righe
description: "Lavorare con parti di una tabella: righe, colonne e celle usando Java. Specificare la riga di intestazione Java."
type: docs
weight: 30
url: /it/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Per un maggiore controllo sul funzionamento delle tabelle, scopri come manipolare colonne e righe.

## Trova l'indice dell'elemento tabella

Le colonne, le righe e le celle vengono gestite accedendo al nodo del documento selezionato dal relativo indice. Trovare l'indice di qualsiasi nodo comporta la raccolta di tutti i nodi figlio del tipo di elemento dal nodo padre e quindi utilizzare il metodo [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) per trovare l'indice del nodo desiderato nella raccolta.

### Trovare l'indice di una tabella in un documento

A volte potrebbe essere necessario apportare modifiche a una tabella particolare in un documento. Per fare ciò, puoi fare riferimento a una tabella in base al suo indice.

L'esempio di codice seguente mostra come recuperare l'indice di una tabella in un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Trovare l'indice di una riga in una tabella

Allo stesso modo, potrebbe essere necessario apportare modifiche a una riga specifica in una tabella selezionata. Per fare ciò, puoi anche fare riferimento a una riga dal suo indice.

L'esempio di codice seguente mostra come recuperare l'indice di una riga in una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Trovare l'indice di una cella in una riga

Infine, potrebbe essere necessario apportare modifiche a una cella specifica, e puoi farlo anche per indice di cella.

L'esempio di codice seguente mostra come recuperare l'indice di una cella in una riga:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Lavorare con le colonne

Nel modello a oggetti del documentoAspose.Words (DOM), il nodo [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) è costituito da nodi [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) e quindi nodi [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). Pertanto, nel modello a oggetti `Document` di Aspose.Words, come nei documenti Word, non esiste il concetto di colonna.

In base alla progettazione, le righe della tabella in Microsoft Word e Aspose.Words sono completamente indipendenti e le proprietà e le operazioni di base sono contenute solo nelle righe e nelle celle della tabella. Questo dà alle tabelle la possibilità di avere alcuni attributi interessanti:

- Ogni riga della tabella può avere un numero completamente diverso di celle
- Verticalmente, le celle di ogni riga possono avere larghezze diverse
- È possibile unire tabelle con diversi formati di riga e numero di celle

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Tutte le operazioni eseguite sulle colonne sono in realtà "scorciatoie" che eseguono l'operazione modificando collettivamente le celle di riga in modo tale che sembra che vengano applicate alle colonne. Cioè, è possibile eseguire operazioni su colonne semplicemente iterando sullo stesso indice di cella di riga della tabella.

Il seguente esempio di codice semplifica tali operazioni dimostrando una classe facade che raccoglie le celle che costituiscono una "colonna" di una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

L'esempio di codice seguente mostra come inserire una colonna vuota in una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

L'esempio di codice seguente mostra come rimuovere una colonna da una tabella in un documento:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Specificare le righe come righe di intestazione

È possibile scegliere di ripetere la prima riga della tabella come riga di intestazione solo nella prima pagina o in ogni pagina se la tabella è divisa in più. In Aspose.Words, è possibile ripetere la riga di intestazione su ogni pagina utilizzando la proprietà [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

È inoltre possibile contrassegnare più righe di intestazione se tali righe si trovano una dopo l'altra all'inizio della tabella. Per fare ciò, è necessario applicare le proprietà **HeadingFormat** a queste righe.

{{% alert color="primary" %}}

Si noti che le righe di intestazione non funzionano nelle tabelle nidificate. Cioè, se hai una tabella all'interno di un'altra tabella, questa impostazione non avrà alcun effetto. È una limitazione di Microsoft Word che non consente questo, non Aspose.Words.

{{% /alert %}}

L'esempio di codice seguente mostra come creare una tabella che include righe di intestazione che si ripetono nelle pagine successive:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Impedisci a tabelle e righe di suddividere le pagine {#keep-tables-and-rows-from-breaking-across-pages}

Ci sono momenti in cui il contenuto di una tabella non deve essere diviso tra le pagine. Ad esempio, se un titolo è sopra una tabella, il titolo e la tabella dovrebbero sempre essere tenuti insieme sulla stessa pagina per preservare l'aspetto corretto.

Ci sono due tecniche separate che sono utili per raggiungere questa funzionalità:

- `Allow row break across pages`, che viene applicato alle righe della tabella
- `Keep with next`, che viene applicato ai paragrafi nelle celle della tabella

Per impostazione predefinita, le proprietà di cui sopra sono disabilitate.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Evitare che una riga si rompa tra le pagine {#keep-a-row-from-breaking-across-pages}

Ciò comporta la limitazione del contenuto all'interno delle celle di una riga da dividere in una pagina. In Microsoft Word, questo può essere trovato sotto le proprietà della tabella come l'opzione "Consenti alla riga di suddividere le pagine". In Aspose.Words questo si trova sotto l'oggetto [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) di un [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) come proprietà [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

L'esempio di codice seguente mostra come disabilitare l'interruzione delle righe tra le pagine per ogni riga di una tabella:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Impedire a una tabella di attraversare le pagine {#keep-a-table-from-breaking-across-pages}

Per impedire che la tabella si divida tra le pagine, è necessario specificare che vogliamo che il contenuto contenuto all'interno della tabella rimanga insieme.

A tale scopo, Aspose.Words utilizza un metodo che consente agli utenti di selezionare una tabella e abilitare il parametro [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) su true per ogni paragrafo all'interno delle celle della tabella. L'eccezione è l'ultimo paragrafo della tabella, che dovrebbe essere impostato su false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

Il seguente esempio di codice mostra come impostare una tabella per stare insieme sulla stessa pagina:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
