---
title: Werken met Markdown functies in C++
second_title: Aspose.Words voor C++
articleTitle: Werken met Markdown functies
linktitle: Werken met Markdown functies
description: "Hoe Markdown functies te implementeren met C++. Alle functies worden weergegeven als overeenkomstige stijlen of directe opmaak."
type: docs
weight: 420
url: /nl/cpp/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

In dit onderwerp wordt besproken hoe Markdown functies kunnen worden geïmplementeerd met behulp van Aspose.Words. Markdown is een eenvoudige manier om platte tekst op te maken die gemakkelijk kan worden geconverteerd naar HTML. Aspose.Words ondersteunt de volgende Markdown functies:

- Rubriek
- Blockquotes
- Horizontale regels
- Gedurfde nadruk
- Cursieve nadruk

De Markdown feature implementatie volgt meestal de `CommonMark` specificatie in Aspose.Words API en alle functies worden weergegeven als overeenkomstige stijlen of directe opmaak. Wat betekent dat

- Vet en cursief worden weergegeven als `Font.Bold` en `Font.Italic`.
- Koppen zijn alinea ' s met Heading 1 - Heading 6 stijlen.
- Aanhalingstekens zijn paragrafen met "Quote" in de stijlnaam.
- HorizontalRule is een alinea met HorizontalRule vorm.

{{% alert color="primary" %}}

Er zijn nuances van het vertalen van Markdown naar het Aspose.Words Document Object Model (DOM), beschreven in het artikel [Markdown vertalen naar Document Object Model (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Document met accenten

In dit gedeelte wordt uitgelegd hoe u een markdown - document kunt maken met de nadruk die hieronder wordt gegeven:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

Het volgende codefragment kan worden gebruikt om het hierboven gegeven markdown document te produceren.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Document met Koppen

In deze sectie wordt uitgelegd hoe u een markdown - document kunt maken met koppen zoals hieronder weergegeven:

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

Het volgende codefragment kan worden gebruikt om het hierboven gegeven markdown document te produceren.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Document met blok aanhalingstekens

In dit gedeelte wordt uitgelegd hoe u een markdown - document met blokaanhalingstekens kunt produceren zoals hieronder weergegeven:

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

Het volgende codefragment kan worden gebruikt om het hierboven gegeven markdown document te produceren.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Document met horizontale regel

In dit gedeelte wordt uitgelegd hoe u een markdown document met horizontale regel kunt produceren zoals hieronder aangegeven:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

Het volgende codefragment kan worden gebruikt om het hierboven gegeven markdown document te produceren.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Een Markdown Document lezen

Het volgende codefragment laat zien hoe u een markdown document leest.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Markdown Opslagopties Opgeven

Aspose.Words API biedt [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) klasse om extra opties op te geven tijdens het opslaan van een document in de Markdown - indeling.

Het volgende codevoorbeeld toonde aan hoe verschillende Markdown opslagopties kunnen worden opgegeven.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Inhoud in de tabel uitlijnen tijdens het exporteren naar Markdown

Aspose.Words API biedt TableContentAlignment opsomming die uitlijningsrichtingen definieert om inhoud in tabellen uit te lijnen tijdens het exporteren naar het Markdown document. Het volgende codevoorbeeld laat zien hoe u inhoud binnen de tabel uitlijnt.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
