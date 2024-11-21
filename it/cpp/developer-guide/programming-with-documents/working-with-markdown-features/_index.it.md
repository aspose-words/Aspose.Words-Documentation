---
title: Utilizzo delle funzionalità Markdown in C++
second_title: Aspose.Words per C++
articleTitle: Lavorare con Markdown Caratteristiche
linktitle: Lavorare con Markdown Caratteristiche
description: "Come implementare le funzionalità Markdown usando C++. Tutte le funzionalità sono rappresentate come stili corrispondenti o formattazione diretta."
type: docs
weight: 420
url: /it/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Questo argomento illustra come implementare le funzionalità di Markdown utilizzando Aspose.Words. Markdown è un modo semplice per formattare il testo normale che può essere facilmente convertito in HTML. Aspose.Words supporta le seguenti funzionalità Markdown:

- Rubrica
- Blockquotes
- Regole orizzontali
- Grassetto enfasi
- Corsivo enfasi

L'implementazione delle funzionalità Markdown segue principalmente le specifiche `CommonMark` nell'API Aspose.Words e tutte le funzionalità sono rappresentate come stili corrispondenti o formattazione diretta. Il che significa che

- Grassetto e corsivo sono rappresentati come `Font.Bold` e `Font.Italic`.
- Le intestazioni sono paragrafi con stili Intestazione 1 - Intestazione 6.
- Le citazioni sono paragrafi con "Citazione" nel nome dello stile.
- HorizontalRule è un paragrafo con forma HorizontalRule.

{{% alert color="primary" %}}

Ci sono sfumature di tradurre Markdown al modello a oggetti del documento (DOM) Aspose.Words, descritto nell'articolo [Traduci Markdown in Document Object Model (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Documento con enfasi

Questa sezione illustra come produrre un documento markdown con enfasi come indicato di seguito:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Il seguente frammento di codice può essere utilizzato per produrre il documento markdown sopra indicato.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Documento con intestazioni

Questa sezione illustra come produrre un documento markdown con intestazioni come indicato di seguito:

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

Il seguente frammento di codice può essere utilizzato per produrre il documento markdown sopra indicato.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Documento con virgolette di blocco

Questa sezione illustra come produrre un documento markdown con virgolette di blocco come indicato di seguito:

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

Il seguente frammento di codice può essere utilizzato per produrre il documento markdown sopra indicato.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Documento con regola orizzontale

Questa sezione illustra come produrre un documento markdown con Regola orizzontale come indicato di seguito:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Il seguente frammento di codice può essere utilizzato per produrre il documento markdown sopra indicato.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Lettura di un documento Markdown

Il frammento di codice seguente mostra come leggere un documento markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Specificare Markdown Opzioni di salvataggio

L'API Aspose.Words fornisce la classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) per specificare opzioni aggiuntive durante il salvataggio di un documento nel formato Markdown.

Il seguente esempio di codice ha dimostrato come specificare varie opzioni di salvataggio Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Come allineare il contenuto all'interno della tabella durante l'esportazione in Markdown

L'API Aspose.Words fornisce l'enumerazione TableContentAlignment che definisce le direzioni di allineamento per allineare i contenuti nelle tabelle durante l'esportazione nel documento Markdown. Nell'esempio di codice seguente viene illustrato come allineare il contenuto all'interno della tabella.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
