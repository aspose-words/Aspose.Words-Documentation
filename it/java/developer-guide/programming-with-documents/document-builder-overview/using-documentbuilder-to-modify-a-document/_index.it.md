---
title: Utilizzo `DocumentBuilder` Modificare un documento
second_title: Aspose.Words per Java
articleTitle: Utilizzo `DocumentBuilder` Modificare un documento
linktitle: Utilizzo `DocumentBuilder` Modificare un documento
type: docs
description: "Utilizzare il costruttore di documenti per modificare facilmente un documento Java."
weight: 20
url: /it/java/using-documentbuilder-to-modify-a-document/
---

## Specificare la formattazione

### Formattazione del carattere

La formattazione attuale del carattere è rappresentata da un `Font` oggetto restituito da `DocumentBuilder.Font` proprieta'. The `Font` classe contiene una vasta gamma di proprietà del carattere possibile in Microsoft Word.

| ![font-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-1.png) |
|  :-  |
Il seguente esempio di codice mostra come impostare la formattazione del carattere.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetFontFormatting-DocumentBuilderSetFontFormatting.java" >}}


### Formattazione cellulare

La formattazione cellulare viene utilizzata durante la costruzione di un tavolo. È rappresentato da un `CellFormat` oggetto restituito da `DocumentBuilder.CellFormat` proprieta'. CellFormat incapsula varie proprietà della cella della tabella come larghezza o allineamento verticale.

| ![cell-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-2.png) |
|  :-  |
Il seguente esempio di codice mostra come creare una tabella che contiene una singola cella formattata.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableCellFormatting-DocumentBuilderSetTableCellFormatting.java" >}}

### Formattazione della riga

La formattazione della riga corrente è determinata da una `RowFormat` oggetto che viene restituito dal `DocumentBuilder.RowFormat` proprieta'. L'oggetto incapsula informazioni su tutta la formattazione della riga della tabella.

| ![row-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-3.png) |
|  :-  |
L'esserelow code esempio mostra come creare una tabella che contiene una singola cella e applicare la formattazione della riga.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetTableRowFormatting-DocumentBuilderSetTableRowFormatting.java" >}}

### Formattazione elenco

Aspose.Words consente la facile creazione di liste applicando la formattazione dell'elenco. DocumentBuilder fornisce `DocumentBuilder.ListFormat` proprietà che ritorna `ListFormat` oggetto. Questo oggetto ha diversi metodi per avviare e terminare un elenco e per aumentare / diminuire l'indent.

| ![list-fformatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-4.png) |
|  :-  |
Ci sono due tipi generali di elenchi in Microsoft Word: numerato.

- Per aprire un elenco, chiama. [ListFormat.applyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault).
- Per avviare una lista numerata, chiama [ListFormat.applyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault).

Il proiettile o il numero e la formattazione sono aggiunti al paragrafo corrente e tutti gli altri paragrafi creati utilizzando **DocumentBuilder** fino a quando [ListFormat.removeNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) è chiamato per fermare la formattazione elenco.

Nei documenti di Word, le liste possono consistere fino a nove livelli. La formattazione dell'elenco per ogni livello specifica ciò che il proiettile o il numero viene utilizzato, l'indent sinistro, lo spazio tra il proiettile e il testo ecc.

- No. Per aumentare il livello di elenco del paragrafo corrente da un livello, chiama [ListFormat.listIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent).
- No. Per diminuire il livello di elenco del paragrafo corrente da un livello, chiama [ListFormat.listOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent).

I metodi cambiano il livello dell'elenco e applicano le proprietà di formattazione del nuovo livello.

{{% alert color="primary" %}}

È anche possibile utilizzare [ListFormat.listLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#setListLevelNumber-int) proprietà per ottenere o impostare il livello di elenco per il paragrafo. I livelli di elenco sono numerati da 0 a 8.

{{% /alert %}}

Il seguente esempio di codice mostra come costruire un elenco multilivello.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

### Impostazione della pagina e formattazione della sezione

Impostazione della pagina e le proprietà della sezione sono incapsulate `PageSetup` oggetto che viene restituito dal `DocumentBuilder.PageSetup` proprieta'. L'oggetto contiene tutti gli attributi di configurazione della pagina di una sezione (margine sinistro, margine inferiore, formato carta e così via) come proprietà.

| ![section-formatting-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-5.png) |
|  :-  |
Il seguente esempio di codice mostra come impostare tali proprietà come dimensione della pagina e orientamento per la sezione corrente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetPageSetupAndSectionFormatting-DocumentBuilderSetPageSetupAndSectionFormatting.java" >}}

### Applicare uno stile

Alcuni oggetti di formattazione come stili di supporto Font o ParagraphFormat. Un unico stile integrato o definito dall'utente è rappresentato da un `Style` oggetto che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile, e così via.

Inoltre, un **Style** oggetto fornisce [Style.getStyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) proprietà che restituisce un identificativo di stile indipendente dal locale rappresentato da un **Style.StyleIdentifier** valore di enumerazione. Il punto è che i nomi di stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, è possibile trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono alla Microsoft Word stili integrati come Normal , Heading 1 , Heading 2 ecc. Tutti gli stili definiti dall'utente sono assegnati **StyleIdentifier. Valore utente**.

| ![apply-style-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-6.png) |
|  :-  |
Il seguente esempio di codice mostra come applicare uno stile di paragrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

### Borders and Shading

I bordi sono rappresentati dalla BorderCollection. Si tratta di una collezione di oggetti Border a cui si accede per indice o per tipo di confine. Il tipo di confine è rappresentato dal `BorderType` enumerazione. Alcuni valori dell'enumerazione sono applicabili a diversi o solo un elemento di documento. Per esempio, `BorderType.Bottom` è applicabile a una cella di paragrafo o tabella mentre `BorderType.DiagonalDown` specifica il bordo diagonale solo in una cella da tavolo.

Sia la collezione di confine che ogni confine separato hanno attributi simili come il colore, lo stile di linea, la larghezza della linea, la distanza dal testo e l'ombra opzionale. Sono rappresentati da proprietà dello stesso nome. È possibile ottenere diversi tipi di confine combinando valori di proprietà. Inoltre, entrambi **BorderCollection** e **Border** gli oggetti consentono di ripristinare questi valori in modo predefinito chiamando il [Border.clearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) metodo. Si noti che quando le proprietà di confine vengono ripristinate ai valori predefiniti, il bordo è invisibile.

| ![set-borders-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-7.png) |
|  :-  |
The [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) classe contiene attributi di ombreggiatura per elementi di documento. È possibile impostare la texture di ombreggiatura desiderata e i colori che vengono applicati allo sfondo e al primo piano dell'elemento.

La texture di ombreggiatura è impostata con un [TextureIndex](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valore di enumerazione che consente l'applicazione di vari modelli alla **Shading** oggetto. Ad esempio, per impostare un colore di sfondo per un elemento di documento, utilizzare il [TextureIndex.TessutoSolid](https://www.aspose.com/api/java/words/com.aspose.words/constants/TextureIndex) valore e impostare il colore di ombreggiatura primo piano come appropriato.

| ![borders-and-shading-aspose-words-java](/words/java/using-documentbuilder-to-modify-a-document/documentbuilder-to-modify-document-8.png) |
|  :-  |
L'esempio seguente mostra come applicare le frontiere e la ombreggiatura a un paragrafo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}

### Snap to Grid

Aspose.Words fornisce due proprietà `ParagraphFormat.SnapToGrid` e `Font.SnapToGrid` per ottenere e impostare la proprietà del paragrafo snap alla griglia

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-SetSnapToGrid.java" >}}

### Spostare il Cursore

### Rilevamento della posizione attuale del cursore

È possibile ottenere dove il cursore del costruttore è attualmente posizionato in qualsiasi momento. The [DocumentBuilder.getCurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) proprietà restituisce il nodo che è attualmente selezionato in questo costruttore. Il nodo è un figlio diretto di un paragrafo. Tutte le operazioni di inserimento eseguite utilizzando `DocumentBuilder` si inserirà prima `DocumentBuilder.CurrentNode`. Quando il paragrafo corrente è vuoto o il cursore è posizionato poco prima della fine del paragrafo, `DocumentBuilder.CurrentNode` restituisce null.

Inoltre, è possibile utilizzare il [DocumentBuilder.getCurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) proprietà, che ottiene il paragrafo che è attualmente selezionato in questo **DocumentBuilder**. L'esserelow code esempio mostra come accedere al nodo corrente in un costruttore di documenti.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderCursorPosition-DocumentBuilderCursorPosition.java" >}}

### Trasferirsi a qualsiasi nodo (Paragrafi e figli)

Se si dispone di un nodo oggetto documento, che è un paragrafo o un bambino diretto di un paragrafo, è possibile indicare il cursore del costruttore a questo nodo. Utilizzare [DocumentBuilder.moveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) metodo per eseguire questo.
Il seguente esempio di codice mostra come spostare una posizione del cursore in un nodo specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

### Passare al Documento Avvio/End

Se hai bisogno di passare all'inizio del documento, chiama [DocumentBuilder.moveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart). Se è necessario passare alla fine del documento, chiamare [DocumentBuilder.moveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Trasferirsi in una sezione

Se si lavora con un documento che contiene più sezioni, è possibile passare a una sezione desiderata utilizzando [DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int). Questo metodo sposta il cursore all'inizio di una sezione specificata e accetta l'indice della sezione richiesta. Quando l'indice di sezione è maggiore o uguale a 0, specifica un indice dall'inizio del documento con 0 essendo la prima sezione. Quando l'indice di sezione è inferiore a 0, specifica un indice dalla fine del documento con -1 essendo l'ultima sezione. L'esserelow code esempio mostra come spostare una posizione del cursore nella sezione specificata. È possibile scaricare il file template di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSection-DocumentBuilderMoveToSection.java" >}}

### Trasferirsi in un Header/Footer

Quando è necessario inserire alcuni dati in un'intestazione o piè di pagina, si dovrebbe muoversi prima utilizzando [DocumentBuilder.moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int). Il metodo accetta un valore di enumerazione HeaderFoooterType che identifica il tipo di intestazione o piè di pagina in cui il cursore deve essere spostato.

Se si desidera creare intestazioni e piè di pagina diversi per la prima pagina, è necessario impostare il [PageSetup.getDifferentFirstPageHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getDifferentFirstPageHeaderFooter) proprietà a **true**. Se si desidera creare intestazioni e piè di pagina che sono diversi per pagine pari e dispari, è necessario impostare [PageSetup.getOddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOddAndEvenPagesHeaderFooter) a **true**.

Se avete bisogno di tornare alla storia principale, utilizzare[DocumentBuilder.moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) per allontanarsi dall'intestazione o dal piè di pagina. Sotto esempio crea intestazioni e piè di pagina in un documento utilizzando DocumentBuilder.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Passare a un paragrafo

Uso[DocumentBuilder.moveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) per spostare il cursore in un paragrafo desiderato nella sezione corrente. È necessario passare due parametri a questo metodo: paragrafoIndex (l'indice del paragrafo da spostare a) e carattereIndex (l'indice del carattere all'interno del paragrafo).

La navigazione viene eseguita all'interno della storia corrente della sezione corrente. Cioè, se si sposta il cursore all'intestazione primaria della prima sezione, il paragrafoIndex specifica l'indice del paragrafo all'interno di quella intestazione di quella sezione.

Quando il paragrafoIndex è maggiore o uguale a 0, specifica un indice dall'inizio della sezione con 0 essendo il primo paragrafo. Quando il paragrafoIndex è inferiore a 0, specifica un indice dalla fine della sezione con -1 essendo l'ultimo paragrafo. L'indice dei caratteri può attualmente essere specificato solo come 0 per passare all'inizio del paragrafo o -1 per passare alla fine del paragrafo. Il seguente esempio di codice mostra come spostare una posizione del cursore nel paragrafo specificato. È possibile scaricare il file template di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToParagraph-DocumentBuilderMoveToParagraph.java" >}}

### Trasferirsi in una cella da tavolo

Uso [DocumentBuilder.moveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) se è necessario spostare il cursore in una cella di tabella nella sezione corrente. Questo metodo accetta quattro parametri:

- tableIndex - l'indice della tabella a cui andare.
- RowIndex - l'indice della riga nella tabella.
- colonnaIndex - l'indice della colonna nella tabella.
- carattereIndex - l'indice del carattere all'interno della cella.

La navigazione viene eseguita all'interno della storia corrente della sezione corrente.

Per i parametri dell'indice, quando l'indice è maggiore o uguale a 0, specifica un indice dall'inizio con 0 come primo elemento. Quando l'indice è inferiore a 0, specifica un indice dalla fine con -1 essendo l'ultimo elemento.

Inoltre, noti che il carattereIndex attualmente può specificare solo 0 per passare all'inizio della cella o -1 per passare alla fine della cella. Il seguente esempio di codice mostra come spostare una posizione del cursore nella cella della tabella specificata. È possibile scaricare il file template di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Trasferirsi a un segnalibro

I segnalibri sono utilizzati frequentemente per contrassegnare particolari luoghi nel documento in cui devono essere inseriti nuovi elementi. Per passare a un segnalibro, utilizzare [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String). Questo metodo ha due sovraccarichi. Il più semplice non accetta altro che il nome del segnalibro in cui il cursore deve essere spostato. Il seguente esempio di codice mostra come spostare una posizione del cursore su un segnalibro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

Questo sovraccarico sposta il cursore in una posizione appena dopo l'inizio del segnalibro con il nome specificato. Un altro sovraccarico [DocumentBuilder.moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) sposta il cursore su un segnalibro con maggiore precisione. Accetta due ulteriori parametri booleani:

- isStart determina se spostare il cursore all'inizio o alla fine del segnalibro.
- isAfter determina se spostare il cursore per essere dopo l'inizio del segnalibro o la posizione finale, o spostare il cursore per essere prima dell'inizio del segnalibro o della posizione finale.

Il seguente esempio di codice mostra come spostare una posizione del cursore solo dopo l'estremità del segnalibro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

Inserire nuovi testi in questo modo non sostituisce il testo esistente del segnalibro. Si noti che alcuni segnalibri nel documento sono assegnati a campi di forma. Passare a un tale segnalibro e inserire il testo lì inserisce il testo nel codice campo del modulo. Anche se questo non invaliderà il campo di forma, il testo inserito non sarà visibile perché diventa parte del codice di campo.

### Trasferirsi in un `Merge` Campo

A volte potrebbe essere necessario eseguire un "manuale" mail merge usando `DocumentBuilder` o riempire un campo di fusione in modo speciale dentro un mail merge organizzatore di eventi. Questo è il momento [DocumentBuilder.moveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) potrebbe essere utile. Il metodo accetta il nome del campo di fusione. Sposta il cursore in una posizione appena oltre il campo di fusione specificato e rimuove il campo di fusione. Il seguente esempio di codice mostra come spostare il cursore in una posizione appena oltre il campo di fusione specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

## Come convertire tra unità di misura

La maggior parte delle proprietà dell'oggetto fornite nel Aspose.Words API che rappresenta alcune misurazioni (larghezza/altezza, margini e varie distanze) accettano valori in punti (1 pollice equivale a 72 punti). A volte questo non è conveniente quindi c'è `ConvertUtil` classe che fornisce funzioni di helper per convertire tra varie unità di misura. Consente la conversione di pollici a punti, punti a pollici, pixel a punti, e punti a pixel. Quando i pixel vengono convertiti in punti e viceversa, può essere eseguito a 96 dpi (dotti per pollice) risoluzioni o alla risoluzione dpi specificata.

**ConvertUtil** è molto utile quando si impostano diverse proprietà della pagina perché per esempio i pollici sono unità di misura più usuali di punti. L'esempio seguente mostra come impostare le proprietà della pagina in pollici.

Il seguente esempio di codice mostra come specificare le proprietà della pagina in pollici.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
