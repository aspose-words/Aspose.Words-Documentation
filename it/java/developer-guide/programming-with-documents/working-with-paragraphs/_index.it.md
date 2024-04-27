---
title: Lavorare con i paragrafi in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con i paragrafi
linktitle: Lavorare con i paragrafi
description: "Pratiche di manipolazione dei nodi del paragrafo utilizzando Java."
type: docs
weight: 210
url: /it/java/working-with-paragraphs/
---

Un paragrafo è un insieme di caratteri combinati in un blocco logico e termina con un carattere speciale – un *paragrafo break*. In Aspose.Words, un paragrafo è rappresentato dal [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) classe.

## Inserire un paragrafo

Per inserire un nuovo paragrafo nel documento, infatti, è necessario inserire un carattere di rottura del paragrafo in esso. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) inserisce non solo una stringa di testo nel documento, ma aggiunge anche una pausa di paragrafo.

La formattazione del carattere corrente è specificata anche dal [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) proprietà, e la formattazione del paragrafo corrente è determinata dalla [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) proprieta'. Nella sezione successiva, andremo in dettaglio sulla formattazione del paragrafo.

Il seguente esempio di codice mostra come inserire un paragrafo in un documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Formato Paragrafo

La formattazione attuale del paragrafo è rappresentata dalla [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) oggetto che viene restituito dal [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) proprieta'. Questo oggetto racchiude varie proprietà di formattazione del paragrafo disponibili in Microsoft Word. È possibile ripristinare facilmente la formattazione di un paragrafo alla sua impostazione predefinita – stile normale, sinistra-allineato, nessuna indentazione, nessuna spaziatura, nessun confine, nessuna ombreggiatura – chiamando [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

Il seguente esempio di codice mostra come impostare la formattazione del paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Applicare lo stile del paragrafo

Alcuni oggetti di formattazione come stili di supporto Font o ParagraphFormat. Un unico stile integrato o definito dall'utente è rappresentato da un [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) oggetto che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile, e così via.

Inoltre, un **Style** oggetto fornisce [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) proprietà che restituisce un identificativo di stile indipendente dal locale rappresentato da un **StyleIdentifier** valore di enumerazione. Il punto è che i nomi di stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, è possibile trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono alla Microsoft Word stili incorporati come *Normal*, *Heading 1*, *Heading 2*, ecc. Tutti gli stili definiti dall'utente sono assegnati **StyleIdentifier. Valore utente**.

Il seguente esempio di codice mostra come applicare uno stile di paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Inserisci Separatore di stile per mettere diversi stili di paragrafo

Il separatore di stile può essere aggiunto alla fine di un paragrafo utilizzando il Ctrl + Alt + Inserisci tastiera scorciatoia in MS Word. Questa funzione consente due diversi stili di paragrafo utilizzati in un unico paragrafo logico stampato. Se si desidera che un testo dall'inizio di una particolare voce venga visualizzato in una tabella dei contenuti, ma non si desidera che l'intera voce nella tabella dei contenuti, è possibile utilizzare questa funzione.

Il seguente esempio di codice mostra come inserire un separatore di stile per ospitare diversi stili di paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Applicare bordi e ombreggiatura a un paragrafo

Borders in Aspose.Words sono rappresentati da [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) classe – questa è una collezione di [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) oggetti accessibili per indice o per tipo di confine. The `Border` tipo è rappresentato dal [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) enumerazione. Alcuni valori dell'enumerazione sono applicabili a diversi o solo un elemento di documento. Per esempio, **BorderType.Bottom** è applicabile a una cella di paragrafo o tabella mentre **BorderType.DiagonalDown** specifica il bordo diagonale solo in una cella da tavolo.

Sia la collezione di confine che ogni confine separato hanno attributi simili come il colore, lo stile di linea, la larghezza della linea, la distanza dal testo e l'ombra opzionale. Sono rappresentati da proprietà dello stesso nome. È possibile ottenere diversi tipi di confine combinando i valori di proprietà. Inoltre, entrambi **BorderCollection** e **Border** gli oggetti consentono di ripristinare questi valori in modo predefinito chiamando il [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) metodo.

{{% alert color="primary" %}}

Si noti che quando le proprietà di confine vengono ripristinate ai valori predefiniti, il bordo è invisibile.

{{% /alert %}}

Aspose.Words ha anche il [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) classe contiene attributi di ombreggiatura per elementi di documento. È possibile impostare la texture di ombreggiatura desiderata e i colori che vengono applicati allo sfondo e al primo piano dell'elemento.

La texture di ombreggiatura è impostata con [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) valore di enumerazione che consente l'applicazione di vari modelli alla **Shading** oggetto. Ad esempio, per impostare un colore di sfondo per un elemento di documento, utilizzare il `TextureIndex.TextureSolid` valore e impostare il colore di ombreggiatura in primo piano come appropriato. L'esempio di codice indicato di seguito mostra come applicare i confini e la ombreggiatura a un paragrafo.

Il seguente esempio di codice mostra come applicare le frontiere e la ombreggiatura a un paragrafo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
