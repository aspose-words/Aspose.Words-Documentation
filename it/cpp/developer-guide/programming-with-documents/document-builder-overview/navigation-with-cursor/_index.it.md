---
title: Navigazione con cursore in C++
second_title: Aspose.Words per C++
articleTitle: Navigazione con cursore
linktitle: Navigazione con cursore
description: "Spostarsi tra diversi nodi all'interno di un documento, ad esempio un paragrafo, un segnalibro o un carattere specifico utilizzando C++."
type: docs
weight: 10
url: /it/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Mentre lavori con un documento, anche se è breve o lungo, dovrai navigare nel documento. La navigazione con un cursore virtuale rappresenta la possibilità di navigare tra diversi nodi in un documento.

All'interno di un breve documento, muoversi in un documento è semplice in quanto è possibile spostare il punto di inserimento anche utilizzando i tasti freccia della tastiera o facendo clic con il mouse per individuare il punto di inserimento dove si desidera. Ma una volta che hai un documento di grandi dimensioni che ha molte pagine, queste tecniche di base saranno insufficienti.

Questo articolo spiega come spostarsi in un documento e spostarsi con un cursore virtuale in diverse parti di esso.

## Rilevamento della posizione corrente del cursore

Prima di iniziare il processo di navigazione nel documento, è necessario ottenere il nodo attualmente selezionato. È possibile ottenere la posizione esatta del cursore su un nodo selezionato utilizzando la proprietà [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Inoltre, invece di ottenere il nodo corrente, è possibile ottenere il paragrafo attualmente selezionato o la sezione attualmente selezionata utilizzando le proprietà [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) e [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Qualsiasi operazione di inserimento eseguita utilizzando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) verrà inserita prima di [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Quando il paragrafo corrente è vuoto o il cursore è posizionato appena prima della fine del paragrafo, **CurrentNode** restituisce nullptr.

## Metodi di navigazione in un documento

Quando si modifica il testo, è importante sapere come navigare nel documento e dove spostarlo esattamente. Aspose.Words consente di spostarsi in un documento e passare alle sue diverse sezioni e parti, in modo simile alla funzionalità del riquadro di spostamento in Microsoft Word per andare a una pagina o all'intestazione di un documento Word senza scorrere.

Il metodo principale è quello di essere in grado di spostare la posizione del cursore su un nodo specifico nel documento, è possibile ottenere ciò utilizzando il metodo [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

L'esempio di codice seguente mostra come spostare **DocumentBuilder** in nodi diversi in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Ma oltre al metodo di base **MoveTo**, ce ne sono di più specifici.

### Passare all'inizio o alla fine di un documento

Puoi andare all'inizio o alla fine del documento usando i metodi [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) e [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

L'esempio di codice seguente mostra come spostare la posizione del cursore all'inizio o alla fine di un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Navigare con i segnalibri

È possibile contrassegnare un luogo che si desidera trovare e spostarlo di nuovo facilmente. È possibile inserire tutti i segnalibri nel documento che si desidera e quindi navigare attraverso di essi identificando i segnalibri con nomi univoci. È possibile passare a un segnalibro utilizzando il metodo [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Gli esempi di codice seguenti mostrano come spostare una posizione del cursore in un segnalibro:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Passare alle celle della tabella

È possibile passare a una cella di tabella utilizzando il metodo [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Questo metodo vi permetterà di navigare il cursore in qualsiasi cella in una tabella specifica. Inoltre, è possibile specificare un indice per spostare il cursore in qualsiasi posizione o carattere specificato in una cella all'interno del metodo **MoveToCell**.

L'esempio di codice seguente mostra come spostare una posizione del cursore in una cella di tabella specificata:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Passare a un campo

È possibile passare a un campo specifico nel documento utilizzando il metodo [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Inoltre, è possibile passare a un campo di unione specifico utilizzando il metodo [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

L'esempio di codice seguente mostra come spostare il cursore del generatore di documenti in un campo specifico:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Passare a un'intestazione o piè di pagina

È possibile passare all'inizio di un'intestazione o di un piè di pagina utilizzando il metodo [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

L'esempio di codice seguente mostra come spostare il cursore del generatore di documenti in un'intestazione o piè di pagina del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Passare a una sezione o a un paragrafo

È possibile passare a una sezione o a un paragrafo specifici utilizzando i metodi [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) o [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). Inoltre, è possibile specificare un indice per spostare il cursore in qualsiasi posizione o un carattere specificato in un paragrafo all'interno del metodo **MoveToParagraph**.

L'esempio di codice seguente mostra come passare a una sezione specifica e a un paragrafo specifico in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
