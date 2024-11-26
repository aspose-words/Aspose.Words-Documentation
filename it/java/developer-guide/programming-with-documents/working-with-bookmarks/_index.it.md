---
title: Utilizzo dei segnalibri in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i segnalibri
linktitle: Lavorare con i segnalibri
description: "Comprensione dei concetti dei segnalibri e di come i segnalibri possono essere utilizzati nel programma utilizzando Java."
type: docs
weight: 180
url: /it/java/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

I segnalibri identificano in un documento Microsoft Word le posizioni o i frammenti che si nominano e identificano per riferimento futuro. Ad esempio, è possibile utilizzare un segnalibro per identificare il testo che si desidera rivedere in seguito. Invece di scorrere il documento per individuare il testo, è possibile accedervi utilizzando la finestra di dialogo Segnalibro.

Con Aspose.Words, è possibile utilizzare i segnalibri in report o documenti per inserire alcuni dati nel segnalibro o applicare una formattazione speciale al suo contenuto. È inoltre possibile utilizzare i segnalibri per recuperare il testo da una determinata posizione nel documento.

Le azioni che possono essere eseguite con i segnalibri usando Aspose.Words sono le stesse che puoi eseguire usando Microsoft Word. È possibile inserire un nuovo segnalibro, eliminare, passare a un segnalibro, ottenere o impostare un nome segnalibro, ottenere o impostare il testo racchiuso in esso.

## Inserisci un segnalibro

Utilizzare [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) e [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) per creare un segnalibro contrassegnandone rispettivamente l'inizio e la fine. Non dimenticare di passare lo stesso nome del segnalibro a entrambi i metodi. I segnalibri in un documento possono sovrapporsi e coprire qualsiasi intervallo. Segnalibri mal formati o segnalibri con nomi duplicati verranno ignorati quando il documento viene salvato.

{{% alert color="primary" %}}

Tutti gli spazi bianchi nei segnalibri sono stati sostituiti con caratteri di sottolineatura. Questa restrizione deriva dai formati MS Word, poiché i segnalibri nei formati MS Word, come DOCX o DOC, non possono avere spazi bianchi. Tuttavia, PDF consente tali segnalibri. Quindi ora, se hai bisogno di usare i segnalibri nei contorni PDF, XPS o SWF, puoi usarli con spazi bianchi.

{{% /alert %}}

Il seguente esempio di codice mostra come creare un nuovo segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Ottenere segnalibri

A volte è necessario ottenere una raccolta di segnalibri per scorrere i segnalibri o per altri scopi. Utilizzare la proprietà **Node.getRange** esposta da qualsiasi nodo documento che restituisce un oggetto **Range** che rappresenta la porzione del documento contenuta in questo nodo. Utilizzare questo oggetto per recuperare un **BookmarkCollection** e quindi utilizzare l'indicizzatore di raccolta per ottenere un segnalibro specifico.

{{% alert color="primary" %}}

È possibile scaricare il file di esempio dei seguenti esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

L'esempio di codice seguente mostra come ottenere segnalibri da una raccolta di segnalibri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

L'esempio di codice seguente mostra come ottenere o impostare un nome e un testo del segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Il seguente esempio di codice mostra come aggiungere un segnalibro a una tabella:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Se si modifica il nome di un segnalibro in un nome già esistente nel documento, non verrà generato alcun errore e verrà memorizzato solo il primo segnalibro quando si salva il documento.

Si noti che alcuni segnalibri nel documento sono assegnati ai campi modulo. Passando a tale segnalibro e inserendo il testo, il testo viene inserito nel codice del campo del modulo. Anche se questo non invaliderà il campo modulo, il testo inserito non sarà visibile perché diventa parte del codice del campo.

L'esempio di codice seguente mostra come accedere alle colonne della tabella contrassegnata con segnalibri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Passare a un segnalibro

Se è necessario inserire contenuti ricchi (non solo testo normale) in un segnalibro, è necessario utilizzare [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) per spostare il cursore sul segnalibro e quindi utilizzare i metodi e le proprietà **DocumentBuilder** per inserire il contenuto.

## Mostra Nascondi contenuto segnalibro

L'intero segnalibro (*including the bookmarked content*) può essere incapsulato all'interno della parte Vera del campo `IF` usando Aspose.Words. Può essere in modo tale che il campo`IF` contenga un campo Unione nidificato nell'espressione (*Left of Operator*) e, a seconda del valore del campo Unione, il campo `IF` mostra o nasconde il contenuto del segnalibro nel documento Word.

Il seguente esempio di codice mostra come mostrare / nascondere i segnalibri.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
