---
title: Lavorare con la tabella dei contenuti in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con la tabella dei contenuti
linktitle: Lavorare con la tabella dei contenuti
description: "Tabella dei contenuti nei dettagli. Come creare e modificare `TOC` campo usando Java."
type: docs
weight: 170
url: /it/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Spesso lavorerai con documenti contenenti una tabella di contenuti (TOC). Utilizzo Aspose.Words è possibile inserire la propria tabella di contenuti o ricostruire completamente la tabella di contenuti esistente nel documento utilizzando solo poche righe di codice.

Questo articolo delinea come lavorare con la tabella del campo dei contenuti e dimostra:

- Come inserire un nuovo TOC.
- Aggiornare i TOC nuovi o esistenti nel documento.
- Specificare gli switch per controllare la formattazione e la struttura complessiva del TOC.
- Come modificare gli stili e l'aspetto della tabella dei contenuti.
- Come rimuovere un intero `TOC` campo con tutte le voci dal documento.

## Inserisci tabella dei contenuti programmaticamente

È possibile inserire un `TOC` (tabella dei contenuti) campo nel documento in posizione corrente chiamando il [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String) metodo.

Una tabella di contenuti in un documento di Word può essere costruita in diversi modi e formattata utilizzando una varietà di opzioni. Il campo passa al metodo controlla il modo in cui la tabella viene costruita e visualizzata nel documento.

Gli switch predefiniti che vengono utilizzati in un `TOC` inserito in Microsoft Word sono **""\o "1-3 \h \z \u"**. Le descrizioni di questi switch e un elenco di interruttori supportati possono essere trovate in seguito nell'articolo. È possibile utilizzare quella guida per ottenere gli interruttori corretti o se hai già un documento contenente il simile `TOC` che si desidera visualizzare i codici di campo (*ALT+F9*) e copiare gli interruttori direttamente dal campo.

Il seguente esempio di codice mostra come inserire un campo Table of Contents in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Il seguente esempio di codice dimostra come inserire una tabella dei contenuti (TOC) in un documento utilizzando gli stili di intestazione come voci:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Il codice dimostra che la nuova tabella dei contenuti è inserita in un documento vuoto. The [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) la classe viene quindi utilizzata per inserire alcuni esempi di formattazione dei contenuti con gli stili di intestazione appropriati che vengono utilizzati per contrassegnare il contenuto da includere nel TOC. Le linee successive poi popolano il `TOC` aggiornando i campi e il layout della pagina del documento.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Senza i metodi utilizzati nell'esempio, quando si apre il documento di output, si trova il `TOC` campo, ma senza contenuto visibile. Questo è perché `TOC` campo è stato inserito ma non è ancora popolato fino a quando non è aggiornato nel documento. Ulteriori informazioni su questo sono discusse nella sezione successiva.

{{% /alert %}}

## Tabella di aggiornamento dei contenuti

Aspose.Words consente di aggiornare completamente un `TOC` con poche righe di codice. Questo può essere fatto per popolare un nuovo inserito `TOC` o per aggiornare un esistente `TOC` dopo che sono state apportate modifiche al documento.

I seguenti due metodi devono essere utilizzati per aggiornare `TOC` campi nel documento:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Si prega di notare che questi due metodi di aggiornamento sono tenuti a essere chiamati in tale ordine. Se invertito la tabella dei contenuti sarà popolata, ma non verranno visualizzati numeri di pagina. Qualsiasi numero di TOC diversi può essere aggiornato. Questi metodi aggiorneranno automaticamente tutti i TOC trovati nel documento.

Il seguente esempio di codice mostra come ricostruire completamente `TOC` campi nel documento invocando aggiornamenti sul campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

La prima chiamata a [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) costruire il `TOC`> tutte le voci di testo sono popolate e `TOC` sembra quasi completo. L'unica cosa manca è il numero di pagina che per ora vengono visualizzati con "?".

La seconda chiamata a [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) costruirà il layout del documento in memoria. Questo deve essere fatto per raccogliere i numeri di pagina delle voci. I numeri di pagina corretti calcolati da questa chiamata vengono poi inseriti nel TOC.

## Utilizzare gli interruttori alla tabella di controllo del comportamento dei contenuti

Come con qualsiasi altro campo, `TOC` campo può accettare interruttori definiti all'interno del codice di campo che controlla come viene costruita la tabella dei contenuti. Alcuni switch sono utilizzati per controllare quali voci sono incluse e a che livello mentre altri sono utilizzati per controllare l'aspetto del TOC. Gli interruttori possono essere combinati insieme per consentire una complessa tabella di contenuti da produrre.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Per impostazione predefinita, questi switch sopra sono inclusi quando si inserisce un default `TOC` nel documento. A `TOC` senza interruttori includerà i contenuti degli stili di intestazione incorporati (come se l'interruttore \O è impostato).

La disponibilità `TOC` interruttori supportati da Aspose.Words sono elencati di seguito e i loro usi sono descritti in dettaglio. Possono essere suddivisi in sezioni separate in base al loro tipo. Gli switch nella prima sezione definiscono quali contenuti includere nella `TOC` e gli interruttori nella seconda sezione controllano l'aspetto del TOC.

Se un interruttore non è elencato qui, è attualmente non supportato. Tutti gli switch saranno supportati nelle versioni future. Stiamo aggiungendo ulteriore supporto ad ogni release.

### Interruttori di marcatura di entrata

|  Interruttore | Designazione |
|  :-  |  :-  |
| **Heading Styles** <br/> *(\O Switch)* <br/> | <p>Questo interruttore definisce che `TOC` dovrebbe essere costruito fuori gli stili di intestazione incorporati. In Microsoft Word, questi sono definiti dalla voce 1 – Heading 9. In Aspose.Words questi stili sono rappresentati dalla corrispondente enumerazione StyleIdentifier. Questa enumerazione rappresenta un identificativo indipendente dal locale di uno stile, ad esempio, `StyleIdentifier.Heading1` rappresenta lo stile Heading 1. Utilizzando questo, la formattazione e le proprietà dello stile possono essere recuperate dalla collezione Style del documento. La classe Style corrispondente può essere recuperata dal `Document.Styles` raccolta utilizzando la proprietà indicizzata di tipo StyleIdentifier.</p>

<p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p>

<p><br/><br/>Qualsiasi contenuto formattato con questi stili è incluso nella tabella dei contenuti. Il livello della voce definirà il livello gerarchico corrispondente dell'entrata nel TOC. Per esempio, un paragrafo con lo stile Heading 1 sarà trattato come il primo livello nel `TOC` mentre un paragrafo con la testata 2 sarà trattato come il livello successivo nella gerarchia e così via.</p>
 |
| **Outline Levels** <br/> *(\U switch)* <br/> | <p>Ogni paragrafo può definire un livello di profilo in base alle opzioni del paragrafo.</p>

<p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p>

<p><br/><br/>Questa impostazione detta quale livello questo paragrafo dovrebbe essere trattato nella gerarchia dei documenti. Si tratta di una pratica comunemente usata per strutturare facilmente il layout di un documento. Questa gerarchia può essere vista cambiando in Outline View in Microsoft Word. Analogamente agli stili di intestazione, ci possono essere 1 – 9 livelli di contorni oltre al livello di "Testo Corpo". Livelli Outline 1 – 9 compariranno nel `TOC` nel livello corrispondente della gerarchia <br/>Qualsiasi contenuto con un livello di profilo o impostato nello stile del paragrafo o direttamente sul paragrafo stesso è incluso nel TOC. In Aspose.Words il livello del profilo è rappresentato dal `ParagraphFormat.OutlineLevel` proprietà del nodo Paragrafo. Il livello di schema di uno stile di paragrafo è rappresentato allo stesso modo dal `Style.ParagraphFormat` proprieta'.</p>

<p>{{% alert color="primary" %}}</p>

<p>Si noti che gli stili di intestazione incorporati come Heading 1 hanno un profilo livello obbligatorio impostato in impostazioni di stile.</p>

<p>{{% /alert %}}</p>
 |
| **Custom Styles** <br/> *(\T switch)* <br/> | <p>Questo interruttore permetterà di utilizzare stili personalizzati quando si raccoglie voci da utilizzare nel TOC. Questo viene spesso utilizzato in combinazione con l'interruttore \O per includere stili personalizzati con stili di intestazione incorporati nel TOC. <br/>I parametri dell'interruttore devono essere racchiusi all'interno dei segni di discorso. Molti stili personalizzati possono essere inclusi, per ogni stile, il nome deve essere specificato seguito da una virgola seguita dal livello che lo stile dovrebbe apparire nel `TOC` come. Ulteriori stili sono anche separati da una virgola pure. <br/>Per esempio</p>

<p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p>

<p>userà il contenuto in stile con CustomHeading1 come livello 1 contenuto nel `TOC` e CustomHeading2 come livello 2.</p>
 |
| Utilizzare campi TC <br/> *(\F e \L Switchs)* <br/> | <p>Nelle versioni precedenti di Microsoft Word, l'unico modo per costruire un `TOC` era l'uso dei campi TC. Questi campi vengono inseriti nascosti nel documento anche quando vengono mostrati i codici di campo. Essi includono il testo che dovrebbe essere visualizzato nella voce e `TOC` è costruito da loro. Questa funzionalità non è ora utilizzata molto spesso, ma può ancora essere utile in alcune occasioni per includere le voci nelle `TOC` che non sono ritenute visibili nel documento. <br/>Quando inserito questi campi appaiono nascosti anche quando vengono visualizzati i codici di campo. Non possono essere visti senza mostrare contenuti nascosti. Per vedere questi campi Mostra la formattazione del paragrafo deve essere selezionata.</p>

<p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p>

<p>Questi campi possono essere inseriti in un documento in qualsiasi posizione come qualsiasi altro campo e sono rappresentati da `FieldType.FieldTOCEntry` enumerazione.<br/>L'interruttore \F in un `TOC` viene utilizzato per specificare che i campi TC devono essere utilizzati come voci. L'interruttore da solo senza alcun identificatore supplementare significa che qualsiasi campo TC nel documento sarà incluso. Qualsiasi parametro aggiuntivo, spesso una singola lettera, designerà che solo i campi TC che hanno un interruttore \f corrispondente saranno inclusi nel TOC. Per esempio *</p>

<p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p>

<p>include solo campi TC come</p>

<p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p>

<p>The `TOC` campo ha anche un interruttore relativo, l'interruttore "\L" specifica che solo campo TC con livelli all'interno dell'intervallo specificato sono inclusi.</p>

<p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p>

<p><br/><br/>The `TC` campi possono anche avere {several, `multiple`, a few, `many`, numerous} set di interruttori. Questi sono:</p>

<p>- \F – Spiegato sopra. #</p>

<p>- \L – Definisce quale livello nel `TOC` questo campo TC apparirà in. A `TOC` che utilizza questo stesso interruttore includerà solo questo campo TC se è all'interno dell'intervallo specificato.</p>

<p>- No. La pagina numerazione per questo `TOC` l'ingresso non viene visualizzato. Esempio codice di come inserire campi TC può essere trovato nella sezione successiva.</p>
 |

### Aspetto Interruttori correlati

|  Interruttore | Designazione |
|  :-  |  :-  |
| **Omit Page Numbers** <br/> *(\N Switch)* | <p>Questo interruttore è usato per nascondere i numeri di pagina per alcuni livelli del TOC. Ad esempio, è possibile definire</p>

<p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p>

<p>e i numeri di pagina sulle voci dei livelli 3 e quattro saranno nascosti insieme ai punti leader (se ci sono). Per specificare un solo livello un intervallo dovrebbe ancora essere utilizzato, ad esempio, "1-1" escluderà i numeri di pagina solo per il primo livello. <br/>Fornendo nessun range di livello ometterà numeri di pagina per tutti i livelli nel TOC. Questo è utile per impostare quando si esporta un documento in HTML o un formato simile. Questo perché i formati basati su HTML non hanno alcun concetto di pagina e quindi non hanno bisogno di alcun numero di pagina.</p>

<p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p>
 |
| Inserisci come collegamenti ipertestuali <br/> *(\H Switch)* | <p>Questo interruttore specifica che `TOC` le voci sono inserite come collegamenti ipertestuali. Quando si visualizza un documento in Microsoft Word queste voci appariranno ancora come testo normale all'interno `TOC` ma sono collegati in modo ipertestuale e quindi possono essere utilizzati per navigare nella posizione dell'ingresso originale nel documento utilizzando *Ctrl + Left Click* in Microsoft Word. Quando questo interruttore è incluso, questi collegamenti sono conservati anche in altri formati. Ad esempio, in formati basati su HTML, tra cui EPUB e formati resi come PDF e XPS, questi saranno esportati come link di lavoro. <br/>Senza questo interruttore, il `TOC` in tutte queste uscite saranno esportate come testo normale e non dimostreranno questo comportamento. Se un documento è aperto in MS Word il testo delle voci non sarà anche cliccabile in questo modo, ma i numeri di pagina possono ancora essere utilizzati per navigare all'ingresso originale.</p>

<p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p>
 |
| **Set Separator Character** <br/> *(\P Switch)* <br/> | <p>Questo switch consente di modificare facilmente il contenuto che separa il titolo della numerazione di voce e pagina nel TOC. Il separatore da utilizzare deve essere specificato dopo questo interruttore e racchiuso in segni di discorso. <br/>Contrariamente a quanto documentato nella documentazione di Office, solo un carattere può essere utilizzato al posto di cinque. Questo vale sia per MS Word che per Aspose.Words. <br/>Utilizzando questo interruttore non è raccomandato in quanto non consente molto controllo su quello che ha usato per separare le voci e i numeri di pagina nel TOC. Invece, si consiglia di modificare l'appropriato `TOC` stile come `StyleIdentifier.TOC1` e da lì modificare lo stile leader con accesso a specifici membri del carattere, ecc. Ulteriori dettagli su come fare questo può essere trovato in seguito nell'articolo.</p>

<p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p>
 |
| **Preserve Tab Entries** <br/> *(\W Switch)* | <p>Utilizzando questo switch si specifica che tutte le voci che hanno un carattere di scheda, per esempio, una voce che ha una scheda alla fine della riga, saranno mantenute come un carattere di scheda corretta quando si popula il TOC. Ciò significa che la funzione del carattere della scheda sarà presente nel `TOC` e può essere utilizzato per formattare la voce. Ad esempio, alcune voci possono usare le interruzioni della scheda e i caratteri della scheda per liberare uniformemente il testo. Fino al corrispondente `TOC` livello definisce la scheda equivalente si ferma quindi il generato `TOC` le voci appariranno con simili spaziature. <br/><br/>Nella stessa situazione se questo interruttore non è stato definito allora i caratteri della scheda sarebbero convertiti in spazio bianco equivalente come schede non funzionanti. L'output non appare come previsto.</p>

<p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p>
 |
| **Preserve New Line Entries** <br/> *(\X Switch)* <br/> | <p>Analogamente all'interruttore sopra, questo interruttore specifica che le voci che spaziano su più linee (utilizzando caratteri newline, non paragrafi separati) saranno conservate come sono nel TOC generato. Ad esempio, una voce che si diffonde su più linee può utilizzare il nuovo carattere di linea (Ctrl + Invio o `ControlChar.LineBreak`) separare i contenuti in diverse linee. Con questo interruttore specificato, l'ingresso nel `TOC` conserverà questi nuovi caratteri di linea come mostrato di seguito. <br/><br/>In questa situazione, se l'interruttore non è definito, i nuovi caratteri di linea vengono convertiti in un unico spazio bianco.</p>

<p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p>
 |

## Inserisci campi TC

È possibile inserire un nuovo campo TC nella posizione corrente della `DocumentBuilder` chiamando `DocumentBuilder.InsertField` metodo e specificando il nome del campo come "TC" insieme a tutti gli switch necessari.

Il seguente esempio di codice mostra come inserire un `TC` campo nel documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Spesso una linea specifica di testo è designata per `TOC` ed è segnato con un `TC` campo. Il modo semplice per farlo in MS Word è quello di evidenziare il testo e premere *ALT+SHIFT+O*. Questo crea automaticamente `TC` campo utilizzando il testo selezionato. La stessa tecnica può essere realizzata attraverso il codice. Il codice qui sotto troverà il testo corrispondente all'ingresso e inserire un `TC` campo nella stessa posizione del testo. Il codice si basa sulla stessa tecnica utilizzata nell'articolo. Il seguente esempio di codice mostra come trovare e inserire un `TC` campo al testo in un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modificare una tabella dei contenuti

### Modificare la formattazione degli stili

La formattazione delle voci nella `TOC` non utilizza gli stili originali delle voci segnate, invece, ogni livello viene formattato utilizzando un equivalente `TOC` stile. Per esempio, il primo livello nel `TOC` è formattato con il **TOC1** stile, il secondo livello formattato con il **TOC2** stile e così via. Ciò significa che cambiare lo sguardo `TOC` questi stili devono essere modificati. In Aspose.Words questi stili sono rappresentati dal locale-indipendente `StyleIdentifier.TOC1` attraverso il `StyleIdentifier.TOC9` e può essere recuperato dal `Document.Styles` raccolta utilizzando questi identificatori.

Una volta che lo stile appropriato del documento è stato recuperato la formattazione per questo stile può essere modificato. Eventuali modifiche a questi stili saranno automaticamente riflesse nei TOC nel documento.

Il seguente esempio di codice cambia una proprietà di formattazione utilizzata nel primo livello `TOC` stile.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

È anche utile notare che qualsiasi formattazione diretta di un paragrafo (definita sul paragrafo stesso e non nello stile) contrassegnata da essere inclusa nella `TOC` sarà copiato nella voce nel TOC. Ad esempio, se lo stile Heading 1 viene utilizzato per contrassegnare il contenuto per `TOC` e questo stile ha la formattazione Bold mentre il paragrafo ha anche la formattazione italica applicata direttamente ad esso. Il risultato `TOC` l'ingresso non sarà audace come questo è parte della formattazione di stile tuttavia sarà italico come questo è direttamente formattato sul paragrafo.

È inoltre possibile controllare la formattazione dei separatori utilizzati tra ogni voce e il numero di pagina. Per impostazione predefinita, si tratta di una linea tratteggiata che viene diffusa attraverso la numerazione della pagina utilizzando un carattere di scheda e una scheda di destra fermata allineata vicino al margine destro.

Usare il `Style` classe recuperata per il particolare `TOC` livello che si desidera modificare, è anche possibile modificare come questi appaiono nel documento.

Cambiare come questo appare in primo luogo `Style.ParagraphFormat` deve essere chiamato per recuperare la formattazione del paragrafo per lo stile. Da questo, le fermate della scheda possono essere recuperate chiamando `ParagraphFormat.TabStops` e la scheda appropriata stop modificata. Utilizzando questa stessa tecnica la scheda stessa può essere spostata o rimossa del tutto.

Il seguente esempio di codice mostra come modificare la posizione della scheda di destra arrestare `TOC` paragrafi correlati.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Rimuovere una tabella dei contenuti dal documento

Una tabella di contenuto può essere rimossa dal documento rimuovendo tutti i nodi trovati tra `FieldStart` e nodo FieldEnd del `TOC` campo.

Il codice qui sotto lo dimostra. La rimozione della `TOC` campo è più semplice di un campo normale in quanto non teniamo traccia di campi nidificati. Invece, controlliamo il `FieldEnd` nodo è di tipo `FieldType.FieldTOC` che significa che abbiamo incontrato la fine dell'attuale TOC. Questa tecnica può essere utilizzata in questo caso senza preoccuparsi di eventuali campi nidificati come possiamo presumere che qualsiasi documento adeguatamente formato non avrà completamente nidificato `TOC` campo dentro un altro `TOC` campo.

Primo: `FieldStart` nodi di ciascuno `TOC` sono raccolti e memorizzati. Il specificato `TOC` viene poi enumerato in modo che tutti i nodi all'interno del campo siano visitati e memorizzati. I nodi vengono poi rimossi dal documento. Il seguente esempio di codice dimostra come rimuovere un specificato `TOC` da un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Estratto Tabella dei contenuti

Se si desidera estrarre una tabella di contenuti da qualsiasi documento di Word, il seguente campione di codice può essere utilizzato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
