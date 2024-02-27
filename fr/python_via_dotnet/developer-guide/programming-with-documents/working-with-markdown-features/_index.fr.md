---
title: Travailler avec les fonctionnalités Markdown
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec les fonctionnalités Markdown
linktitle: Travailler avec les fonctionnalités Markdown
description: "Comment implémenter les fonctionnalités Markdown à l'aide de Python. Toutes les fonctionnalités sont représentées sous forme de styles correspondants ou de formatage direct."
type: docs
weight: 420
url: /fr/python-net/working-with-markdown-features/
---

Cette rubrique explique comment implémenter les fonctionnalités Markdown à l'aide de Aspose.Words. Markdown est un moyen simple de formater du texte brut qui peut facilement être converti en HTML. Aspose.Words prend en charge les fonctionnalités Markdown suivantes:

- Rubriques
- Citations
- Règles horizontales
- Accentuation en gras
- Accentuation italique

L'implémentation des fonctionnalités Markdown suit principalement la spécification `CommonMark` dans Aspose.Words API et toutes les fonctionnalités sont représentées sous forme de styles correspondants ou de formatage direct. Ce qui signifie que

- Le gras et l'italique sont représentés par [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/font/bold/) et [Font.Italic](https://reference.aspose.com/words/python-net/aspose.words/font/italic/)
- Les titres sont des paragraphes avec les styles Titre 1 - Titre 6
- Les citations sont des paragraphes avec "Citation" dans le nom du style
- HorizontalRule est un paragraphe avec la forme HorizontalRule.

{{% alert color="primary" %}}

Il existe des nuances dans la traduction de Markdown en Aspose.Words Document Object Model (DOM), décrites dans l'article [Traduire Markdown en Document Object Model (DOM)](/words/fr/python-net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Document Markdown avec accents

Cette section vous montre comment produire un document markdown en mettant l'accent sur les éléments ci-dessous:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Emphases.py" >}}

## Document Markdown avec en-têtes

Cette section vous montre comment produire un document markdown avec les en-têtes comme indiqué ci-dessous:

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

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-Headings.py" >}}

## Document Markdown avec guillemets en bloc

Cette section vous montre comment produire un document markdown avec des guillemets comme indiqué ci-dessous:

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

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-BlockQuotes.py" >}}

## Document Markdown avec règle horizontale

Cette section vous montre comment produire un document markdown avec la règle horizontale comme indiqué ci-dessous:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-HorizontalRule.py" >}}

## Lire un document Markdown

L'extrait de code suivant vous montre comment lire un document markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-ReadMarkdownDocument.py" >}}

## Spécifier les options d'enregistrement Markdown

Aspose.Words API fournit une classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format Markdown.

L'exemple de code suivant montre comment spécifier diverses options d'enregistrement Markdown.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

## Comment aligner le contenu à l'intérieur du tableau lors de l'exportation vers Markdown

Aspose.Words API fournit une énumération [TableContentAlignment](https://reference.aspose.com/words/python-net/aspose.words.saving/tablecontentalignment/) qui définit les directions d'alignement pour aligner le contenu des tableaux lors de l'exportation dans le document Markdown. L'exemple de code suivant montre comment aligner le contenu à l'intérieur du tableau.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-ExportIntoMarkdownWithTableContentAlignment.py" >}}
