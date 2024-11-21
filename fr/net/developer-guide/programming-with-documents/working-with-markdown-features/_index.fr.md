---
title: Travailler avec les fonctionnalités Markdown dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec les fonctionnalités Markdown
linktitle: Travailler avec les fonctionnalités Markdown
description: "Comment implémenter les fonctionnalités Markdown à l'aide de C#. Toutes les fonctionnalités sont représentées sous forme de styles correspondants ou de formatage direct."
type: docs
weight: 420
url: /fr/net/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Cette rubrique explique comment implémenter les fonctionnalités Markdown à l'aide de Aspose.Words. Markdown est un moyen simple de formater du texte brut qui peut facilement être converti en HTML. Aspose.Words prend en charge les fonctionnalités Markdown suivantes:

- Rubriques
- Citations
- Règles horizontales
- Accentuation en gras
- Accentuation italique

L'implémentation des fonctionnalités Markdown suit principalement la spécification `CommonMark` dans Aspose.Words API et toutes les fonctionnalités sont représentées sous forme de styles correspondants ou de formatage direct. Ce qui signifie que

- Le gras et l'italique sont représentés par `Font.Bold` et `Font.Italic`
- Les titres sont des paragraphes avec les styles Titre 1 - Titre 6
- Les citations sont des paragraphes avec "Citation" dans le nom du style
- HorizontalRule est un paragraphe avec la forme HorizontalRule.

{{% alert color="primary" %}}

Il existe des nuances dans la traduction de Markdown en Aspose.Words Document Object Model (DOM), décrites dans l'article [Traduire Markdown en Document Object Model (DOM)](/words/fr/net/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Document Markdown avec accents

Cette section vous montre comment produire un document markdown en mettant l'accent sur les éléments ci-dessous:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic*** text.
{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cs" >}}

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

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cs" >}}

## Document Markdown avec règle horizontale

Cette section vous montre comment produire un document markdown avec la règle horizontale comme indiqué ci-dessous:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

## Lire un document Markdown

L'extrait de code suivant vous montre comment lire un document markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cs" >}}

## Spécifier les options d'enregistrement Markdown

Aspose.Words API fournit une classe [MarkdownSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/) pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format Markdown.

L'exemple de code suivant montre comment spécifier diverses options d'enregistrement Markdown.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cs" >}}

## Comment aligner le contenu à l'intérieur du tableau lors de l'exportation vers Markdown

Aspose.Words API fournit une énumération [TableContentAlignment](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/tablecontentalignment/) qui définit les directions d'alignement pour aligner le contenu des tableaux lors de l'exportation dans le document Markdown. L'exemple de code suivant montre comment aligner le contenu à l'intérieur du tableau.

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cs" >}}
