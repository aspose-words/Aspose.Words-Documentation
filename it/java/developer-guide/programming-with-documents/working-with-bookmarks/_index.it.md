---
title: Lavorare con Segnalibri in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Segnalibri
linktitle: Lavorare con Segnalibri
description: "Comprendere concetti di segnalibro e come segnalibro può essere utilizzato nel vostro programma utilizzando Java."
type: docs
weight: 180
url: /it/java/working-with-bookmarks/
---

Segnalibri identificarsi in un Microsoft Word documentare le posizioni o i frammenti che si nomina e identificare per riferimento futuro. Ad esempio, si potrebbe utilizzare un segnalibro per identificare il testo che si desidera rivedere in seguito. Invece di scorrere attraverso il documento per individuare il testo, è possibile andare a esso utilizzando la finestra di dialogo Segnalibro.

Con Aspose.Words, è possibile utilizzare segnalibri in report o documenti per inserire alcuni dati nel bookmark o applicare una formattazione speciale al suo contenuto. È inoltre possibile utilizzare segnalibri per recuperare il testo da una determinata posizione nel documento.

Le azioni che possono essere eseguite con segnalibri utilizzando Aspose.Words sono gli stessi di quelli che puoi eseguire utilizzando Microsoft Word. È possibile inserire un nuovo segnalibro, eliminare, passare a un segnalibro, ottenere o impostare un nome del segnalibro, ottenere o impostare il testo racchiuso in esso.

## Inserisci un segnalibro

Uso [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) e [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) per creare un segnalibro marcando il suo inizio e la sua fine, rispettivamente. Non dimenticare di passare lo stesso nome del segnalibro a entrambi i metodi. I segnalibri in un documento possono sovrapporre e abbracciare qualsiasi intervallo. Segnalibri o segnalibri mal formati con nomi duplicati verranno ignorati quando il documento viene salvato.

{{% alert color="primary" %}}

Tutti gli spazi bianchi nei segnalibri sono stati sostituiti con sottoscore. Questa restrizione proviene da formati MS Word, dal momento che i segnalibri in formati MS Word, come DOCX o DOC, non possono avere spazi bianchi. Tuttavia, PDF permette tali segnalibri. Quindi ora, se avete bisogno di usare segnalibri in PDF, XPS o contorni SWF, è possibile utilizzarli con spazi bianchi.

{{% /alert %}}

Il seguente esempio di codice mostra come creare un nuovo segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Ottenere segnalibri

A volte è necessario ottenere una raccolta di segnalibri per iterare attraverso segnalibri o per altri scopi. Utilizzare **Node.getRange** proprietà esposta da qualsiasi nodo documento che restituisce un **Range** oggetto che rappresenta la parte del documento contenuto in questo nodo. Utilizzare questo oggetto per recuperare un **BookmarkCollection** e quindi utilizzare l'indicizzatore di raccolta per ottenere un segnalibro specifico.

{{% alert color="primary" %}}

È possibile scaricare il file campione dei seguenti esempi da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx).

{{% /alert %}}

Il seguente esempio di codice mostra come ottenere segnalibri da una raccolta di segnalibri:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Il seguente esempio di codice mostra come ottenere o impostare un nome e un testo del segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Il seguente esempio di codice mostra come bookmark una tabella:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Se si modifica il nome di un segnalibro a un nome che esiste già nel documento, nessun errore verrà generato e solo il primo segnalibro verrà memorizzato quando si salva il documento.

Si noti che alcuni segnalibri nel documento sono assegnati a campi di forma. Passare a un tale segnalibro e inserire il testo lì inserisce il testo nel codice campo del modulo. Anche se questo non invaliderà il campo di forma, il testo inserito non sarà visibile perché diventa parte del codice di campo.

Il seguente esempio di codice mostra come accedere alle colonne della tabella segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Spostarsi in un segnalibro

Se è necessario inserire contenuti ricchi (non solo testo normale) in un segnalibro, si dovrebbe utilizzare [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) per spostare il cursore sul segnalibro e quindi utilizzare **DocumentBuilder** metodi e proprietà per inserire contenuti.

## Mostra contenuti preferiti

L'intero Segnalibro (*compreso il contenuto segnalato*) può essere incapsulato nella parte vera della `IF` campo usando Aspose.Words. Può essere in modo tale che `IF` il campo contiene un campo di concentramento nidificato nell'espressione (*Left of Operator*) e a seconda del valore di Campo di fusione, il `IF` campo mostra o nasconde il contenuto di Bookmark in Word Document.

Il seguente esempio di codice mostra come mostrare / nascondere segnalibri.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
