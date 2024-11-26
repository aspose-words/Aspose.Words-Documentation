---
title: Convertire un documento in Markdownin Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in Markdown
linktitle: Convertire un documento in Markdown
type: docs
description: "Convertire un documento in qualsiasi formato di caricamento supportato in Markdown e viceversa utilizzando Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /it/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown è un formato popolare utilizzato per il markup del testo e viene ulteriormente convertito in HTML, PDF, DOCX, o altri formati. Molti sviluppatori scelgono questo formato per scrivere documentazione, preparare articoli per la pubblicazione su blog, descrivere progetti e così via.

Markdown è così popolare perché è facile lavorare con questo formato, così come può essere semplicemente convertito in altri formati. Per questo motivo, Aspose.Words offre la possibilità di convertire un documento in [qualsiasi formato di carico supportato](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) in Markdown e viceversa – Aspose.Words supporta anche il più popolare [salva formati](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Ora la funzionalità per lavorare con il formato Markdown viene attivamente sviluppata per offrire maggiori opportunità di lavoro comodo e confortevole con i documenti.

## Convertire un documento in Markdown

Per convertire un documento in Markdown, è sufficiente caricare un documento in qualsiasi formato supportato o crearne uno nuovo a livello di codice. Quindi è necessario salvare il documento in formato Markdown.

L'esempio di codice seguente mostra come convertire DOCXin Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Specificare le opzioni di salvataggio durante la conversione in Markdown

Aspose.Words offre la possibilità di utilizzare la classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) per utilizzare le opzioni avanzate quando si salva un documento in formato Markdown. Oltre ad altre proprietà di ereditarietà o sovraccarico, sono state aggiunte anche alcune proprietà specifiche per il formato Markdown. Ad esempio, la proprietà [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) per controllare l'allineamento del contenuto nelle tabelle o [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) per controllare il modo in cui le immagini vengono salvate quando si converte un documento in formato Markdown.

## Funzionalità supportate Markdown

Aspose.Words attualmente supporta le seguenti funzionalità Markdown, che seguono principalmente le specifiche `CommonMark` in Aspose.Words API e sono rappresentate come stili appropriati o formattazione diretta:

* Le intestazioni sono paragrafi con stili Heading 1 – Heading 6
* I blockquotes sono paragrafi con "Quote" nel nome dello stile
* IndentedCode sono paragrafi con "IndentedCode " nel nome dello stile
* FencedCode sono paragrafi con "FencedCode " nel nome dello stile
* InlineCode vengono eseguite con "InlineCode " nel nome dello stile `Font`
* Le regole orizzontali sono paragrafi con la forma `HorizontalRule`
* Grassetto enfasi
* Corsivo enfasi
* StrikeThrough formattazione
* Gli elenchi sono paragrafi numerati o puntati
* Le tabelle sono rappresentate con la classe `Table`
* I collegamenti sono rappresentati come la classe `FieldHyperlink`

L'esempio seguente mostra come creare un documento con alcuni stili e salvarlo in Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Il risultato di questo esempio di codice è mostrato di seguito.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Consigli utili

Ci sono diverse sfumature e casi interessanti, avendo imparato che puoi lavorare con i file Markdown in modo più flessibile e conveniente. Ad esempio, c'è la possibilità di utilizzare:

* SetextHeading che consente di creare intestazioni multilinea in Markdown, mentre le intestazioni regolari in Markdown possono essere solo a riga singola. SetextHeading è basato su uno stile "Intestazione N" e il suo livello può essere solo 1 o 2. Se N in " Intestazione N "è maggiore o uguale a 2, allora il corrispondente SetextHeading è basato su" Heading 2", altrimenti su"Heading 1".
* Marcatori diversi per il primo livello di elenchi puntati ("-", "+" o "*", il marcatore predefinito è "-".) e diversi tipi di numerazione per gli elenchi ordinati ("." o ")", il marcatore predefinito è ".").
