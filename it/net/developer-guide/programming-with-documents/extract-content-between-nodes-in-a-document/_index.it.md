---
title: Come estrarre il contenuto tra i nodi del documento
second_title: Aspose.Words per .NET
articleTitle: Estrai contenuto tra i nodi in un documento
linktitle: Estrai contenuto tra i nodi
description: "Estrazione del contenuto del documento in modo diverso utilizzando C#."
type: docs
weight: 140
url: /it/net/how-to-extract-selected-content-between-nodes-in-a-document/
---

Quando si lavora con i documenti, è importante poter estrarre facilmente il contenuto da un intervallo specifico all'interno di un documento. Tuttavia, il contenuto può essere costituito da elementi complessi come paragrafi, tabelle, immagini, ecc.

Indipendentemente dal contenuto che deve essere estratto, il metodo per estrarre tale contenuto sarà sempre determinato da quali nodi vengono selezionati per estrarre il contenuto. Possono trattarsi di interi corpi di testo o di semplici sequenze di testo.

Esistono molte situazioni possibili e quindi molti tipi di nodi diversi da considerare durante l'estrazione del contenuto. Ad esempio, potresti voler estrarre il contenuto tra:

- Due paragrafi specifici
- Sequenze di testo specifiche
- Campi di vario tipo, ad esempio campi di unione
- Intervalli iniziali e finali di un segnalibro o commento
- Vari corpi di testo contenuti in sezioni separate

In alcune situazioni, potrebbe anche essere necessario combinare diversi tipi di nodo, ad esempio per estrarre il contenuto tra un paragrafo e un campo o tra un'esecuzione e un segnalibro.

Questo articolo fornisce l'implementazione del codice per l'estrazione del testo tra nodi diversi, nonché esempi di scenari comuni.

{{% alert color="primary" %}}

Questi esempi sono solo alcune dimostrazioni delle numerose possibilità. Prevediamo che la funzionalità di estrazione del testo faccia parte del API pubblico in futuro e non sarà richiesto alcun codice aggiuntivo. Nel frattempo, sentitevi liberi di postare le vostre richieste riguardanti questa funzionalità su [Forum Aspose.Words](https://forum.aspose.com/c/words/8).

{{% /alert %}}

## Perché estrarre contenuti

Spesso l'obiettivo dell'estrazione del contenuto è duplicarlo o salvarlo separatamente in un nuovo documento. Ad esempio, puoi estrarre contenuti e:

- Copialo in un documento separato
- Converti una parte specifica di un documento in PDF o immagine
- Duplicare più volte il contenuto del documento
- Lavora con il contenuto estratto separato dal resto del documento

Ciò può essere facilmente ottenuto utilizzando Aspose.Words e l'implementazione del codice seguente.

## Algoritmo di estrazione del contenuto

Il codice in questa sezione affronta tutte le possibili situazioni descritte sopra con un metodo generalizzato e riutilizzabile. Lo schema generale di questa tecnica prevede:

1. Raccogliere i nodi che determinano l'area di contenuto che verrà estratta dal tuo documento. Il recupero di questi nodi viene gestito dall'utente nel proprio codice, in base a ciò che desidera estrarre.
1. Passando questi nodi al metodo **ExtractContent** fornito di seguito. È inoltre necessario passare un parametro booleano che indichi se questi nodi, che fungono da marcatori, devono essere inclusi o meno nell'estrazione.
1. Recupero di un elenco di contenuto clonato (nodi copiati) specificato da estrarre. È possibile utilizzare questo elenco di nodi in qualsiasi modo applicabile, ad esempio creando un nuovo documento contenente solo il contenuto selezionato.

## Come estrarre il contenuto

Per estrarre il contenuto dal tuo documento devi chiamare il metodo **ExtractContent** di seguito e passare i parametri appropriati. La base di questo metodo prevede la ricerca di nodi a livello di blocco (paragrafi e tabelle) e la loro clonazione per creare copie identiche. Se i nodi marcatori passati sono a livello di blocco, il metodo è in grado semplicemente di copiare il contenuto su quel livello e aggiungerlo all'array.

Tuttavia, se i nodi marcatori sono in linea (un figlio di un paragrafo), la situazione diventa più complessa, poiché è necessario dividere il paragrafo nel nodo in linea, che si tratti di una sequenza, di campi di segnalibri, ecc. Il contenuto nei nodi principali clonati non presente tra i marcatori viene rimosso. Questo processo viene utilizzato per garantire che i nodi in linea mantengano comunque la formattazione del paragrafo principale. Il metodo eseguirà inoltre controlli sui nodi passati come parametri e genererà un'eccezione se uno dei nodi non è valido. I parametri da passare a questo metodo sono:

1. **StartNode** e **EndNode**. I primi due parametri sono i nodi che definiscono rispettivamente dove deve iniziare e dove deve finire l'estrazione del contenuto. Questi nodi possono essere sia a livello di blocco ([Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/)) che a livello inline (es. [Run](https://reference.aspose.com/words/net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkstart/) ecc.):
   1. Per passare un campo è necessario passare l'oggetto **FieldStart** corrispondente
   1. Per passare i segnalibri, è necessario passare i nodi **BookmarkStart** e [BookmarkEnd](https://reference.aspose.com/words/net/aspose.words/bookmark/bookmarkend/)
   1. Per passare commenti, è necessario utilizzare i nodi [CommentRangeStart](https://reference.aspose.com/words/net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/net/aspose.words/commentrangeend/)
1. **IsInclusive**. Definisce se i marcatori sono inclusi nell'estrazione oppure no. Se questa opzione è impostata su false e vengono passati lo stesso nodo o nodi consecutivi, verrà restituito un elenco vuoto:
   1. Se viene passato un nodo **FieldStart**, questa opzione definisce se l'intero campo deve essere incluso o escluso
   1. Se viene passato un nodo **BookmarkStart** o **BookmarkEnd**, questa opzione definisce se il segnalibro è incluso o solo il contenuto nell'intervallo di segnalibri.
   1. Se viene passato un nodo **CommentRangeStart** o **CommentRangeEnd**, questa opzione definisce se deve essere incluso il commento stesso o solo il contenuto nell'intervallo dei commenti.

L'implementazione del metodo **ExtractContent** puoi trovare [su Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/DocsExamples/DocsExamples/Programming%20with%20Documents/Contents%20Management/Extract%20content%20helper.cs). Questo metodo verrà fatto riferimento negli scenari in questo articolo.

Definiremo anche un metodo personalizzato per generare facilmente un documento dai nodi estratti. Questo metodo viene utilizzato in molti degli scenari seguenti e crea semplicemente un nuovo documento e vi importa il contenuto estratto.

Il seguente esempio di codice mostra come prendere un elenco di nodi e inserirli in un nuovo documento:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "generate-document.cs" >}}

## Estrai contenuto tra paragrafi

Questo dimostra come utilizzare il metodo sopra per estrarre il contenuto tra paragrafi specifici. In questo caso vogliamo estrarre il corpo della lettera che si trova nella prima metà del documento. Possiamo dire che questo è tra il 7° e l'11° paragrafo.

Il codice seguente esegue questa attività. I paragrafi appropriati vengono estratti utilizzando il metodo [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/) sul documento e passando gli indici specificati. Passiamo quindi questi nodi al metodo **ExtractContent** e stabiliamo che questi siano da includere nell'estrazione. Questo metodo restituirà il contenuto copiato tra questi nodi che verranno poi inseriti in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra paragrafi specifici utilizzando il metodo `ExtractContent` sopra:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraphs.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto tra diversi tipi di nodi

Possiamo estrarre il contenuto tra qualsiasi combinazione di livello di blocco o nodi in linea. In questo scenario di seguito estrarremo il contenuto tra il primo paragrafo e la tabella nella seconda sezione in modo inclusivo. Otteniamo i nodi dei marcatori chiamando i metodi [FirstParagraph](https://reference.aspose.com/words/net/aspose.words/story/firstparagraph/) e [GetChild](https://reference.aspose.com/words/net/aspose.words/compositenode/getchild/) nella seconda sezione del documento per recuperare i nodi **Paragraph** e **Table** appropriati. Per una leggera variazione duplichiamo invece il contenuto e inseriamolo sotto l'originale.

L'esempio di codice seguente mostra come estrarre il contenuto tra un paragrafo e una tabella utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-block-level-nodes.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai il contenuto tra i paragrafi in base allo stile

Potrebbe essere necessario estrarre il contenuto tra paragrafi con stile uguale o diverso, ad esempio tra paragrafi contrassegnati con stili di titolo. Il codice seguente mostra come ottenere questo risultato. È un semplice esempio che estrarrà il contenuto tra la prima istanza degli stili "Intestazione 1" e "Intestazione 3" senza estrarre anche i titoli. Per fare ciò impostiamo l'ultimo parametro su false, che specifica che i nodi marcatori non devono essere inclusi.

In un'implementazione corretta, questo dovrebbe essere eseguito in loop per estrarre il contenuto tra tutti i paragrafi di questi stili dal documento. Il contenuto estratto viene copiato in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra i paragrafi con stili specifici utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-paragraph-styles.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "paragraphs-by-style-name.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto tra esecuzioni specifiche

Puoi anche estrarre contenuto tra nodi in linea come un [Run](https://reference.aspose.com/words/net/aspose.words/run/). **Runs** di paragrafi diversi possono essere passati come marcatori. Il codice seguente mostra come estrarre testo specifico tra lo stesso nodo **Paragraph**.

L'esempio di codice seguente mostra come estrarre il contenuto tra esecuzioni specifiche dello stesso paragrafo utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-runs.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto utilizzando un campo

Per utilizzare un campo come marcatore, è necessario passare il nodo `FieldStart`. L'ultimo parametro del metodo `ExtractContent` definirà se l'intero campo deve essere incluso o meno. Estraiamo il contenuto tra il campo di unione "FullName" e un paragrafo nel documento. Usiamo il metodo [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/) della classe [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Ciò restituirà il nodo **FieldStart** dal nome del campo di unione passato ad esso.

Nel nostro caso impostiamo l'ultimo parametro passato al metodo **ExtractContent** su false per escludere il campo dall'estrazione. Renderemo il contenuto estratto in PDF.

Il seguente esempio di codice mostra come estrarre il contenuto tra un campo e un paragrafo specifici nel documento utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-field.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto da un segnalibro

In un documento il contenuto definito all'interno di un segnalibro viene incapsulato dai nodi `BookmarkStart` e BookmarkEnd. Il contenuto trovato tra questi due nodi costituisce il segnalibro. Puoi passare uno di questi nodi come qualsiasi marcatore, anche quelli di segnalibri diversi, purché il marcatore di inizio appaia prima del marcatore di fine nel documento. Estrarremo questo contenuto in un nuovo documento utilizzando il codice seguente. L'opzione del parametro **IsInclusive** mostra come conservare o eliminare il segnalibro.

L'esempio di codice seguente mostra come estrarre il contenuto a cui fa riferimento un segnalibro utilizzando il metodo **ExtractContent**:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-bookmark.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto da un commento

Un commento è costituito dai nodi CommentRangeStart, CommentRangeEnd e Comment. Tutti questi nodi sono in linea. I primi due nodi incapsulano il contenuto del documento a cui fa riferimento il commento, come mostrato nello screenshot seguente.

Il nodo **Comment** stesso è un [InlineStory](https://reference.aspose.com/words/net/aspose.words/inlinestory/) che può contenere paragrafi e sequenze. Rappresenta il messaggio del commento visualizzato come un fumetto nel riquadro di revisione. Poiché questo nodo è in linea e discendente di un corpo, puoi anche estrarre il contenuto anche dall'interno di questo messaggio.

Il commento incapsula l'intestazione, il primo paragrafo e la tabella nella seconda sezione. Estraiamo questo commento in un nuovo documento. L'opzione **IsInclusive** determina se il commento stesso viene mantenuto o scartato.

L'esempio di codice seguente mostra come eseguire questa operazione:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-between-comment-range.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Come estrarre contenuto utilizzando DocumentVisitor

Utilizzare la classe [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) per implementare questo scenario di utilizzo. Questa classe corrisponde al noto modello di progettazione Visitor. Con **DocumentVisitor** **,** puoi definire ed eseguire operazioni personalizzate che richiedono l'enumerazione nell'albero del documento.

**DocumentVisitor** fornisce una serie di metodi **VisitXXX** che vengono richiamati quando viene incontrato un particolare elemento del documento (nodo). Ad esempio, [VisitParagraphStart](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphstart/) viene chiamato quando viene trovato l'inizio di un paragrafo di testo e [VisitParagraphEnd](https://reference.aspose.com/words/net/aspose.words/documentvisitor/visitparagraphend/) viene chiamato quando viene trovata la fine di un paragrafo di testo. Ogni metodo **DocumentVisitor.VisitXXX** accetta l'oggetto corrispondente che incontra in modo da poterlo utilizzare secondo necessità (ad esempio recuperare la formattazione), ad esempio sia **DocumentVisitor.VisitParagraphStart** che **DocumentVisitor.VisitParagraphEnd** accettano un oggetto [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

Ogni metodo **DocumentVisitor.VisitXXX** restituisce un valore [VisitorAction](https://reference.aspose.com/words/net/aspose.words/visitoraction/) che controlla l'enumerazione dei nodi. È possibile richiedere di continuare l'enumerazione, saltare il nodo corrente (ma continuare l'enumerazione) o interrompere l'enumerazione dei nodi.

Questi sono i passaggi da seguire per determinare ed estrarre a livello di codice varie parti di un documento:

- Crea una classe derivata da **DocumentVisitor**
- Sostituisci e fornisci implementazioni per alcuni o tutti i metodi **DocumentVisitor.VisitXXX** per eseguire alcune operazioni personalizzate
- Richiama [Node.Accept](https://reference.aspose.com/words/net/aspose.words/node/accept/) sul nodo da cui vuoi iniziare l'enumerazione, ad esempio, se vuoi enumerare l'intero documento, usa [Document.Accept](https://reference.aspose.com/words/net/aspose.words/document/accept/)

**DocumentVisitor** fornisce implementazioni predefinite per tutti i metodi **DocumentVisitor.VisitXXX**. Ciò semplifica la creazione di nuovi visitatori del documento poiché è necessario sovrascrivere solo i metodi richiesti per il visitatore specifico. Non è necessario sovrascrivere tutti i metodi del visitatore.

Nell'esempio seguente viene illustrato come utilizzare il modello Visitor per aggiungere nuove operazioni al modello a oggetti Aspose.Words. In questo caso, creiamo un semplice convertitore di documenti in formato testo:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-content-using-document-visitor.cs" >}}

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "convert-doc-to-txt.cs" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Come estrarre solo testo

I modi per recuperare il testo dal documento sono:

- Utilizza [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/) con [SaveFormat.Text](https://reference.aspose.com/words/net/aspose.words/saveformat/) per salvare come testo normale in un file o flusso
- Usa [Node.ToString](https://reference.aspose.com/words/net/aspose.words/node/tostring/) e passa il parametro **SaveFormat.Text**. Internamente, richiama il salvataggio come testo in un flusso di memoria e restituisce la stringa risultante
- Utilizza [Node.GetText](https://reference.aspose.com/words/net/aspose.words/node/gettext/) per recuperare il testo con tutti i caratteri di controllo Microsoft Word inclusi i codici di campo
- Implementare un [DocumentVisitor](https://reference.aspose.com/words/net/aspose.words/documentvisitor/) personalizzato per eseguire un'estrazione personalizzata

### Utilizzando `Node.GetText` e `Node.ToString`

Un documento Word può contenere caratteri di controllo che designano elementi speciali come campo, fine di cella, fine di sezione ecc. L'elenco completo dei possibili caratteri di controllo di Word è definito nella classe **ControlChar**. Il metodo **Node.GetText** restituisce il testo con tutti i caratteri di controllo presenti nel nodo.

La chiamata a **ToString** restituisce la rappresentazione in testo semplice del documento solo senza caratteri di controllo. Per ulteriori informazioni sull'esportazione come testo semplice vedere la sezione successiva **"Utilizzo di SaveFormat.Text"**.

L'esempio di codice seguente mostra la differenza tra la chiamata dei metodi **GetText** e **ToString** su un nodo:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "simple-extract-text.cs" >}}

### Utilizzando `SaveFormat.Text`

Questo esempio salva il documento come segue:

- Filtra caratteri di campo e codici di campo, forme, note a piè di pagina, note di chiusura e riferimenti a commenti
- Sostituisce i caratteri **ControlChar.Cr** di fine paragrafo con combinazioni **ControlChar.CrLf**
- Utilizza la codifica UTF8

Il seguente esempio di codice mostra come salvare un documento in formato TXT:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "docx-to-txt.cs" >}}

## Estrai immagini da forme

Potrebbe essere necessario estrarre le immagini dei documenti per eseguire alcune attività. Aspose.Words ti consente di fare anche questo.

Il seguente esempio di codice mostra come estrarre immagini da un documento:

{{< gist "aspose-words-gists" "1f94e59ea4838ffac2f0edf921f67060" "extract-images.cs" >}}