---
title: Lavorare con i paragrafi in Python
second_title: Aspose.Words per Python via .NET
articleTitle: Lavorare con i paragrafi
linktitle: Lavorare con i paragrafi
description: "Inserisci il paragrafo e specifica la sua formattazione in un documento utilizzando Python."
type: docs
weight: 210
url: /it/python-net/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Un paragrafo è un insieme di caratteri combinati in un blocco logico e che termina con un carattere speciale: un'*interruzione di paragrafo*. In Aspose.Words, un paragrafo è rappresentato dalla classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Inserisci un paragrafo

Per inserire un nuovo paragrafo nel documento, infatti, è necessario inserire al suo interno un carattere di interruzione di paragrafo. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) inserisce anche una stringa di testo nel documento ma aggiunge inoltre un'interruzione di paragrafo.

La formattazione corrente del carattere è specificata anche dalla proprietà [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) e la formattazione corrente del paragrafo è determinata dalla proprietà [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

L'esempio di codice seguente mostra come inserire un paragrafo in un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Formato paragrafo

La formattazione del paragrafo corrente è rappresentata da un oggetto [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) restituito dalla proprietà [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Questo oggetto incapsula varie proprietà di formattazione dei paragrafi disponibili in Microsoft Word. Puoi facilmente reimpostare la formattazione del paragrafo sullo stile predefinito Normale, allineato a sinistra, senza rientro, senza spaziatura, senza bordi e senza ombreggiatura chiamando [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

L'esempio di codice seguente mostra come impostare la formattazione del paragrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Applicare uno stile di paragrafo

Alcuni oggetti di formattazione come [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) o [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) supportano gli stili. Un singolo stile integrato o definito dall'utente è rappresentato da un oggetto [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) che contiene le proprietà di stile corrispondenti come nome, stile di base, carattere e formattazione del paragrafo dello stile e così via.

Inoltre, un oggetto [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) fornisce la proprietà [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) che restituisce un identificatore di stile indipendente dalle impostazioni locali rappresentato da un valore di enumerazione [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Il punto è che i nomi degli stili incorporati in Microsoft Word sono localizzati per lingue diverse. Utilizzando un identificatore di stile, puoi trovare lo stile corretto indipendentemente dalla lingua del documento. I valori di enumerazione corrispondono agli stili incorporati Microsoft Word come Normal, Heading 1, Heading 2 ecc. A tutti gli stili definiti dall'utente viene assegnato il valore [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

L'esempio di codice seguente mostra come applicare uno stile di paragrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Inserisci separatore di stile per inserire stili di paragrafo diversi

È possibile aggiungere un separatore di stile alla fine di un paragrafo utilizzando la scorciatoia da tastiera Ctrl + Alt + Invio in MS Word. Questa funzionalità consente l'utilizzo di due diversi stili di paragrafo in un paragrafo logico stampato. Se desideri che parte del testo dall'inizio di una particolare intestazione venga visualizzato in un sommario ma non vuoi che l'intera intestazione sia presente nel sommario, puoi utilizzare questa funzione

L'esempio di codice seguente mostra come inserire un separatore di stile per adattarlo a diversi stili di paragrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identificare il separatore dello stile di paragrafo

Aspose.Words fornisce una proprietà pubblica [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) in una classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) che consente di identificare il paragrafo separatore di stile come mostrato nell'esempio riportato di seguito:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Applicare bordi e ombreggiatura a un paragrafo

I confini sono rappresentati dal [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Si tratta di una raccolta di oggetti [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) a cui si accede tramite indice o tipo di bordo. Il tipo di bordo è rappresentato dall'enumerazione [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Alcuni valori dell'enumerazione sono applicabili a più o a un solo elemento del documento. Ad esempio, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) è applicabile a un paragrafo o a una cella di tabella mentre [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) specifica il bordo diagonale solo in una cella di tabella.

Sia la raccolta bordi che ogni bordo separato hanno attributi simili come colore, stile della linea, larghezza della linea, distanza dal testo e ombra opzionale. Sono rappresentati da proprietà con lo stesso nome. È possibile ottenere diversi tipi di bordo combinando i valori delle proprietà. Inoltre, sia gli oggetti [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) che quelli [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) consentono di reimpostare questi valori sui valori predefiniti chiamando il metodo [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Tieni presente che quando le proprietà del bordo vengono reimpostate sui valori predefiniti, il bordo diventa invisibile.

{{% /alert %}}

Aspose.Words ha anche la classe [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) che contiene attributi di ombreggiatura per gli elementi del documento. È possibile impostare la texture di ombreggiatura desiderata e i colori applicati allo sfondo e al primo piano dell'elemento.

La trama dell'ombreggiatura è impostata con un valore di enumerazione [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) che consente l'applicazione di vari modelli all'oggetto [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Ad esempio, per impostare un colore di sfondo per un elemento del documento, utilizzare il valore [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) e impostare il colore di ombreggiatura in primo piano in modo appropriato. L'esempio seguente mostra come applicare bordi e ombreggiature a un paragrafo.

L'esempio di codice seguente mostra come applicare bordi e ombreggiature a un paragrafo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
