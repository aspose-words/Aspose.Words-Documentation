---
title: Convertir un document en Markdown
second_title: Aspose.Words pour Python via .NET
articleTitle: Convertir un document en Markdown
linktitle: Convertir un document en Markdown
type: docs
description: "Convertissez un document dans n'importe quel format de chargement pris en charge en Markdown et vice versa à l'aide de Python."
keywords: how to convert a document to markdown python
weight: 40
url: /fr/python-net/convert-a-document-to-markdown/
timestamp: 2024-01-27-14-07-04
---

Markdown est un format populaire utilisé pour baliser du texte et pour sa conversion ultérieure en HTML, PDF, DOCX ou d'autres formats. De nombreux développeurs choisissent ce format pour rédiger de la documentation, préparer des articles à publier sur des blogs, décrire des projets, etc.

Markdown est si populaire parce qu'il est facile de travailler avec ce format et qu'il peut être tout simplement converti vers d'autres formats. Pour cette raison, Aspose.Words offre la possibilité de convertir un document [tout format de chargement pris en charge](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) en Markdown et vice versa – Aspose.Words prend également en charge le [enregistrer les formats](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) le plus populaire.

Désormais, la fonctionnalité permettant de travailler avec le format Markdown est activement développée pour vous offrir davantage de possibilités de travail pratique et confortable avec des documents.

## Convertir un document

Pour convertir un document en Markdown, il vous suffit de charger un document dans n'importe quel format pris en charge ou d'en créer un nouveau par programme. Ensuite, vous devez enregistrer le document au format Markdown.

L'exemple de code suivant montre comment convertir DOCX en Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-SaveToMarkdownDocument.py" >}}

Vous pouvez également spécifier le dossier physique dans lequel vous souhaitez enregistrer les images lors de l'exportation d'un document au format Markdown. Par défaut, Aspose.Words enregistre les images dans le même dossier que celui où le fichier de document est enregistré, mais vous pouvez remplacer ce comportement à l'aide de la propriété [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/).

Spécifier un dossier via [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) est également utile si vous enregistrez un document dans un flux et que Aspose.Words ne dispose pas de dossier pour enregistrer les images.

Si le [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) spécifié n'existe pas, il sera créé automatiquement.

L'exemple de code suivant montre comment spécifier un dossier pour les images lors de l'enregistrement d'un document dans un flux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_markdown_save_options-SetImagesFolder.py" >}}

## Spécifier les options d'enregistrement lors de la conversion en Markdown

Aspose.Words offre la possibilité d'utiliser la classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) pour travailler avec des options avancées lors de l'enregistrement d'un document au format Markdown. La plupart des propriétés héritent ou surchargent des propriétés qui existent déjà dans d'autres classes [aspose.words.saving](https://reference.aspose.com/words/python-net/aspose.words.saving/). En plus d'eux, un certain nombre de propriétés spécifiques au format Markdown ont également été ajoutées. Par exemple, la propriété [table_content_alignment](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/table_content_alignment/) pour contrôler l'alignement du contenu dans les tableaux, ou [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder/) pour contrôler où les images sont enregistrées lors de la conversion d'un document au format Markdown.

## Fonctionnalités Markdown prises en charge

Aspose.Words prend actuellement en charge les fonctionnalités Markdown suivantes, qui suivent pour la plupart la spécification `CommonMark` dans Aspose.Words API et sont représentées sous forme de styles appropriés ou de formatage direct:

* Les titres sont des paragraphes avec les styles Titre 1 – Titre 6
* Les blockquotes sont des paragraphes avec "Citation" dans le nom du style
* IndentedCode sont des paragraphes avec "IndentedCode" dans le nom du style
* FencedCode sont des paragraphes avec "FencedCode" dans le nom du style
* InlineCode est exécuté avec "InlineCode" dans le nom du style `Font`
* Les règles horizontales sont des paragraphes de forme `HorizontalRule`
* Soulignement gras
* Soulignement italique
* Formatage StrikeThrough
* Les listes sont des paragraphes numérotés ou à puces
* Les tableaux sont représentés avec la classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
* Les liens sont représentés comme la classe [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/)

L'exemple suivant montre comment créer un document avec certains styles et l'enregistrer au format Markdown:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_markdown-CreateMarkdownDocument.py" >}}

Le résultat de cet exemple de code est présenté ci-dessous.

![markdown-example-aspose-words-net](/words/python-net/convert-a-document-to-markdown/markdown-example.png)

## Conseils utiles

Il existe plusieurs nuances et cas intéressants, après avoir appris que vous pouvez travailler avec des fichiers Markdown de manière plus flexible et plus pratique. Par exemple, il est possible d'utiliser:

* SetextHeading qui vous permet de créer des titres sur plusieurs lignes dans Markdown, tandis que les titres normaux dans Markdown ne peuvent être que sur une seule ligne. SetextHeading est basé sur un style "Titre N", et son niveau ne peut être que 1 ou 2. Si N dans "Titre N" est supérieur ou égal à 2, alors le SetextHeading correspondant est basé sur "Titre 2", sinon sur "Titre 1".
* Différents marqueurs pour le premier niveau des listes à puces ("-", "+" ou "*", le marqueur par défaut est "-".) et différents types de numérotation pour les listes ordonnées ("." ou ")", le le marqueur par défaut est ".").
