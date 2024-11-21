---
title: Converti un documento in Markdown
second_title: Aspose.Words per Python via .NET
articleTitle: Converti un documento in Markdown
linktitle: Converti un documento in Markdown
type: docs
description: "Converti un documento in qualsiasi formato di caricamento supportato in Markdown e viceversa utilizzando Python."
keywords: how to convert a document to markdown python
weight: 40
url: /it/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown è un formato popolare utilizzato per contrassegnare il testo e la sua ulteriore conversione in HTML, PDF, DOCX o altri formati. Molti sviluppatori scelgono questo formato per scrivere documentazione, preparare articoli da pubblicare sui blog, descrivere progetti e così via.

Markdown è così popolare perché è facile lavorare con questo formato e può essere convertito semplicemente in altri formati. Per questo motivo, Aspose.Words offre la possibilità di convertire un documento in [qualsiasi formato di caricamento supportato](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) in Markdown e viceversa – Aspose.Words supporta anche i più diffusi [salvare i formati](https://reference.aspose.com/words/python-net/aspose.words/saveformat/).

Ora la funzionalità per lavorare con il formato Markdown viene sviluppata attivamente per offrirti maggiori opportunità per lavorare in modo comodo e confortevole con i documenti.

## Converti un documento

Per convertire un documento in Markdown, devi solo caricare un documento in qualsiasi formato supportato o crearne uno nuovo a livello di codice. Quindi è necessario salvare il documento in formato Markdown.

Il seguente esempio di codice mostra come convertire DOCX in Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Puoi anche specificare la cartella fisica in cui desideri salvare le immagini quando esporti un documento in formato Markdown. Per impostazione predefinita, Aspose.Words salva le immagini nella stessa cartella in cui è salvato il file del documento, ma puoi ignorare questo comportamento utilizzando la proprietà [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Specificare una cartella tramite [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) è utile anche se si salva un documento in uno stream e Aspose.Words non dispone di una cartella per il salvataggio delle immagini.

Se il [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) specificato non esiste, verrà creato automaticamente.

Il seguente esempio di codice mostra come specificare una cartella per le immagini quando si salva un documento in un flusso:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Specificare le opzioni di salvataggio durante la conversione in Markdown

Aspose.Words offre la possibilità di utilizzare la classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) per lavorare con opzioni avanzate durante il salvataggio di un documento in formato Markdown. La maggior parte delle proprietà eredita o sovraccarica proprietà già esistenti all'interno di altre classi [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/). Oltre a queste, sono state aggiunte anche una serie di proprietà specifiche per il formato Markdown. Ad esempio, la proprietà [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) per controllare l'allineamento del contenuto nelle tabelle o [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) per controllare dove vengono salvate le immagini durante la conversione di un documento in formato Markdown.

## Funzionalità Markdown supportate

Aspose.Words attualmente supporta le seguenti funzionalità Markdown, che seguono principalmente la specifica `CommonMark` nel API Aspose.Words e sono rappresentate come stili appropriati o formattazione diretta:

* I titoli sono paragrafi con stili Titolo 1 – Titolo 6
* Le virgolette sono paragrafi con "Citazione" nel nome dello stile
* IndentedCode sono paragrafi con "IndentedCode" nel nome dello stile
* FencedCode sono paragrafi con "FencedCode" nel nome dello stile
* Gli InlineCode vengono eseguiti con "InlineCode" nel nome dello stile `Font`
* Le righe orizzontali sono paragrafi con la forma `HorizontalRule`
* Enfasi in grassetto
*Sottolineatura corsiva
* Formattazione StrikeThrough
* Gli elenchi sono paragrafi numerati o puntati
* Le tabelle sono rappresentate con la classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* I collegamenti sono rappresentati come classe [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

L'esempio seguente mostra come creare un documento con alcuni stili e salvarlo in Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Il risultato di questo esempio di codice è mostrato di seguito.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Consigli utili

Ci sono molte sfumature e casi interessanti, dopo aver appreso quali puoi lavorare con i file Markdown in modo più flessibile e conveniente. Ad esempio, c'è la possibilità di utilizzare:

* SetextHeading che ti consente di creare intestazioni su più righe in Markdown, mentre le intestazioni normali in Markdown possono essere solo a riga singola. SetextHeading si basa su uno stile "Intestazione N" e il suo livello può essere solo 1 o 2. Se N in "Intestazione N" è maggiore o uguale a 2, allora il corrispondente SetextHeading è basato su "Intestazione 2", altrimenti su "Rubrica 1".
* Indicatori diversi per il primo livello degli elenchi puntati ("-", "+" o "*", l'indicatore predefinito è "-".) e diversi tipi di numerazione per gli elenchi ordinati ("." o ")", l'indicatore predefinito è ".").
