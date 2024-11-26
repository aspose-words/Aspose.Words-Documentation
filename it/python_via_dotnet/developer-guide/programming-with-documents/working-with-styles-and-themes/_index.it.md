---
title: Lavorare con stili e temi
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con stili e temi
linktitle: Lavorare con stili e temi
description: "Accedi e gestisci stili e temi in un documento utilizzando Python."
type: docs
weight: 110
url: /it/python-net/working-with-styles-and-themes/
timestamp: 2024-01-27-14-07-04
---

La classe [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) viene utilizzata per gestire le impostazioni integrate e applicare agli stili le impostazioni definite dall'utente.

## Accesso agli stili

Puoi ottenere una raccolta di stili definiti nel documento utilizzando la proprietà [Document.styles](https://reference.aspose.com/words/python-net/aspose.words/documentbase/styles/). Questa raccolta contiene sia gli stili incorporati che quelli definiti dall'utente in un documento. Uno stile particolare può essere ottenuto tramite il suo nome/alias, identificatore di stile o indice. Nell'esempio di codice seguente viene illustrato come ottenere l'accesso alla raccolta di stili definiti nel documento.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-AccessStyles.py" >}}

## Come estrarre il contenuto in base agli stili

A livello semplice, recuperare il contenuto in base agli stili da un documento Word può essere utile per identificare, elencare e contare paragrafi e sequenze di testo formattate con uno stile specifico. Ad esempio, potrebbe essere necessario identificare particolari tipi di contenuto nel documento, come esempi, titoli, riferimenti, parole chiave, nomi di figure e casi di studio.

Per fare qualche passo ulteriore, questo può anche essere utilizzato per sfruttare la struttura del documento, definita dagli stili che utilizza, per riutilizzare il documento per un altro output, come HTML. Questo è infatti il modo in cui viene costruita la documentazione di Aspose, mettendo alla prova Aspose.Words. Uno strumento creato utilizzando Aspose.Words prende i documenti Word di origine e li suddivide in argomenti a determinati livelli di intestazione. Viene prodotto un file XML utilizzando Aspose.Words che viene utilizzato per costruire l'albero di navigazione che puoi vedere a sinistra. E poi Aspose.Words converte ogni argomento in HTML.

La soluzione per recuperare testo formattato con stili specifici in un documento Word è in genere economica e semplice utilizzando Aspose.Words.

### La soluzione

Per illustrare con quanta facilità Aspose.Words gestisce il recupero dei contenuti in base agli stili, diamo un'occhiata a un esempio. In questo esempio, recupereremo il testo formattato con uno stile di paragrafo e uno stile di carattere specifici da un documento Word di esempio. Ad alto livello, ciò comporterà:
- Apertura di un documento Word utilizzando la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).
- Ottenere raccolte di tutti i paragrafi e tutte le sequenze nel documento.
- Selezionando solo i paragrafi e le sequenze richieste. Nello specifico, recupereremo il testo formattato con lo stile di paragrafo "Intestazione 1" e lo stile di carattere "Enfasi intensa" da questo documento Word di esempio.

![working-with-styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-1.png)


In questo documento di esempio, il testo formattato con lo stile di paragrafo "Intestazione 1" è "Inserisci scheda", "Stili rapidi" e "Tema", mentre il testo formattato con lo stile di carattere "Enfasi intensa" presenta diverse istanze di blu, testo in corsivo e in grassetto come "gallerie" e "aspetto generale".

### Il codice

L'implementazione di una query basata su stili è abbastanza semplice nel modello di oggetti del documento Aspose.Words, poiché utilizza semplicemente strumenti già presenti. Per questa soluzione sono implementati due metodi di classe:
- **paragrafi_per_nome_stile** – Questo metodo recupera un array di quei paragrafi nel documento che hanno un nome di stile specifico.
- **corre_per_nome_stile**: questo metodo recupera un array di quelle esecuzioni nel documento che hanno un nome di stile specifico. Entrambi questi metodi sono molto simili, le uniche differenze sono i tipi di nodo e la rappresentazione delle informazioni di stile all'interno del paragrafo e dei nodi di esecuzione. Ecco un'implementazione di `paragraphs_by_style_name`: nell'esempio seguente trovi tutti i paragrafi formattati con lo stile specificato.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ParagraphsByStyleName.py" >}}

{{% alert color="primary" %}}

Questa implementazione utilizza anche il metodo [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) della classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), che restituisce una raccolta di tutti i nodi con il tipo specificato, che in questo caso in tutti i paragrafi.

Si noti che il secondo parametro del metodo [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) è impostato su `True`. Ciò impone al metodo [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) di selezionare ricorsivamente da tutti i nodi figlio, anziché selezionare solo i nodi figli immediati.

{{% /alert %}}

Vale anche la pena sottolineare che la raccolta paragrafi non crea un sovraccarico immediato poiché i paragrafi vengono caricati in questa raccolta solo quando si accede agli elementi al loro interno. Quindi, tutto ciò che devi fare è esaminare la raccolta, utilizzando l'operatore foreach standard e aggiungere i paragrafi con lo stile specificato all'array paragrafi_con_stile. Il nome dello stile `Paragraph` si trova nella proprietà [Style.name](https://reference.aspose.com/words/python-net/aspose.words/style/name/) dell'oggetto [Paragraph.paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/paragraph/paragraph_format/). L'implementazione di **corre_per_nome_stile** è quasi la stessa, anche se ovviamente utilizziamo [NodeType.RUN](https://reference.aspose.com/words/python-net/aspose.words/nodetype/#run) per recuperare i nodi di esecuzione. La proprietà [Font.style](https://reference.aspose.com/words/python-net/aspose.words/font/style/) di un oggetto [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) viene utilizzata per accedere alle informazioni sullo stile nei nodi [Run](https://reference.aspose.com/words/python-net/aspose.words/run/). Nell'esempio seguente trovi tutte le esecuzioni formattate con lo stile specificato.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-RunsByStyleName.py" >}}


Quando entrambe le query vengono implementate, tutto ciò che devi fare è passare un oggetto documento e specificare i nomi di stile del contenuto che desideri recuperare: nell'esempio seguente esegui query e visualizza i risultati. È possibile scaricare il file modello di questo esempio da [Qui](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Styles.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractContentBasedOnStyles.py" >}}

### Risultato finale

Al termine, l'esecuzione dell'esempio visualizzerà il seguente output:

![styles-and-themes-aspose-words-net](/words/python-net/working-with-styles-and-themes/working-with-styles-and-themes-2.png)


Come puoi vedere, questo è un esempio molto semplice, che mostra il numero e il testo dei paragrafi raccolti e delle sequenze nel documento Word di esempio.

## Copia tutti gli stili dal modello

Ci sono casi in cui desideri copiare tutti gli stili da un documento a un altro. È possibile utilizzare il metodo [Document.copy_styles_from_template](https://reference.aspose.com/words/python-net/aspose.words/document/copy_styles_from_template/) per copiare gli stili dal modello specificato a un documento. Quando gli stili vengono copiati da un modello a un documento, gli stili con nomi simili nel documento vengono ridefiniti per corrispondere alle descrizioni di stile nel modello. Gli stili univoci del modello vengono copiati nel documento. Gli stili univoci nel documento rimangono intatti. L'esempio di Below code mostra come copiare gli stili da un documento all'altro.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-CopyStyles.py" >}}

## Come manipolare le proprietà del tema

Abbiamo aggiunto API di base in Aspose.Words per accedere alle proprietà del tema del documento. Per ora, questo API include i seguenti oggetti pubblici:

- [Theme](https://reference.aspose.com/words/python-net/aspose.words.themes/theme/)
- [ThemeFonts](https://reference.aspose.com/words/python-net/aspose.words.themes/themefonts/)
- [ThemeColors](https://reference.aspose.com/words/python-net/aspose.words.themes/themecolors/)

Ecco come puoi ottenere le proprietà del tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-GetThemeProperties.py" >}}

Ed ecco come puoi impostare le proprietà del tema:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-SetThemeProperties.py" >}}
