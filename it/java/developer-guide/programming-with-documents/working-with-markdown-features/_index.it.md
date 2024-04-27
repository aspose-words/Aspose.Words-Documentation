---
title: Lavorare con Markdown Caratteristiche in Java
second_title: Aspose.Words per Java
articleTitle: Lavorare con Markdown Caratteristiche
linktitle: Lavorare con Markdown Caratteristiche
description: "Come implementare Markdown caratteristiche utilizzando Java. Tutte le caratteristiche sono rappresentate come stili corrispondenti o formattazione diretta."
type: docs
weight: 420
url: /it/java/working-with-markdown-features/
---

Questo argomento parla di come implementare Markdown caratteristiche utilizzando Aspose.Words. Markdown è un modo semplice per formattare il testo normale che può facilmente essere convertito in HTML. Aspose.Words supporta i seguenti Markdown caratteristiche:

- Rubriche: Dimensions, Gli uccelli
- Blockquotes
- Regole orizzontali
- enfasi audace
- enfasi italica

The Markdown l'implementazione delle caratteristiche segue principalmente `CommonMark` specificazione in Aspose.Words API e tutte le caratteristiche sono rappresentate come stili corrispondenti o formattazione diretta. Il che significa che

- Bold e Italic sono rappresentati come `Font.Bold` e `Font.Italic`
- Le donne sono dei paragrafi con la testa 1 - titolo 6
- Le citazioni sono i paragrafi con "Quote" nel nome di stile
- HorizontalRule è un paragrafo con un `HorizontalRule` forma.

{{% alert color="primary" %}}

Ci sono sfumature di tradurre Markdown al Aspose.Words Document Object Model (DOM), descritto nell'articolo [Traduttore Markdown a Document Object Model (DOM)](/words/it/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Documento con enfasi

Questa sezione ti mostra come produrre una markdown documento con enfasi come indicato di seguito:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Il seguente codice snippet può essere utilizzato per produrre il suddetto markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Animali domestici ammessi

Questa sezione ti mostra come produrre una markdown documento con le voci di seguito indicate:

{{< highlight csharp >}}
The following produces headings:
# Heading1
## Heading2
### Heading3
#### Heading4
##### Heading5
###### Heading6
# **Bold Heading1**
{{< /highlight >}}

Il seguente codice snippet può essere utilizzato per produrre il suddetto dato markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Documento con Quotazioni Block

Questa sezione ti mostra come produrre una markdown documento con citazioni di blocco come indicato di seguito:

{{< highlight csharp >}}
We support blockquotes in Markdown:
>*Lorem*
>*ipsum*
>The quotes can be of any level and can be nested:
>>>Quote level 3
>>>
>>>>Nested quote level 4
>
>*Back to first level*
>### Headings are allowed inside Quotes
>{{< /highlight >}}

Il seguente codice snippet può essere utilizzato per produrre il suddetto dato markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Documento con regola orizzontale

Questa sezione ti mostra come produrre una markdown documento con Horizontal Regola come indicato di seguito:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Il seguente codice snippet può essere utilizzato per produrre il suddetto markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Leggere una Markdown Documento

Il seguente codice snippet mostra come leggere un markdown documento.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Specificare Markdown Opzioni di salvataggio

Aspose.Words API fornisce [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe per specificare opzioni aggiuntive durante il salvataggio di un documento nel Markdown formato.

Il seguente esempio di codice ha dimostrato come specificare vari Markdown salvare le opzioni.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Come allineare i contenuti all'interno della tabella durante l'esportazione Markdown

Aspose.Words API fornisce [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) enumerazione che definisce le direzioni di allineamento per allineare i contenuti nelle tabelle, esportando nel Markdown documento. Il seguente esempio di codice mostra come allineare il contenuto all'interno della tabella.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
