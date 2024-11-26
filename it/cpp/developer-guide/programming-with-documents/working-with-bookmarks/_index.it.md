---
title: Lavorare con i segnalibri in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con i segnalibri
linktitle: Lavorare con i segnalibri
description: "Comprensione dei concetti di segnalibro e come segnalibro può essere utilizzato nel programma utilizzando C++."
type: docs
weight: 180
url: /it/cpp/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

I segnalibri identificano in un documento Microsoft Word le posizioni o i frammenti che si nominano e identificano per riferimento futuro. Ad esempio, è possibile utilizzare un segnalibro per identificare il testo che si desidera rivedere in seguito. Invece di scorrere il documento per individuare il testo, è possibile accedervi utilizzando la finestra di dialogo Segnalibro.

Le azioni che possono essere eseguite con i segnalibri usando Aspose.Words sono le stesse che puoi eseguire usando Microsoft Word. È possibile inserire un nuovo segnalibro, eliminare, passare a un segnalibro, ottenere o impostare un nome segnalibro, ottenere o impostare il testo racchiuso in esso. Con Aspose.Words, è anche possibile utilizzare i segnalibri in report o documenti per inserire alcuni dati nel segnalibro o applicare una formattazione speciale al suo contenuto. È inoltre possibile utilizzare i segnalibri per recuperare il testo da una determinata posizione nel documento.

## Inserisci un segnalibro

Utilizzare [StartBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/startbookmark/) e [EndBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endbookmark/) per creare un segnalibro contrassegnandone rispettivamente l'inizio e la fine. Non dimenticare di passare lo stesso nome del segnalibro a entrambi i metodi. I segnalibri in un documento possono sovrapporsi e coprire qualsiasi intervallo. Segnalibri mal formati o segnalibri con nomi duplicati verranno ignorati quando il documento viene salvato.

Il seguente esempio di codice mostra come creare un nuovo segnalibro:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-CreateBookmark-CreateBookmark.cpp" >}}

## Ottenere segnalibri

A volte è necessario ottenere una raccolta di segnalibri per scorrere i segnalibri o per altri scopi. Utilizzare la proprietà [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/) esposta da qualsiasi nodo documento che restituisce un oggetto [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) che rappresenta la porzione del documento contenuta in questo nodo. Utilizzare questo oggetto per recuperare un [BookmarkCollection](https://reference.aspose.com/words/cpp/aspose.words/bookmarkcollection/) e quindi utilizzare l'indicizzatore di raccolta per ottenere un segnalibro specifico.

L'esempio di codice seguente mostra come ottenere segnalibri da una raccolta di segnalibri:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-AccessBookmarks-AccessBookmarks.cpp" >}}

L'esempio di codice seguente mostra come ottenere o impostare un nome e un testo del segnalibro:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkNameAndText-BookmarkNameAndText.cpp" >}}

Il seguente esempio di codice mostra come aggiungere un segnalibro a una tabella:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-BookmarkTable-BookmarkTable.cpp" >}}

Se si modifica il nome di un segnalibro in un nome già esistente nel documento, non verrà generato alcun errore e verrà memorizzato solo il primo segnalibro quando si salva il documento.

{{% alert color="primary" %}}

Si noti che alcuni segnalibri nel documento sono assegnati ai campi modulo. Passando a tale segnalibro e inserendo il testo, il testo viene inserito nel codice del campo del modulo. Anche se questo non invaliderà il campo modulo, il testo inserito non sarà visibile perché diventa parte del codice del campo.

{{% /alert %}}

## Passare a un segnalibro

Se è necessario inserire contenuti ricchi (non solo testo normale) in un segnalibro, è necessario utilizzare [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/) per spostare il cursore sul segnalibro e quindi utilizzare i metodi e le proprietà [DocumentBuilder's](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) per inserire il contenuto.

## Mostra Nascondi contenuto segnalibro

L'intero segnalibro (*including the bookmarked content*) può essere incapsulato all'interno della parte Vera del campo `IF` usando Aspose.Words. Può essere in modo tale che il campo`IF` contenga un campo Unione nidificato nell'espressione (*Left of Operator*) e, a seconda del valore del campo Unione, il campo `IF` mostra o nasconde il contenuto del segnalibro nel documento Word.

Il seguente esempio di codice mostra come mostrare / nascondere i segnalibri:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Bookmarks-ShowHideBookmarks-ShowHideBookmarks.cpp" >}}
