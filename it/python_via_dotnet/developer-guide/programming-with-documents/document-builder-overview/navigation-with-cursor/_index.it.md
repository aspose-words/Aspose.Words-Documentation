---
title: Navigazione con il cursore in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Navigazione con il cursore
linktitle: Navigazione con il cursore
description: "Naviga tra diversi nodi all'interno di un documento come un paragrafo, un segnalibro o un carattere specifico utilizzando Python."
type: docs
weight: 10
url: /it/python-net/navigation-with-cursor/
---

Mentre lavori con un documento, anche se è breve o lungo, dovrai navigare all'interno del documento. La navigazione con un cursore virtuale rappresenta la possibilità di navigare tra diversi nodi in un documento.

All'interno di un documento breve, spostarsi all'interno di un documento è semplice poiché puoi spostare il punto di inserimento anche utilizzando i tasti freccia della tastiera o facendo clic con il mouse per posizionare il punto di inserimento dove preferisci. Ma una volta che hai un documento di grandi dimensioni con molte pagine, queste tecniche di base saranno insufficienti.

Questo articolo spiega come spostarsi all'interno di un documento e navigare con un cursore virtuale nelle diverse parti di esso.

## Rilevamento della posizione corrente del cursore

Prima di iniziare il processo di navigazione nel documento, dovrai ottenere il nodo attualmente selezionato. Puoi ottenere la posizione esatta del cursore su un nodo selezionato utilizzando la proprietà [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Inoltre, invece di ottenere il nodo corrente, puoi ottenere il paragrafo o la sezione attualmente selezionati utilizzando le proprietà [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) e [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Qualsiasi operazione di inserimento eseguita utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) verrà inserita prima di [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Quando il paragrafo corrente è vuoto o il cursore è posizionato appena prima della fine del paragrafo, il [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) restituisce None.

## Metodi di navigazione in un documento

Quando modifichi il testo, è importante sapere come navigare nel documento e dove spostarti esattamente al suo interno. Aspose.Words ti consente di spostarti in un documento e navigare nelle sue diverse sezioni e parti: è simile alla funzionalità del riquadro di spostamento in Microsoft Word per andare a una pagina o un'intestazione in un documento Word senza scorrere.

Il metodo principale è poter spostare la posizione del cursore su un nodo specifico nel documento, puoi ottenerlo utilizzando il metodo [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

Il seguente esempio di codice mostra come spostare il [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) su diversi nodi in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Ma oltre al metodo [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) di base, ce ne sono altri più specifici.

### Passare all'inizio o alla fine di un documento

Puoi andare all'inizio o alla fine del tuo documento utilizzando i metodi [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) e [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

L'esempio di codice seguente mostra come spostare la posizione del cursore all'inizio o alla fine di un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Naviga con i segnalibri

Puoi contrassegnare un luogo che desideri trovare e spostarti di nuovo facilmente. Puoi inserire tutti i segnalibri che desideri nel tuo documento, quindi spostarti al loro interno identificando i segnalibri con nomi univoci. È possibile spostarsi su un segnalibro utilizzando il metodo [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

I seguenti esempi di codice mostrano come spostare la posizione del cursore su un segnalibro:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Passare a Celle della tabella

Puoi spostarti in una cella della tabella utilizzando il metodo [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Questo metodo ti consentirà di spostare il cursore in qualsiasi cella di una tabella specifica. Inoltre, puoi specificare un indice per spostare il cursore in qualsiasi posizione o carattere specificato in una cella all'interno del metodo [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

L'esempio di codice seguente mostra come spostare la posizione del cursore su una cella di tabella specificata:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Passare a un campo

Puoi spostarti in un campo specifico nel tuo documento utilizzando il metodo [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Inoltre, puoi spostarti in un campo unione specifico utilizzando il metodo [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

Il seguente esempio di codice mostra come spostare il cursore del generatore di documenti su un campo specifico:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Passare a un'intestazione o a un piè di pagina

Puoi spostarti all'inizio di un'intestazione o di un piè di pagina utilizzando il metodo [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

Il seguente esempio di codice mostra come spostare il cursore del generatore di documenti sull'intestazione o sul piè di pagina del documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Passare a una sezione o un paragrafo

Puoi spostarti a una sezione o paragrafo specifico utilizzando i metodi [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) o [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). Inoltre, puoi specificare un indice per spostare il cursore in qualsiasi posizione o carattere specificato in un paragrafo all'interno del metodo [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

L'esempio di codice seguente mostra come spostarsi a una sezione specifica e a un paragrafo specifico in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}