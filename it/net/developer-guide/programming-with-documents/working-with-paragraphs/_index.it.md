---
title: Lavorare con i paragrafi in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con i paragrafi
linktitle: Lavorare con i paragrafi
description: "Inserisci un paragrafo in un documento C#. Imposta gli stili di paragrafo in C#. Funziona con il separatore di stile di paragrafo C#. Manipolare il nodo del paragrafo utilizzando C#."
type: docs
weight: 210
url: /it/net/working-with-paragraphs/
---

Un paragrafo è un insieme di caratteri combinati in un blocco logico e che termina con un carattere speciale: un'*interruzione di paragrafo*. In Aspose.Words, un paragrafo è rappresentato dalla classe [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/).

## Inserisci un paragrafo

Per inserire un nuovo paragrafo nel documento, infatti, è necessario inserire al suo interno un carattere di interruzione di paragrafo. [DocumentBuilder.Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/) inserisce non solo una stringa di testo nel documento, ma aggiunge anche un'interruzione di paragrafo.

La formattazione corrente del carattere è specificata anche dalla proprietà [Font](https://reference.aspose.com/words/net/aspose.words/documentbuilder/font/) e la formattazione corrente del paragrafo è determinata dalla proprietà [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Nella sezione successiva entreremo più in dettaglio sulla formattazione dei paragrafi.

L'esempio di codice seguente mostra come inserire un paragrafo in un documento:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Formato paragrafo

La formattazione del paragrafo corrente è rappresentata dall'oggetto [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/paragraphformat/) restituito dalla proprietà [ParagraphFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/paragraphformat/). Questo oggetto incapsula varie proprietà di formattazione dei paragrafi disponibili in Microsoft Word. Puoi facilmente ripristinare la formattazione di un paragrafo sul suo valore predefinito (stile normale, allineato a sinistra, senza rientro, senza spaziatura, senza bordi, senza ombreggiatura) chiamando [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/paragraphformat/clearformatting/).

L'esempio di codice seguente mostra come impostare la formattazione del paragrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Applica lo stile di paragrafo

Alcuni oggetti di formattazione, come **Font** o **ParagraphFormat**, supportano gli stili. Uno stile integrato o definito dall'utente è rappresentato da un oggetto [Style](https://reference.aspose.com/words/net/aspose.words/style/), che contiene le proprietà di stile appropriate come nome, stile di base, carattere, formattazione del paragrafo di stile e così via.

Inoltre, l'oggetto **Style** espone la proprietà [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/style/styleidentifier/), che restituisce l'identificatore di stile indipendente dalle impostazioni locali rappresentato dal valore dell'enumerazione [StyleIdentifier](https://reference.aspose.com/words/net/aspose.words/styleidentifier/). Il fatto è che i nomi degli stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando l'identificatore di stile, puoi trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono agli stili Microsoft Word incorporati come *Normal*, *Intestazione 1*, *Intestazione 2* e così via. Tutti gli stili definiti dall'utente sono impostati sul valore di enumerazione **StyleIdentifier.User**.

L'esempio di codice seguente mostra come applicare uno stile di paragrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Inserisci separatore di stile per inserire stili di paragrafo diversi

È possibile aggiungere un separatore di stile alla fine di un paragrafo utilizzando la scorciatoia da tastiera Ctrl+Alt+Invio in Microsoft Word. Questa funzionalità consente di utilizzare due stili di paragrafo diversi nello stesso paragrafo logico stampato. Se desideri che parte del testo dall'inizio di una particolare intestazione venga visualizzato nel sommario, ma non vuoi che l'intera intestazione venga visualizzata nel sommario, puoi utilizzare questa funzione.

L'esempio di codice seguente mostra come inserire un separatore di stile per adattarlo a diversi stili di paragrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identificare il separatore dello stile di paragrafo

Aspose.Words espone la proprietà pubblica [BreakIsStyleSeparator](https://reference.aspose.com/words/net/aspose.words/paragraph/breakisstyleseparator/) sulla classe `Paragraph` per identificare un paragrafo con un separatore di stile, come mostrato nell'esempio seguente:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Applicare bordi e ombreggiatura a un paragrafo

I confini in Aspose.Words sono rappresentati dalla classe [BorderCollection](https://reference.aspose.com/words/net/aspose.words/bordercollection/): si tratta di una raccolta di oggetti [Border](https://reference.aspose.com/words/net/aspose.words/border/) a cui si accede tramite indice o tipo di confine. Il tipo di bordo è a sua volta rappresentato dall'enumerazione [BorderType](https://reference.aspose.com/words/net/aspose.words/bordertype/). Alcuni valori di enumerazione si applicano a più o a un solo elemento del documento. Ad esempio, **BorderType.Bottom** si applica a un paragrafo o a una cella di tabella, mentre **BorderType.DiagonalDown** specifica un bordo diagonale solo in una cella di tabella.

Sia la raccolta bordi che ogni bordo separato hanno attributi simili come colore, stile della linea, larghezza della linea, distanza dal testo e ombra facoltativa. Sono rappresentati da proprietà con lo stesso nome. Puoi ottenere diversi tipi di bordo combinando i valori delle proprietà. Inoltre, gli oggetti **BorderCollection** e **Border** consentono di reimpostare questi valori sui valori predefiniti chiamando il metodo [ClearFormatting](https://reference.aspose.com/words/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Tieni presente che quando le proprietà del bordo vengono reimpostate sui valori predefiniti, il bordo diventa invisibile.

{{% /alert %}}

Aspose.Words ha anche la classe [Shading](https://reference.aspose.com/words/net/aspose.words/shading/) che contiene attributi di ombreggiatura per gli elementi del documento. È possibile impostare la texture di ombreggiatura e i colori desiderati applicati allo sfondo e al primo piano di un elemento utilizzando il valore di enumerazione [TextureIndex](https://reference.aspose.com/words/net/aspose.words/textureindex/). **TextureIndex** consente inoltre di applicare modelli diversi all'oggetto **Shading**. Ad esempio, per impostare il colore di sfondo per un elemento del documento, utilizzare il valore **TextureIndex.TextureSolid** e impostare il colore di ombreggiatura in primo piano in modo appropriato.

L'esempio di codice seguente mostra come applicare bordi e ombreggiature a un paragrafo:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Contare le righe del paragrafo

Se desideri contare il numero di righe in un paragrafo per qualsiasi documento di Word, è possibile utilizzare il seguente esempio di codice:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}