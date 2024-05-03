---
title: Navigazione con Cursor in Java
second_title: Aspose.Words per Java
articleTitle: Navigazione con Cursor
linktitle: Navigazione con Cursor
description: "Navigare tra diversi nodi all'interno di un documento, come un paragrafo, un segnalibro o un carattere specifico utilizzando Java."
type: docs
weight: 5
url: /it/java/navigation-with-cursor/
---

Mentre si lavora con un documento, anche se è breve o lungo, è necessario navigare attraverso il documento. La navigazione con un cursore virtuale rappresenta la possibilità di navigare tra diversi nodi in un documento.

All'interno di un breve documento, muoversi in un documento è semplice come è possibile spostare il punto di inserimento anche utilizzando i tasti freccia della tastiera o facendo clic sul mouse per individuare il punto di inserimento ovunque si desidera. Ma una volta che avete un grande documento che ha molte pagine, queste tecniche di base saranno insufficienti.

Questo articolo spiega come muoversi in un documento e navigare con un cursore virtuale in diverse parti di esso.

## Rilevamento della posizione attuale

Prima di iniziare il processo di navigazione attraverso il documento, è necessario ottenere il nodo che è attualmente selezionato. È possibile ottenere la posizione esatta del cursore su un nodo selezionato utilizzando il [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) proprieta'. Inoltre, invece di ottenere il nodo corrente, è possibile ottenere il paragrafo attualmente selezionato o la sezione attualmente selezionata utilizzando il [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) e [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) proprietà.

Tutte le operazioni di inserto eseguite utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sarà inserito prima del [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Quando il paragrafo corrente è vuoto o il cursore è posizionato poco prima della fine del paragrafo, il **CurrentNode** restituisce null.

## Metodi di navigazione in un documento

Quando si sta modificando il testo, è importante sapere come navigare il documento e dove esattamente muoversi in esso. Aspose.Words consente di muoversi in un documento e di navigare nelle sue diverse sezioni e parti – questo è simile alla funzionalità del riquadro di spostamento in Microsoft Word andare a una pagina o in un documento di Word senza scorrere.

Il metodo principale è quello di essere in grado di spostare la posizione del cursore in un nodo specifico nel documento, è possibile ottenere questo utilizzando il [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metodo.

Il seguente esempio di codice mostra come spostare il **DocumentBuilder** a nodi diversi in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Ma oltre alla base **MoveTo** metodo, ci sono più specifici.

### Navigare all'inizio o alla fine di un documento

È possibile andare all'inizio o alla fine del documento utilizzando il [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) e [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) metodi.

Il seguente esempio di codice mostra come spostare la posizione del cursore all'inizio o alla fine di un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Navigare con segnalibri

Si può segnare un posto che si desidera trovare e muoversi di nuovo facilmente. È possibile inserire il maggior numero di segnalibri nel documento che si desidera, e quindi navigare attraverso di loro identificando i segnalibri con nomi unici. È possibile passare a un segnalibro utilizzando il [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) metodo.

I seguenti esempi di codice mostrano come spostare una posizione del cursore su un segnalibro:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Passare a celle da tavolo

È possibile passare a una cella di tabella utilizzando [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) metodo. Questo metodo consente di navigare il cursore in qualsiasi cella in una tabella specifica. Inoltre, è possibile specificare un indice per spostare il cursore in qualsiasi posizione o carattere specificato in una cella all'interno della **MoveToCell** metodo.

Il seguente esempio di codice mostra come spostare una posizione del cursore in una cella di tabella specificata:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Navigare in un campo

È possibile passare a un campo specifico nel documento utilizzando [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) metodo. Inoltre, è possibile passare a un campo di fusione specifico utilizzando [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) metodo.

Il seguente esempio di codice mostra come spostare il cursore del costruttore di documenti in un campo specifico:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Navigare in un Header o Footer

È possibile passare all'inizio di un intestazione o piè di pagina utilizzando il [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) metodo

Il seguente esempio di codice mostra come spostare il cursore del costruttore di documenti in un'intestazione del documento o un piè di pagina:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Navigare in una Sezione o Paragrafo

È possibile passare a una specifica sezione o paragrafo utilizzando [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) o [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) metodi. Inoltre, è possibile specificare un indice per spostare il cursore in qualsiasi posizione o un carattere specificato in un paragrafo all'interno del **MoveToParagraph** metodo.

Il seguente esempio di codice mostra come passare a una sezione specifica e a un paragrafo specifico in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
