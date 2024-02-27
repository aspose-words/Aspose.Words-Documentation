---
title: Navigazione con il cursore in C#
second_title: Aspose.Words per .NET
articleTitle: Navigazione con il cursore
linktitle: Navigazione con il cursore
description: "Naviga tra diversi nodi all'interno di un documento, come un paragrafo, un segnalibro o un carattere specifico utilizzando C#."
type: docs
weight: 10
url: /it/net/navigation-with-cursor/
---

Mentre lavori con un documento, anche se è breve o lungo, dovrai navigare all'interno del documento. La navigazione con un cursore virtuale rappresenta la possibilità di navigare tra diversi nodi in un documento.

All'interno di un documento breve, spostarsi all'interno di un documento è semplice poiché puoi spostare il punto di inserimento anche utilizzando i tasti freccia della tastiera o facendo clic con il mouse per posizionare il punto di inserimento dove preferisci. Ma una volta che hai un documento di grandi dimensioni con molte pagine, queste tecniche di base saranno insufficienti.

Questo articolo spiega come spostarsi all'interno di un documento e navigare con un cursore virtuale nelle diverse parti di esso.

## Rilevamento della posizione corrente del cursore

Prima di iniziare il processo di navigazione nel documento, dovrai ottenere il nodo attualmente selezionato. Puoi ottenere la posizione esatta del cursore su un nodo selezionato utilizzando la proprietà [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Inoltre, invece di ottenere il nodo corrente, puoi ottenere il paragrafo o la sezione attualmente selezionati utilizzando le proprietà [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) e [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/).

Qualsiasi operazione di inserimento eseguita utilizzando [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) verrà inserita prima di [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Quando il paragrafo corrente è vuoto o il cursore è posizionato subito prima della fine del paragrafo, l'**CurrentNode** restituisce null.

## Metodi di navigazione in un documento

Quando modifichi il testo, è importante sapere come navigare nel documento e dove spostarti esattamente al suo interno. Aspose.Words ti consente di spostarti in un documento e navigare nelle sue diverse sezioni e parti: è simile alla funzionalità del riquadro di spostamento in Microsoft Word per andare a una pagina o un'intestazione in un documento Word senza scorrere.

Il metodo principale è poter spostare la posizione del cursore su un nodo specifico nel documento, puoi ottenerlo utilizzando il metodo [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/).

Il seguente esempio di codice mostra come spostare il **DocumentBuilder** su diversi nodi in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Ma oltre al metodo **MoveTo** di base, ce ne sono altri più specifici.

### Passare all'inizio o alla fine di un documento

Puoi andare all'inizio o alla fine del tuo documento utilizzando i metodi [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/).

L'esempio di codice seguente mostra come spostare la posizione del cursore all'inizio o alla fine di un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Naviga con i segnalibri

Puoi contrassegnare un luogo che desideri trovare e spostarti di nuovo facilmente. Puoi inserire tutti i segnalibri che desideri nel tuo documento, quindi spostarti al loro interno identificando i segnalibri con nomi univoci. È possibile spostarsi su un segnalibro utilizzando il metodo [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

I seguenti esempi di codice mostrano come spostare la posizione del cursore su un segnalibro:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Passare a Celle della tabella

Puoi spostarti in una cella della tabella utilizzando il metodo [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/). Questo metodo ti consentirà di spostare il cursore in qualsiasi cella di una tabella specifica. Inoltre, puoi specificare un indice per spostare il cursore in qualsiasi posizione o carattere specificato in una cella all'interno del metodo **MoveToCell**.

L'esempio di codice seguente mostra come spostare la posizione del cursore su una cella di tabella specificata:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Passare a un campo

Puoi spostarti in un campo specifico nel tuo documento utilizzando il metodo [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). Inoltre, puoi spostarti in un campo unione specifico utilizzando il metodo [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

Il seguente esempio di codice mostra come spostare il cursore del generatore di documenti su un campo specifico:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Passare a un'intestazione o a un piè di pagina

Puoi spostarti all'inizio di un'intestazione o di un piè di pagina utilizzando il metodo [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/)

Il seguente esempio di codice mostra come spostare il cursore del generatore di documenti sull'intestazione o sul piè di pagina del documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Passare a una sezione o un paragrafo

Puoi spostarti a una sezione o paragrafo specifico utilizzando i metodi [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) o [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/). Inoltre, puoi specificare un indice per spostare il cursore in qualsiasi posizione o in un carattere specificato in un paragrafo all'interno del metodo **MoveToParagraph**.

L'esempio di codice seguente mostra come spostarsi a una sezione specifica e a un paragrafo specifico in un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
