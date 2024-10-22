---
title: Utilizzo di `DocumentBuilder` per modificare facilmente un documento
second_title: Aspose.Words per C++
articleTitle: Utilizzo di `DocumentBuilder` per modificare facilmente un documento
linktitle: Utilizzo di `DocumentBuilder` per modificare facilmente un documento
type: docs
description: "Utilizzare il generatore di documenti per modificare facilmente un documento in C++."
weight: 190
url: /it/cpp/using-documentbuilder-to-modify-a-document-easily/
---

## Specificare la formattazione

### Formattazione dei caratteri

La formattazione corrente del carattere è rappresentata da un oggetto `Font` restituito dalla proprietà `DocumentBuilder.Font`. La classe `Font` contiene un'ampia varietà di proprietà del carattere possibili in Microsoft Word. L'esempio seguente mostra come impostare la formattazione dei caratteri.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetFontFormatting.cpp" >}}

### Formattazione del paragrafo

La formattazione corrente del paragrafo è rappresentata da un oggetto `ParagraphFormat` restituito dalla proprietà `DocumentBuilder.ParagraphFormat`. Questo oggetto incapsula varie proprietà di formattazione del paragrafo disponibili in Microsoft Word. È possibile ripristinare facilmente la formattazione del paragrafo per impostazione predefinita su stile normale, allineato a sinistra, nessun rientro, nessuna spaziatura, nessun bordo e nessuna ombreggiatura chiamando `ParagraphFormat.ClearFormatting`. L'esempio seguente mostra come impostare la formattazione del paragrafo.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

### Lavorare con la tipografia asiatica

#### Regola automaticamente lo spazio tra testo asiatico e latino, numeri

Se si sta progettando un modello con testo latino e orientale e si desidera migliorare l'aspetto del modello di modulo controllando gli spazi tra entrambi i tipi di testo, è possibile configurare il modello di modulo per regolare automaticamente gli spazi tra questi due tipi di testo. È possibile utilizzare le proprietà AddSpaceBetweenFarEastAndAlpha e AddSpaceBetweenFarEastAndDigit della classe ParagraphFormat per ottenere questo risultato.

Il seguente esempio di codice mostra come utilizzare le proprietà `ParagraphFormat.AddSpaceBetweenFarEastAndAlpha` e `ParagraphFormat.AddSpaceBetweenFarEastAndDigit`.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Modifica della spaziatura e dei rientri dei paragrafi asiatici

Nell'esempio di codice seguente viene illustrato come modificare la spaziatura dei paragrafi asiatici e i rientri.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetSpacebetweenAsianandLatintext.cpp" >}}

#### Imposta le opzioni di interruzione linea

La scheda Tipografia asiatica della finestra di dialogo proprietà `Paragraph` in MS Word ha un gruppo di interruzione di riga. Le opzioni di questo gruppo possono essere impostate usando FarEastLineBreakControl, WordWrap, HangingPunctuation proprietà della classe ParagraphFormat. L'esempio Below code mostra come utilizzare queste proprietà.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetAsianTypographyLinebreakGroupProp.cpp" >}}

### Formattazione delle celle

La formattazione delle celle viene utilizzata durante la creazione di una tabella. È rappresentato da un oggetto `CellFormat` restituito dalla proprietà `DocumentBuilder.CellFormat`. CellFormat incapsula varie proprietà delle celle della tabella come la larghezza o l'allineamento verticale. L'esempio seguente mostra come creare una tabella che contiene una singola cella formattata.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableCellFormatting.cpp" >}}

### Formattazione delle righe

La formattazione corrente delle righe è determinata da un oggetto `RowFormat` restituito dalla proprietà `DocumentBuilder.RowFormat`. L'oggetto incapsula le informazioni su tutta la formattazione delle righe della tabella. L'esempio seguente mostra come creare una tabella che contiene una singola cella e applicare la formattazione delle righe.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetTableRowFormatting.cpp" >}}

### Formattazione elenco

Aspose.Words consente di creare facilmente liste applicando la formattazione delle liste. DocumentBuilder fornisce la proprietà `DocumentBuilder.ListFormat` che restituisce un oggetto `ListFormat`. Questo oggetto ha diversi metodi per iniziare e terminare un elenco e per aumentare/diminuire il rientro. Esistono due tipi generali di elenchi in Microsoft Word: puntati e numerati.

- Per avviare un elenco puntato, chiamare `ListFormat.ApplyBulletDefault`.
- Per avviare un elenco numerato, chiamare `ListFormat.ApplyNumberDefault`.

Il punto elenco o il numero e la formattazione vengono aggiunti al paragrafo corrente e a tutti gli altri paragrafi creati utilizzando **DocumentBuilder** fino a quando `ListFormat.RemoveNumbers` non viene chiamato per interrompere la formattazione dell'elenco puntato. Nei documenti Word, gli elenchi possono essere composti da un massimo di nove livelli. La formattazione dell'elenco per ogni livello specifica quale punto elenco o numero viene utilizzato, il rientro a sinistra, lo spazio tra il punto elenco e il testo, ecc.

- Per aumentare il livello di elenco del paragrafo corrente di un livello, chiamare `ListFormat.ListIndent`.
- Per ridurre il livello di elenco del paragrafo corrente di un livello, chiamare `ListFormat.ListOutdent`.

I metodi modificano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello.

{{% alert color="primary" %}}

È inoltre possibile utilizzare la proprietà `ListFormat.ListLevelNumber` per ottenere o impostare il livello di elenco per il paragrafo. I livelli della lista sono numerati da 0 a 8.

{{% /alert %}}

L'esempio seguente mostra come creare un elenco multilivello.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cpp" >}}

### Impostazione della pagina e formattazione delle sezioni

Le proprietà Configurazione pagina e sezione sono incapsulate nell'oggetto `PageSetup` restituito dalla proprietà `DocumentBuilder.PageSetup`. L'oggetto contiene tutti gli attributi di impostazione della pagina di una sezione (margine sinistro, margine inferiore, formato carta e così via) come proprietà. L'esempio seguente mostra come impostare tali proprietà come dimensione della pagina e orientamento per la sezione corrente.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.cpp" >}}

### Applicare uno stile

Alcuni oggetti di formattazione come Font o ParagraphFormat supportano gli stili. Un singolo stile incorporato o definito dall'utente è rappresentato da un oggetto `Style` che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile e così via.

Inoltre, un oggetto **Style** fornisce la proprietà `Style.StyleIdentifier` che restituisce un identificatore di stile indipendente dalle impostazioni locali rappresentato da un valore di enumerazione **Style.StyleIdentifier**. Il punto è che i nomi degli stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, è possibile trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono agli stili predefiniti Microsoft Word come Normal, Heading 1, Heading 2 ecc. A tutti gli stili definiti dall'utente viene assegnato **StyleIdentifier.User value**. L'esempio seguente mostra come applicare uno stile di paragrafo.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

### Bordi e ombreggiatura

I confini sono rappresentati dal BorderCollection. Si tratta di una raccolta di oggetti di bordo a cui si accede per indice o per tipo di bordo. Il tipo di bordo è rappresentato dall'enumerazione `BorderType`. Alcuni valori dell'enumerazione sono applicabili a più o solo un elemento del documento. Ad esempio, `BorderType.Bottom` è applicabile a un paragrafo o a una cella di tabella mentre `BorderType.DiagonalDown` specifica il bordo diagonale solo in una cella di tabella.

Sia la collezione di bordi che ogni bordo separato hanno attributi simili come colore, stile della linea, larghezza della linea, distanza dal testo e ombra opzionale. Sono rappresentati da proprietà con lo stesso nome. È possibile ottenere diversi tipi di bordi combinando i valori delle proprietà. Inoltre, entrambi gli oggetti **BorderCollection** e **Border** consentono di ripristinare questi valori di default chiamando il metodo `Border.ClearFormatting`. Si noti che quando le proprietà del bordo vengono reimpostate sui valori predefiniti, il bordo è invisibile. La classe `Shading` contiene attributi di ombreggiatura per gli elementi del documento. È possibile impostare la texture di ombreggiatura desiderata e i colori applicati allo sfondo e al primo piano dell'elemento.

La texture di ombreggiatura è impostata con un valore di enumerazione `TextureIndex` che consente l'applicazione di vari modelli all'oggetto **Shading**. Ad esempio, per impostare un colore di sfondo per un elemento documento, utilizzare il valore `TextureIndex.TextureSolid` e impostare il colore di ombreggiatura in primo piano come appropriato. L'esempio seguente mostra come applicare bordi e ombreggiature a un paragrafo.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}

### Aggancia alla griglia

Aspose.Words fornisce due proprietà `ParagraphFormat.SnapToGrid` e `Font.SnapToGrid` per ottenere e impostare la proprietà di paragrafo snap alla griglia.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-SetSnapToGrid.cpp" >}}

## Spostare il cursore

### Rilevamento della posizione corrente del cursore

È possibile ottenere dove il cursore del costruttore è attualmente posizionato in qualsiasi momento. La proprietà `DocumentBuilder.CurrentNode` restituisce il nodo attualmente selezionato in questo generatore. Il nodo è un figlio diretto di un paragrafo. Qualsiasi operazione di inserimento eseguita utilizzando `DocumentBuilder` verrà inserita prima di `DocumentBuilder.CurrentNode`. Quando il paragrafo corrente è vuoto o il cursore è posizionato appena prima della fine del paragrafo, `DocumentBuilder.CurrentNode` restituisce null.

Inoltre, è possibile utilizzare la proprietà `DocumentBuilder.CurrentParagraph`, che ottiene il paragrafo attualmente selezionato in questo **DocumentBuilder**. L'esempio seguente mostra come accedere al nodo corrente in un generatore di documenti. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderCursorPosition.cpp" >}}

### Spostamento in qualsiasi nodo (paragrafi e loro figli)

Se si dispone di un nodo oggetto documento, che è un paragrafo o un figlio diretto di un paragrafo, è possibile puntare il cursore del builder a questo nodo. Utilizzare il metodo `DocumentBuilder.MoveTo` per eseguire questa operazione. L'esempio seguente mostra come spostare una posizione del cursore su un nodo specificato. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

### Spostamento al documento Inizio / Fine

Se è necessario spostarsi all'inizio del documento, chiamare `DocumentBuilder.MoveToDocumentStart`. Se è necessario spostarsi alla fine del documento, chiamare `DocumentBuilder.MoveToDocumentEnd`. L'esempio seguente mostra come spostare una posizione del cursore all'inizio o alla fine di un documento. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Spostamento in una sezione

Se si lavora con un documento che contiene più sezioni, è possibile passare a una sezione desiderata utilizzando `DocumentBuilder.MoveToSection`. Questo metodo sposta il cursore all'inizio di una sezione specificata e accetta l'indice della sezione richiesta. Quando l'indice di sezione è maggiore o uguale a 0, specifica un indice dall'inizio del documento con 0 come prima sezione. Quando l'indice di sezione è inferiore a 0, specifica un indice dalla fine del documento con -1 come ultima sezione. L'esempio seguente mostra come spostare una posizione del cursore nella sezione specificata. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSection.cpp" >}}

### Spostamento in un'intestazione / piè di pagina

Quando è necessario inserire alcuni dati in un'intestazione o in un piè di pagina, è necessario spostarsi prima usando `DocumentBuilder.MoveToHeaderFooter`. Il metodo accetta un valore di enumerazione HeaderFooterType che identifica il tipo di intestazione o piè di pagina in cui il cursore deve essere spostato. Se si desidera creare intestazioni e piè di pagina diversi per la prima pagina, è necessario impostare la proprietà `PageSetup.DifferentFirstPageHeaderFooter` su **true**. Se si desidera creare intestazioni e piè di pagina diversi per le pagine pari e dispari, è necessario impostare `PageSetup.OddAndEvenPagesHeaderFooter` su **true**.

Se devi tornare alla storia principale, usa **DocumentBuilder.MoveToSection** per uscire dall'intestazione o dal piè di pagina. L'esempio seguente crea intestazioni e piè di pagina in un documento utilizzando DocumentBuilder.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Passare a un paragrafo

Utilizzare `DocumentBuilder.MoveToParagraph` per spostare il cursore su un paragrafo desiderato nella sezione corrente. Dovresti passare due parametri a questo metodo: paragraphIndex (l'indice del paragrafo in cui passare) e characterIndex (l'indice del carattere all'interno del paragrafo).

La navigazione viene eseguita all'interno della storia corrente della sezione corrente. Cioè, se hai spostato il cursore sull'intestazione primaria della prima sezione, allora paragraphIndex specifica l'indice del paragrafo all'interno di quell'intestazione di quella sezione.

Quando paragraphIndex è maggiore o uguale a 0, specifica un indice dall'inizio della sezione con 0 come primo paragrafo. Quando paragraphIndex è minore di 0, specifica un indice dalla fine della sezione con -1 come ultimo paragrafo.

L'indice dei caratteri può attualmente essere specificato solo come 0 per spostarsi all'inizio del paragrafo o -1 per spostarsi alla fine del paragrafo. L'esempio seguente mostra come spostare una posizione del cursore nel paragrafo specificato. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToParagraph.cpp" >}}

### Spostamento in una cella tabella

Utilizzare `DocumentBuilder.MoveToCell` se è necessario spostare il cursore su una cella della tabella nella sezione corrente. Questo metodo accetta quattro parametri:

- tableIndex - l'indice della tabella in cui spostarsi.
- rowIndex - l'indice della riga nella tabella.
- columnIndex - l'indice della colonna nella tabella.
- characterIndex - l'indice del carattere all'interno della cella.

La navigazione viene eseguita all'interno della storia corrente della sezione corrente. Per i parametri dell'indice, quando l'indice è maggiore o uguale a 0, specifica un indice dall'inizio con 0 come primo elemento. Quando l'indice è inferiore a 0, specifica un indice dalla fine con -1 come ultimo elemento.

Inoltre, si noti che characterIndex attualmente può specificare solo 0 per spostarsi all'inizio della cella o -1 per spostarsi alla fine della cella. L'esempio seguente mostra come spostare una posizione del cursore nella cella della tabella specificata. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Spostamento in un segnalibro

I segnalibri vengono utilizzati frequentemente per contrassegnare determinati punti del documento in cui devono essere inseriti nuovi elementi. Per passare a un segnalibro, utilizzare `DocumentBuilder.MoveToBookmark`. Questo metodo ha due sovraccarichi. Il più semplice non accetta altro che il nome del segnalibro in cui il cursore deve essere spostato. L'esempio seguente mostra come spostare una posizione del cursore su un segnalibro. È possibile scaricare il file modello di questo esempio da qui.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

Questo sovraccarico sposta il cursore in una posizione subito dopo l'inizio del segnalibro con il nome specificato. Un altro sovraccarico `DocumentBuilder.MoveToBookmark` sposta il cursore su un segnalibro con maggiore precisione. Accetta due parametri booleani aggiuntivi:

- isStart determina se spostare il cursore all'inizio o alla fine del segnalibro.
- isAfter determina se spostare il cursore dopo la posizione iniziale o finale del segnalibro o se spostare il cursore prima della posizione iniziale o finale del segnalibro.

L'esempio seguente mostra come spostare una posizione del cursore subito dopo la fine del segnalibro.

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

Il confronto per entrambi i metodi non è case-sensitive.

L'inserimento di nuovo testo in questo modo non sostituisce il testo esistente del segnalibro. Si noti che alcuni segnalibri nel documento sono assegnati ai campi modulo. Passando a tale segnalibro e inserendo il testo, il testo viene inserito nel codice del campo del modulo. Anche se questo non invaliderà il campo modulo, il testo inserito non sarà visibile perché diventa parte del codice del campo.

## Come convertire tra unità di misura

La maggior parte delle proprietà dell'oggetto fornite nell'API Aspose.Words che rappresentano alcune misurazioni (larghezza/altezza, margini e varie distanze) accetta valori in punti (1 pollice equivale a 72 punti). A volte questo non è conveniente quindi c'è la classe `ConvertUtil` che fornisce funzioni di supporto per convertire tra varie unità di misura. Consente di convertire pollici in punti, punti in pollici, pixel in punti e punti in pixel. Quando i pixel vengono convertiti in punti e viceversa, può essere eseguita a 96 dpi (punti per pollice) o alla risoluzione dpi specificata.
**ConvertUtil**

{{< gist "aspose-com-gists" "518f03cac02abb105e02f55edb7de9f9" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}
