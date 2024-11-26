---
title: Estrai contenuto tra i nodi del documento
second_title: Aspose.Words per Python
articleTitle: Estrai contenuto tra i nodi in un documento
linktitle: Estrai contenuto tra i nodi
description: "Come estrarre facilmente contenuti specifici da un intervallo all'interno del documento utilizzando Python."
type: docs
weight: 140
url: /it/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

Quando si lavora con i documenti, è importante poter estrarre facilmente il contenuto da un intervallo specifico all'interno di un documento. Tuttavia, il contenuto può essere costituito da elementi complessi come paragrafi, tabelle, immagini, ecc.

Indipendentemente dal contenuto che deve essere estratto, il metodo per estrarre tale contenuto sarà sempre determinato da quali nodi vengono selezionati per estrarre il contenuto. Possono trattarsi di interi corpi di testo o semplici sequenze di testo.

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

Per estrarre il contenuto dal tuo documento devi chiamare il metodo **estratto_contenuto** di seguito e passare i parametri appropriati. La base di questo metodo prevede la ricerca di nodi a livello di blocco (paragrafi e tabelle) e la loro clonazione per creare copie identiche. Se i nodi marcatori passati sono a livello di blocco, il metodo è in grado semplicemente di copiare il contenuto su quel livello e aggiungerlo all'array.

Tuttavia, se i nodi marcatori sono in linea (un figlio di un paragrafo), la situazione diventa più complessa, poiché è necessario dividere il paragrafo nel nodo in linea, che si tratti di una sequenza, di campi di segnalibri, ecc. Il contenuto nei nodi principali clonati non presente tra i marcatori viene rimosso. Questo processo viene utilizzato per garantire che i nodi in linea mantengano comunque la formattazione del paragrafo principale. Il metodo eseguirà inoltre controlli sui nodi passati come parametri e genererà un'eccezione se uno dei nodi non è valido. I parametri da passare a questo metodo sono:

1. **startNode** e **endNode**. I primi due parametri sono i nodi che definiscono rispettivamente dove deve iniziare e dove deve finire l'estrazione del contenuto. Questi nodi possono essere sia a livello di blocco ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) che a livello inline (es. [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) ecc.):
   1. Per passare un campo è necessario passare l'oggetto [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) corrispondente.
   1. Per passare i segnalibri, è necessario passare i nodi [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/).
   1. Per passare commenti, è necessario utilizzare i nodi [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) e [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/).
1. **èInclusivo**. Definisce se i marcatori sono inclusi nell'estrazione oppure no. Se questa opzione è impostata su false e vengono passati lo stesso nodo o nodi consecutivi, verrà restituito un elenco vuoto:
   1. Se viene passato un nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), questa opzione definisce se l'intero campo deve essere incluso o escluso.
   1. Se viene passato un nodo [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) o [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/), questa opzione definisce se il segnalibro è incluso o solo il contenuto nell'intervallo di segnalibri.
   1. Se viene passato un nodo [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) o [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), questa opzione definisce se deve essere incluso il commento stesso o solo il contenuto nell'intervallo dei commenti.

L'implementazione del metodo **estratto_contenuto** puoi trovare [Qui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py). Questo metodo verrà fatto riferimento negli scenari in questo articolo.

Definiremo anche un metodo personalizzato per generare facilmente un documento dai nodi estratti. Questo metodo viene utilizzato in molti degli scenari seguenti e crea semplicemente un nuovo documento e vi importa il contenuto estratto.

Il seguente esempio di codice mostra come prendere un elenco di nodi e inserirli in un nuovo documento:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Estrai contenuto tra paragrafi

Questo dimostra come utilizzare il metodo sopra per estrarre il contenuto tra paragrafi specifici. In questo caso vogliamo estrarre il corpo della lettera che si trova nella prima metà del documento. Possiamo dire che questo è tra il 7° e l'11° paragrafo.

Il codice seguente esegue questa attività. I paragrafi appropriati vengono estratti utilizzando il metodo [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) sul documento e passando gli indici specificati. Passiamo quindi questi nodi al metodo **estratto_contenuto** e stabiliamo che questi siano da includere nell'estrazione. Questo metodo restituirà il contenuto copiato tra questi nodi che verranno poi inseriti in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra paragrafi specifici utilizzando il metodo **estratto_contenuto** sopra:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto tra diversi tipi di nodi

Possiamo estrarre il contenuto tra qualsiasi combinazione di livello di blocco o nodi in linea. In questo scenario di seguito estrarremo il contenuto tra il primo paragrafo e la tabella nella seconda sezione in modo inclusivo. Otteniamo i nodi dei marcatori chiamando il metodo [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) e [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) nella seconda sezione del documento per recuperare i nodi [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) e [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) appropriati. Per una leggera variazione duplichiamo invece il contenuto e inseriamolo sotto l'originale.

L'esempio di codice seguente mostra come estrarre il contenuto tra un paragrafo e una tabella utilizzando il metodo **estratto_contenuto**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai il contenuto tra i paragrafi in base allo stile

Potrebbe essere necessario estrarre il contenuto tra paragrafi con stile uguale o diverso, ad esempio tra paragrafi contrassegnati con stili di titolo.

Il codice seguente mostra come ottenere questo risultato. È un semplice esempio che estrarrà il contenuto tra la prima istanza degli stili "Intestazione 1" e "Intestazione 3" senza estrarre anche i titoli. Per fare ciò impostiamo l'ultimo parametro su false, che specifica che i nodi marcatori non devono essere inclusi.

In un'implementazione corretta, questo dovrebbe essere eseguito in loop per estrarre il contenuto tra tutti i paragrafi di questi stili dal documento. Il contenuto estratto viene copiato in un nuovo documento.

Il seguente esempio di codice mostra come estrarre il contenuto tra i paragrafi con stili specifici utilizzando il metodo **estratto_contenuto**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto tra esecuzioni specifiche

Puoi anche estrarre contenuto tra nodi in linea come un [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). È possibile passare come marcatori sequenze di paragrafi diversi. Il codice seguente mostra come estrarre testo specifico tra lo stesso nodo [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

L'esempio di codice seguente mostra come estrarre il contenuto tra esecuzioni specifiche dello stesso paragrafo utilizzando il metodo **estratto_contenuto**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto utilizzando un campo

Per utilizzare un campo come marcatore, è necessario passare il nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/). L'ultimo parametro del metodo **estratto_contenuto** definirà se l'intero campo deve essere incluso o meno. Estraiamo il contenuto tra il campo di unione "FullName" e un paragrafo nel documento. Usiamo il metodo [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) della classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). Ciò restituirà il nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) dal nome del campo di unione passatogli.

Nel nostro caso impostiamo l'ultimo parametro passato al metodo **estratto_contenuto** su `False` per escludere il campo dall'estrazione. Renderemo il contenuto estratto in PDF.

Il seguente esempio di codice mostra come estrarre il contenuto tra un campo e un paragrafo specifici nel documento utilizzando il metodo **estratto_contenuto**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto da un segnalibro

In un documento il contenuto definito all'interno di un segnalibro è incapsulato dai nodi [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) e [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/). Il contenuto trovato tra questi due nodi costituisce il segnalibro. Puoi passare uno di questi nodi come qualsiasi marcatore, anche quelli di segnalibri diversi, purché il marcatore di inizio appaia prima del marcatore di fine nel documento. Estrarremo questo contenuto in un nuovo documento utilizzando il codice seguente. L'opzione del parametro **èInclusivo** mostra come conservare o eliminare il segnalibro.

L'esempio di codice seguente mostra come estrarre il contenuto a cui fa riferimento un segnalibro utilizzando il metodo **estratto_contenuto**:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Estrai contenuto da un commento

Un commento è composto dai nodi [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) e [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/). Tutti questi nodi sono in linea. I primi due nodi incapsulano il contenuto del documento a cui fa riferimento il commento, come mostrato nello screenshot seguente. Il nodo [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) stesso è un [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) che può contenere paragrafi e sequenze. Rappresenta il messaggio del commento visualizzato come un fumetto nel riquadro di revisione. Poiché questo nodo è in linea e discendente di un corpo, puoi anche estrarre il contenuto anche dall'interno di questo messaggio.

Il commento incapsula l'intestazione, il primo paragrafo e la tabella nella seconda sezione. Estraiamo questo commento in un nuovo documento. L'opzione **èInclusivo** determina se il commento stesso viene mantenuto o scartato.

L'esempio di codice seguente mostra come eseguire questa operazione:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

È possibile scaricare il file di esempio di questo esempio da [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx).

{{% /alert %}}

## Come estrarre solo testo

I modi per recuperare il testo dal documento sono:

- Utilizza [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) per salvare come testo normale in un file o in un flusso
- Usa [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) e passa il parametro [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text). Internamente, richiama il salvataggio come testo in un flusso di memoria e restituisce la stringa risultante
- Utilizza [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) per recuperare il testo con tutti i caratteri di controllo Microsoft Word inclusi i codici di campo

### Utilizzando Node.get_text e Node.to_string

Un documento Word può contenere caratteri di controllo che designano elementi speciali come campo, fine di cella, fine di sezione ecc. L'elenco completo dei possibili caratteri di controllo di Word è definito nella classe [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/). Il metodo [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) restituisce il testo con tutti i caratteri di controllo presenti nel nodo.

La chiamata a [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) restituisce la rappresentazione in testo semplice del documento solo senza caratteri di controllo. Per ulteriori informazioni sull'esportazione come testo semplice vedere Utilizzo di [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)

L'esempio di codice seguente mostra la differenza tra la chiamata dei metodi [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) e [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) su un nodo:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Utilizzando `SaveFormat.Text`

Questo esempio salva il documento come segue:

- Filtra caratteri di campo e codici di campo, forme, note a piè di pagina, note di chiusura e riferimenti a commenti
- Sostituisce i caratteri **ControlChar.Cr** di fine paragrafo con combinazioni **ControlChar.CrLf**
- Utilizza la codifica UTF8

Il seguente esempio di codice mostra come salvare un documento in formato TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Estrai immagini da forme

Potrebbe essere necessario estrarre le immagini dei documenti per eseguire alcune attività. Aspose.Words ti consente di fare anche questo.

Il seguente esempio di codice mostra come estrarre immagini da un documento:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
