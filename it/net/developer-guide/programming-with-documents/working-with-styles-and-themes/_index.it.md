---
title: Lavorare con stili e temi in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con stili e temi
linktitle: Lavorare con stili e temi
description: "Funzionalità avanzate di formattazione Microsoft Word, utilizzo di stili e temi utilizzando C#."
type: docs
weight: 110
url: /it/net/working-with-styles-and-themes/
---

La classe [StyleCollection](https://reference.aspose.com/words/net/aspose.words/stylecollection/) viene utilizzata per gestire le impostazioni integrate e applicare agli stili le impostazioni definite dall'utente.

## Accesso agli stili

Puoi ottenere una raccolta di stili definiti nel documento utilizzando la proprietà [Document.Styles](https://reference.aspose.com/words/net/aspose.words/documentbase/styles/). Questa raccolta contiene sia gli stili incorporati che quelli definiti dall'utente in un documento. Uno stile particolare può essere ottenuto tramite il suo nome/alias, identificatore di stile o indice. Nell'esempio di codice seguente viene illustrato come ottenere l'accesso alla raccolta di stili definiti nel documento.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-AccessStyles-AccessStyles.cs" >}}

## Come estrarre il contenuto in base agli stili

A livello semplice, recuperare il contenuto in base agli stili da un documento Word può essere utile per identificare, elencare e contare paragrafi e sequenze di testo formattate con uno stile specifico. Ad esempio, potrebbe essere necessario identificare particolari tipi di contenuto nel documento, come esempi, titoli, riferimenti, parole chiave, nomi di figure e casi di studio.

Per fare qualche passo ulteriore, questo può anche essere utilizzato per sfruttare la struttura del documento, definita dagli stili che utilizza, per riutilizzare il documento per un altro output, come HTML. Questo è infatti il modo in cui viene costruita la documentazione di Aspose, mettendo alla prova Aspose.Words. Uno strumento creato utilizzando Aspose.Words prende i documenti Word di origine e li divide in argomenti a determinati livelli di intestazione. Viene prodotto un file XML utilizzando Aspose.Words che viene utilizzato per costruire l'albero di navigazione che puoi vedere a sinistra. E poi Aspose.Words converte ogni argomento in HTML.

La soluzione per recuperare testo formattato con stili specifici in un documento Word è in genere economica e semplice utilizzando Aspose.Words.

### La soluzione

Per illustrare con quanta facilità Aspose.Words gestisce il recupero dei contenuti in base agli stili, diamo un'occhiata a un esempio. In questo esempio, recupereremo il testo formattato con uno stile di paragrafo e uno stile di carattere specifici da un documento Word di esempio. Ad alto livello, ciò comporterà:# Aprire un documento Word utilizzando la classe [Document](https://reference.aspose.com/words/net/aspose.words/document/).# Ottenere raccolte di tutti i paragrafi e tutte le sequenze nel documento.# Selezionando solo i paragrafi e le sequenze richiesti. Nello specifico, recupereremo il testo formattato con lo stile di paragrafo "Intestazione 1" e lo stile di carattere "Enfasi intensa" da questo documento Word di esempio.

![working-with-styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


In questo documento di esempio, il testo formattato con lo stile di paragrafo "Intestazione 1" è "Inserisci scheda", "Stili rapidi" e "Tema", mentre il testo formattato con lo stile di carattere "Enfasi intensa" presenta diverse istanze di blu, testo in corsivo e in grassetto come "gallerie" e "aspetto generale".

### Il codice

L'implementazione di una query basata su stile è abbastanza semplice nel modello di oggetti del documento Aspose.Words, poiché utilizza semplicemente strumenti già presenti. Per questa soluzione sono implementati due metodi di classe:# **ParagraphsByStyleName** – Questo metodo recupera un array di quei paragrafi in il documento che ha un nome di stile specifico.# **RunsByStyleName** – Questo metodo recupera un array di quelle esecuzioni nel documento che hanno un nome di stile specifico. Entrambi questi metodi sono molto simili, le uniche differenze sono i tipi di nodo e la rappresentazione dello stile informazioni all'interno del paragrafo ed esegui i nodi. Ecco un'implementazione di ParagraphsByStyleName: nell'esempio seguente trovi tutti i paragrafi formattati con lo stile specificato.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ParagraphsByStyleName.cs" >}}

{{% alert color="primary" %}}

Questa implementazione utilizza anche il metodo `Document.GetChildNodes` della classe `Document`, che restituisce una raccolta di tutti i nodi con il tipo specificato, che in questo caso in tutti i paragrafi.

Si noti che il secondo parametro del metodo **Document.GetChildNodes** è impostato su true. Ciò impone al metodo **Document.GetChildNodes** di selezionare ricorsivamente da tutti i nodi figlio, anziché selezionare solo i nodi figli immediati.

{{% /alert %}}

Vale anche la pena sottolineare che la raccolta paragrafi non crea un sovraccarico immediato poiché i paragrafi vengono caricati in questa raccolta solo quando si accede agli elementi al loro interno. Quindi, tutto ciò che devi fare è esaminare la raccolta, utilizzando l'operatore foreach standard e aggiungere i paragrafi con lo stile specificato all'array paragrafosWithStyle. Il nome dello stile `Paragraph` si trova nella proprietà [Style.Name](https://reference.aspose.com/words/net/aspose.words/style/name/) dell'oggetto [Paragraph.ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraph/paragraphformat/). L'implementazione di RunsByStyleName è quasi la stessa, anche se ovviamente utilizziamo [NodeType.Run](https://reference.aspose.com/words/net/aspose.words/nodetype/) per recuperare i nodi di esecuzione. La proprietà [Font.Style](https://reference.aspose.com/words/net/aspose.words/font/style/) di un oggetto [Run](https://reference.aspose.com/words/net/aspose.words/run/) viene utilizzata per accedere alle informazioni sullo stile nei nodi **Run**. Nell'esempio seguente trovi tutte le esecuzioni formattate con lo stile specificato.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-RunsByStyleName.cs" >}}


Quando entrambe le query vengono implementate, tutto ciò che devi fare è passare un oggetto documento e specificare i nomi di stile del contenuto che desideri recuperare: nell'esempio seguente esegui query e visualizza i risultati. È possibile scaricare il file modello di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-ExtractContentBasedOnStyles-ExtractContentBasedOnStyles.cs" >}}

### Risultato finale

Al termine, l'esecuzione dell'esempio visualizzerà il seguente output:

![styles-and-themes-aspose-words-net](/words/net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Come puoi vedere, questo è un esempio molto semplice, che mostra il numero e il testo dei paragrafi raccolti e delle sequenze nel documento Word di esempio.

## Copia tutti gli stili dal modello

Ci sono casi in cui desideri copiare tutti gli stili da un documento a un altro. È possibile utilizzare il metodo `Document.CopyStylesFromTemplate` per copiare gli stili dal modello specificato a un documento. Quando gli stili vengono copiati da un modello a un documento, gli stili con nomi simili nel documento vengono ridefiniti per corrispondere alle descrizioni di stile nel modello. Gli stili univoci del modello vengono copiati nel documento. Gli stili univoci nel documento rimangono intatti. L'esempio di Below code mostra come copiare gli stili da un documento all'altro.

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-CopyStyles-CopyStylesFromDocument.cs" >}}

## Come manipolare le proprietà del tema

Abbiamo aggiunto API di base in Aspose.Words per accedere alle proprietà del tema del documento. Per ora, questo API include i seguenti oggetti pubblici:

- Tema
- Caratteri tematici
- Colori del tema

Ecco come puoi ottenere le proprietà del tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-GetThemeProperties.cs" >}}

Ed ecco come puoi impostare le proprietà del tema:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Theme-ManipulateThemeProperties-SetThemeProperties.cs" >}}
