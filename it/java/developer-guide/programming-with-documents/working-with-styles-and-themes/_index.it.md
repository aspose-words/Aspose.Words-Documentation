---
title: Lavorare con stili e temi
second_title: Aspose.Words per Java
articleTitle: Lavorare con stili e temi
linktitle: Lavorare con stili e temi
description: "Funzionalità avanzate di formattazione Microsoft Word, utilizzo di stili e temi con Java."
type: docs
weight: 110
url: /it/java/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

La classe [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) viene utilizzata per gestire le impostazioni predefinite e applicare le impostazioni definite dall'utente agli stili.

## Come estrarre il contenuto in base agli stili

A un livello semplice, il recupero del contenuto in base agli stili da un documento di Word può essere utile per identificare, elencare e contare i paragrafi e le esecuzioni di testo formattato con uno stile specifico. Ad esempio, potrebbe essere necessario identificare particolari tipi di contenuto nel documento, ad esempio esempi, titoli, riferimenti, parole chiave, nomi di figure e casi di studio.

Per fare questo alcuni passi avanti, questo può anche essere usato per sfruttare la struttura del documento, definita dagli stili che utilizza, per riutilizzare il documento per un altro output, ad esempio HTML. Questo è infatti il modo in cui viene costruita la documentazione Aspose, mettendo Aspose.Words alla prova. Uno strumento creato utilizzando Aspose.Words prende i documenti di Word di origine e li divide in argomenti a determinati livelli di intestazione. Un file XML viene prodotto usando Aspose.Words che viene utilizzato per costruire l'albero di navigazione che puoi vedere a sinistra. E poi Aspose.Words converte ogni argomento in HTML. La soluzione per il recupero di testo formattato con stili specifici in un documento di Word è in genere economica e semplice utilizzando Aspose.Words.

Per illustrare la facilità con cui Aspose.Words gestisce il recupero del contenuto in base agli stili, diamo un'occhiata a un esempio. In questo esempio, recupereremo il testo formattato con uno stile di paragrafo specifico e uno stile di carattere da un documento Word di esempio.

Ad alto livello, ciò comporterà:

1. Aprire un documento Word usando la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/).
1. Ottenere raccolte di tutti i paragrafi e tutte le esecuzioni nel documento.
1. Selezionare solo i paragrafi e le esecuzioni richieste.

In particolare, recupereremo il testo formattato con lo stile di paragrafo "Heading 1 "e lo stile di carattere" Enfasi intensa " da questo documento Word di esempio.

![working-with-styles-aspose-words-java-1](/words/java/working-with-styles-and-themes/working-with-styles-1.png)

In questo documento di esempio, il testo formattato con lo stile di paragrafo "Heading 1 " è "Inserisci scheda", "Stili rapidi" e "Tema", e il testo formattato con lo stile di carattere "Enfasi intensa" è costituito da diverse istanze di testo blu, corsivo e in grassetto come "gallerie" e "aspetto generale".

L'implementazione di una query basata sullo stile è abbastanza semplice nel modello a oggetti del documento Aspose.Words, in quanto utilizza semplicemente strumenti già esistenti. Due metodi di classe sono implementati per questa soluzione:

1. **ParagraphsByStyleName** - Questo metodo recupera una matrice di quei paragrafi nel documento che hanno un nome di stile specifico.
1. **RunsByStyleName** - Questo metodo recupera un array di quelle esecuzioni nel documento che hanno un nome di stile specifico.

Entrambi questi metodi sono molto simili, le uniche differenze sono i tipi di nodo e la rappresentazione delle informazioni di stile all'interno del paragrafo e dei nodi run. Ecco un'implementazione di ParagraphsByStyleName mostrata nell'esempio di codice riportato di seguito per trovare tutti i paragrafi formattati con lo stile specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-paragraphsByStyleName.java" >}}

Questa implementazione utilizza anche il metodo [Document.getChildNodes()](https://reference.aspose.com/words/java/com.aspose.words/document/#getChildNodes) della classe `Document`, che restituisce una raccolta di tutti i nodi figlio immediati.

Vale anche la pena sottolineare che la raccolta paragrafi non crea un sovraccarico immediato perché i paragrafi vengono caricati in questa raccolta solo quando si accede agli elementi in essi contenuti.Quindi, tutto ciò che devi fare è passare attraverso la raccolta, usando l'operatore foreach standard e aggiungere paragrafi che hanno lo stile specificato all'array paragraphsWithStyle. Il nome dello stile `Paragraph` può essere trovato nella proprietà [Style.getName()](https://reference.aspose.com/words/java/com.aspose.words/style/#getName) dell'oggetto [Paragraph.getParagraphFormat()](https://reference.aspose.com/words/java/com.aspose.words/style/#getParagraphFormat).

L'implementazione di RunsByStyleName è quasi la stessa, anche se ovviamente stiamo usando `NodeType.Run` per recuperare i nodi run. La proprietà [Font.getStyle()](https://reference.aspose.com/words/java/com.aspose.words/font/#getStyle) di un oggetto [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) viene utilizzata per accedere alle informazioni di stile nei nodi **Run**.

Il seguente esempio di codice trova tutte le esecuzioni formattate con lo stile specificato.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-runsByStyleName.java" >}}

{{% alert color="primary" %}}

Quando vengono implementate entrambe le query, tutto ciò che devi fare è passare un oggetto documento e specificare i nomi di stile del contenuto che desideri recuperare:

{{% /alert %}}

Il seguente esempio di codice esegue query e visualizza i risultati.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.java" >}}

Quando tutto è fatto, l'esecuzione del campione visualizzerà il seguente output:

![working-with-styles-aspose-words-java-2](/words/java/working-with-styles-and-themes/working-with-styles-2.png)

Come puoi vedere, questo è un esempio molto semplice, che mostra il numero e il testo dei paragrafi raccolti e viene eseguito nel documento Word di esempio.

## Inserisci separatore stile per inserire stili di paragrafo diversi

Il separatore di stile può essere aggiunto alla fine di un paragrafo usando la scorciatoia da tastiera Ctrl + Alt + Invio in MS Word. Questa funzione consente due diversi stili di paragrafo utilizzati in un paragrafo stampato logico. Se si desidera che un testo dall'inizio di una determinata intestazione venga visualizzato in un Sommario, ma non si desidera che l'intera intestazione nell'Indice, è possibile utilizzare questa funzione.

L'esempio di codice seguente mostra come inserire un separatore di stile per inserire stili di paragrafo diversi.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}

## Copia tutti gli stili dal modello

Ci sono casi in cui si desidera copiare tutti gli stili da un documento in un altro. È possibile utilizzare il metodo `Document.CopyStylesFromTemplate` per copiare gli stili dal modello specificato in un documento. Quando gli stili vengono copiati da un modello a un documento, gli stili con nome simile nel documento vengono ridefiniti in modo da corrispondere alle descrizioni di stile nel modello. Gli stili unici del modello vengono copiati nel documento. Gli stili unici nel documento rimangono intatti.

Il seguente esempio di codice mostra come copiare gli stili da un documento in un altro.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithStyle-CopyStylesFromDocument.java" >}}

## Come manipolare le proprietà del tema

Abbiamo aggiunto API di base in Aspose.Words per accedere alle proprietà del tema del documento. Per ora, questo API include i seguenti oggetti pubblici:

- Tema
- ThemeFonts
- ThemeColors

Ecco come è possibile ottenere le proprietà del tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-GetThemeProperties-GetThemeProperties.java" >}}

Ed ecco come è possibile impostare le proprietà del tema:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Theme-SetThemeProperties-SetThemeProperties.java" >}}
