---
title: Travailler avec Markdown fonctionnalités en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec Markdown Fonctionnalités
linktitle: Travailler avec Markdown Fonctionnalités
description: "Comment implémenter les fonctionnalités Markdown en utilisant C++. Toutes les fonctionnalités sont représentées sous forme de styles correspondants ou de formatage direct."
type: docs
weight: 420
url: /fr/cpp/working-with-markdown-features/
---

Cette rubrique explique comment implémenter Markdown fonctionnalités à l'aide de Aspose.Words. Markdown est un moyen simple de formater du texte brut qui peut facilement être converti en HTML. Aspose.Words prend en charge les fonctionnalités Markdown suivantes:

- Rubriques
- Citations de Bloc
- Règles horizontales
- Accent audacieux
- Accent italique

L'implémentation de la fonctionnalité Markdown suit principalement la spécification `CommonMark` de l'API Aspose.Words et toutes les fonctionnalités sont représentées sous forme de styles correspondants ou de formatage direct. Ce qui signifie que

- Les caractères gras et italiques sont représentés par `Font.Bold` et `Font.Italic`.
- Les titres sont des paragraphes avec des styles Titre 1 - Titre 6.
- Les guillemets sont des paragraphes avec "Citation" dans le nom du style.
- HorizontalRule est un paragraphe de forme HorizontalRule.

{{% alert color="primary" %}}

Il existe des nuances de traduction de Markdown vers le Aspose.Words Document Object Model (DOM), décrites dans l'article [Traduire Markdown en Modèle d'objet de document (DOM)](/words/cpp/translate-markdown-to-document-object-model/).

{{% /alert %}}

## Markdown Document avec Emphases

Cette section vous montre comment produire un document markdown avec des accents comme indiqué ci-dessous:

{{< highlight csharp >}}
Markdown treats asterisks (*) and underscores (_) as indicators of emphasis.
You can write **bold** or *italic* text. 
You can also write ***BoldItalic***text.
{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithEmphases.cpp" >}}


## Markdown Document avec En-têtes

Cette section vous montre comment produire un document markdown avec des en-têtes comme indiqué ci-dessous:

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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHeadings.cpp" >}}

## Markdown Document avec des guillemets bloc

Cette section vous montre comment produire un document markdown avec des guillemets bloc comme indiqué ci-dessous:

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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithBlockQuotes.cpp" >}}

## Markdown Document avec Règle horizontale

Cette section vous montre comment produire un document markdown avec une règle horizontale comme indiqué ci-dessous:

{{< highlight csharp >}}
We support Horizontal rules (Thematic breaks) in Markdown:
-----

{{< /highlight >}}

L'extrait de code suivant peut être utilisé pour produire le document markdown donné ci-dessus.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-MarkdownDocumentWithHorizontalRule.cpp" >}}

## Lecture d'un document Markdown

L'extrait de code suivant vous montre comment lire un document markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithMarkdownFeatures-ReadMarkdownDocument.cpp" >}}

## Spécifiez Markdown Options de sauvegarde

L'API Aspose.Words fournit la classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) pour spécifier des options supplémentaires lors de l'enregistrement d'un document au format Markdown.

L'exemple de code suivant montre comment spécifier diverses options d'enregistrement Markdown.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-SaveAsMD.cpp" >}}

## Comment aligner le contenu à l'intérieur du Tableau lors de l'exportation vers Markdown

L'API Aspose.Words fournit une énumération TableContentAlignment qui définit les directions d'alignement pour aligner le contenu des tableaux lors de l'exportation dans le document Markdown. L'exemple de code suivant montre comment aligner le contenu à l'intérieur de la table.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifyMarkdownSaveOptions-ExportIntoMarkdownWithTableContentAlignment.cpp" >}}
