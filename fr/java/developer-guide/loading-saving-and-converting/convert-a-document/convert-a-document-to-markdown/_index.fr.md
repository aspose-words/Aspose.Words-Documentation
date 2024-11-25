---
title: Convertir un document en Markdown dans Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en Markdown
linktitle: Convertir un document en Markdown
type: docs
description: "Convertissez un document dans n'importe quel format de chargement pris en charge en Markdown et vice versa à l'aide de Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /fr/java/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown est un format populaire utilisé pour baliser le texte et il est en train de se convertir en HTML, PDF, DOCX, ou d'autres formats. De nombreux développeurs choisissent ce format pour rédiger de la documentation, préparer des articles pour publication sur des blogs, décrire des projets, etc.

Markdown est si populaire car il est facile de travailler avec ce format, et il peut être tout simplement converti en d'autres formats. Pour cette raison, Aspose.Words offre la possibilité de convertir un document de [tout format de chargement pris en charge](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) en Markdown et vice versa - Aspose.Words prend également en charge le plus populaire [enregistrer les formats](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Maintenant, la fonctionnalité permettant de travailler avec le format Markdown est activement développée pour vous offrir plus d'opportunités pour un travail pratique et confortable avec des documents.

## Convertir un document en Markdown

Pour convertir un document en Markdown, il vous suffit de charger un document dans n'importe quel format pris en charge ou d'en créer un nouveau par programme. Ensuite, vous devez enregistrer le document au format Markdown.

L'exemple de code suivant montre comment convertir DOCX en Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Spécifiez les options d'enregistrement lors de la conversion en Markdown

Aspose.Words offre la possibilité d'utiliser la classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) pour travailler avec des options avancées lors de l'enregistrement d'un document au format Markdown. En plus d'autres propriétés d'héritage ou de surcharge, un certain nombre de propriétés spécifiques au format Markdown ont également été ajoutées. Par exemple, la propriété [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) pour contrôler l'alignement du contenu dans les tableaux, ou [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) et [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) pour contrôler la façon dont les images sont enregistrées lors de la conversion d'un document au format Markdown.

## Fonctionnalités Markdown prises en charge

Aspose.Words prend actuellement en charge les fonctionnalités Markdown suivantes, qui suivent principalement la spécification `CommonMark` dans le Aspose.Words API et sont représentées comme des styles appropriés ou une mise en forme directe:

* Les titres sont des paragraphes avec des styles Heading 1 - Heading 6
* Les guillemets sont des paragraphes avec "Citation" dans le nom du style
* IndentedCode sont des paragraphes avec "IndentedCode " dans le nom du style
* FencedCode sont des paragraphes avec "FencedCode " dans le nom du style
* InlineCode sont exécutés avec "InlineCode " dans le nom de style `Font`
* Les règles horizontales sont des paragraphes avec la forme `HorizontalRule`
* Accent audacieux
* Accent italique
* StrikeThrough mise en forme
* Les listes sont des paragraphes numérotés ou à puces
* Les tables sont représentées avec la classe `Table`
* Les liens sont représentés par la classe `FieldHyperlink`

L'exemple suivant montre comment créer un document avec certains styles et l'enregistrer dans Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Le résultat de cet exemple de code est illustré ci-dessous.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Conseils Utiles

Il existe plusieurs nuances et cas intéressants, après avoir appris que vous pouvez travailler avec des fichiers Markdown de manière plus flexible et pratique. Par exemple, il y a la possibilité d'utiliser:

* SetextHeading qui vous permet de créer des en-têtes multilignes dans Markdown, tandis que les en-têtes normaux dans Markdown ne peuvent être que sur une seule ligne. SetextHeading est basé sur un style "Titre N", et son niveau ne peut être que 1 ou 2. Si N dans "Rubrique N" est supérieur ou égal à 2, alors le SetextHeading correspondant est basé sur " Heading 2", sinon sur "Heading 1".
* Différents marqueurs pour le premier niveau de listes à puces ("-", "+" ou "*", le marqueur par défaut est "-".) et différents types de numérotation pour les listes ordonnées ("." ou ")", le marqueur par défaut est ".").
