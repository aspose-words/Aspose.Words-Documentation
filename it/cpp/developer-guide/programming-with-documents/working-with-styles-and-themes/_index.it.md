---
title: Lavorare con gli stili in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con gli stili
linktitle: Lavorare con gli stili
description: "Funzionalità avanzate di formattazione Microsoft Word, utilizzo di stili e temi con C++."
type: docs
weight: 110
url: /it/cpp/working-with-styles-and-themes/
timestamp: 2024-01-30-16-22-34
---

La classe [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) viene utilizzata per gestire le impostazioni predefinite e applicare le impostazioni definite dall'utente agli stili.

## Come estrarre il contenuto in base agli stili

A un livello semplice, il recupero del contenuto in base agli stili da un documento di Word può essere utile per identificare, elencare e contare i paragrafi e le esecuzioni di testo formattato con uno stile specifico. Ad esempio, potrebbe essere necessario identificare particolari tipi di contenuto nel documento, ad esempio esempi, titoli, riferimenti, parole chiave, nomi di figure e casi di studio.

Per fare questo alcuni passi avanti, questo può anche essere usato per sfruttare la struttura del documento, definita dagli stili che utilizza, per riutilizzare il documento per un altro output, come HTML. Questo è infatti il modo in cui viene costruita la documentazione Aspose, mettendo Aspose.Words alla prova. Uno strumento creato utilizzando Aspose.Words prende i documenti di Word di origine e li divide in argomenti a determinati livelli di intestazione. Un file XML viene prodotto usando Aspose.Words che viene utilizzato per costruire l'albero di navigazione che puoi vedere a sinistra. E poi Aspose.Words converte ogni argomento in HTML.

La soluzione per il recupero di testo formattato con stili specifici in un documento di Word è in genere economica e semplice utilizzando Aspose.Words.

### Soluzione

Per illustrare la facilità con cui Aspose.Words gestisce il recupero del contenuto in base agli stili, diamo un'occhiata a un esempio. In questo esempio, recupereremo il testo formattato con uno stile di paragrafo specifico e uno stile di carattere da un documento Word di esempio. Ad alto livello, ciò comporterà:
- Aprire un documento Word usando la classe `Document`.
- Ottenere raccolte di tutti i paragrafi e tutte le esecuzioni nel documento.
- Selezionare solo i paragrafi e le esecuzioni richieste. In particolare, recupereremo il testo formattato con lo stile di paragrafo "Intestazione 1" e lo stile di carattere "Enfasi intensa" da questo documento Word di esempio.

![working-with-styles-aspose-words-cpp-1](working-with-styles-1.png)


In questo documento di esempio, il testo formattato con lo stile di paragrafo "Intestazione 1" è "Inserisci scheda", "Stili rapidi" e "Tema", e il testo formattato con lo stile di carattere "Enfasi intensa" è costituito da diverse istanze di testo blu, corsivo e in grassetto come "gallerie" e "aspetto generale".

### Codice

L'implementazione di una query basata sullo stile è piuttosto semplice nel modello di oggetti del documento Aspose.Words, poiché utilizza semplicemente strumenti già in atto. Per questa soluzione sono implementati due metodi di classe: **ParagraphsByStyleName** – Questo metodo recupera un array di quei paragrafi nel documento che hanno un nome di stile specifico. **RunsByStyleName** – Questo metodo recupera un array di quelle esecuzioni nel documento che hanno un nome di stile specifico. Entrambi questi metodi sono molto simili, le uniche differenze sono i tipi di nodo e la rappresentazione delle informazioni di stile all'interno dei nodi paragrafo ed esecuzione. Ecco un'implementazione di ParagraphsByStyleName. L'esempio seguente trova tutti i paragrafi formattati con lo stile specificato.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cpp" >}}

{{% alert color="primary" %}}

Questa implementazione utilizza anche il metodo `Document.GetChildNodes` della classe `Document`, che restituisce una raccolta di tutti i nodi con il tipo specificato, che in questo caso in tutti i paragrafi.

Si noti che il secondo parametro del metodo **Document.GetChildNodes** è impostato su true. Questo costringe il metodo **Document.GetChildNodes** a selezionare ricorsivamente da tutti i nodi figlio, piuttosto che selezionare solo i figli immediati.

{{% /alert %}}

Vale anche la pena sottolineare che la raccolta paragrafi non crea un sovraccarico immediato perché i paragrafi vengono caricati in questa raccolta solo quando si accede agli elementi in essi contenuti. Quindi, tutto ciò che devi fare è passare attraverso la raccolta, usando lo standard per ogni operatore e aggiungere paragrafi che hanno lo stile specificato all'array paragraphsWithStyle. Il nome dello stile `Paragraph` può essere trovato nello Stile. Proprietà Name dell'oggetto `Paragraph.ParagraphFormat`. L'implementazione di RunsByStyleName è quasi la stessa, anche se ovviamente stiamo usando `NodeType.Run` per recuperare i nodi run. La proprietà `Font.Style` di un oggetto `Run` viene utilizzata per accedere alle informazioni di stile nei nodi **Run**. L'esempio below code trova tutte le esecuzioni formattate con lo stile specificato.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cpp" >}}


Quando entrambe le query sono implementate, tutto ciò che devi fare è passare un oggetto documento e specificare i nomi di stile del contenuto che desideri recuperare: di seguito l'esempio esegui query e visualizza i risultati. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cpp" >}}

#### Risultato finale

Quando tutto è fatto, l'esecuzione del campione visualizzerà il seguente output:

![working-with-styles-aspose-words-cpp-2](working-with-styles-2.png)


Come puoi vedere, questo è un esempio molto semplice, che mostra il numero e il testo dei paragrafi raccolti e viene eseguito nel documento Word di esempio.

## Come inserire e lavorare con il campo Sommario

Spesso lavorerai con documenti contenenti un sommario (TOC). Utilizzando Aspose.Words è possibile inserire il proprio sommario o ricostruire completamente il sommario esistente nel documento utilizzando solo poche righe di codice. In questo articolo viene illustrato come utilizzare il campo sommario e viene illustrato:

- Come inserire un nuovo `TOC`
- Aggiornare TOCs nuovo o esistente nel documento.
- Specificare le opzioni per controllare la formattazione e la struttura generale del sommario.
- Come modificare gli stili e l'aspetto del sommario.
- Come rimuovere un intero campo `TOC` insieme a tutte le voci dal documento.

### Inserisci campi TC

Spesso una riga di testo specifica è designata per `TOC` ed è contrassegnata con un campo `TC`. Il modo più semplice per farlo in MS Word è evidenziare il testo e premere *ALT+SHIFT+O*. Questo crea automaticamente un campo `TC` utilizzando il testo selezionato. La stessa tecnica può essere realizzata attraverso il codice. Il codice sottostante troverà il testo corrispondente all'input e inserirà un campo `TC` nella stessa posizione del testo. Il codice si basa sulla stessa tecnica utilizzata nell'articolo. L'esempio seguente mostra come trovare e inserire un campo `TC` nel testo di un documento.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-DocumentBuilderInsertTCFieldsAtText.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertTCFieldsAtText-InsertTCFieldHandler.cpp" >}}

### Modificare un sommario

#### Modificare la formattazione degli stili

La formattazione delle voci nel `TOC` non utilizza gli stili originali delle voci contrassegnate, invece, ogni livello viene formattato utilizzando uno stile `TOC` equivalente. Ad esempio, il primo livello nel `TOC` è formattato con lo stile **TOC1**, il secondo livello formattato con lo stile **TOC2** e così via. Ciò significa che per cambiare l'aspetto del `TOC` questi stili devono essere modificati. In Aspose.Words questi stili sono rappresentati dalle impostazioni locali indipendenti da `StyleIdentifier.TOC1` a `StyleIdentifier.TOC9` e possono essere recuperati dalla raccolta `Document.Styles` utilizzando questi identificatori. Una volta recuperato lo stile appropriato del documento, la formattazione per questo stile può essere modificata. Qualsiasi modifica a questi stili verrà automaticamente riflessa sul TOCs nel documento. L'esempio below code modifica una proprietà di formattazione utilizzata nello stile di primo livello `TOC`.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeStyleOfTOCLevel-ChangeStyleOfTOCLevel.cpp" >}}

È anche utile notare che qualsiasi formattazione diretta di un paragrafo (definita sul paragrafo stesso e non nello stile) contrassegnata da includere il `TOC` verrà copiata nella voce nel sommario. Ad esempio, se lo stile Intestazione 1 viene utilizzato per contrassegnare il contenuto per `TOC` e questo stile ha una formattazione in grassetto mentre il paragrafo ha anche una formattazione corsiva applicata direttamente ad esso. La voce `TOC` risultante non sarà in grassetto poiché fa parte della formattazione dello stile, tuttavia sarà in corsivo poiché è formattata direttamente nel paragrafo. È inoltre possibile controllare la formattazione dei separatori utilizzati tra ogni voce e il numero di pagina. Per impostazione predefinita, si tratta di una linea tratteggiata che viene distribuita sulla numerazione delle pagine utilizzando un carattere di tabulazione e un punto di tabulazione destro allineato vicino al margine destro.

Utilizzando la classe `Style` recuperata per il particolare livello `TOC` che si desidera modificare, è anche possibile modificare il modo in cui questi appaiono nel documento. Per cambiare il modo in cui appare in primo luogo, è necessario chiamare `Style.ParagraphFormat` per recuperare la formattazione del paragrafo per lo stile. Da questo, i tab stop possono essere recuperati chiamando `ParagraphFormat.TabStops` e il tab stop appropriato modificato. Utilizzando questa stessa tecnica la scheda stessa può essere spostata o rimossa del tutto. L'esempio below code mostra come modificare la posizione della tabulazione destra nei paragrafi correlati a `TOC`. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-ChangeTOCTabStops-ChangeTOCTabStops.cpp" >}}

### Rimozione di un sommario dal documento

Un sommario può essere rimosso dal documento rimuovendo tutti i nodi trovati tra il nodo `FieldStart` e FieldEnd del campo `TOC`. Il codice qui sotto lo dimostra. La rimozione del campo `TOC` è più semplice di un campo normale in quanto non teniamo traccia dei campi nidificati. Invece, controlliamo che il nodo `FieldEnd` sia di tipo `FieldType.FieldTOC`, il che significa che abbiamo incontrato la fine del sommario corrente. Questa tecnica può essere utilizzata in questo caso senza preoccuparsi di alcun campo nidificato in quanto possiamo supporre che qualsiasi documento formato correttamente non avrà un campo `TOC` completamente annidato all'interno di un altro campo `TOC`. In primo luogo i nodi `FieldStart` di ciascun `TOC` vengono raccolti e memorizzati. Il `TOC` specificato viene quindi enumerato in modo che tutti i nodi all'interno del campo vengano visitati e archiviati. I nodi vengono quindi rimossi dal documento. L'esempio below code mostra come rimuovere un `TOC` specificato da un documento. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-RemoveTOCFromDocument-RemoveTOCFromDocument.cpp" >}}

## Inserisci separatore stile per inserire stili di paragrafo diversi

Il separatore di stile può essere aggiunto alla fine di un paragrafo usando la scorciatoia da tastiera Ctrl + Alt + Invio in MS Word. Questa funzione consente due diversi stili di paragrafo utilizzati in un paragrafo stampato logico. Se si desidera che un testo dall'inizio di una particolare intestazione venga visualizzato in un Sommario ma non si desidera che l'intera intestazione nell'Indice, è possibile utilizzare questa funzione. L'esempio below code mostra come inserire un separatore di stile per inserire stili di paragrafo diversi.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Copia tutti gli stili dal modello

Ci sono casi in cui si desidera copiare tutti gli stili da un documento in un altro. È possibile utilizzare il metodo `Document.CopyStylesFromTemplate` per copiare gli stili dal modello specificato in un documento. Quando gli stili vengono copiati da un modello a un documento, gli stili con nome simile nel documento vengono ridefiniti in modo da corrispondere alle descrizioni di stile nel modello. Gli stili unici del modello vengono copiati nel documento. Gli stili unici nel documento rimangono intatti. L'esempio below code mostra come copiare gli stili da un documento a un altro.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cpp" >}}
