---
title: Werken met Markdown Kenmerken in Java
second_title: Aspose.Words voor Java
articleTitle: Werken met Markdown Kenmerken
linktitle: Werken met Markdown Kenmerken
description: "Uitvoering Markdown functies gebruiken Java. Alle functies zijn weergegeven als overeenkomstige stijlen of directe opmaak."
type: docs
weight: 420
url: /nl/java/working-with-markdown-features/
---

Dit onderwerp bespreekt hoe te implementeren Markdown functies gebruiken Aspose.Words. Markdown is een eenvoudige manier om platte tekst te formatteren die gemakkelijk kan worden omgezet naar HTML. Aspose.Words ondersteunt het volgende Markdown kenmerken:

- Rubrieken
- Blockquotes
- Horizontale regels
- Vet accent
- Cursief accent

De Markdown feature implementatie volgt meestal de `CommonMark` specificatie in Aspose.Words API en alle functies zijn weergegeven als overeenkomstige stijlen of directe opmaak. Wat betekent dat

- Vet en Cursief zijn vertegenwoordigd als `Font.Bold` en `Font.Italic`
- Rubrieken zijn paragrafen met rubriek 1 - Rubriek 6 stijlen
- Citaten zijn paragrafen met "Citaat" in de stijlnaam
- Horizontal Reglement is een paragraaf met een `HorizontalRule` vorm.

{{% alert color="primary" %}}

Er zijn nuances van vertalen Markdown aan de Aspose.Words Document Object Model (DOM), omschreven in het artikel [Vertalen Markdown tot Document Object Model (DOM)](/words/nl/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Document met Emphases

Deze sectie laat zien hoe u een markdown document met de onderstaande nadruk:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

De volgende code knipsel kan worden gebruikt om de hierboven gegeven markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Document met kop

Deze sectie laat zien hoe u een markdown document met onderstaande rubrieken:

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

De volgende code knipsel kan worden gebruikt om de bovenstaande gegeven markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Document met blokquotes

Deze sectie laat zien hoe u een markdown document met blokquotes zoals hieronder aangegeven:

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

De volgende code knipsel kan worden gebruikt om de bovenstaande gegeven markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Document met horizontale regel

Deze sectie laat zien hoe u een markdown document met horizontaal Regel als volgt:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

De volgende code knipsel kan worden gebruikt om de hierboven gegeven markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Lezen van een Markdown Document

De volgende code knipsel laat zien hoe u een markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Specificeer Markdown Opties opslaan

Aspose.Words API levert [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) klasse om extra opties op te geven tijdens het opslaan van een document in de Markdown formaat.

Het volgende voorbeeld van de code liet zien hoe verschillende Markdown opties opslaan.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Inhoud in de tabel uitlijnen tijdens het exporteren naar Markdown

Aspose.Words API levert [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) Lijst waarin de uitlijningsrichtingen worden gedefinieerd om de inhoud in tabellen op elkaar af te stemmen tijdens de export naar de Markdown document. Het volgende voorbeeld van code laat zien hoe inhoud in de tabel moet worden uitgelijnd.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
