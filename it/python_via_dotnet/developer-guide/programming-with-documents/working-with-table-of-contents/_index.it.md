---
title: Lavorare con il sommario
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con il sommario
linktitle: Lavorare con il sommario
description: "Inserisci e gestisci il `Sommario` in un documento utilizzando Python."
type: docs
weight: 170
url: /it/python-net/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Spesso lavorerai con documenti contenenti un sommario (TOC). Utilizzando Aspose.Words puoi inserire il tuo sommario o ricostruire completamente il sommario esistente nel documento utilizzando solo poche righe di codice. Questo articolo descrive come utilizzare il campo del sommario e dimostra:

- Come inserire un nuovissimo `TOC`
- Aggiorna i sommari nuovi o esistenti nel documento.
- Specificare gli interruttori per controllare la formattazione e la struttura generale del sommario.
- Come modificare gli stili e l'aspetto del sommario.
- Come rimuovere un intero campo `TOC` insieme a tutte le voci dal documento.

## Inserisci un sommario a livello di codice

È possibile inserire un campo `TOC` (sommario) nel documento nella posizione corrente chiamando il metodo [DocumentBuilder.insert_table_of_contents](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_table_of_contents/).

Un sommario in un documento di Word può essere creato in diversi modi e formattato utilizzando una varietà di opzioni. Il campo passa al metodo per controllare il modo in cui la tabella viene creata e visualizzata nel documento.

Le opzioni predefinite utilizzate in un `TOC` inserito in Microsoft Word sono **"\o "1-3 \h \z \u"**. Le descrizioni di queste opzioni e un elenco di opzioni supportate sono disponibili più avanti nell'articolo. Puoi utilizzare quella guida per ottenere le opzioni corrette oppure, se hai già un documento contenente il `TOC` simile che desideri, puoi mostrare i codici di campo (*ALT+F9*) e copiare le opzioni direttamente dal campo.

L'esempio di codice seguente mostra come inserire un campo Sommario in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTableOfContents.py" >}}

Il codice dimostra che il nuovo sommario viene inserito in un documento vuoto. La classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) viene quindi utilizzata per inserire alcuni esempi di formattazione del contenuto con gli stili di intestazione appropriati utilizzati per contrassegnare il contenuto da includere nel sommario. Le righe successive popolano poi il `TOC` aggiornando i campi e il layout di pagina del documento.

{{% alert color="primary" %}}

Senza i metodi utilizzati nell'esempio, quando apri il documento di output, troveresti il campo `TOC`, ma senza contenuto visibile. Questo perché il campo `TOC` è stato inserito ma non è ancora popolato finché non viene aggiornato nel documento. Ulteriori informazioni a riguardo sono discusse nella sezione successiva.

{{% /alert %}}

## Aggiorna il sommario

Aspose.Words ti consente di aggiornare completamente un `TOC` con solo poche righe di codice. Questo può essere fatto per popolare un `TOC` appena inserito o per aggiornare un `TOC` esistente dopo che sono state apportate modifiche al documento. Per aggiornare i campi `TOC` nel documento è necessario utilizzare i due metodi seguenti:

1. [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/)
1. [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/)

Tieni presente che questi due metodi di aggiornamento devono essere richiamati in quest'ordine. Se invertito, il sommario verrà popolato ma non verranno visualizzati i numeri di pagina. È possibile aggiornare un numero qualsiasi di TOC diversi. Questi metodi aggiorneranno automaticamente tutti i sommari trovati nel documento.

Il seguente esempio di codice mostra come ricostruire completamente i campi `TOC` nel documento richiamando l'aggiornamento del campo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-UpdateFields.py" >}}

La prima chiamata a [Document.update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) creerà il `TOC`, tutte le voci di testo verranno popolate e il `TOC` apparirà quasi completo. Mancano solo i numeri di pagina che per ora vengono visualizzati con "?". La seconda chiamata a [Document.update_page_layout](https://reference.aspose.com/words/python-net/aspose.words/document/update_page_layout/) costruirà il layout del documento in memoria. Questo deve essere fatto per raccogliere i numeri di pagina delle voci. I numeri di pagina corretti calcolati da questa chiamata vengono quindi inseriti nel sommario.

## Utilizza gli interruttori per controllare il comportamento del sommario.

Come con qualsiasi altro campo, il campo `TOC` può accettare opzioni definite all'interno del codice di campo che controllano il modo in cui viene creato il sommario. Alcuni interruttori vengono utilizzati per controllare quali voci includere e a quale livello, mentre altri vengono utilizzati per controllare l'aspetto del sommario. Gli interruttori possono essere combinati insieme per consentire la produzione di sommari complessi.

![working-with-table-of-contents-aspose-words-net](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-1.png)


Per impostazione predefinita, queste opzioni sopra sono incluse quando si inserisce un `TOC` predefinito nel documento. Un `TOC` senza opzioni includerà il contenuto degli stili di intestazione incorporati (come se l'opzione \O fosse impostata). Gli switch `TOC` disponibili supportati da Aspose.Words sono elencati di seguito e i loro usi sono descritti in dettaglio. Possono essere divisi in sezioni separate in base alla loro tipologia. Gli interruttori nella prima sezione definiscono quale contenuto includere nel `TOC` e gli interruttori nella seconda sezione controllano l'aspetto del sommario. Se un'opzione non è elencata qui significa che al momento non è supportata. Tutti gli switch saranno supportati nelle versioni future. Stiamo aggiungendo ulteriore supporto con ogni versione.

### Interruttori di contrassegno di ingresso

|  Interruttore | Descrizione |
|  :-  |  :-  |
| **Heading Styles**<br>*(\Commutatore O)* | <p>Questa opzione definisce che il `TOC` dovrebbe essere costruito a partire dagli stili di intestazione incorporati. In Microsoft Word questi sono definiti da Intestazione 1 – Intestazione 9. In Aspose.Words questi stili sono rappresentati dalla corrispondente enumerazione StyleIdentifier. Questa enumerazione rappresenta un identificatore indipendente dalle impostazioni locali di uno stile, ad esempio `StyleIdentifier.Heading1` rappresenta lo stile Titolo 1. Utilizzando questo, la formattazione e le proprietà dello stile possono essere recuperate dalla raccolta Style del documento. La classe Style corrispondente può essere recuperata dalla raccolta `Document.Styles` utilizzando la proprietà indicizzata di tipo StyleIdentifier.</p>

<p>![working-with-table-of-contents-styles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-2.png)</p>

<p>Qualsiasi contenuto formattato con questi stili viene incluso nel sommario. Il livello dell'intestazione definirà il corrispondente livello gerarchico della voce nel TOC. Ad esempio, un paragrafo con stile Titolo 1 verrà trattato come il primo livello nel `TOC` mentre un paragrafo con Titolo 2 verrà trattato come il livello successivo nella gerarchia e così via.</p> |
| **Outline Levels**<br>*(commutazione \U)* | <p>Ogni paragrafo può definire un livello di struttura in Opzioni paragrafo.</p>

<p>![working-with-table-of-contents-paragraph](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-3.png)</p>

<p>Questa impostazione determina a quale livello questo paragrafo deve essere trattato nella gerarchia del documento. Questa è una pratica comunemente utilizzata per strutturare facilmente il layout di un documento. Questa gerarchia può essere visualizzata passando alla visualizzazione struttura in Microsoft Word. Analogamente agli stili di intestazione, possono esserci da 1 a 9 livelli di struttura oltre al livello "Corpo del testo". I livelli di struttura da 1 a 9 verranno visualizzati nell'`TOC` nel livello corrispondente della gerarchia<br>Qualsiasi contenuto con un livello di struttura impostato nello stile di paragrafo o direttamente nel paragrafo stesso è incluso nel sommario. In Aspose.Words il livello della struttura è rappresentato dalla proprietà `ParagraphFormat.OutlineLevel` del nodo Paragrafo. Il livello di struttura di uno stile di paragrafo è rappresentato allo stesso modo dalla proprietà `Style.ParagraphFormat`.</p>

<p>{{% alert color="primary" %}}</p>

<p>Tieni presente che gli stili di titolo incorporati come Titolo 1 hanno un livello di struttura impostato obbligatoriamente nelle impostazioni di stile.</p>

<p>{{% /alert %}}</p> |
| **Custom Styles**<br>*(commutazione \T)* | <p>Questa opzione consentirà l'utilizzo di stili personalizzati durante la raccolta delle voci da utilizzare nel sommario. Viene spesso utilizzato insieme all'opzione \O per includere stili personalizzati insieme agli stili di intestazione incorporati nel sommario.<br>I parametri dell'interruttore devono essere racchiusi tra segni vocali. È possibile includere molti stili personalizzati, per ogni stile deve essere specificato il nome seguito da una virgola seguita dal livello con cui lo stile dovrebbe apparire nel `TOC`. Anche altri stili sono separati da una virgola.<br>Ad esempio</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>utilizzerà il contenuto con stile CustomHeading1 come contenuto di livello 1 nel `TOC` e CustomHeading2 come livello 2.</p> |
| **Use TC Fields**<br>*(Commutatori \F e \L)* | <p>Nelle versioni precedenti di Microsoft Word, l'unico modo per creare un `TOC` era l'uso dei campi TC. Questi campi vengono inseriti nascosti nel documento anche quando vengono visualizzati i codici di campo. Includono il testo che dovrebbe essere visualizzato nella voce e da essi viene creato il `TOC`. Questa funzionalità ora non viene utilizzata molto spesso ma può comunque essere utile in alcune occasioni per includere voci nel `TOC` che non sono rientrate per essere visibili nel documento.<br>Una volta inseriti, questi campi appaiono nascosti anche quando vengono visualizzati i codici di campo. Non possono essere visti senza mostrare contenuti nascosti. Per visualizzare questi campi è necessario selezionare Mostra formattazione paragrafo.</p>

<p>![working-with-table-of-contents-paragraph-settings](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-4.png)</p> Questi campi possono essere inseriti in un documento in qualsiasi posizione come qualsiasi altro campo e sono rappresentati dall'enumerazione `FieldType.FieldTOCEntry`.<br>L'opzione \F in un `TOC` viene utilizzata per specificare che i campi TC devono essere utilizzati come voci. Lo switch da solo senza alcun identificatore aggiuntivo significa che verrà incluso qualsiasi campo TC nel documento. Qualsiasi parametro aggiuntivo, spesso una singola lettera, indicherà che solo i campi TC che hanno un'opzione \f corrispondente verranno inclusi nel sommario. Ad esempio *</p>

<p>{{< highlight csharp >}}{ TOC \f t }{{< /highlight >}}</p>

<p>includerà solo i campi TC come</p>

<p>{{< highlight csharp >}}{   TC \f t }{{< /highlight >}}</p>

<p>Il campo `TOC` ha anche un interruttore correlato, l'interruttore "\L" specifica che sono inclusi solo i campi TC con livelli compresi nell'intervallo specificato.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-5.png)</p>

<p>Anche i campi `TC` stessi possono avere diversi interruttori impostati. Questi sono:</p>

<p>- *\F – Spiegato sopra.*</p>

<p>- *\L – Definisce in quale livello del `TOC` apparirà questo campo TC. Un `TOC` che utilizza questo stesso interruttore includerà questo campo TC solo se rientra nell'intervallo specificato.*</p>

<p>- `_\N` – La numerazione delle pagine per questa voce `TOC` non viene visualizzata. Un codice di esempio su come inserire i campi TC è disponibile nella sezione successiva.</p> |

### Interruttori relativi all'aspetto

|  Interruttore | Descrizione |
|  :-  |  :-  |
| **Omit Page Numbers**<br>*(Commutazione \N)* | <p>Questo interruttore viene utilizzato per nascondere i numeri di pagina per determinati livelli del sommario. Ad esempio puoi definire</p>

<p>{{< highlight csharp >}}{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>e i numeri di pagina sulle voci dei livelli 3 e quattro verranno nascosti insieme ai punti iniziali (se ce ne sono). Per specificare un solo livello è comunque necessario utilizzare un intervallo, ad esempio "1-1" escluderà i numeri di pagina solo per il primo livello.<br>Se non si fornisce alcun intervallo di livelli, verranno omessi i numeri di pagina per tutti i livelli nel sommario. È utile impostarlo quando si esporta un documento in HTML o formato simile. Questo perché i formati basati su HTML non hanno alcun concetto di pagina e quindi non necessitano di alcuna numerazione delle pagine.</p>

<p>![todo:image_alt_text](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-6.png)</p> |
| **Insert As Hyperlinks**<br>*(\Commutatore H)* | <p>Questa opzione specifica che le voci `TOC` vengono inserite come collegamenti ipertestuali. Quando si visualizza un documento in Microsoft Word, queste voci appariranno comunque come testo normale all'interno del `TOC` ma sono collegate tramite collegamento ipertestuale e quindi possono essere utilizzate per spostarsi nella posizione della voce originale nel documento utilizzando *Ctrl + clic sinistro* in Microsoft Word. Quando questa opzione è inclusa, questi collegamenti vengono conservati anche in altri formati. Ad esempio, nei formati basati su HTML, incluso EPUB, e nei formati renderizzati come PDF e XPS, questi verranno esportati come collegamenti funzionanti.<br>Senza questo interruttore impostato, il `TOC` in tutti questi output verrà esportato come testo normale e non dimostrerà questo comportamento. Se un documento viene aperto in MS Word, anche il testo delle voci non sarà cliccabile in questo modo, ma i numeri di pagina potranno comunque essere utilizzati per navigare fino alla voce originale.</p>

<p>![working-with-table-of-contents-titles](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-7.png)</p> |
| **Set Separator Character**<br>*(Commutazione \P)* | <p>Questo interruttore consente di modificare facilmente il contenuto che separa il titolo della voce e la numerazione delle pagine nel sommario. Il separatore da utilizzare deve essere specificato dopo questa opzione e racchiuso tra segni vocali.<br>Contrariamente a quanto documentato nella documentazione di Office, è possibile utilizzare un solo carattere invece di un massimo di cinque. Questo vale sia per MS Word che per Aspose.Words.<br>L'utilizzo di questa opzione non è consigliabile in quanto non consente un grande controllo su ciò che viene utilizzato per separare le voci e i numeri di pagina nel sommario. Si consiglia invece di modificare lo stile `TOC` appropriato come `StyleIdentifier.TOC1` e da lì modificare lo stile leader con accesso a membri di caratteri specifici, ecc. Ulteriori dettagli su come eseguire questa operazione sono disponibili più avanti nell'articolo.</p>

<p>![working-with-table-of-contents-toc](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-8.png)</p> |
| **Preserve Tab Entries**<br>*(\Commutatore W)* | <p>L'utilizzo di questa opzione specificherà che tutte le voci che hanno un carattere di tabulazione, ad esempio un'intestazione che ha una tabulazione alla fine della riga, verranno conservate come carattere di tabulazione corretto durante la compilazione del sommario. Ciò significa che la funzione del carattere di tabulazione sarà presente nel `TOC` e potrà essere utilizzata per formattare la voce. Ad esempio, alcune voci possono utilizzare punti di tabulazione e caratteri di tabulazione per spaziare uniformemente il testo. Finché il livello `TOC` corrispondente definisce le tabulazioni equivalenti, le voci `TOC` generate appariranno con una spaziatura simile.<br><br>Nella stessa situazione, se questa opzione non fosse definita, i caratteri di tabulazione verrebbero convertiti in spazi bianchi equivalenti come tabulazioni non funzionanti. L'output quindi non apparirebbe come previsto.</p>

<p>![working-with-table-of-contents-aspose](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-9.png)</p> |
| **Preserve New Line Entries**<br>*(\Commutatore X)* | <p>Similmente all'opzione precedente, questa opzione specifica che le intestazioni che si estendono su più righe (utilizzando caratteri di nuova riga e non paragrafi separati) verranno conservate così come sono nel sommario generato. Ad esempio, un'intestazione che deve essere distribuita su più righe può utilizzare il carattere di nuova riga (Ctrl + Invio o `ControlChar.LineBreak`) per separare il contenuto su righe diverse. Con questa opzione specificata, la voce nel `TOC` conserverà questi caratteri di nuova riga come mostrato di seguito.<br><br>In questa situazione, se l'opzione non è definita, i caratteri di nuova riga vengono convertiti in un singolo spazio bianco.</p>

<p>![working-with-table-of-contents-aspose-words](/words/python-net/working-with-table-of-contents/working-with-table-of-contents-10.png)</p> |

## Inserisci campi TC

È possibile inserire un nuovo campo TC nella posizione corrente del [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) chiamando il metodo [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) e specificando il nome del campo come "TC" insieme a eventuali opzioni necessarie. L'esempio seguente mostra come inserire un campo `TC` nel documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertTCField.py" >}}


## Modificare un sommario

La formattazione delle voci nel `TOC` non utilizza gli stili originali delle voci contrassegnate, invece ogni livello è formattato utilizzando uno stile `TOC` equivalente. Ad esempio il primo livello nel `TOC` è formattato con lo stile **TOC1**, il secondo livello formattato con lo stile **TOC2** e così via. Ciò significa che per cambiare l'aspetto del `TOC` è necessario modificare questi stili. In Aspose.Words questi stili sono rappresentati dal [StyleIdentifier.TOC1](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc1) indipendente dalle impostazioni locali fino a [StyleIdentifier.TOC9](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#toc9) e possono essere recuperati dalla raccolta [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/) utilizzando questi identificatori.

Una volta recuperato lo stile appropriato del documento, è possibile modificare la formattazione di questo stile. Qualsiasi modifica a questi stili si rifletterà automaticamente nei sommari del documento. L'esempio seguente modifica una proprietà di formattazione utilizzata nello stile `TOC` di primo livello.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeStyleOfTOCLevel.py" >}}

È inoltre utile notare che qualsiasi formattazione diretta di un paragrafo (definita nel paragrafo stesso e non nello stile) contrassegnata per essere inclusa nel `TOC` verrà copiata nella voce del TOC. Ad esempio, se lo stile Titolo 1 viene utilizzato per contrassegnare il contenuto del `TOC` e questo stile ha la formattazione in grassetto mentre al paragrafo viene applicata direttamente anche la formattazione corsivo. La voce `TOC` risultante non sarà in grassetto poiché fa parte della formattazione dello stile, tuttavia sarà in corsivo poiché è formattata direttamente nel paragrafo.

Puoi anche controllare la formattazione dei separatori utilizzati tra ogni voce e numero di pagina. Per impostazione predefinita si tratta di una linea tratteggiata che si estende lungo la numerazione delle pagine utilizzando un carattere di tabulazione e un punto di tabulazione destro allineato vicino al margine destro.

Utilizzando la classe [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) recuperata per il particolare livello `TOC` che desideri modificare, puoi anche modificare il modo in cui questi appaiono nel documento. Per modificare il modo in cui appare, è necessario innanzitutto richiamare [Style.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/style/paragraph_format/) per recuperare la formattazione del paragrafo per lo stile. Da questo è possibile recuperare i punti di tabulazione chiamando [ParagraphFormat.tab_stops](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/tab_stops/) e modificare il punto di tabulazione appropriato. Utilizzando questa stessa tecnica la scheda stessa può essere spostata o rimossa tutta insieme. L'esempio seguente mostra come modificare la posizione della tabulazione destra nei paragrafi relativi a `TOC`.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_table_of_content-ChangeTOCTabStops.py" >}}

## Rimuovere un sommario dal documento

Un sommario può essere rimosso dal documento rimuovendo tutti i nodi trovati tra il nodo [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) e [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) del campo `TOC`. Il codice seguente lo dimostra. La rimozione del campo `TOC` è più semplice di un campo normale in quanto non teniamo traccia dei campi nidificati. Controlliamo invece che il nodo [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) sia di tipo [FieldType.FIELD_TOC](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_toc), il che significa che abbiamo incontrato la fine del sommario corrente. Questa tecnica può essere utilizzata in questo caso senza preoccuparsi dei campi nidificati poiché possiamo supporre che qualsiasi documento formato correttamente non avrà un campo `TOC` completamente nidificato all'interno di un altro campo `TOC`.

Innanzitutto vengono raccolti e archiviati i nodi [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) di ciascun `TOC`. Il `TOC` specificato viene quindi enumerato in modo che tutti i nodi all'interno del campo vengano visitati e archiviati. I nodi vengono quindi rimossi dal documento. L'esempio Below code dimostra come rimuovere un `TOC` specificato da un documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-remove_content-RemoveTOCFromDocument.py" >}}

## Estrai il sommario

Se si desidera estrarre un sommario da qualsiasi documento di Word, è possibile utilizzare il seguente esempio di codice.

{{< highlight python >}}
doc = aw.Document(docs_base.my_dir + "Table of contents.docx")

for field in doc.range.fields :
            
    if (field.type == aw.fields.FieldType.FIELD_HYPERLINK) :
                
        hyperlink = field.as_field_hyperlink()
        if (hyperlink.sub_address != None and hyperlink.sub_address.find("_Toc") == 0) :
                    
            tocItem = field.start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(tocItem.to_string(aw.SaveFormat.TEXT).strip())
            print("------------------")
    
            bm = doc.range.bookmarks.get_by_name(hyperlink.sub_address)
            pointer = bm.bookmark_start.get_ancestor(aw.NodeType.PARAGRAPH).as_paragraph()
                        
            print(pointer.to_string(aw.SaveFormat.TEXT))
{{< /highlight >}}
