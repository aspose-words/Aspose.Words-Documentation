---
title: Convertire un documento in Markdown in C++
second_title: Aspose.Words per C++
articleTitle: Convertire un documento in Markdown
linktitle: Convertire un documento in Markdown
type: docs
description: "Convertire un documento in qualsiasi formato di carico supportato in Markdown e viceversa utilizzando C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /it/cpp/convert-a-document-to-markdown/
---

Markdown è un formato popolare utilizzato per contrassegnare il testo e la sua ulteriore conversione in HTML, PDF, DOCX o altri formati. Molti sviluppatori scelgono questo formato per scrivere documentazione, preparare articoli per la pubblicazione su blog, descrivere progetti e così via.

Markdown è così popolare perché è facile lavorare con questo formato, così come può essere semplicemente convertito in altri formati. Per questo motivo, Aspose.Words offre la possibilità di convertire un documento in [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) in Markdown e viceversa – Aspose.Words supporta anche il più popolare [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Ora la funzionalità per lavorare con il formato Markdown viene attivamente sviluppata per offrire maggiori opportunità di lavoro comodo e confortevole con i documenti.

## Convertire un documento

Per convertire un documento in Markdown, è sufficiente caricare un documento in qualsiasi formato supportato o crearne uno nuovo a livello di codice. Quindi è necessario salvare il documento in formato Markdown.

L'esempio di codice seguente mostra come convertire DOCXin Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

È inoltre possibile specificare la cartella fisica in cui si desidera salvare le immagini quando si esporta un documento in formato Markdown. Per impostazione predefinita, Aspose.Words salva le immagini nella stessa cartella in cui viene salvato il file del documento, ma è possibile ignorare questo comportamento utilizzando la proprietà [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

Specificare una cartella tramite **ImagesFolder** è utile anche se si salva un documento in un flusso e Aspose.Words non dispone di una cartella per il salvataggio delle immagini.

Se il **ImagesFolder** specificato non esiste, verrà creato automaticamente.

L'esempio di codice seguente mostra come specificare una cartella per le immagini quando si salva un documento in un flusso:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Specificare le opzioni di salvataggio durante la conversione in Markdown

Aspose.Words offre la possibilità di utilizzare la classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) per utilizzare le opzioni avanzate quando si salva un documento nel formato Markdown. La maggior parte delle proprietà ereditano o sovraccaricano proprietà già esistenti all'interno di altre classi di namespace [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). Oltre a questi, sono state aggiunte anche una serie di proprietà specifiche per il formato Markdown. Ad esempio, la proprietà [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) per controllare l'allineamento del contenuto nelle tabelle o [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) e [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) per controllare il modo in cui le immagini vengono salvate quando si converte un documento in formato Markdown.

## Funzionalità supportate Markdown

Aspose.Words attualmente supporta le seguenti funzionalità Markdown, che seguono principalmente le specifiche `CommonMark` nell'API Aspose.Words e sono rappresentate come stili appropriati o formattazione diretta:

* I titoli sono paragrafi con stili Titolo 1 – Titolo 6
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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Il risultato di questo esempio di codice è mostrato di seguito.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Consigli utili

Ci sono diverse sfumature e casi interessanti, avendo imparato che puoi lavorare con i file Markdown in modo più flessibile e conveniente. Ad esempio, c'è la possibilità di utilizzare:

* SetextHeading che consente di creare intestazioni multilinea in Markdown, mentre le intestazioni regolari in Markdown possono essere solo a riga singola. SetextHeading è basato su uno stile "Intestazione N" e il suo livello può essere solo 1 o 2. Se N in " Heading N "è maggiore o uguale a 2, allora il corrispondente SetextHeading è basato su" Heading 2", altrimenti su"Heading 1".
* Marcatori diversi per il primo livello di elenchi puntati ("-", "+" o "*", il marcatore predefinito è "-".) e diversi tipi di numerazione per gli elenchi ordinati ("." o ")", il marcatore predefinito è ".").
