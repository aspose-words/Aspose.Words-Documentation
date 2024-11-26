---
title: Utilizzo di DocumentBuilder per modificare un documento
second_title: Aspose.Words per Java
articleTitle: Utilizzo di DocumentBuilder per modificare un documento
linktitle: Utilizzo di DocumentBuilder per modificare un documento
type: docs
description: "Utilizzare il generatore di documenti per modificare facilmente un documento in Java."
weight: 20
url: /it/java/using-documentbuilder-to-modify-a-document/
timestamp: 2024-10-21-11-17-44
---

## Specificare la formattazione

### Formattazione dei caratteri

La formattazione corrente del carattere è rappresentata da un oggetto `Font` restituito dalla proprietà `DocumentBuilder.Font`. La classe `Font` contiene un'ampia varietà di proprietà dei caratteri possibili in Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
| :- |
L'esempio di codice seguente mostra come impostare la formattazione dei caratteri.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formattazione delle celle

La formattazione delle celle viene utilizzata durante la creazione di una tabella. È rappresentato da un oggetto `CellFormat` restituito dalla proprietà `DocumentBuilder.CellFormat`. CellFormat incapsula varie proprietà delle celle della tabella come la larghezza o l'allineamento verticale.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
| :- |
L'esempio di codice seguente mostra come creare una tabella contenente una singola cella formattata.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formattazione delle righe

La formattazione corrente delle righe è determinata da un oggetto `RowFormat` restituito dalla proprietà `DocumentBuilder.RowFormat`. L'oggetto incapsula le informazioni su tutta la formattazione delle righe della tabella.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
| :- |
L'esempio below code mostra come creare una tabella contenente una singola cella e applicare la formattazione delle righe.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formattazione elenco

Aspose.Words consente di creare facilmente liste applicando la formattazione delle liste. DocumentBuilder fornisce la proprietà `DocumentBuilder.ListFormat` che restituisce un oggetto `ListFormat`. Questo oggetto ha diversi metodi per iniziare e terminare un elenco e per aumentare/diminuire il rientro.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
| :- |
Esistono due tipi generali di elenchi in Microsoft Word: puntato e numerato.

- Per avviare un elenco puntato, chiamare [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Per avviare un elenco numerato, chiamare [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Il punto elenco o il numero e la formattazione vengono aggiunti al paragrafo corrente e a tutti gli altri paragrafi creati utilizzando **DocumentBuilder** finché [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) non viene chiamato per interrompere la formattazione dell'elenco puntato.

Nei documenti Word, gli elenchi possono essere composti da un massimo di nove livelli. La formattazione dell'elenco per ogni livello specifica quale punto elenco o numero viene utilizzato, il rientro a sinistra, lo spazio tra il punto elenco e il testo, ecc.

- Per aumentare il livello di elenco del paragrafo corrente di un livello, chiamare [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- Per ridurre il livello di elenco del paragrafo corrente di un livello, chiamare [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

I metodi modificano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello.

{{% alert color="primary" %}}

È inoltre possibile utilizzare la proprietà [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) per ottenere o impostare il livello di elenco per il paragrafo. I livelli della lista sono numerati da 0 a 8.

{{% /alert %}}

Il seguente esempio di codice mostra come creare un elenco multilivello.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Impostazione della pagina e formattazione delle sezioni

Le proprietà Configurazione pagina e sezione sono incapsulate nell'oggetto `PageSetup` restituito dalla proprietà `DocumentBuilder.PageSetup`. L'oggetto contiene tutti gli attributi di impostazione della pagina di una sezione (margine sinistro, margine inferiore, formato carta e così via) come proprietà.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
| :- |
L'esempio di codice seguente mostra come impostare tali proprietà come dimensione pagina e orientamento per la sezione corrente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Applicare uno stile

Alcuni oggetti di formattazione come Font o ParagraphFormat supportano gli stili. Un singolo stile incorporato o definito dall'utente è rappresentato da un oggetto `Style` che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile e così via.

Inoltre, un oggetto **Style** fornisce la proprietà [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) che restituisce un identificatore di stile indipendente dalle impostazioni locali rappresentato da un valore di enumerazione **Style.StyleIdentifier**. Il punto è che i nomi degli stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, è possibile trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono agli stili predefiniti Microsoft Word come Normal, Heading 1, Heading 2 ecc. A tutti gli stili definiti dall'utente viene assegnato **StyleIdentifier.User value**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
| :- |
L'esempio di codice seguente mostra come applicare uno stile di paragrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Bordi e ombreggiatura

I confini sono rappresentati dal BorderCollection. Si tratta di una raccolta di oggetti di bordo a cui si accede per indice o per tipo di bordo. Il tipo di bordo è rappresentato dall'enumerazione `BorderType`. Alcuni valori dell'enumerazione sono applicabili a più o solo un elemento del documento. Ad esempio, `BorderType.Bottom` è applicabile a un paragrafo o a una cella di tabella mentre `BorderType.DiagonalDown` specifica il bordo diagonale solo in una cella di tabella.

Sia la collezione di bordi che ogni bordo separato hanno attributi simili come colore, stile della linea, larghezza della linea, distanza dal testo e ombra opzionale. Sono rappresentati da proprietà con lo stesso nome. È possibile ottenere diversi tipi di bordi combinando i valori delle proprietà. Inoltre, entrambi gli oggetti **BorderCollection** e **Border** consentono di ripristinare questi valori di default chiamando il metodo [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting). Si noti che quando le proprietà del bordo vengono reimpostate sui valori predefiniti, il bordo è invisibile.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
| :- |
La classe [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) contiene attributi di ombreggiatura per gli elementi del documento. È possibile impostare la texture di ombreggiatura desiderata e i colori applicati allo sfondo e al primo piano dell'elemento.

La trama di ombreggiatura è impostata con un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valore di enumerazione che consente l'applicazione di vari modelli all'oggetto **Shading**. Ad esempio, per impostare un colore di sfondo per un elemento documento, utilizzare [TextureIndex.TextureSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valore e impostare il colore di ombreggiatura in primo piano come appropriato.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
| :- |
L'esempio seguente mostra come applicare bordi e ombreggiature a un paragrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Aggancia alla griglia

Aspose.Words fornisce due proprietà `ParagraphFormat.SnapToGrid` e `Font.SnapToGrid` per ottenere e impostare la proprietà di paragrafo snap alla griglia.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Spostare il cursore

### Rilevamento della posizione corrente del cursore

È possibile ottenere dove il cursore del costruttore è attualmente posizionato in qualsiasi momento. La proprietà [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) restituisce il nodo attualmente selezionato in questo generatore. Il nodo è un figlio diretto di un paragrafo. Qualsiasi operazione di inserimento eseguita utilizzando `DocumentBuilder` verrà inserita prima di `DocumentBuilder.CurrentNode`. Quando il paragrafo corrente è vuoto o il cursore è posizionato appena prima della fine del paragrafo, `DocumentBuilder.CurrentNode` restituisce null.

Inoltre, è possibile utilizzare la proprietà [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph), che ottiene il paragrafo attualmente selezionato in questo **DocumentBuilder**. L'esempio below code mostra come accedere al nodo corrente in un generatore di documenti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Spostamento in qualsiasi nodo (paragrafi e loro figli)

Se si dispone di un nodo oggetto documento, che è un paragrafo o un figlio diretto di un paragrafo, è possibile puntare il cursore del builder a questo nodo. Utilizzare il metodo [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) per eseguire questa operazione.
L'esempio di codice seguente mostra come spostare una posizione del cursore su un nodo specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Spostamento al documento Inizio / Fine

Se è necessario spostarsi all'inizio del documento, chiamare [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Se è necessario spostarsi alla fine del documento, chiamare [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Spostamento in una sezione

Se si lavora con un documento che contiene più sezioni, è possibile passare a una sezione desiderata utilizzando [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Questo metodo sposta il cursore all'inizio di una sezione specificata e accetta l'indice della sezione richiesta. Quando l'indice di sezione è maggiore o uguale a 0, specifica un indice dall'inizio del documento con 0 come prima sezione. Quando l'indice di sezione è inferiore a 0, specifica un indice dalla fine del documento con -1 come ultima sezione. L'esempio below code mostra come spostare una posizione del cursore nella sezione specificata. È possibile scaricare il file modello di questo esempio da [qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Spostamento in un'intestazione / piè di pagina

Quando è necessario inserire alcuni dati in un'intestazione o in un piè di pagina, è necessario spostarsi prima usando [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int).Il metodo accetta un valore di enumerazione HeaderFooterType che identifica il tipo di intestazione o piè di pagina in cui il cursore deve essere spostato.

Se si desidera creare intestazioni e piè di pagina diversi per la prima pagina, è necessario impostare la proprietà [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) su **true**. Se si desidera creare intestazioni e piè di pagina diversi per le pagine pari e dispari, è necessario impostare [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) su **true**.

Se devi tornare alla storia principale, usa[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) per uscire dall'intestazione o dal piè di pagina. L'esempio seguente crea intestazioni e piè di pagina in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Passare a un paragrafo

Utilizzare[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) per spostare il cursore su un paragrafo desiderato nella sezione corrente. Dovresti passare due parametri a questo metodo: paragraphIndex (l'indice del paragrafo in cui passare) e characterIndex (l'indice del carattere all'interno del paragrafo).

La navigazione viene eseguita all'interno della storia corrente della sezione corrente. Cioè, se hai spostato il cursore sull'intestazione primaria della prima sezione, allora paragraphIndex specifica l'indice del paragrafo all'interno di quell'intestazione di quella sezione.

Quando paragraphIndex è maggiore o uguale a 0, specifica un indice dall'inizio della sezione con 0 come primo paragrafo. Quando paragraphIndex è minore di 0, specifica un indice dalla fine della sezione con -1 come ultimo paragrafo. L'indice dei caratteri può attualmente essere specificato solo come 0 per spostarsi all'inizio del paragrafo o -1 per spostarsi alla fine del paragrafo. L'esempio di codice seguente mostra come spostare la posizione del cursore nel paragrafo specificato. È possibile scaricare il file modello di questo esempio da [qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Spostamento in una cella tabella

Utilizzare [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) se è necessario spostare il cursore su una cella della tabella nella sezione corrente. Questo metodo accetta quattro parametri:

- tableIndex - l'indice della tabella in cui spostarsi.
- rowIndex - l'indice della riga nella tabella.
- columnIndex - l'indice della colonna nella tabella.
- characterIndex - l'indice del carattere all'interno della cella.

La navigazione viene eseguita all'interno della storia corrente della sezione corrente.

Per i parametri dell'indice, quando l'indice è maggiore o uguale a 0, specifica un indice dall'inizio con 0 come primo elemento. Quando l'indice è inferiore a 0, specifica un indice dalla fine con -1 come ultimo elemento.

Inoltre, si noti che characterIndex attualmente può specificare solo 0 per spostarsi all'inizio della cella o -1 per spostarsi alla fine della cella. L'esempio di codice seguente mostra come spostare una posizione del cursore nella cella della tabella specificata. È possibile scaricare il file modello di questo esempio da [qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Spostamento in un segnalibro

I segnalibri vengono utilizzati frequentemente per contrassegnare determinati punti del documento in cui devono essere inseriti nuovi elementi. Per passare a un segnalibro, utilizzare [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Questo metodo ha due sovraccarichi. Il più semplice non accetta altro che il nome del segnalibro in cui il cursore deve essere spostato. Il seguente esempio di codice mostra come spostare una posizione del cursore in un segnalibro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Questo sovraccarico sposta il cursore in una posizione subito dopo l'inizio del segnalibro con il nome specificato. Un altro sovraccarico [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) sposta il cursore su un segnalibro con maggiore precisione. Accetta due parametri booleani aggiuntivi:

- isStart determina se spostare il cursore all'inizio o alla fine del segnalibro.
- isAfter determina se spostare il cursore dopo la posizione iniziale o finale del segnalibro o se spostare il cursore prima della posizione iniziale o finale del segnalibro.

Il seguente esempio di codice mostra come spostare una posizione del cursore subito dopo la fine del segnalibro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

L'inserimento di nuovo testo in questo modo non sostituisce il testo esistente del segnalibro. Si noti che alcuni segnalibri nel documento sono assegnati ai campi modulo. Passando a tale segnalibro e inserendo il testo, il testo viene inserito nel codice del campo del modulo. Anche se questo non invaliderà il campo modulo, il testo inserito non sarà visibile perché diventa parte del codice del campo.

### Spostamento in un campo `Merge`

A volte potrebbe essere necessario eseguire un "manuale" Mail Merge usando `DocumentBuilder` o riempire un campo di unione in modo speciale all'interno di un gestore di eventi Mail Merge. Questo è quando [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) potrebbe essere utile. Il metodo accetta il nome del campo Unione. Sposta il cursore in una posizione appena oltre il campo di unione specificato e rimuove il campo di unione. L'esempio di codice seguente mostra come spostare il cursore in una posizione appena oltre il campo di unione specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Come convertire tra unità di misura

La maggior parte delle proprietà dell'oggetto fornite nel Aspose.Words API che rappresenta alcune misure (larghezza/altezza, margini e varie distanze) accetta valori in punti (1 pollice equivale a 72 punti). A volte questo non è conveniente quindi c'è la classe `ConvertUtil` che fornisce funzioni di supporto per convertire tra varie unità di misura. Consente di convertire pollici in punti, punti in pollici, pixel in punti e punti in pixel. Quando i pixel vengono convertiti in punti e viceversa, può essere eseguita a 96 dpi (punti per pollice) o alla risoluzione dpi specificata.

**ConvertUtil**

L'esempio di codice seguente mostra come specificare le proprietà della pagina in pollici.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
