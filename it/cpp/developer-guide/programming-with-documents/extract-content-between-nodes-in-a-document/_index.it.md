---
title: Come estrarre il contenuto tra i nodi del documento
second_title: Aspose.Words per C++
articleTitle: Estrarre il contenuto tra i nodi di un documento
linktitle: Estrarre il contenuto tra i nodi
type: docs
description: "Estrazione del contenuto del documento in diversi utilizzando C++."
weight: 140
url: /it/cpp/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Quando si lavora con i documenti, è importante essere in grado di estrarre facilmente il contenuto da un intervallo specifico all'interno di un documento. Tuttavia, il contenuto può essere costituito da elementi complessi come paragrafi, tabelle, immagini, ecc.

Indipendentemente dal contenuto che deve essere estratto, il metodo per estrarre quel contenuto sarà sempre determinato da quali nodi sono selezionati per estrarre il contenuto tra. Questi possono essere interi corpi di testo o semplici esecuzioni di testo.

Ci sono molte situazioni possibili e quindi molti tipi di nodi diversi da considerare quando si estrae il contenuto. Ad esempio, è possibile estrarre il contenuto tra:

- Due paragrafi specifici
- Esecuzioni specifiche di testo
- Campi di vario tipo, ad esempio campi di unione
- Intervalli di inizio e fine di un segnalibro o di un commento
- Vari corpi di testo contenuti in sezioni separate

In alcune situazioni, potrebbe anche essere necessario combinare diversi tipi di nodo, ad esempio l'estrazione di contenuto tra un paragrafo e un campo o tra un'esecuzione e un segnalibro.

Questo articolo fornisce l'implementazione del codice per l'estrazione di testo tra diversi nodi, nonché esempi di scenari comuni.

{{% alert color="primary" %}}

Questi esempi sono solo alcune dimostrazioni delle molte possibilità. Pianifichiamo che la funzionalità di estrazione del testo faccia parte dell'API pubblica in futuro e non sarà richiesto alcun codice aggiuntivo. Nel frattempo, sentitevi liberi di inviare le vostre richieste relative a questa funzionalità sul [Aspose.Words forum](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Perché estrarre il contenuto

Spesso l'obiettivo di estrarre il contenuto è duplicarlo o salvarlo separatamente in un nuovo documento. Ad esempio, è possibile estrarre il contenuto e:

- Copiarlo in un documento separato
- Convertire una parte specifica di un documento in PDF o immagine
- Duplicare il contenuto nel documento molte volte
- Lavorare con il contenuto estratto separato dal resto del documento

Questo può essere facilmente ottenuto usando Aspose.Words e l'implementazione del codice qui sotto.

## Algoritmo di estrazione del contenuto

Il codice in questa sezione affronta tutte le possibili situazioni sopra descritte con un metodo generalizzato e riutilizzabile. Lo schema generale di questa tecnica comporta:

1. Raccolta dei nodi che dettano l'area di contenuto che verrà estratta dal documento. Il recupero di questi nodi è gestito dall'utente nel loro codice, in base a ciò che vogliono essere estratti.
1. Passare questi nodi al metodo **ExtractContent** fornito di seguito. È inoltre necessario passare un parametro booleano che indica se questi nodi, agendo come marcatori, devono essere inclusi nell'estrazione o meno.
1. Recupero di un elenco di contenuti clonati (nodi copiati) specificati da estrarre. È possibile utilizzare questo elenco di nodi in qualsiasi modo applicabile, ad esempio creando un nuovo documento contenente solo il contenuto selezionato.

## Come estrarre il contenuto

Per estrarre il contenuto dal documento è necessario chiamare il metodo `ExtractContent` di seguito e passare i parametri appropriati. La base di questo metodo consiste nel trovare nodi a livello di blocco (paragrafi e tabelle) e clonarli per creare copie identiche. Se i nodi marker passati sono a livello di blocco, il metodo è in grado di copiare semplicemente il contenuto su quel livello e aggiungerlo all'array.

Tuttavia, se i nodi marker sono in linea (un figlio di un paragrafo), la situazione diventa più complessa, poiché è necessario dividere il paragrafo sul nodo in linea, sia esso una corsa, campi segnalibro ecc. Il contenuto nei nodi padre clonati non presenti tra i marcatori viene rimosso. Questo processo viene utilizzato per garantire che i nodi in linea conservino ancora la formattazione del paragrafo padre. Il metodo eseguirà anche controlli sui nodi passati come parametri e genera un'eccezione se uno dei due nodi non è valido. I parametri da passare a questo metodo sono:

1. **StartNode** e **EndNode**. I primi due parametri sono i nodi che definiscono dove l'estrazione del contenuto deve iniziare e terminare rispettivamente. Questi nodi possono essere sia a livello di blocco (Paragrafo, Tabella ) che a livello di linea (ad esempio Run, FieldStart, BookmarkStart ecc.):
   1. Per passare un campo è necessario passare l'oggetto **FieldStart** corrispondente.
   1. Per passare i segnalibri, i nodi **BookmarkStart** e BookmarkEnd devono essere passati.
   1. Per passare i commenti, è necessario utilizzare i nodi CommentRangeStart e CommentRangeEnd.
1. **IsInclusive**. Definisce se i marcatori sono inclusi nell'estrazione o meno. Se questa opzione è impostata su false e vengono passati lo stesso nodo o nodi consecutivi, verrà restituito un elenco vuoto:

      1. Se viene passato un nodo **FieldStart**, questa opzione definisce se l'intero campo deve essere incluso o escluso.
      1. Se viene passato un nodo **BookmarkStart** o **BookmarkEnd**, questa opzione definisce se il segnalibro è incluso o solo il contenuto tra l'intervallo di segnalibri.
      1. Se viene passato un nodo **CommentRangeStart** o **CommentRangeEnd**, questa opzione definisce se il commento stesso deve essere incluso o solo il contenuto nell'intervallo di commenti.

L'implementazione del metodo **ExtractContent** è possibile trovare [qui](https://github.com/aspose-words/Aspose.Words-for-C/blob/master/Examples/DocsExamples/source/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.h). Questo metodo verrà indicato negli scenari in questo articolo.

Definiremo anche un metodo personalizzato per generare facilmente un documento dai nodi estratti. Questo metodo viene utilizzato in molti degli scenari seguenti e crea semplicemente un nuovo documento e importa il contenuto estratto in esso.

Il seguente esempio di codice mostra come prendere un elenco di nodi e inserirli in un nuovo documento.

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "generate-document.h" >}}

## Estrarre il contenuto tra i paragrafi

Questo dimostra come utilizzare il metodo sopra per estrarre il contenuto tra paragrafi specifici. In questo caso, vogliamo estrarre il corpo della lettera trovata nella prima metà del documento. Possiamo dire che questo è tra il 7esimo e l ' 11 ° paragrafo.

Il codice sottostante esegue questa attività. I paragrafi appropriati vengono estratti utilizzando il metodo [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) sul documento e passando gli indici specificati. Passiamo quindi questi nodi al metodo **ExtractContent** e dichiariamo che questi devono essere inclusi nell'estrazione. Questo metodo restituirà il contenuto copiato tra questi nodi che vengono poi inseriti in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra paragrafi specifici utilizzando il metodo `ExtractContent` sopra:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraphs.h" >}}

## Estrarre il contenuto tra diversi tipi di nodi

Possiamo estrarre il contenuto tra qualsiasi combinazione di nodi a livello di blocco o in linea. In questo scenario di seguito estrarremo il contenuto tra il primo paragrafo e la tabella nella seconda sezione in modo inclusivo. Otteniamo i nodi marcatori chiamando il metodo `Body.FirstParagraph` e [GetChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchild/) nella seconda sezione del documento per recuperare i nodi di paragrafo e Tabella appropriati. Per una leggera variazione cerchiamo invece di duplicare il contenuto e inserirlo sotto l'originale.

L'esempio di codice seguente mostra come estrarre il contenuto tra un paragrafo e una tabella utilizzando il metodo `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-block-level-nodes.h" >}}

## Estrarre il contenuto tra i paragrafi in base allo stile

Potrebbe essere necessario estrarre il contenuto tra paragrafi dello stesso stile o di stili diversi, ad esempio tra paragrafi contrassegnati con stili di intestazione. Il codice seguente mostra come raggiungere questo obiettivo. È un semplice esempio che estrarrà il contenuto tra la prima istanza degli stili" Intestazione 1 "e" Intestazione 3 " senza estrarre anche le intestazioni. Per fare ciò impostiamo l'ultimo parametro su false, che specifica che i nodi marker non devono essere inclusi.

In una corretta implementazione, questo dovrebbe essere eseguito in un ciclo per estrarre il contenuto tra tutti i paragrafi di questi stili dal documento. Il contenuto estratto viene copiato in un nuovo documento.

L'esempio di codice seguente mostra come estrarre il contenuto tra paragrafi con stili specifici utilizzando il metodo `ExtractContent`:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-paragraph-styles.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "paragraphs-by-style-name.h" >}}

## Estrarre il contenuto tra esecuzioni specifiche

È possibile estrarre il contenuto tra i nodi in linea come un [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) pure. **Runs** da paragrafi diversi può essere passato come marcatori. Il codice seguente mostra come estrarre testo specifico tra lo stesso nodo **Paragraph**.

L'esempio di codice seguente mostra come estrarre il contenuto tra esecuzioni specifiche dello stesso paragrafo utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-runs.h" >}}

## Estrarre il contenuto utilizzando un campo

Per utilizzare un campo come marcatore, il nodo `FieldStart` deve essere passato. L'ultimo parametro del metodo `ExtractContent` definirà se l'intero campo deve essere incluso o meno. Estraiamo il contenuto tra il campo di unione "FullName " e un paragrafo nel documento. Usiamo il metodo [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/) della classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Questo restituirà il nodo **FieldStart** dal nome del campo di unione passato ad esso.

Nel nostro caso impostiamo l'ultimo parametro passato al metodo **ExtractContent** su false per escludere il campo dall'estrazione. Renderizzeremo il contenuto estratto a PDF.

L'esempio di codice seguente mostra come estrarre il contenuto tra un campo specifico e un paragrafo nel documento utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-field.h" >}}

## Estrarre il contenuto da un segnalibro

In un documento, il contenuto definito all'interno di un segnalibro viene incapsulato dai nodi `BookmarkStart` e BookmarkEnd. Il contenuto trovato tra questi due nodi costituisce il segnalibro. È possibile passare uno di questi nodi come qualsiasi marcatore, anche quelli provenienti da segnalibri diversi, purché il marcatore iniziale appaia prima del marcatore finale nel documento. Estrarremo questo contenuto in un nuovo documento utilizzando il codice sottostante. L'opzione del parametro **IsInclusive** mostra come conservare o eliminare il segnalibro.

L'esempio di codice seguente mostra come estrarre il contenuto a cui fa riferimento un segnalibro utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-bookmark.h" >}}

## Estrarre il contenuto da un commento

Un commento è costituito dai nodi CommentRangeStart, CommentRangeEnd e Comment. Tutti questi nodi sono in linea. I primi due nodi incapsulano il contenuto del documento a cui fa riferimento il commento, come si vede nello screenshot qui sotto.

Il nodo **Comment** stesso è un InlineStory che può contenere paragrafi ed esecuzioni. Rappresenta il messaggio del commento visto come una bolla di commento nel riquadro di anteprima. Poiché questo nodo è in linea e un discendente di un corpo, puoi anche estrarre il contenuto dall'interno di questo messaggio.

Il commento incapsula l'intestazione, il primo paragrafo e la tabella nella seconda sezione. Estraiamo questo commento in un nuovo documento. L'opzione **IsInclusive** determina se il commento stesso viene mantenuto o scartato.

Il seguente esempio di codice mostra come eseguire questa operazione:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-between-comment-range.h" >}}

## Come estrarre il contenuto usando DocumentVisitor

Utilizzare la classe [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) per implementare questo scenario di utilizzo. Questa classe corrisponde al ben noto modello di progettazione dei visitatori. Con **DocumentVisitor,** è possibile definire ed eseguire operazioni personalizzate che richiedono l'enumerazione sull'albero dei documenti.

**DocumentVisitor**

Ogni metodo **DocumentVisitor.VisitXXX** restituisce un valore [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) che controlla l'enumerazione dei nodi. È possibile richiedere di continuare l'enumerazione, saltare il nodo corrente (ma continuare l'enumerazione) o interrompere l'enumerazione dei nodi.

Questi sono i passaggi da seguire per determinare ed estrarre a livello di codice varie parti di un documento:

- Creare una classe derivata da **DocumentVisitor**
- Sovrascrivere e fornire implementazioni per alcuni o tutti i metodi **DocumentVisitor.VisitXXX** per eseguire alcune operazioni personalizzate
- Chiamare `Node.Accept` sul nodo da cui si desidera avviare l'enumerazione. Ad esempio, se si desidera enumerare l'intero documento, utilizzare `Document.Accept`

**DocumentVisitor**

Questo esempio mostra come utilizzare il modello Visitatore per aggiungere nuove operazioni al modello a oggetti Aspose.Words. In questo caso, creiamo un semplice convertitore di documenti in un formato di testo:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-content-using-document-visitor.h" >}}

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "convert-doc-to-txt.h" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Come estrarre solo testo

I modi per recuperare il testo dal documento sono:

- Utilizzare [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) con [SaveFormat.Text](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) per salvare come testo normale in un file o flusso
- Utilizzare [Node.ToString](https://reference.aspose.com/words/cpp/aspose.words/node/tostring/) e passare il parametro **SaveFormat.Text**. Internamente, questo richiama salva come testo in un flusso di memoria e restituisce la stringa risultante
- Utilizzare [Node.GetText](https://reference.aspose.com/words/cpp/aspose.words/node/gettext/) per recuperare il testo con tutti i caratteri di controllo Microsoft Word inclusi i codici di campo
- Implementare un [DocumentVisitor](https://reference.aspose.com/words/cpp/aspose.words/documentvisitor/) personalizzato per eseguire l'estrazione personalizzata

### Usando `Node.GetText`e `Node.ToString`

Un documento Word può contenere caratteri di controllo che designano elementi speciali come campo, fine della cella, fine della sezione, ecc. L'elenco completo dei possibili caratteri di controllo delle parole è definito nella classe [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/). Il metodo **Node.GetText** restituisce il testo con tutti i caratteri del carattere di controllo presenti nel nodo.

La chiamata a **ToString** restituisce la rappresentazione in testo normale del documento solo senza caratteri di controllo.

Il seguente esempio di codice mostra la differenza tra la chiamata dei metodi **GetText** e **ToString** su un nodo:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "simple-extract-text.h" >}}

### Usando `SaveFormat.Text`

Questo esempio salva il documento come segue:

- Filtra i caratteri di campo e i codici di campo, la forma, la nota a piè di pagina, la nota di chiusura e i riferimenti ai commenti
- Sostituisce la fine del paragrafo **ControlChar.Cr** caratteri con **ControlChar.CrLf** combinazioni
- Utilizza la codifica UTF8

Il seguente esempio di codice mostra come salvare un documento in formato TXT:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "docx-to-txt.h" >}}

## Estrai immagini da Forme

Potrebbe essere necessario estrarre le immagini del documento per eseguire alcune attività. Aspose.Words ti permette di fare anche questo.

Il seguente esempio di codice mostra come estrarre immagini da un documento:

{{< gist "aspose-words-gists" "922a9c5d9606a0c5cf0682b4aadfaf29" "extract-images.h" >}}
