---
title: Lavorare con le funzionalità Markdown in C#
second_title: Aspose.Words per .NET
articleTitle: Lavorare con le funzionalità Markdown
linktitle: Lavorare con le funzionalità Markdown
description: "Come implementare le funzionalità Markdown utilizzando C#. Tutte le funzionalità sono rappresentate come stili corrispondenti o formattazione diretta."
type: docs
weight: 420
url: /it/net/working-with-markdown-features/
---

In questo argomento viene illustrato come implementare le funzionalità Markdown utilizzando Aspose.Words. Markdown è un modo semplice per formattare testo semplice che può essere facilmente convertito in HTML. Aspose.Words supporta le seguenti funzionalità Markdown:

- Intestazioni
- Blockquote
- Regole orizzontali
- Enfasi in grassetto
- Corsivo corsivo

L'implementazione delle funzionalità Markdown segue principalmente la specifica `CommonMark` in Aspose.Words API e tutte le funzionalità sono rappresentate come stili corrispondenti o formattazione diretta. Che significa che

- Grassetto e corsivo sono rappresentati come `Font.Bold` e `Font.Italic`
- I titoli sono paragrafi con stili Titolo 1 - Titolo 6
- Le virgolette sono paragrafi con "Citazione" nel nome dello stile
- OrizzontaleRule è un paragrafo con forma OrizzontaleRule.

{{% alert color="primary" %}}

Esistono delle sfumature nella traduzione di Markdown in Aspose.Words Document Object Model (DOM), descritte nell'articolo [Traduci Markdown in Document Object Model (DOM)](/words/it/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Documento Markdown con sottolineature

Questa sezione mostra come produrre un documento markdown con l'enfasi come indicato di seguito:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

Il seguente frammento di codice può essere utilizzato per produrre il documento markdown sopra indicato.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

## Documento Markdown con intestazioni

Questa sezione mostra come produrre un documento markdown con le intestazioni indicate di seguito:

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

## Documento Markdown con virgolette

Questa sezione mostra come produrre un documento markdown con virgolette come indicato di seguito:

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Documento Markdown con riga orizzontale

Questa sezione mostra come produrre un documento markdown con la riga orizzontale come indicato di seguito:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Il seguente frammento di codice può essere utilizzato per produrre il documento markdown sopra indicato.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Lettura di un documento Markdown

Il seguente frammento di codice mostra come leggere un documento markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Specificare le opzioni di salvataggio Markdown

Aspose.Words API fornisce la classe [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) per specificare opzioni aggiuntive durante il salvataggio di un documento nel formato Markdown.

Nell'esempio di codice seguente viene illustrato come specificare varie opzioni di salvataggio Markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Come allineare il contenuto all'interno della tabella durante l'esportazione in Markdown

Aspose.Words API fornisce l'enumerazione [TableContentAlignment](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) che definisce le direzioni di allineamento per allineare i contenuti nelle tabelle durante l'esportazione nel documento Markdown. Nell'esempio di codice seguente viene illustrato come allineare il contenuto all'interno della tabella.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
