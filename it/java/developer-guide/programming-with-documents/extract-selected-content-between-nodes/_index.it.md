---
title: Estrai contenuti selezionati tra i nodi in Java
second_title: Aspose.Words per Java
articleTitle: Estrai contenuti tra i nodi in un documento
linktitle: Estratto di contenuti tra i nodi
type: docs
description: "Estrazione del contenuto di documento in diversi usi Java."
weight: 140
url: /it/java/extract-selected-content-between-nodes/
---

Quando si lavora con i documenti, è importante essere in grado di estrarre facilmente il contenuto da un intervallo specifico all'interno di un documento. Tuttavia, il contenuto può consistere in elementi complessi come paragrafi, tabelle, immagini, ecc.

Indipendentemente da quale contenuto deve essere estratto, il metodo per estrarre quel contenuto sarà sempre determinato da cui i nodi vengono selezionati per estrarre il contenuto tra. Questi possono essere interi corpi di testo o semplici funzioni di testo.

Ci sono molte situazioni possibili e quindi molti diversi tipi di nodo da considerare quando si estrae il contenuto. Ad esempio, potresti voler estrarre il contenuto tra:

- Due paragrafi specifici
- Correzioni specifiche di testo
- Campi di vari tipi, come campi di fusione
- Avvio e fine di un segnalibro o commento
- Vari corpi di testo contenuti in sezioni separate

In alcune situazioni, è anche necessario combinare diversi tipi di nodo, come l'estrazione di contenuti tra un paragrafo e un campo, o tra un run e un segnalibro.

Questo articolo fornisce l'implementazione del codice per l'estrazione del testo tra diversi nodi, così come esempi di scenari comuni.

{{% alert color="primary" %}}

Questi esempi sono solo alcune dimostrazioni delle molte possibilità. Organizziamo la funzionalità di estrazione del testo per far parte del pubblico API in futuro, e nessun codice aggiuntivo sarà richiesto. Nel frattempo, non esitate a inviare le vostre richieste riguardo a questa funzionalità [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Perché estrarre il contenuto

Spesso l'obiettivo di estrarre il contenuto è quello di duplicare o salvarlo separatamente in un nuovo documento. Ad esempio, è possibile estrarre il contenuto e:

- Copialo in un documento separato
- Convertire una parte specifica di un documento in PDF o immagine
- Duplicare il contenuto nel documento molte volte
- Lavorare con contenuti estratti separati dal resto del documento

Questo può essere facilmente raggiunto utilizzando Aspose.Words e l'implementazione del codice qui sotto.

## Estrazione del contenuto Algoritmo

Il codice in questa sezione affronta tutte le possibili situazioni sopra descritte con un metodo generalizzato e riutilizzabile. Il profilo generale di questa tecnica comporta:

1. Raccogliere i nodi che dettano l'area del contenuto che verrà estratto dal documento. Recuperare questi nodi è gestito dall'utente nel loro codice, in base a ciò che vogliono essere estratti.
1. Passando questi nodi al **ExtractContent** metodo fornito di seguito. È inoltre necessario passare un parametro booleano che afferma se questi nodi, che agiscono come marcatori, devono essere inclusi nell'estrazione o meno.
1. Recuperare un elenco di contenuti clonati (nodi accoppiati) specificati per essere estratti. È possibile utilizzare questo elenco di nodi in qualsiasi modo applicabile, ad esempio, la creazione di un nuovo documento contenente solo il contenuto selezionato.

## Come Estrarre il Contenuto

Lavoreremo con il documento qui sotto in questo articolo. Come potete vedere contiene una varietà di contenuti. Nota anche, il documento contiene una seconda sezione che inizia al centro della prima pagina. Un segnalibro e un commento sono presenti anche nel documento ma non sono visibili nello screenshot qui sotto.

![extract-content-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-1.png)

Per estrarre il contenuto dal documento è necessario chiamare il `ExtractContent` metodo qui sotto e passare i parametri appropriati.

La base di questo metodo consiste nel trovare nodi a livello di blocco (paragrafi e tabelle) e clonarli per creare copie identiche. Se i nodi di marcatore passati sono a livello di blocco, il metodo è in grado di copiare semplicemente il contenuto su quel livello e aggiungerlo all'array.

Tuttavia, se i nodi di marcatore sono in linea (un bambino di un paragrafo) allora la situazione diventa più complessa, in quanto è necessario dividere il paragrafo al nodo in linea, sia esso un run, campi di segnalibri ecc. I contenuti dei nodi genitori clonati non presenti tra i marcatori vengono rimossi. Questo processo viene utilizzato per garantire che i nodi in linea manterranno ancora la formattazione del paragrafo genitore.

Il metodo effettuerà anche controlli sui nodi passati come parametri e getta un'eccezione se o nodo è invalido. I parametri da trasmettere a questo metodo sono:

1. **StartNode** e **EndNode**. I primi due parametri sono i nodi che definiscono dove l'estrazione del contenuto deve iniziare e terminare rispettivamente. Questi nodi possono essere entrambi a livello di blocco ([Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) ♪ [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) ) o livello in linea (es. [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) ♪ [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) ♪ [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) ecc.):
   1. Per passare un campo si dovrebbe passare il corrispondente **FieldStart** oggetto.
   1. Per passare segnalibri, i **BookmarkStart** e [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) I nodi dovrebbero essere passati.
   1. Per passare i commenti, il [CommentRangeStart](https://reference.aspose.com/words/java/com.aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/) I nodi dovrebbero essere usati.
1. **IsInclusive**. Definisce se i marcatori sono inclusi nell'estrazione o meno. Se questa opzione è impostata su false e lo stesso nodo o nodi consecutivi sono passati, poi un elenco vuoto sarà restituito:

      1. Se un **FieldStart** nodo viene passato allora questa opzione definisce se l'intero campo deve essere incluso o escluso.
      1. Se un **BookmarkStart** o **BookmarkEnd** nodo è passato, questa opzione definisce se il segnalibro è incluso o solo il contenuto tra l'intervallo di segnalibri.
      1. Se un **CommentRangeStart** o **CommentRangeEnd** nodo è passato, questa opzione definisce se il commento stesso deve essere incluso o solo il contenuto nell'intervallo di commenti.

L'attuazione della **ExtractContent** metodo che puoi trovare [Qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Programming_with_documents/Contents_management/ExtractContentHelper.java). Questo metodo verrà indicato negli scenari in questo articolo.

Definiremo anche un metodo personalizzato per generare facilmente un documento dai nodi estratti. Questo metodo viene utilizzato in molti degli scenari sottostanti e crea semplicemente un nuovo documento e importa il contenuto estratto in esso.

Il seguente esempio di codice mostra come prendere un elenco di nodi e li inserisce in un nuovo documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "generate-document.java" >}}

## Estratto di contenuti tra i paragrafi

Ciò dimostra come utilizzare il metodo precedente per estrarre il contenuto tra paragrafi specifici. In questo caso, vogliamo estrarre il corpo della lettera trovata nella prima metà del documento. Possiamo dire che questo è tra i 7 e 11 paragrafi.

Il codice qui sotto compie questo compito. I paragrafi appropriati vengono estratti utilizzando i [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metodo sul documento e passando gli indici specificati. Passiamo poi questi nodi al **ExtractContent** metodo e dichiarare che questi devono essere inclusi nell'estrazione. Questo metodo restituirà il contenuto copiato tra questi nodi che vengono poi inseriti in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra paragrafi specifici utilizzando il `ExtractContent` metodo sopra:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraphs.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Il documento di output contiene i due paragrafi estratti.

![extract-content-result-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-2.png)

## Estrai contenuti tra diversi tipi di nodi

Possiamo estrarre il contenuto tra qualsiasi combinazione di nodi block-level o inline. In questo scenario di seguito estrarremo il contenuto tra il primo comma e la tabella nella seconda sezione inclusivamente. Riceviamo i nodi marcatori chiamando [getFirstParagraph](https://reference.aspose.com/words/java/com.aspose.words/body/#getFirstParagraph) e [getChild](https://reference.aspose.com/words/java/com.aspose.words/compositenode/#getChild-int-int-boolean) metodo sulla seconda sezione del documento per recuperare l'appropriato **Paragraph** e **Table** Nodi. Per una leggera variazione invece duplicare il contenuto e inserirlo sotto l'originale.

Il seguente esempio di codice mostra come estrarre il contenuto tra un paragrafo e una tabella utilizzando il **ExtractContent** metodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-block-level-nodes.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Il contenuto tra il paragrafo e la tabella è stato duplicato di seguito è il risultato.

![extract-content-between-paragraphs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-3.png)

## Estratto di contenuti tra i paragrafi Sulla base di stile

Potrebbe essere necessario estrarre il contenuto tra i paragrafi dello stile stesso o diverso, come tra i paragrafi contrassegnati con gli stili di intestazione.

Il codice qui sotto mostra come raggiungerlo. È un semplice esempio che estrarrà il contenuto tra la prima istanza degli stili "Heading 1" e "Header 3" senza estrarre anche le voci. Per fare questo abbiamo impostato l'ultimo parametro false, che specifica che i nodi marcatore non devono essere inclusi.

In una corretta attuazione, questo dovrebbe essere eseguito in un loop per estrarre il contenuto tra tutti i paragrafi di questi stili dal documento. Il contenuto estratto viene copiato in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra i paragrafi con stili specifici utilizzando il **ExtractContent** metodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-paragraph-styles.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "paragraphs-by-style-name.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Di seguito è il risultato dell'operazione precedente.

![extract-content-between-paragraph-style-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-4.png)

## Estrai contenuti tra rune specifiche

È possibile estrarre il contenuto tra nodi in linea come **Run** E anche. **Runs** da diversi paragrafi possono essere passati come marcatori. Il codice qui sotto mostra come estrarre il testo specifico tra lo stesso **Paragraph** Nodo.

Il seguente esempio di codice mostra come estrarre il contenuto tra specifiche esecuzioni dello stesso paragrafo utilizzando il **ExtractContent** metodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-runs.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Il testo estratto viene visualizzato sulla console

![extract-content-between-runs-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-5.png)

## Estrarre contenuti utilizzando un campo

Per usare un campo come marcatore, il `FieldStart` il nodo dovrebbe essere passato. L'ultimo parametro al `ExtractContent` metodo definirà se l'intero campo deve essere incluso o no. Estrarremo il contenuto tra il campo di fusione "FullName" e un paragrafo nel documento. Usiamo il [moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField(java.lang.String)) metodo di [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) classe. Questo ritornerà **FieldStart** nodo dal nome del campo di fusione passato a esso.

Nel nostro caso impostamo l'ultimo parametro passato al **ExtractContent** metodo per false escludere il campo dall'estrazione. Renderemo il contenuto estratto in PDF.

Il seguente esempio di codice mostra come estrarre il contenuto tra un campo specifico e il paragrafo nel documento utilizzando il **ExtractContent** metodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-field.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

Il contenuto estratto tra il campo e il paragrafo, senza il campo e i nodi marcatori di paragrafo resi in PDF.

![extract-content-using-field-aspose-words-java](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-6.png)

## Estrarre contenuti da un Segnalibro

In un documento, il contenuto definito all'interno di un segnalibro è incapsulato dal `BookmarkStart` e BookmarkEnd nodi. Il contenuto trovato tra questi due nodi compongono il segnalibro. È possibile passare uno di questi nodi come qualsiasi marcatore, anche quelli da diversi segnalibri, fino a quando il marcatore di partenza appare prima del marcatore finale nel documento.

Nel nostro documento campione, abbiamo un segnalibro, denominato "Bookmark1". Il contenuto di questo segnalibro è evidenziato contenuto nel nostro documento:

![extract-content-from-bookmark-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-7.png)

Estrarremo questo contenuto in un nuovo documento utilizzando il codice qui sotto. The **IsInclusive** opzione parametro mostra come conservare o scartare il segnalibro.

Il seguente esempio di codice mostra come estrarre il contenuto citato un segnalibro utilizzando il **ExtractContent** metodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-bookmark.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

L'output estratto con `IsInclusive` parametro impostato su true. La copia manterrà anche il segnalibro.

![extract-content-from-bookmark-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-8.png)

L'output estratto con **IsInclusive** parametro impostato su false. La copia contiene il contenuto ma senza il segnalibro.

![extract-content-from-bookmark-aspose-words-java-3](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-9.png)

## Estrarre contenuti da un commento

Un commento è composto dai nodi CommentRangeStart, CommentRangeEnd e Comment. Tutti questi nodi sono in linea. I primi due nodi incapsulano il contenuto nel documento che è citato dal commento, come visto nello screenshot qui sotto.

The **Comment** il nodo stesso è un [InlineStory](https://reference.aspose.com/words/java/com.aspose.words/inlinestory/) che può contenere paragrafi ed esegue. Rappresenta il messaggio del commento visto come una bolla di commento nel riquadro di revisione. Poiché questo nodo è inline e un discendente di un corpo si può anche estrarre il contenuto da dentro questo messaggio pure.

Nel nostro documento abbiamo un commento. Vediamolo mostrando markup nella scheda Recensione:

![extract-content-from-comment-aspose-words-java-1](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-10.png)

Il commento contiene la voce, il primo comma e la tabella nella seconda sezione. Estrarremo questo commento in un nuovo documento. The **IsInclusive** opzione detta se il commento stesso è tenuto o scartato.

Il seguente esempio di codice mostra come fare questo è di seguito:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-between-comment-range.java" >}}

{{% alert color="primary" %}}

È possibile scaricare il file campione di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

In primo luogo l'output estratto con `IsInclusive` parametro impostato su true. La copia conterrà anche il commento.

![extract-content-from-comment-aspose-words-java-2](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-11.png)

In secondo luogo l'output estratto con **è incluso** set to false. La copia contiene il contenuto ma senza il commento.

![extract-content-from-comment-aspose-words-java-12](/words/java/extract-selected-content-between-nodes/extract-content-from-comment-aspose-words-java-12.png)

## Estratto di contenuti utilizzando DocumentVisitor

Aspose.Words può essere utilizzato non solo per la creazione Microsoft Word documenti costruendo loro modelli dinamicamente o fusione con i dati, ma anche per i documenti di parsing al fine di estrarre elementi di documento separati come intestazioni, piè di pagina, paragrafi, tabelle, immagini e altri. Un altro compito possibile è quello di trovare tutto il testo di formattazione specifica o stile.

Utilizzare [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) classe per implementare questo scenario di utilizzo. Questa classe corrisponde al noto modello di design dei visitatori. Con [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/), è possibile definire ed eseguire operazioni personalizzate che richiedono l'enumerazione sull'albero del documento.

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fornisce una serie di **VisitXXX** metodi che vengono invocati quando si incontra un particolare elemento di documento (nodo). Per esempio, [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) è chiamato quando si trova l'inizio di un paragrafo di testo e [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) è chiamato quando si trova la fine di un paragrafo di testo. Ogni **DocumentVisitor.VisitXXX** metodo accetta l'oggetto corrispondente che incontra in modo da poterlo usare secondo le necessità (per esempio recuperare la formattazione), ad esempio entrambi [VisitParagraphStart](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphStart-com.aspose.words.Paragraph) e [VisitParagraphEnd](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/#visitParagraphEnd-com.aspose.words.Paragraph) accettare [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) oggetto.

Ogni **DocumentVisitor.VisitXXX** metodo restituisce un **VisitorAction** valore che controlla l'enumerazione dei nodi. È possibile richiedere o continuare l'enumerazione, saltare il nodo corrente (ma continuare l'enumerazione), o fermare l'enumerazione dei nodi.

Questi sono i passi che dovreste seguire per determinare programmaticamente ed estrarre varie parti di un documento:

- Crea una classe derivata da [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/).
- Override e fornire implementazioni per alcuni o tutti **DocumentVisitor.VisitXXX** metodi per eseguire alcune operazioni personalizzate.
- Chiama. [Node.accept](https://reference.aspose.com/words/java/com.aspose.words/node/#accept-com.aspose.words.DocumentVisitor) sul nodo da dove si desidera iniziare l'enumerazione. Per esempio, se si desidera enumerare l'intero documento, utilizzare [accept(DocumentVisitor)](https://reference.aspose.com/words/java/com.aspose.words/document/#accept-com.aspose.words.DocumentVisitor).

[DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) fornisce implementazioni predefinite per tutte le **DocumentVisitor.VisitXXX** metodi. Questo rende più facile creare nuovi visitatori di documento come solo i metodi necessari per il particolare visitatore devono essere sovrascritti. Non è necessario ignorare tutti i metodi del visitatore.

L'esempio seguente mostra come utilizzare il modello Visitatore per aggiungere nuove operazioni al Aspose.Words modello oggetto. In questo caso, creiamo un semplice convertitore di documento in un formato di testo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-content-using-document-visitor.java" >}}

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "convert-doc-to-txt.java" >}}

## Estrarre il testo Solo

I modi per recuperare il testo dal documento sono:

- Uso [Document.save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) con [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) salvare come testo normale in un file o in un flusso
- Uso [Node.toString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString-com.aspose.words.SaveOptions) e passare il `SaveFormat.Text` parametro. Internamente, questo invoca salvare come testo in un flusso di memoria e restituisce la stringa risultante
- Uso [Node.getText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) per recuperare il testo con tutti Microsoft Word caratteri di controllo inclusi i codici di campo
- Attuazione di un'abitudine [DocumentVisitor](https://reference.aspose.com/words/java/com.aspose.words/documentvisitor/) per eseguire l'estrazione personalizzata

### Utilizzo `Node.GetText` e `Node.ToString`

A Il documento di Word può contenere caratteri di controllo che designano elementi speciali come il campo, la fine della cella, la fine della sezione ecc. L'elenco completo dei possibili caratteri di controllo Word è definito nel **ControlChar** classe. The [GetText](https://reference.aspose.com/words/java/com.aspose.words/node/#getText) metodo restituisce il testo con tutti i caratteri di controllo presenti nel nodo.

Calling ToString restituisce la semplice rappresentazione del testo del documento solo senza caratteri di controllo. Per ulteriori informazioni sull'esportazione come testo normale vedi **Using SaveFormat.Text**.

Il seguente esempio di codice mostra la differenza tra la chiamata **GetText** e [ToString](https://reference.aspose.com/words/java/com.aspose.words/node/#toString) metodi su un nodo:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "simple-extract-text.java" >}}

### Utilizzo `SaveFormat.Text`

Questo esempio salva il documento come segue:

- Filtra i caratteri di campo e i codici di campo, forma, nota a piè di pagina, endnote e riferimenti di commento
- Sostituisce la fine del paragrafo [ControlChar.Cr](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) caratteri con [ControlChar.CrLf](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) combinazioni
- Utilizza la codifica UTF8

Il seguente esempio di codice mostra come salvare un documento in formato TXT:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "docx-to-txt.java" >}}

## Estrarre immagini da forme

Potrebbe essere necessario estrarre immagini di documento per eseguire alcune attività. Aspose.Words ti permette di fare anche questo.

Il seguente esempio di codice mostra come estrarre le immagini da un documento:

{{< gist "aspose-words-gists" "1975a35426bcd195a2e7c61d20a1580c" "extract-images.java" >}}