---
title: Lavorare con i segnalibri in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con i segnalibri
linktitle: Lavorare con i segnalibri
description: "Come inserire, ottenere, spostare, mostrare o nascondere i segnalibri utilizzando Python."
type: docs
weight: 180
url: /it/python-net/working-with-bookmarks/
---

I segnalibri identificano in un documento Microsoft Word le posizioni o i frammenti che nomini e identifichi per riferimento futuro. Ad esempio, potresti utilizzare un segnalibro per identificare il testo che desideri rivedere in seguito. Invece di scorrere il documento per individuare il testo, puoi accedervi utilizzando la finestra di dialogo Segnalibro.

Le azioni che possono essere eseguite con i segnalibri utilizzando Aspose.Words sono le stesse che puoi eseguire utilizzando Microsoft Word. È possibile inserire un nuovo segnalibro, eliminare, spostarsi in un segnalibro, ottenere o impostare il nome di un segnalibro, ottenere o impostare il testo racchiuso al suo interno. Con Aspose.Words è inoltre possibile utilizzare i segnalibri nei report o nei documenti per inserire alcuni dati nel segnalibro o applicare una formattazione speciale al relativo contenuto. Puoi anche utilizzare i segnalibri per recuperare testo da una determinata posizione nel documento.

## Inserisci un segnalibro

Utilizza [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) e [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/) per creare un segnalibro contrassegnandone rispettivamente l'inizio e la fine. Non dimenticare di passare lo stesso nome del segnalibro a entrambi i metodi. I segnalibri in un documento possono sovrapporsi e estendersi su qualsiasi intervallo. I segnalibri formati in modo errato o i segnalibri con nomi duplicati verranno ignorati quando il documento viene salvato.

{{% alert color="primary" %}}

Tutti gli spazi bianchi nei segnalibri sono stati sostituiti con trattini bassi. Questa restrizione deriva dai formati MS Word, poiché i segnalibri nei formati MS Word, come DOCX o DOC, non possono avere spazi bianchi. Tuttavia, PDF consente tali segnalibri. Quindi ora, se hai bisogno di utilizzare i segnalibri nelle strutture PDF o XPS, puoi usarli con spazi bianchi.

{{% /alert %}}

L'esempio di codice seguente mostra come creare un nuovo segnalibro:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Ottieni segnalibri

A volte è necessario ottenere una raccolta di segnalibri per scorrere i segnalibri o per altri scopi. Utilizza la proprietà [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) esposta da qualsiasi nodo di documento che restituisce un oggetto [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) che rappresenta la parte del documento contenuta in questo nodo. Utilizzare questo oggetto per recuperare un [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) e quindi utilizzare l'indicizzatore della raccolta per ottenere un segnalibro specifico.

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questi esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come ottenere segnalibri da una raccolta di segnalibri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

L'esempio di codice seguente mostra come ottenere o impostare il nome e il testo di un segnalibro:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

L'esempio di codice seguente mostra come aggiungere un segnalibro a una tabella:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Se si modifica il nome di un segnalibro con un nome già esistente nel documento, non verrà generato alcun errore e quando si salva il documento verrà memorizzato solo il primo segnalibro.

Tieni presente che alcuni segnalibri nel documento sono assegnati a campi modulo. Passando a un segnalibro di questo tipo e inserendovi del testo, il testo viene inserito nel codice del campo del modulo. Sebbene ciò non invaliderà il campo del modulo, il testo inserito non sarà visibile perché diventa parte del codice del campo.

L'esempio di codice seguente mostra come accedere alle colonne della tabella con segnalibri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Passare a un segnalibro

Se è necessario inserire contenuto avanzato (non solo testo semplice) in un segnalibro, è necessario utilizzare [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) per spostare il cursore sul segnalibro e quindi utilizzare i metodi e le proprietà [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) per inserire il contenuto.

## Mostra Nascondi contenuto segnalibro

L'intero segnalibro (*incluso il contenuto aggiunto ai segnalibri*) può essere incapsulato nella parte vera del campo `IF` utilizzando Aspose.Words. Può succedere che il campo `IF` contenga un campo unione nidificato nell'espressione (*a sinistra dell'operatore*) e, a seconda del valore del campo unione, il campo `IF` mostra o nasconde il contenuto del segnalibro nel documento Word.

Il seguente esempio di codice mostra come mostrare/nascondere i segnalibri:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
