---
title: Introduzione e creazione di tabelle
second_title: Aspose.Words per Python via .NET
articleTitle: Introduzione e creazione di tabelle
linktitle: Introduzione e creazione di tabelle
description: "Crea e gestisci tabelle in un documento utilizzando Python."
type: docs
weight: 10
url: /it/python-net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words consente agli utenti di creare tabelle in un documento da zero e fornisce diversi metodi per farlo. Questo articolo presenta i dettagli su come aggiungere tabelle formattate al documento utilizzando ciascun metodo, nonché un confronto tra ciascun metodo alla fine dell'articolo.

## Stili di tabella predefiniti

Alla tabella appena creata vengono assegnati valori predefiniti simili a quelli utilizzati in Microsoft Word:

| Proprietà tabella | Predefinito in Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Una tabella può essere in linea se è posizionata in modo stretto oppure mobile se può essere posizionata in qualsiasi punto della pagina. Per impostazione predefinita, Aspose.Words crea sempre tabelle in linea.

{{% /alert %}}

## Crea una tabella con DocumentBuilder

In Aspose.Words, gli utenti possono creare una tabella in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). L'algoritmo di base per creare una tabella è il seguente:

1. Inizia la tabella con [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Aggiungi una cella alla tabella utilizzando [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/): questo avvia automaticamente una nuova riga
3. Facoltativamente, utilizzare la proprietà [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) per specificare la formattazione della cella
4. Inserisci il contenuto della cella utilizzando i metodi **DocumentBuilder** appropriati come [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) e altri
5. Ripetere i passaggi 2-4 fino al completamento della riga
6. Chiama [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) per terminare la riga corrente
7. Facoltativamente, utilizzare la proprietà [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) per specificare la formattazione della riga
8. Ripetere i passaggi da 2 a 7 fino al completamento della tabella
9. Chiama [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) per completare la creazione della tabella

{{% alert color="primary" %}}

Dettagli importanti:

- È possibile richiamare [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) anche all'interno di una cella, nel qual caso avvia la creazione di una tabella nidificata all'interno della cella.
- Dopo aver chiamato [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), viene creata una nuova cella e qualsiasi contenuto aggiunto utilizzando altri metodi della classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) verrà aggiunto alla cella corrente. Per creare una nuova cella sulla stessa riga, richiama nuovamente **InsertCell**.
- Se **InsertCell** viene richiamato immediatamente dopo [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) e la fine di una riga, la tabella continuerà su una nuova riga.
- Il metodo [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) per terminare la tabella deve essere chiamato solo una volta dopo aver chiamato **EndRow**. La chiamata **EndTable** sposta il cursore dalla cella corrente alla posizione immediatamente dopo la tabella.

{{% /alert %}}

Il processo di creazione di una tabella può essere visto chiaramente nella seguente immagine:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="processo di creazione della tabella" style="zoom:50%;" />

L'esempio di codice seguente mostra come creare una tabella semplice utilizzando **DocumentBuilder** con formattazione predefinita:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

Il seguente esempio di codice mostra come creare una tabella formattata utilizzando DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

Il seguente esempio di codice mostra come inserire una tabella nidificata utilizzando DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Crea una tabella tramite DOM (Document Object Model)

Puoi inserire tabelle direttamente nel DOM aggiungendo un nuovo nodo [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) in una posizione specifica.

Tieni presente che subito dopo la creazione del nodo della tabella, la tabella stessa sarà completamente vuota, ovvero non conterrà ancora righe e celle. Per inserire righe e celle in una tabella, aggiungere i nodi secondari [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) e [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) appropriati all'DOM.

{{% alert color="primary" %}}

Questo metodo di creazione di una tabella utilizza le stesse impostazioni predefinite della tabella di quando si utilizza **DocumentBuilder**.

{{% /alert %}}

Il seguente esempio di codice mostra come creare una nuova tabella da zero aggiungendo i nodi figlio appropriati all'albero del documento:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create una tabella da HTML

Aspose.Words supporta l'inserimento di contenuto in un documento da un'origine HTML utilizzando il metodo [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/). L'input può essere una pagina HTML completa o solo uno snippet parziale.

Utilizzando il metodo **InsertHtml**, gli utenti possono inserire tabelle nel documento tramite tag di tabella come `<table>`, `<tr>`, `<td>`.

Il seguente esempio di codice mostra come inserire una tabella in un documento da una stringa contenente tag HTML:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Inserisci una copia di una tabella esistente

Ci sono spesso momenti in cui è necessario creare una tabella basata su una tabella già esistente in un documento. Il modo più semplice per duplicare una tabella mantenendo tutta la formattazione è clonare il nodo Tabella utilizzando il metodo [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/).

La stessa tecnica può essere utilizzata per aggiungere copie di una riga o cella esistente a una tabella.

L'esempio di codice seguente mostra come duplicare una tabella utilizzando i costruttori di nodi:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come clonare l'ultima riga di una tabella e aggiungerla alla tabella:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Se stai cercando di creare tabelle in un documento che crescono dinamicamente con ogni record della tua origine dati, il metodo sopra descritto non è consigliato. Invece, il risultato desiderato si ottiene più facilmente utilizzando Mail merge con le regioni.

## Confronta i modi per creare una tabella

Aspose.Words fornisce diversi metodi per creare nuove tabelle in un documento. Ogni metodo presenta vantaggi e svantaggi, quindi la scelta di quale utilizzare dipende spesso dalla situazione specifica.

Diamo uno sguardo più da vicino a questi modi di creare tabelle e confrontiamo i loro pro e contro:

|  Metodo | Vantaggi |  Svantaggi |
|  :-  |  :-  |  :-  |
| Tramite DocumentBuilder | Il metodo standard per inserire tabelle e altro contenuto di documenti | A volte è difficile creare molte varietà di tabelle contemporaneamente con la stessa istanza del builder |
| Tramite DOM |  Si adatta meglio al codice circostante che crea e inserisce i nodi direttamente nel DOM senza utilizzare un **DocumentBuilder** | La tabella viene creata "vuota": prima di eseguire la maggior parte delle operazioni, è necessario richiamare [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) per creare eventuali nodi figli mancanti |
| Dall'HTML | Può creare una nuova tabella da sorgente HTML utilizzando tag come `<table>`, `<tr>`, `<td>` | Non tutti i possibili formati di tabella Microsoft Word possono essere applicati all'HTML |
| Clonazione di una tabella esistente | Puoi creare una copia di una tabella esistente mantenendo tutta la formattazione di righe e celle | I nodi figlio appropriati devono essere rimossi prima che la tabella sia pronta per l'uso |
