---
title: Lavorare con stili e temi
second_title: Aspose.Words per Java
articleTitle: Lavorare con stili e temi
linktitle: Lavorare con stili e temi
description: "Migliorata Microsoft Word funzioni di formattazione, lavorando con stili e temi utilizzando Java."
type: docs
weight: 110
url: /it/java/working-with-styles-and-themes/
---

The [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) classe viene utilizzata per gestire le impostazioni integrate e applicare le impostazioni definite dall'utente agli stili.

## Come estrarre i contenuti in base agli stili

A un livello semplice, recuperare il contenuto in base agli stili di un documento di Word può essere utile per identificare, elencare e contare i paragrafi e le operazioni di testo formattati con uno stile specifico. Ad esempio, potrebbe essere necessario identificare particolari tipi di contenuti nel documento, come esempi, titoli, riferimenti, parole chiave, nomi di figura e studi di casi.

Per portare avanti questo passo, questo può essere utilizzato anche per sfruttare la struttura del documento, definita dagli stili che utilizza, per ri-applicare il documento per un'altra uscita, come l'HTML. Questo è infatti il modo in cui la documentazione Aspose è costruita, mettendo Aspose.Words al test. Uno strumento costruito utilizzando Aspose.Words prende i documenti di Word sorgente e li divide in argomenti a determinati livelli di intestazione. Un file XML viene prodotto utilizzando Aspose.Words che è usato per costruire l'albero di navigazione si può vedere a sinistra. E poi Aspose.Words converte ogni argomento in HTML. La soluzione per recuperare il testo formattato con stili specifici in un documento di Word è tipicamente economica e semplice utilizzando Aspose.Words.

Illustrare come facilmente Aspose.Words gestisce il recupero dei contenuti in base agli stili, vediamo un esempio. In questo esempio, stiamo per recuperare il testo formattato con uno stile di paragrafo specifico e uno stile di carattere da un documento di Word campione.

A un livello elevato, questo comporta:

1. Aprire un documento di Word utilizzando [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) classe.
1. Ottenere collezioni di tutti i paragrafi e tutte le funzioni nel documento.
1. Selezionando solo i paragrafi ed i passaggi richiesti.

In particolare, recuperare il testo formattato con lo stile del paragrafo ‘Heading 1’ e lo stile del carattere ‘Intense Emphasis’ da questo documento di Word campione

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

In questo documento di esempio, il testo formattato con lo stile di paragrafo ‘Heading 1’ è ‘Insert Tab’, ‘Quick Styles’ e ‘Teme’, e il testo formattato con lo stile di carattere ‘Intense accentuazione’ è le diverse istanze di testo blu, italicizzato, audace come ‘galleries’ e ‘sguardare tutto’.

L'implementazione di una query basata su stile è abbastanza semplice nel Aspose.Words documento oggetto modello, in quanto utilizza semplicemente strumenti che sono già in atto. Due metodi di classe sono implementati per questa soluzione:

1. **ParagraphsByStyleName** – Questo metodo recupera una serie di quei paragrafi nel documento che hanno un nome di stile specifico.
1. **RunsByStyleName** – Questo metodo recupera una serie di quei run nel documento che hanno un nome di stile specifico.

Entrambi questi metodi sono molto simili, le uniche differenze sono i tipi di nodo e la rappresentazione delle informazioni di stile all'interno del paragrafo e nodi di esecuzione. Ecco un'implementazione di ParagraphsByStyleName mostrato nell'esempio di codice indicato di seguito per trovare tutti i paragrafi formattati con lo stile specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Questa implementazione utilizza anche [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) metodo del `Document` classe, che restituisce una raccolta di tutti i nodi bambini immediati.

Vale anche la pena sottolineare che la collezione di paragrafi non crea un overhead immediato perché i paragrafi sono caricati in questa raccolta solo quando si accede agli articoli in essi. Quindi, tutto quello che dovete fare è passare attraverso la raccolta, utilizzando lo standard per ogni operatore e aggiungere i paragrafi che hanno lo stile specificato ai paragrafi Con Stele array. The `Paragraph` nome di stile può essere trovato nel [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) proprietà della [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat) oggetto.

L'implementazione di RunsByStyleName è quasi la stessa, anche se stiamo ovviamente usando `NodeType.Run` per recuperare nodi run. The [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) proprietà di un [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) oggetto viene utilizzato per accedere alle informazioni di stile in **Run** Nodi

Il seguente esempio di codice trova tutte le rune formattate con lo stile specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Quando entrambe le domande vengono implementate, tutto quello che devi fare è passare un oggetto di documento e specificare i nomi di stile del contenuto che vuoi recuperare:

{{% /alert %}}

Il seguente esempio di codice eseguire query e risultati di visualizzazione.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Quando tutto è fatto, eseguire il campione visualizzerà il seguente output:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Come potete vedere, questo è un esempio molto semplice, che mostra il numero e il testo dei paragrafi raccolti ed esegue nel documento di Word campione.

## Inserisci Separatore di stile per mettere diversi stili di paragrafo

Il separatore di stile può essere aggiunto alla fine di un paragrafo utilizzando il Ctrl + Alt + Inserisci tastiera scorciatoia in MS Word. Questa funzione consente due diversi stili di paragrafo utilizzati in un unico paragrafo logico stampato. Se si desidera che un testo dall'inizio di una particolare voce venga visualizzato in una tabella dei contenuti, ma non si desidera che l'intera voce nella tabella dei contenuti, è possibile utilizzare questa funzione

Il seguente esempio di codice mostra come inserire un separatore di stile per mettere diversi stili di paragrafo

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copia tutti gli stili da Template

Ci sono casi in cui si desidera copiare tutti gli stili da un documento in un altro. È possibile utilizzare `Document.CopyStylesFromTemplate` metodo per copiare gli stili dal modello specificato a un documento. Quando gli stili vengono copiati da un modello a un documento, gli stili simili nel documento vengono ridefiniti per corrispondere alle descrizioni di stile nel modello. Gli stili unici dal modello vengono copiati al documento. Gli stili unici nel documento rimangono intatti

Il seguente esempio di codice mostra come copiare gli stili da un documento in un altro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Come Manipolare Proprietà del tema

Abbiamo aggiunto API in Aspose.Words accedere alle proprietà del tema del documento. Per ora, questo API include i seguenti oggetti pubblici:

- No. Tema
- ThemeFonts
- TemaColori

Ecco come si possono ottenere proprietà a tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Ed ecco come è possibile impostare le proprietà a tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
