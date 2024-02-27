---
title: Lavora con colonne e righe in C#
second_title: Aspose.Words per .NET
articleTitle: Lavora con colonne e righe
linktitle: Lavora con colonne e righe
description: "Lavorare con parti di una tabella: righe, colonne e celle utilizzando C#. Specificare la riga di intestazione C#."
type: docs
weight: 30
url: /it/net/working-with-columns-and-rows/
---

Per un maggiore controllo sul funzionamento delle tabelle, scopri come manipolare colonne e righe.

## Trova l'indice degli elementi della tabella {#find-the-index-of-table-elements}

Colonne, righe e celle vengono gestite accedendo al nodo del documento selezionato tramite il suo indice. Trovare l'indice di qualsiasi nodo implica raccogliere tutti i nodi figli del tipo di elemento dal nodo genitore e quindi utilizzare il metodo [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) per trovare l'indice del nodo desiderato nella raccolta.

### Trova l'indice di una tabella in un documento {#find-the-index-of-table-in-a-document}

A volte potrebbe essere necessario apportare modifiche a una tabella particolare in un documento. Per fare ciò, puoi fare riferimento a una tabella tramite il suo indice.

L'esempio di codice seguente mostra come recuperare l'indice di una tabella in un documento:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Trova l'indice di una riga in una tabella {#find-the-index-of-a-row-in-a-table}

Allo stesso modo, potrebbe essere necessario apportare modifiche a una riga specifica in una tabella selezionata. Per fare ciò, puoi anche fare riferimento a una riga tramite il suo indice.

L'esempio di codice seguente mostra come recuperare l'indice di una riga in una tabella:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Trova l'indice di una cella in una riga {#find-the-index-of-a-cell-in-a-row}

Infine, potrebbe essere necessario apportare modifiche a una cella specifica e puoi farlo anche tramite l'indice della cella.

L'esempio di codice seguente mostra come recuperare l'indice di una cella in una riga:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Lavora con colonne {#work-with-columns}

Nel Aspose.Words Document Object Model (DOM), il nodo [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) è costituito da nodi [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) e quindi da nodi [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/). Pertanto, nel modello a oggetti `Document` di Aspose.Words, come nei documenti di Word, non esiste il concetto di colonna.

Per impostazione predefinita, le righe della tabella in Microsoft Word e Aspose.Words sono completamente indipendenti e le proprietà e le operazioni di base sono contenute solo nelle righe e nelle celle della tabella. Ciò dà alle tabelle la possibilità di avere alcuni attributi interessanti:

- Ogni riga della tabella può avere un numero di celle completamente diverso
- In verticale, le celle di ciascuna riga possono avere larghezze diverse
- È possibile unire tabelle con diversi formati di riga e numero di celle

Qualsiasi operazione eseguita sulle colonne è in realtà "scorciatoia" che esegue l'operazione modificando collettivamente le celle della riga in modo tale da sembrare applicate alle colonne. Cioè, puoi eseguire operazioni sulle colonne semplicemente eseguendo un'iterazione sullo stesso indice di cella della riga della tabella.

Il seguente esempio di codice semplifica tali operazioni dimostrando una classe di facciata che raccoglie le celle che compongono una "colonna" di una tabella:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

L'esempio di codice seguente mostra come inserire una colonna vuota in una tabella:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

L'esempio di codice seguente mostra come rimuovere una colonna da una tabella in un documento:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Specificare le righe come righe di intestazione

Puoi scegliere di ripetere la prima riga della tabella come riga di intestazione solo sulla prima pagina o su ogni pagina se la tabella è divisa in più parti. In Aspose.Words, puoi ripetere la riga di intestazione su ogni pagina utilizzando la proprietà [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

Puoi anche contrassegnare più righe di intestazione se tali righe si trovano una dopo l'altra all'inizio della tabella. Per fare ciò, è necessario applicare le proprietà **HeadingFormat** a queste righe.

{{% alert color="primary" %}}

Tieni presente che le righe di intestazione non funzionano nelle tabelle nidificate. Cioè, se hai una tabella all'interno di un'altra tabella, questa impostazione non avrà alcun effetto. È una limitazione di Microsoft Word che non lo consente, non di Aspose.Words.

{{% /alert %}}

L'esempio di codice seguente mostra come creare una tabella che includa righe di intestazione che si ripetono nelle pagine successive:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Evita che tabelle e righe si dividano tra le pagine {#keep-tables-and-rows-from-breaking-across-pages}

Ci sono momenti in cui il contenuto di una tabella non deve essere suddiviso tra le pagine. Ad esempio, se un titolo si trova sopra una tabella, il titolo e la tabella dovrebbero essere sempre tenuti insieme sulla stessa pagina per preservarne l'aspetto corretto.

Esistono due tecniche separate utili per ottenere questa funzionalità:

- `Allow row break across pages`, che viene applicato alle righe della tabella
- `Keep with next`, che viene applicato ai paragrafi nelle celle della tabella

Per impostazione predefinita, le proprietà di cui sopra sono disabilitate.

### Evitare che una riga si rompa tra le pagine {#keep-a-row-from-breaking-across-pages}

Ciò comporta la limitazione della suddivisione del contenuto all'interno delle celle di una riga su una pagina. In Microsoft Word, questo può essere trovato sotto Proprietà tabella come opzione "Consenti alla riga di suddividersi tra le pagine". In Aspose.Words questo si trova sotto l'oggetto [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) di un [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) come proprietà [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

L'esempio di codice seguente mostra come disabilitare l'interruzione delle righe tra le pagine per ogni riga in una tabella:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Evitare che una tabella si divida tra le pagine {#keep-a-table-from-breaking-across-pages}

Per evitare che la tabella si divida su più pagine, dobbiamo specificare che vogliamo che il contenuto contenuto nella tabella rimanga insieme.

Per fare ciò, Aspose.Words utilizza un metodo che consente agli utenti di selezionare una tabella e abilitare il parametro [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) in true per ciascun paragrafo all'interno delle celle della tabella. L'eccezione è l'ultimo paragrafo della tabella, che dovrebbe essere impostato su false.

L'esempio di codice seguente mostra come impostare una tabella in modo che rimanga insieme sulla stessa pagina:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}