---
title: Come creare una tabella in Java
second_title: Aspose.Words per Java
articleTitle: Creare una tabella
linktitle: Creare una tabella
description: "Diversi modi per creare tabelle nel documento utilizzando Java."
type: docs
weight: 20
url: /it/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words consente agli utenti di creare tabelle in un documento da zero e fornisce diversi metodi per farlo. Questo articolo presenta dettagli su come aggiungere tabelle formattate al documento utilizzando ciascun metodo, nonché un confronto di ciascun metodo alla fine dell'articolo.

## Stili di tabella predefiniti

Alla tabella appena creata vengono dati valori predefiniti simili a quelli utilizzati in Microsoft Word:

| Proprietà Tabella | Predefinito in Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Colore del bordo | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Una tabella può essere in linea se è posizionata saldamente, o fluttuante se può essere posizionata in qualsiasi punto della pagina. Per impostazione predefinita, Aspose.Words crea sempre tabelle in linea.

{{% /alert %}}

## Creare una tabella con DocumentBuilder

In Aspose.Words, gli utenti possono creare una tabella in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). L'algoritmo di base per la creazione di una tabella è il seguente:

1. Inizia la tabella con [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Aggiungi una cella alla tabella usando [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) - questo avvia automaticamente una nuova riga
3. Facoltativamente, utilizzare la proprietà [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) per specificare la formattazione delle celle
4. Inserire il contenuto della cella utilizzando i metodi **DocumentBuilder** appropriati, ad esempio [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) e altri
5. Ripetere i passaggi 2-4 fino al completamento della riga
6. Chiama [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) per terminare la riga corrente
7. Facoltativamente, utilizzare la proprietà [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) per specificare la formattazione delle righe
8. Ripetere i passaggi 2-7 fino al completamento della tabella
9. Chiama [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) per terminare la costruzione della tabella

{{% alert color="primary" %}}

Dettagli importanti:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) può anche essere chiamato all'interno di una cella, nel qual caso inizia la creazione di una tabella nidificata all'interno della cella.
- Dopo aver chiamato [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), viene creata una nuova cella e qualsiasi contenuto aggiunto utilizzando altri metodi della classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) verrà aggiunto alla cella corrente. Per creare una nuova cella sulla stessa riga, chiamare di nuovo **InsertCell**.
- Se **InsertCell** viene chiamato immediatamente dopo [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) e alla fine di una riga, la tabella continuerà su una nuova riga.
- Il metodo [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) per terminare la tabella deve essere chiamato una sola volta dopo aver chiamato **EndRow**. Chiamando **EndTable** si sposta il cursore dalla cella corrente alla posizione immediatamente dopo la tabella.

{{% /alert %}}

Il processo di creazione di una tabella può essere chiaramente visto nella seguente immagine:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

L'esempio di codice seguente mostra come creare una tabella semplice usando **DocumentBuilder** con formattazione predefinita:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

L'esempio di codice seguente mostra come creare una tabella formattata utilizzando DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

L'esempio di codice seguente mostra come inserire una tabella nidificata usando DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Creare una tabella tramite DOM (Document Object Model)

È possibile inserire tabelle direttamente nel DOM aggiungendo un nuovo nodo [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) in una posizione specifica.

Si noti che immediatamente dopo la creazione del nodo della tabella, la tabella stessa sarà completamente vuota, cioè non contiene ancora righe e celle. Per inserire righe e celle in una tabella, aggiungere i nodi figlio [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) e [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) appropriati a DOM.

{{% alert color="primary" %}}

Questo metodo di creazione di una tabella utilizza le stesse impostazioni predefinite della tabella di quando si utilizza **DocumentBuilder**.

{{% /alert %}}

L'esempio di codice seguente mostra come creare una nuova tabella da zero aggiungendo i nodi figlio appropriati all'albero del documento:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Creare una tabella da HTML

Aspose.Words supporta l'inserimento di contenuto in un documento da un'origine HTML utilizzando il metodo [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String). L'input può essere una pagina completa HTML o solo uno snippet parziale.

Utilizzando questo metodo **InsertHtml**, gli utenti possono inserire tabelle nel documento tramite tag di tabella come `<table>`, `<tr>`, `<td>`.

L'esempio di codice seguente mostra come inserire una tabella in un documento da una stringa contenente tag HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Inserire una copia di una tabella esistente

Ci sono spesso momenti in cui è necessario creare una tabella basata su una tabella già esistente in un documento. Il modo più semplice per duplicare una tabella mantenendo tutta la formattazione è clonare il nodo della tabella usando il metodo [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean).

La stessa tecnica può essere utilizzata per aggiungere copie di una riga o cella esistente a una tabella.

L'esempio di codice seguente mostra come duplicare una tabella utilizzando i costruttori di nodi:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come clonare l'ultima riga di una tabella e aggiungerla alla tabella:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Se stai cercando di creare tabelle in un documento che crescono dinamicamente con ogni record dall'origine dati, il metodo sopra non è consigliato. Invece, l'output desiderato è più facilmente raggiungibile usando Mail merge con le regioni. Puoi saperne di più su questa tecnica nel [Mail Merge con Regioni](/words/java/types-of-mail-merge-operations/) sezione.

## Confronta i modi per creare una tabella

Aspose.Words fornisce diversi metodi per creare nuove tabelle in un documento. Ogni metodo ha i suoi vantaggi e svantaggi, quindi la scelta di quale utilizzare spesso dipende dalla situazione specifica.

Diamo un'occhiata più da vicino a questi modi di creare tabelle e confrontiamo i loro pro e contro:

| Metodo | Vantaggio | Svantaggio |
| :- | :- | :- |
| Via `DocumentBuilder` | Il metodo standard per l'inserimento di tabelle e altri contenuti del documento | A volte è difficile creare molte varietà di tabelle contemporaneamente con la stessa istanza builder |
| Via DOM | Si adatta meglio al codice circostante che crea e inserisce i nodi direttamente nel DOM senza utilizzare un **DocumentBuilder** | La tabella viene creata "vuota": prima di eseguire la maggior parte delle operazioni, è necessario chiamare [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) per creare eventuali nodi figlio mancanti |
| Da HTML | È possibile creare una nuova tabella dall'origine HTML utilizzando tag come `<table>`, `<tr>`, `<td>` | Non tutti i possibili formati di tabella Microsoft Word possono essere applicati a HTML |
| Clonazione di una tabella esistente | È possibile creare una copia di una tabella esistente mantenendo tutta la formattazione di riga e cella | I nodi figlio appropriati devono essere rimossi prima che la tabella sia pronta per l'uso |
