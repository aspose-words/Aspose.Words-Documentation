---
title: Utilizzo del sommario in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Table of Contents
linktitle: Lavorare con Table of Contents
description: "Tabella del campo Contenuto in dettaglio. Come creare e modificare il campo `TOC` usando Java."
type: docs
weight: 170
url: /it/java/working-with-table-of-contents/
timestamp: 2024-10-21-11-17-44
---

Spesso si lavora con documenti contenenti un sommario (TOC). Utilizzando Aspose.Words è possibile inserire il proprio sommario o ricostruire completamente il sommario esistente nel documento utilizzando solo poche righe di codice.

In questo articolo viene illustrato come utilizzare il campo sommario e viene illustrato:

- Come inserire un nuovo TOC.
- Aggiornare TOCs nuovo o esistente nel documento.
- Specificare le opzioni per controllare la formattazione e la struttura complessiva di TOC.
- Come modificare gli stili e l'aspetto del sommario.
- Come rimuovere un intero campo `TOC` insieme a tutte le voci dal documento.

## Inserire il sommario a livello di programmazione

È possibile inserire un campo `TOC` (sommario) nel documento nella posizione corrente chiamando il metodo [InsertTableOfContents](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertTableOfContents-java.lang.String).

Un sommario in un documento di Word può essere costruito in diversi modi e formattato utilizzando una varietà di opzioni. Gli interruttori di campo che si passa al metodo controllano il modo in cui la tabella viene creata e visualizzata nel documento.

Gli switch predefiniti utilizzati in un `TOC` inserito in Microsoft Word sono **"\o "1-3 \h \z \u"**. Le descrizioni di questi switch e un elenco di switch supportati possono essere trovate più avanti nell'articolo. È possibile utilizzare tale guida per ottenere gli switch corretti o se si dispone già di un documento contenente il `TOC` simile che si desidera, è possibile mostrare i codici di campo (*ALT+F9*) e copiare gli switch direttamente dal campo.

Nell'esempio di codice seguente viene illustrato come inserire un campo Sommario in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-InsertATableOfContentsField.java" >}}

Nell'esempio di codice seguente viene illustrato come inserire un sommario (TOC ) in un documento utilizzando gli stili di intestazione come voci:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsUsingHeadingStyles-InsertATableOfContentsUsingHeadingStyles.java" >}}

Il codice dimostra che il nuovo sommario è inserito in un documento vuoto. La classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) viene quindi utilizzata per inserire alcuni esempi di formattazione del contenuto con gli stili di intestazione appropriati che vengono utilizzati per contrassegnare il contenuto da includere nel TOC. Le righe successive popolano quindi `TOC` aggiornando i campi e il layout di pagina del documento.

![insert-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-1.png)

{{% alert color="primary" %}}

Senza i metodi utilizzati nell'esempio, quando si apre il documento di output, si troverebbe il campo `TOC`, ma senza contenuto visibile. Questo perché il campo `TOC` è stato inserito ma non è ancora popolato fino a quando non viene aggiornato nel documento. Ulteriori informazioni su questo è discusso nella prossima sezione.

{{% /alert %}}

## Aggiorna Indice

Aspose.Words consente di aggiornare completamente un `TOC` con poche righe di codice. Questo può essere fatto per popolare un nuovo inserito `TOC` o per aggiornare un esistente `TOC` dopo che sono state apportate modifiche al documento.

I seguenti due metodi devono essere utilizzati per aggiornare i campi `TOC` nel documento:

1. [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/Document#updateFields())
1. [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/Document#updatePageLayout())

Si prega di notare che questi due metodi di aggiornamento devono essere chiamati in questo ordine. Se invertito il sommario verrà popolato ma non verranno visualizzati numeri di pagina. È possibile aggiornare qualsiasi numero di TOCs diversi. Questi metodi aggiorneranno automaticamente tutti i TOCs trovati nel documento.

L'esempio di codice seguente mostra come ricostruire completamente i campi `TOC` nel documento richiamando gli aggiornamenti dei campi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertATableOfContentsField-UpdateTableOfContents.java" >}}

La prima chiamata a [Document.updateFields()](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) costruirà il `TOC`, tutte le voci di testo sono popolate e il `TOC` appare quasi completo. L'unica cosa che manca sono i numeri di pagina che per ora vengono visualizzati con "?".

La seconda chiamata a [Document.updatePageLayout()](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout) costruirà il layout del documento in memoria. Questo deve essere fatto per raccogliere i numeri di pagina delle voci. I numeri di pagina corretti calcolati da questa chiamata vengono quindi inseriti in TOC.

## Utilizzare gli switch per controllare il comportamento dell'indice

Come con qualsiasi altro campo, il campo `TOC` può accettare gli switch definiti all'interno del codice del campo che controlla il modo in cui viene creato il sommario. Alcuni switch sono usati per controllare quali voci sono incluse e a quale livello, mentre altri sono usati per controllare l'aspetto del TOC. Gli interruttori possono essere combinati insieme per consentire la produzione di un complesso sommario.

![ccontrol-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-2.png)


Per impostazione predefinita, queste opzioni di cui sopra sono incluse quando si inserisce un valore predefinito `TOC` nel documento. Un `TOC` senza opzioni includerà il contenuto degli stili di intestazione incorporati (come se l'opzione \O fosse impostata).

Gli switch `TOC` disponibili supportati da Aspose.Words sono elencati di seguito e i loro usi sono descritti in dettaglio. Possono essere suddivisi in sezioni separate in base al loro tipo. Gli switch nella prima sezione definiscono il contenuto da includere nel `TOC` e gli switch nella seconda sezione controllano l'aspetto del TOC.

Se uno switch non è elencato qui, al momento non è supportato. Tutti gli switch saranno supportati nelle versioni future. Stiamo aggiungendo ulteriore supporto ad ogni versione.

### Interruttori di marcatura di ingresso

| Switch | Descrizione |
| :- | :- |
| **Heading Styles** <br>* (\O Interruttore)* <br> | <p>Questo interruttore definisce che il `TOC` deve essere costruito al di fuori degli stili di intestazione incorporati. In Microsoft Word, questi sono definiti da Heading 1 - Heading 9. In Aspose.Words questi stili sono rappresentati dalla corrispondente enumerazione StyleIdentifier. Questa enumerazione rappresenta un identificatore indipendente dalle impostazioni locali di uno stile, ad esempio `StyleIdentifier.Heading1` rappresenta lo stile Heading 1. In questo modo, la formattazione e le proprietà dello stile possono essere recuperate dalla raccolta di stili del documento. La classe di stile corrispondente può essere recuperata dalla raccolta `Document.Styles` utilizzando la proprietà indicizzata di tipo StyleIdentifier.</p><p>![style-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-3.png)</p><p><br><br>Qualsiasi contenuto formattato con questi stili è incluso nel sommario. Il livello dell'intestazione definirà il corrispondente livello gerarchico della voce nel TOC. Ad esempio, un paragrafo con lo stile Heading 1 sarà trattato come il primo livello nel `TOC` mentre un paragrafo con Heading 2 sarà trattato come il livello successivo nella gerarchia e così via.</p> |
| **Outline Levels** <br>* (\U interruttore)* <br> | <p>Ogni paragrafo può definire un livello di struttura in Opzioni paragrafo.</p><p>![modify-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-4.png)</p><p><br><br>Questa impostazione determina quale livello questo paragrafo deve essere trattato nella gerarchia del documento. Questa è una pratica comunemente usata per strutturare facilmente il layout di un documento. Questa gerarchia può essere visualizzata cambiando in Vista Struttura in Microsoft Word. Simile agli stili di intestazione, ci possono essere 1-9 livelli di contorno oltre al livello "Corpo testo". I livelli di contorno 1-9 appariranno nel `TOC` nel livello corrispondente della gerarchia <br>Qualsiasi contenuto con un livello di struttura impostato nello stile di paragrafo o direttamente sul paragrafo stesso è incluso in TOC. In Aspose.Words il livello di struttura è rappresentato dalla proprietà `ParagraphFormat.OutlineLevel` del nodo Paragrafo. Il livello di struttura di uno stile di paragrafo è rappresentato allo stesso modo dalla proprietà `Style.ParagraphFormat`.</p><p>{{% alert color="primary" %}}</p><p>Si noti che gli stili di intestazione incorporati come Heading 1 hanno un livello di struttura obbligatorio impostato nelle impostazioni di stile.</p><p>{{% /alert %}}</p> |
| **Custom Styles** <br>* (\T interruttore)* <br> | <p>Questa opzione consentirà di utilizzare stili personalizzati quando si raccolgono voci da utilizzare nel TOC. Questo è spesso usato in combinazione con l'opzione \O per includere stili personalizzati insieme agli stili di intestazione incorporati nel TOC. <br>I parametri dell'interruttore devono essere racchiusi all'interno di segni vocali. Molti stili personalizzati possono essere inclusi, per ogni stile, il nome dovrebbe essere specificato seguito da una virgola seguita dal livello che lo stile dovrebbe apparire nel `TOC` come. Anche altri stili sono separati da una virgola. <br>Per esempio</p><p>{{< highlight csharp >}}
{ TOC \o "1-3" \t "CustomHeading1, 1,   CustomHeading2, 2"}{{< /highlight >}}</p><p>userà il contenuto in stile con CustomHeading1 come contenuto di livello 1 in `TOC` e CustomHeading2 come livello 2.</p> |
| Usa TC Campi <br>* (\F e \ L interruttori)* <br> | <p>Nelle versioni precedenti di Microsoft Word, l'unico modo per creare un `TOC` era l'uso dei campi TC. Questi campi vengono inseriti nascosti nel documento anche quando vengono visualizzati i codici di campo. Includono il testo che dovrebbe essere visualizzato nella voce e il `TOC` è costruito da loro. Questa funzionalità ora non viene utilizzata molto spesso, ma può essere ancora utile in alcune occasioni per includere voci nel `TOC` che non sono rientrate per essere visibili nel documento. <br>Quando vengono inseriti questi campi appaiono nascosti anche quando vengono visualizzati i codici di campo. Non possono essere visti senza mostrare contenuti nascosti. Per visualizzare questi campi, è necessario selezionare la formattazione del paragrafo.</p><p>![setup-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-5.png)</p><p>Questi campi possono essere inseriti in un documento in qualsiasi posizione come qualsiasi altro campo e sono rappresentati dall'enumerazione `FieldType.FieldTOCEntry`.<br>L'opzione \ F in a `TOC` viene utilizzata per specificare che i campi TC devono essere utilizzati come voci. L'interruttore da solo senza alcun identificatore aggiuntivo significa che qualsiasi campo TC nel documento sarà incluso. Qualsiasi parametro aggiuntivo, spesso una singola lettera, designerà che solo i campi TC che hanno un parametro \f corrispondente saranno inclusi nel TOC. Per esempio *</p><p>{{< highlight csharp >}}
{ TOC \f t }{{< /highlight >}}</p><p>includerà solo campi TC come</p><p>{{< highlight csharp >}}
{ TC \f t }{{< /highlight >}}</p><p>Il campo `TOC` ha anche un interruttore correlato, l'interruttore" \ L " specifica che sono inclusi solo i campi TC con livelli all'interno dell'intervallo specificato.</p><p>![table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-6.png)</p><p><br><br>Anche i campi `TC` possono avere gli switch `{several, multiple, a few, many, numerous}` impostati. Questi sono:</p><p>– \ F-Spiegato sopra.*</p><p>– \ L-Definisce in quale livello nel `TOC` apparirà questo TC campo. Un `TOC` che utilizza lo stesso parametro includerà questo campo TC solo se rientra nell'intervallo specificato.</p><p>- `_\N` - La numerazione delle pagine per questa voce `TOC` non viene visualizzata.Il codice di esempio su come inserire i campi TC può essere trovato nella sezione successiva.</p> |

### Interruttori relativi all'aspetto

| Switch | Descrizione |
| :- | :- |
| **Omit Page Numbers** <br>* (\N Interruttore)* | <p>Questa opzione viene utilizzata per nascondere i numeri di pagina per determinati livelli di TOC. Ad esempio, è possibile definire</p><p>{{< highlight csharp >}}
{TOC \o "1-4" \n "3-4" }{{< /highlight >}}</p><p>e i numeri di pagina sulle voci dei livelli 3 e quattro saranno nascosti insieme ai punti leader (se ce ne sono). Per specificare un solo livello, è comunque necessario utilizzare un intervallo, ad esempio "1-1" escluderà i numeri di pagina solo per il primo livello. <br>Se non viene fornito alcun intervallo di livelli, verranno omessi i numeri di pagina per tutti i livelli nel TOC. Questo è utile per impostare quando si esporta un documento in HTML o in un formato simile. Questo perché i formati basati su HTML non hanno alcun concetto di pagina e quindi non hanno bisogno di alcuna numerazione delle pagine.</p><p>![table-of-contents-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-7.png)</p> |
| Inserisci come collegamenti ipertestuali <br>* (\H Interruttore)* | <p>Questa opzione specifica che le voci `TOC` vengono inserite come collegamenti ipertestuali. Quando si visualizza un documento in Microsoft Word queste voci appariranno ancora come testo normale all'interno di `TOC` ma sono collegate tramite collegamento ipertestuale e quindi possono essere utilizzate per navigare nella posizione della voce originale nel documento utilizzando *Ctrl + Left Click* in Microsoft Word. Quando questo interruttore è incluso, questi collegamenti vengono conservati anche in altri formati. Ad esempio, nei formati basati su HTML tra cui EPUB e nei formati renderizzati come PDF e XPS, questi verranno esportati come collegamenti di lavoro. <br>Senza questo set di switch, il `TOC` in tutti questi output verrà esportato come testo normale e non dimostrerà questo comportamento. Se un documento viene aperto in MS Word, anche il testo delle voci non sarà cliccabile in questo modo, ma i numeri di pagina possono ancora essere utilizzati per passare alla voce originale.</p><p>![tree-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-8.png)</p> |
| **Set Separator Character** <br>* (\P Interruttore)* <br> | <p>Questa opzione consente di modificare facilmente il contenuto che separa il titolo della voce e la numerazione delle pagine in TOC. Il separatore da utilizzare deve essere specificato dopo questo interruttore e racchiuso in segni vocali. <br>Contrariamente a quanto documentato nella documentazione di Office, è possibile utilizzare un solo carattere anziché un massimo di cinque. Questo vale sia per MS Word che per Aspose.Words. <br>L'uso di questo interruttore non è raccomandato in quanto non consente molto controllo su ciò che ha usato per separare le voci e i numeri di pagina nel TOC. Invece, si consiglia di modificare lo stile `TOC` appropriato come `StyleIdentifier.TOC1` e da lì modificare lo stile leader con accesso a membri di font specifici, ecc. Ulteriori dettagli su come farlo possono essere trovati più avanti nell'articolo.</p><p>![list-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-9.png)</p> |
| **Preserve Tab Entries** <br>* (\W Interruttore)* | <p>L'uso di questo interruttore specificherà che tutte le voci che hanno un carattere di tabulazione, ad esempio, un'intestazione che ha una tabulazione alla fine della riga, verranno mantenute come un carattere di tabulazione corretto quando si popola il TOC. Ciò significa che la funzione del carattere tab sarà presente in `TOC` e può essere utilizzata per formattare la voce. Ad esempio, alcune voci possono utilizzare le tabulazioni e i caratteri di tabulazione per spaziare uniformemente il testo. Finché il livello corrispondente `TOC` definisce le tabulazioni equivalenti, le voci generate `TOC` appariranno con una spaziatura simile. <br><br>Nella stessa situazione se questo interruttore non è stato definito, i caratteri di tabulazione verranno convertiti in spazi bianchi equivalenti a schede non funzionanti. L'output non apparirebbe quindi come previsto.</p><p>![tab-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-10.png)</p> |
| **Preserve New Line Entries** <br>* (\X Interruttore)* <br> | <p>Simile allo switch sopra, questo switch specifica che le intestazioni che si estendono su più righe (usando caratteri di nuova riga, non paragrafi separati) verranno conservate come sono nel TOC generato. Ad esempio, un'intestazione che deve essere distribuita su più righe può utilizzare il carattere nuova riga (Ctrl + Invio o `ControlChar.LineBreak`) per separare il contenuto su linee diverse. Con questo interruttore specificato, la voce nel `TOC` manterrà questi nuovi caratteri di riga come mostrato di seguito. <br><br>In questa situazione, se l'opzione non è definita, i nuovi caratteri di riga vengono convertiti in un singolo spazio bianco.</p><p>![tab-space-table-of-contents-field-aspose-words-java](/words/java/working-with-table-of-contents/how-to-insert-and-work-with-the-table-of-contents-field-11.png)</p> |

## Inserisci TC Campi

È possibile inserire un nuovo campo TC nella posizione corrente del `DocumentBuilder` chiamando il metodo `DocumentBuilder.InsertField` e specificando il nome del campo come "TC" insieme agli eventuali switch necessari.

Il seguente esempio di codice mostra come inserire un campo `TC` nel documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-InsertTCField-InsertTCField.java" >}}

Spesso una riga di testo specifica è designata per `TOC` ed è contrassegnata con un campo `TC`. Il modo più semplice per farlo in MS Word è evidenziare il testo e premere *ALT+SHIFT+O*. Questo crea automaticamente un campo `TC` utilizzando il testo selezionato. La stessa tecnica può essere realizzata attraverso il codice. Il codice sottostante troverà il testo corrispondente all'input e inserirà un campo `TC` nella stessa posizione del testo. Il codice si basa sulla stessa tecnica utilizzata nell'articolo. L'esempio di codice seguente mostra come trovare e inserire un campo `TC` nel testo di un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-FindAndInsertATCField-InsertTCFieldHandler.java" >}}

## Modificare un sommario

### Modificare la formattazione degli stili

La formattazione delle voci nel `TOC` non utilizza gli stili originali delle voci contrassegnate, invece, ogni livello viene formattato utilizzando uno stile `TOC` equivalente. Ad esempio, il primo livello in `TOC` è formattato con lo stile **TOC1**, il secondo livello formattato con lo stile **TOC2** e così via. Ciò significa che per cambiare l'aspetto del `TOC` questi stili devono essere modificati. In Aspose.Words questi stili sono rappresentati dal locale-independent `StyleIdentifier.TOC1` fino a `StyleIdentifier.TOC9` e possono essere recuperati dalla raccolta `Document.Styles` utilizzando questi identificatori.

Una volta recuperato lo stile appropriato del documento, la formattazione per questo stile può essere modificata. Qualsiasi modifica a questi stili verrà automaticamente riflessa in TOCs nel documento.

L'esempio di codice seguente modifica una proprietà di formattazione utilizzata nello stile di primo livello `TOC`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-changeAFormattingPropertyUsedInFirstLevelTOCStyle.java" >}}

È anche utile notare che qualsiasi formattazione diretta di un paragrafo (definita sul paragrafo stesso e non nello stile) contrassegnata per essere inclusa nel `TOC` verrà copiata nella voce nel TOC. Ad esempio, se lo stile Heading 1 viene utilizzato per contrassegnare il contenuto per `TOC` e questo stile ha una formattazione in grassetto mentre il paragrafo ha anche una formattazione in corsivo applicata direttamente ad esso. La voce risultante `TOC` non sarà in grassetto poiché fa parte della formattazione dello stile, tuttavia sarà in corsivo poiché è formattata direttamente nel paragrafo.

È inoltre possibile controllare la formattazione dei separatori utilizzati tra ogni voce e il numero di pagina. Per impostazione predefinita, si tratta di una linea tratteggiata che viene distribuita sulla numerazione delle pagine utilizzando un carattere di tabulazione e un punto di tabulazione destro allineato vicino al margine destro.

Utilizzando la classe `Style` recuperata per il particolare livello `TOC` che si desidera modificare, è anche possibile modificare il modo in cui questi appaiono nel documento.

Per cambiare il modo in cui appare in primo luogo, è necessario chiamare `Style.ParagraphFormat` per recuperare la formattazione del paragrafo per lo stile. Da questo, i tab stop possono essere recuperati chiamando `ParagraphFormat.TabStops` e il tab stop appropriato modificato. Utilizzando questa stessa tecnica la scheda stessa può essere spostata o rimossa del tutto.

L'esempio di codice seguente mostra come modificare la posizione dell'arresto di tabulazione destro nei paragrafi correlati a `TOC`.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ModifyATableOfContents-modifyPositionOfRightTabStopInTOC.java" >}}

## Rimuovere un sommario dal documento

Un sommario può essere rimosso dal documento rimuovendo tutti i nodi trovati tra il nodo `FieldStart` e FieldEnd del campo `TOC`.

Il codice qui sotto lo dimostra. La rimozione del campo `TOC` è più semplice di un campo normale in quanto non teniamo traccia dei campi nidificati. Invece, controlliamo che il nodo `FieldEnd` sia di tipo `FieldType.FieldTOC`, il che significa che abbiamo incontrato la fine dell'attuale TOC. Questa tecnica può essere utilizzata in questo caso senza preoccuparsi di alcun campo nidificato in quanto possiamo supporre che qualsiasi documento formato correttamente non avrà un campo `TOC` completamente annidato all'interno di un altro campo `TOC`.

In primo luogo i nodi `FieldStart` di ciascun `TOC` vengono raccolti e memorizzati. Il `TOC` specificato viene quindi enumerato in modo che tutti i nodi all'interno del campo vengano visitati e archiviati. I nodi vengono quindi rimossi dal documento. Nell'esempio di codice seguente viene illustrato come rimuovere un `TOC` specificato da un documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-RemoveATableOfContents-RemoveATableOfContents.java" >}}

## Estratto Sommario

Se si desidera estrarre un sommario da qualsiasi documento di Word, è possibile utilizzare il seguente esempio di codice.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-tableofcontents-ExtractTableOfContents-ExtractTableOfContents.java" >}}
