---
title: Travailler avec Markdown Caractéristiques Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec Markdown Caractéristiques
linktitle: Travailler avec Markdown Caractéristiques
description: "Comment mettre en œuvre Markdown fonctionnalités utilisant Java. Toutes les fonctionnalités sont représentées comme styles correspondants ou formatage direct."
type: docs
weight: 420
url: /fr/java/working-with-markdown-features/
timestamp: 2024-01-31-14-23-37
---

Ce thème examine comment mettre en œuvre Markdown fonctionnalités utilisant Aspose.Words. Markdown est un moyen simple de formater du texte simple qui peut facilement être converti en HTML. Aspose.Words soutient ce qui suit Markdown caractéristiques:

- Rubriques
- Blockquotes
- Règles horizontales
- L'accent est mis
- L'accent italique

Les Markdown la mise en œuvre des caractéristiques suit principalement `CommonMark` spécification en Aspose.Words API et toutes les fonctionnalités sont représentées comme styles correspondants ou formatage direct. Ce qui veut dire que

- Bold et Italic sont représentés comme `Font.Bold` et `Font.Italic`
- Les titres sont des paragraphes avec le titre 1 - Les titres 6 styles
- Les citations sont des paragraphes avec "Quote" dans le nom de style
- La règle horizontale est un paragraphe avec un `HorizontalRule` forme.

{{% alert color="primary" %}}

Il y a des nuances de traduction Markdown aux Aspose.Words Document Object Model (DOM), décrit dans l'article [Traduire Markdown à Document Object Model (DOM)](/words/fr/java/translate-markdown-to-document-object-model/).

{{% /alert %}}


## Markdown Document avec emphases

Cette section vous montre comment produire markdown document avec emphases comme indiqué ci-dessous:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.java" >}}


## Markdown Document avec rubriques

Cette section vous montre comment produire markdown document avec les rubriques suivantes:

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

L'extrait de code suivant peut être utilisé pour produire ce qui précède markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.java" >}}

## Markdown Document avec citations de blocs

Cette section vous montre comment produire markdown document avec guillemets comme indiqué ci-dessous:

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

L'extrait de code suivant peut être utilisé pour produire ce qui précède markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.java" >}}

## Markdown Document avec règle horizontale

Cette section vous montre comment produire markdown document avec Règle ci-après:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.java" >}}

## Lecture d'une Markdown Numéro

L'extrait de code suivant vous montre comment lire un markdown document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ReadMarkdownDocument.java" >}}

## Préciser Markdown Enregistrer les options

Aspose.Words API fournit [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classe pour spécifier des options supplémentaires tout en enregistrant un document dans le Markdown modèle.

L'exemple de code suivant a montré comment spécifier Markdown Enregistrer les options.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-SaveAsMD.java" >}}

## Comment aligner le contenu à l'intérieur de la table pendant l'exportation vers Markdown

Aspose.Words API fournit [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) énumération qui définit les directions d'alignement pour aligner le contenu dans les tableaux tout en exportant dans le Markdown document. L'exemple de code suivant montre comment aligner le contenu à l'intérieur du tableau.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-MarkdownFeatures-WorkingWithMarkdownFeatures-ExportIntoMarkdownWithTableContentAlignment.java" >}}
