---
title: Lavorare con i paragrafi in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i paragrafi
linktitle: Lavorare con i paragrafi
description: "Pratiche di manipolazione del nodo paragrafo utilizzando Java."
type: docs
weight: 210
url: /it/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Un paragrafo è un insieme di caratteri combinati in un blocco logico e termina con un carattere speciale – a *paragraph break*. In Aspose.Words, un paragrafo è rappresentato dalla classe [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

## Inserimento di un paragrafo

Per inserire un nuovo paragrafo nel documento, infatti, è necessario inserire un carattere di interruzione di paragrafo in esso. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) inserisce non solo una stringa di testo nel documento, ma aggiunge anche un'interruzione di paragrafo.

La formattazione del carattere corrente è anche specificata dalla proprietà [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) e la formattazione del paragrafo corrente è determinata dalla proprietà [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Nella prossima sezione, andremo più in dettaglio sulla formattazione del paragrafo.

Il seguente esempio di codice mostra come inserire un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Formato paragrafo

La formattazione corrente del paragrafo è rappresentata dall'oggetto [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) restituito dalla proprietà [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Questo oggetto incapsula varie proprietà di formattazione del paragrafo disponibili in Microsoft Word. È possibile ripristinare facilmente la formattazione di un paragrafo al suo stile predefinito – Stile normale, allineato a sinistra, nessun rientro, nessuna spaziatura, nessun bordo, nessuna ombreggiatura-chiamando [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

L'esempio di codice seguente mostra come impostare la formattazione del paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Applica stile di paragrafo

Alcuni oggetti di formattazione come Font o ParagraphFormat supportano gli stili. Un singolo stile incorporato o definito dall'utente è rappresentato da un oggetto [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile e così via.

Inoltre, un oggetto **Style** fornisce la proprietà [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) che restituisce un identificatore di stile indipendente dalle impostazioni locali rappresentato da un valore di enumerazione **StyleIdentifier**. Il punto è che i nomi degli stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, è possibile trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono agli stili predefiniti Microsoft Word, ad esempio *Normal*, *Heading 1*, *Heading 2*, ecc. A tutti gli stili definiti dall'utente viene assegnato **StyleIdentifier.User value**.

L'esempio di codice seguente mostra come applicare uno stile di paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Inserisci separatore stile per inserire stili di paragrafo diversi

Il separatore di stile può essere aggiunto alla fine di un paragrafo usando la scorciatoia da tastiera Ctrl + Alt + Invio in MS Word. Questa funzione consente due diversi stili di paragrafo utilizzati in un paragrafo stampato logico. Se si desidera che un testo dall'inizio di una particolare intestazione venga visualizzato in un Sommario ma non si desidera che l'intera intestazione nell'Indice, è possibile utilizzare questa funzione.

Nell'esempio di codice seguente viene illustrato come inserire un separatore di stile per accogliere stili di paragrafo diversi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Applicare bordi e ombreggiature a un paragrafo

I bordi in Aspose.Words sono rappresentati dalla classe [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) – questa è una raccolta di oggetti [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) a cui si accede per indice o per tipo di bordo. Il tipo `Border` è rappresentato dall'enumerazione [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/). Alcuni valori dell'enumerazione sono applicabili a più o solo un elemento del documento. Ad esempio, **BorderType.Bottom** è applicabile a un paragrafo o a una cella di tabella mentre **BorderType.DiagonalDown** specifica il bordo diagonale solo in una cella di tabella.

Sia la collezione di bordi che ogni bordo separato hanno attributi simili come colore, stile della linea, larghezza della linea, distanza dal testo e ombra opzionale. Sono rappresentati da proprietà con lo stesso nome. È possibile ottenere diversi tipi di bordi combinando i valori delle proprietà. Inoltre, entrambi gli oggetti **BorderCollection** e **Border** consentono di ripristinare questi valori di default chiamando il metodo [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting).

{{% alert color="primary" %}}

Si noti che quando le proprietà del bordo vengono reimpostate sui valori predefiniti, il bordo è invisibile.

{{% /alert %}}

Aspose.Words ha anche la classe [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) contiene attributi di ombreggiatura per gli elementi del documento. È possibile impostare la texture di ombreggiatura desiderata e i colori applicati allo sfondo e al primo piano dell'elemento.

La texture di ombreggiatura è impostata con il valore di enumerazione [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) che consente l'applicazione di vari modelli all'oggetto **Shading**. Ad esempio, per impostare un colore di sfondo per un elemento documento, utilizzare il valore `TextureIndex.TextureSolid` e impostare il colore di ombreggiatura in primo piano come appropriato. L'esempio di codice riportato di seguito mostra come applicare bordi e ombreggiature a un paragrafo.

L'esempio di codice seguente mostra come applicare bordi e ombreggiature a un paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
