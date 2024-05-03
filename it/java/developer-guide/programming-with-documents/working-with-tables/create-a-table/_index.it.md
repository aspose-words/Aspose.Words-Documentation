---
title: Come Creare una Tavola in Java
second_title: Aspose.Words per Java
articleTitle: Creare una tabella
linktitle: Creare una tabella
description: "Diversi modi per creare tabelle nel documento utilizzando Java."
type: docs
weight: 20
url: /it/java/create-a-table/
---

Aspose.Words consente agli utenti di creare tabelle in un documento da zero e fornisce diversi metodi per farlo. Questo articolo presenta dettagli su come aggiungere tabelle formattate al documento utilizzando ogni metodo, così come un confronto di ogni metodo alla fine dell'articolo.

## Stili da tavolo predefiniti

La tabella appena creata è data valori di default simili a quelli utilizzati in Microsoft Word:

| Proprietà della Tabella | Predefinito in Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Colore di confine |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Una tabella può essere in linea se è posizionata strettamente, o galleggiante se può essere posizionata ovunque sulla pagina. Per impostazione predefinita, Aspose.Words crea sempre tavoli in linea.

{{% /alert %}}

## Creare una tabella con DocumentBuilder

In Aspose.Words, gli utenti possono creare una tabella in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). L'algoritmo di base per la creazione di una tabella è il seguente:

1. Avviare il tavolo con [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Aggiungere una cella alla tabella utilizzando [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – questo inizia automaticamente una nuova riga
3. Opzionalmente, utilizzare il [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) proprietà per specificare la formattazione della cella
4. Inserisci il contenuto della cella utilizzando l'apposito **DocumentBuilder** metodi quali [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), e altri
5. Ripetere i passaggi 2-4 finché la riga non è completa
6. Chiamata [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) per terminare la riga corrente
7. Opzionalmente, utilizzare il [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) proprietà per specificare la formattazione della riga
8. Ripetere i passaggi 2-7 fino a quando la tabella non è completa
9. Chiamata [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) per finire la costruzione del tavolo

{{% alert color="primary" %}}

Dettagli importanti:

- No. [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) può anche essere chiamato all'interno di una cella, in cui il caso inizia la creazione di un tavolo nidiato all'interno della cella.
- Dopo aver chiamato [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), viene creata una nuova cella e qualsiasi contenuto che aggiungi utilizzando altri metodi [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) la classe verrà aggiunta alla cella corrente. Per creare una nuova cella sulla stessa riga, chiama **InsertCell** Ancora.
- Se **InsertCell** è chiamato subito dopo [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) e la fine di una riga, la tabella continuerà su una nuova riga.
- The [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) metodo per terminare la tabella dovrebbe essere chiamato solo una volta dopo aver chiamato **EndRow**. Chiamare **EndTable** sposta il cursore dalla cella corrente alla posizione immediatamente dopo la tabella.

{{% /alert %}}

Il processo di creazione di una tabella può essere visto chiaramente nell'immagine seguente:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

Il seguente esempio di codice mostra come creare una tabella semplice utilizzando **DocumentBuilder** con formattazione predefinita:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Il seguente esempio di codice mostra come creare una tabella formattata usando DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Il seguente esempio di codice mostra come inserire una tabella nidificata usando DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Creare una tabella tramite DOM (Document Object Model)

È possibile inserire le tabelle direttamente nel DOM aggiungendo un nuovo [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) nodo in una posizione specifica.

Si prega di notare che subito dopo la creazione del nodo da tavolo, la tabella stessa sarà completamente vuota, cioè non contiene ancora righe e celle. Per inserire righe e celle in una tabella, aggiungere l'apposito [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) nodi bambino al DOM.

{{% alert color="primary" %}}

Questo metodo di creazione di una tabella utilizza la stessa tabella di default come quando si utilizza **DocumentBuilder**.

{{% /alert %}}

Il seguente esempio di codice mostra come costruire una nuova tabella da zero aggiungendo i nodi bambino appropriati all'albero del documento:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Creare una tabella da HTML

Aspose.Words supporta l'inserimento dei contenuti in un documento da una sorgente HTML utilizzando [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) metodo. L'ingresso può essere una pagina HTML completa o solo uno snippet parziale.

Usare questo **InsertHtml** metodo, gli utenti possono inserire tabelle nel documento tramite tag di tabella come `<table>`, `<tr>`, `<td>`.

Il seguente esempio di codice mostra come inserire una tabella in un documento da una stringa contenente tag HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Inserire una copia di una tabella esistente

Ci sono spesso volte in cui è necessario creare una tabella basata su una tabella già esistente in un documento. Il modo più semplice per duplicare una tabella mantenendo tutta la formattazione è clonare il nodo Tabella utilizzando il [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) metodo.

La stessa tecnica può essere utilizzata per aggiungere copie di una riga o di una cella esistente a una tabella.

Il seguente esempio di codice mostra come duplicare una tabella usando i costruttori di nodo:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Il seguente esempio di codice mostra come clonare l'ultima riga di una tabella e aggiungerla alla tabella:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Se si sta cercando di creare tabelle in un documento che crescono dinamicamente con ogni record dalla fonte di dati, allora il metodo sopra non è consigliato. Invece, l'output desiderato è più facilmente raggiunto utilizzando Mail merge con le regioni. Si può imparare di più su questa tecnica in [Mail Merge con le regioni](/words/java/types-of-mail-merge-operations/) sezione.

## Confronta i modi per creare una tabella

Aspose.Words fornisce diversi metodi per creare nuove tabelle in un documento. Ogni metodo ha i suoi vantaggi e svantaggi, quindi la scelta di cui usare dipende spesso dalla situazione specifica.

Diamo un'occhiata più da vicino a questi modi di creare tavoli e confrontare i loro pro e contro:

|  Metodo | Vantaggi |  Svantaggi |
|  :-  |  :-  |  :-  |
| Via Via `DocumentBuilder` | Il metodo standard per l'inserimento di tabelle e altri contenuti di documento | A volte difficile creare molte varietà di tavoli allo stesso tempo con la stessa istanza costruttore |
| Via Via DOM |  Si adatta meglio con il codice circostante che crea e inserisce nodi direttamente nel DOM senza utilizzare **DocumentBuilder** | La tabella viene creata "vuota": prima di eseguire la maggior parte delle operazioni, devi chiamare [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) per creare qualsiasi nodo bambino mancante |
| Da HTML | Può creare una nuova tabella dalla fonte HTML utilizzando tag come `<table>`, `<tr>`, `<td>` | Non tutto il possibile Microsoft Word formati da tavolo possono essere applicati a HTML |
| Chiusura di una tabella esistente | È possibile creare una copia di una tabella esistente mantenendo tutta la formattazione della riga e della cella | I nodi bambino appropriati devono essere rimossi prima che la tabella sia pronta per l'uso |
