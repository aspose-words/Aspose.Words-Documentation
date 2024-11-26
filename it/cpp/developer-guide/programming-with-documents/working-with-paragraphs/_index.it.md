---
title: Lavorare con i paragrafi in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con i paragrafi
linktitle: Lavorare con i paragrafi
description: "Pratiche di manipolazione del nodo paragrafo utilizzando C++."
type: docs
weight: 210
url: /it/cpp/working-with-paragraphs/
timestamp: 2024-01-30-16-22-34
---

Un paragrafo è un insieme di caratteri combinati in un blocco logico e termina con un carattere speciale – a *paragraph break*. In Aspose.Words, un paragrafo è rappresentato dalla classe [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Inserire un paragrafo

Per inserire un nuovo paragrafo nel documento, infatti, è necessario inserire un carattere di interruzione di paragrafo in esso. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) inserisce non solo una stringa di testo nel documento, ma aggiunge anche un'interruzione di paragrafo.

La formattazione del carattere corrente è anche specificata dalla proprietà [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) e la formattazione del paragrafo corrente è determinata dalla proprietà [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). Nella prossima sezione, andremo più in dettaglio sulla formattazione del paragrafo.

Il seguente esempio di codice mostra come inserire un paragrafo in un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Formato paragrafo

La formattazione corrente del paragrafo è rappresentata da un oggetto **ParagraphFormat** restituito dalla proprietà **ParagraphFormat**. Questo oggetto incapsula varie proprietà di formattazione del paragrafo disponibili in Microsoft Word. È possibile ripristinare facilmente la formattazione del paragrafo per impostazione predefinita su stile normale, allineato a sinistra senza rientro, senza spaziatura, senza bordi e senza ombreggiatura chiamando [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

L'esempio di codice seguente mostra come impostare la formattazione del paragrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Applica stile di paragrafo

Alcuni oggetti di formattazione come Font o ParagraphFormat supportano gli stili. Un singolo stile incorporato o definito dall'utente è rappresentato da un oggetto `Style` che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile e così via.

Inoltre, un oggetto **Style** fornisce la proprietà [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) che restituisce un identificatore di stile indipendente dalle impostazioni locali rappresentato dal valore di enumerazione **StyleIdentifier**. Il punto è che i nomi degli stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, è possibile trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono agli stili predefiniti Microsoft Word, ad esempio *Normal*, *Heading 1*, *Heading 2* ecc. A tutti gli stili definiti dall'utente viene assegnato il valore **StyleIdentifier.User**.

L'esempio di codice seguente mostra come applicare uno stile di paragrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Inserisci separatore stile per inserire stili di paragrafo diversi

Il separatore di stile può essere aggiunto alla fine di un paragrafo usando la scorciatoia da tastiera Ctrl + Alt + Invio in MS Word. Questa funzione consente due diversi stili di paragrafo utilizzati in un paragrafo stampato logico. Se si desidera che un testo dall'inizio di una particolare intestazione venga visualizzato in un Sommario ma non si desidera che l'intera intestazione nell'Indice, è possibile utilizzare questa funzione.

Nell'esempio di codice seguente viene illustrato come inserire un separatore di stile per accogliere stili di paragrafo diversi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identificare il separatore di stile di paragrafo

` `Aspose.Words fornisce una proprietà pubblica [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) in una classe `Paragraph` consente di identificare il paragrafo Separatore di stile come mostrato nell'esempio riportato di seguito:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Applicare bordi e ombreggiature a un paragrafo

I bordi in Aspose.Words sono rappresentati dalla classe [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – questa è una raccolta di oggetti [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) a cui si accede per indice o per tipo di bordo. Il tipo di bordo è rappresentato dall'enumerazione `BorderType`. Alcuni valori dell'enumerazione sono applicabili a più o solo un elemento del documento. Ad esempio, **BorderType.Bottom** è applicabile a un paragrafo o a una cella di tabella mentre **BorderType.DiagonalDown** specifica il bordo diagonale solo in una cella di tabella.

Sia la collezione di bordi che ogni bordo separato hanno attributi simili come colore, stile della linea, larghezza della linea, distanza dal testo e ombra opzionale. Sono rappresentati da proprietà con lo stesso nome. È possibile ottenere diversi tipi di bordi combinando i valori delle proprietà. Inoltre, entrambi gli oggetti **BorderCollection** e **Border** consentono di ripristinare questi valori di default chiamando il metodo [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Si noti che quando le proprietà del bordo vengono ripristinate ai loro valori predefiniti, il bordo diventa invisibile.

{{% /alert %}}

Aspose.Words ha anche la classe [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) contiene attributi di ombreggiatura per gli elementi del documento. È possibile impostare la texture di ombreggiatura desiderata e i colori applicati allo sfondo e al primo piano dell'elemento.

La texture di ombreggiatura è impostata con un valore di enumerazione [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) che consente l'applicazione di vari modelli all'oggetto **Shading**. Ad esempio, per impostare un colore di sfondo per un elemento documento, utilizzare il valore [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) e impostare il colore di ombreggiatura in primo piano come appropriato.

L'esempio di codice seguente mostra come applicare bordi e ombreggiature a un paragrafo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
