---
title: Convertire un documento in Markdown in Java
second_title: Aspose.Words per Java
articleTitle: Convertire un documento in Markdown
linktitle: Convertire un documento in Markdown
type: docs
description: "Convertire un documento in qualsiasi formato di carico supportato in Markdown e viceversa utilizzando Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /it/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown è un formato popolare utilizzato per contrassegnare il testo e si sta ulteriormente convertendo in HTML, PDF, DOCX, o altri formati. Molti sviluppatori scelgono questo formato per la scrittura di documentazione, la preparazione di articoli per la pubblicazione su blog, descrivendo progetti, e così via.

Markdown è così popolare perché è facile lavorare con questo formato, così come può essere semplicemente convertito in altri formati. Per questo motivo, Aspose.Words fornisce la capacità di convertire un documento in [qualsiasi formato di carico supportato](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) a Markdown e viceversa – Aspose.Words supporta anche il più popolare [Condividi su Facebook](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Ora la funzionalità per lavorare con Markdown il formato è stato attivamente sviluppato per fornire più opportunità di lavoro comodo e confortevole con i documenti.

## Convertire un documento in Markdown

Per convertire un documento in Markdown> è sufficiente caricare un documento in qualsiasi formato supportato o creare un nuovo programmaticamente. Quindi è necessario salvare il documento per Markdown formato.

Il seguente esempio di codice mostra come convertire DOCX in Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Specificare le opzioni di salvataggio durante la conversione in Markdown

Aspose.Words fornisce la capacità di utilizzare [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe per lavorare con opzioni avanzate quando si salva un documento a Markdown formato. Oltre ad altre proprietà ereditarie o sovraccarico, una serie di proprietà che sono specifiche per Markdown è stato aggiunto anche il formato. Per esempio, il [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) proprietà per controllare l'allineamento dei contenuti nelle tabelle, o [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) e [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) per controllare come le immagini vengono salvate durante la conversione di un documento a Markdown formato.

## Supportato Markdown Caratteristiche

Aspose.Words attualmente supporta i seguenti Markdown caratteristiche, che per lo più seguono `CommonMark` specificazione nella Aspose.Words API e sono rappresentati come stili appropriati o formattazione diretta:

* Le donne sono i paragrafi con la testa 1 – Heading 6 stili
* Blockquotes sono i paragrafi con "Quote" nel nome di stile
* IndentedCode sono i paragrafi con "IndentedCode" nel nome di stile
* Recintato Codice sono i paragrafi con "FencedCode" nel nome di stile
* InlineCode sono funziona con "InlineCode" nel `Font` nome in stile
* Le regole orizzontali sono paragrafi con le `HorizontalRule` forma
* enfasi Bold
* enfasi italica
* StrikeThrough formattazione
* Le liste sono numerate o pronunziate
* Le tabelle sono rappresentate con il `Table` classe
* # I collegamenti sono rappresentati come `FieldHyperlink` classe

L'esempio seguente mostra come creare un documento con alcuni stili e salvarlo a Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Il risultato di questo esempio di codice è mostrato di seguito.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Consigli utili

Ci sono diverse sfumature e casi interessanti, avendo imparato che si può lavorare con Markdown file più flessibile e convenientemente. Ad esempio, c'è la capacità di usare:

* SetextHeading che consente di creare intestazioni multi-linee Markdown> mentre le voci regolari in Markdown può essere solo single-line. SetextHeading si basa su uno stile "Heading N", e il suo livello può essere solo 1 o 2. Se N in "Heading N" è maggiore o uguale a 2, allora il corrispondente SetextHeading si basa su "Heading 2", altrimenti su "Heading 1".
* Segnali diversi per il primo livello di liste di pallottola ("-", "+" o "*", il marcatore predefinito è "-") e diversi tipi di numerazione per le liste ordinate ("." o ")", il marcatore predefinito è ".").
