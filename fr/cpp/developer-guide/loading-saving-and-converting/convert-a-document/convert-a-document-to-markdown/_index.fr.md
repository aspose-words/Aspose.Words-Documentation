---
title: Convertir un document en Markdown en C++
second_title: Aspose.Words pour C++
articleTitle: Convertir un document en Markdown
linktitle: Convertir un document en Markdown
type: docs
description: "Convertissez un document dans n'importe quel format de chargement pris en charge en Markdown et vice versa à l'aide de C++."
keywords: how to convert a document to markdown c++, Convert doc to MD C++, convert DOCX to Markdown C++
weight: 40
url: /fr/cpp/convert-a-document-to-markdown/
---

Markdown est un format populaire utilisé pour baliser le texte et sa conversion ultérieure en HTML, PDF, DOCX ou d'autres formats. De nombreux développeurs choisissent ce format pour rédiger de la documentation, préparer des articles pour publication sur des blogs, décrire des projets, etc.

Markdown est si populaire car il est facile de travailler avec ce format, et il peut être tout simplement converti en d'autres formats. Pour cette raison, Aspose.Words offre la possibilité de convertir un document de [any supported load format](https://reference.aspose.com/words/cpp/aspose.words/) en Markdown et vice versa - Aspose.Words prend également en charge le plus populaire [save formats](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

Maintenant, la fonctionnalité permettant de travailler avec le format Markdown est activement développée pour vous offrir plus d'opportunités pour un travail pratique et confortable avec des documents.

## Convertir un Document

Pour convertir un document en Markdown, il vous suffit de charger un document dans n'importe quel format pris en charge ou d'en créer un nouveau par programme. Ensuite, vous devez enregistrer le document au format Markdown.

L'exemple de code suivant montre comment convertir DOCX en Markdown:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SaveAsMD.cpp" >}}

Vous pouvez également spécifier le dossier physique dans lequel vous souhaitez enregistrer les images lors de l'exportation d'un document au format Markdown. Par défaut, Aspose.Words enregistre les images dans le même dossier où le fichier de document est enregistré, mais vous pouvez remplacer ce comportement à l'aide de la propriété [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/).

La spécification d'un dossier via **ImagesFolder** est également utile si vous enregistrez un document dans un flux et que Aspose.Words n'a pas de dossier pour enregistrer les images.

Si le **ImagesFolder** spécifié n'existe pas, il sera créé automatiquement.

L'exemple de code suivant montre comment spécifier un dossier pour les images lors de l'enregistrement d'un document dans un flux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SetImagesFolder.cpp" >}}

## Spécifiez les options d'enregistrement lors de la conversion en Markdown

Aspose.Words offre la possibilité d'utiliser la classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) pour travailler avec des options avancées lors de l'enregistrement d'un document au format Markdown. La plupart des propriétés héritent ou surchargent des propriétés qui existent déjà dans d'autres classes d'espace de noms [Aspose.Words.Saving](https://reference.aspose.com/words/cpp/aspose.words.saving/). En plus d'eux, un certain nombre de propriétés spécifiques au format Markdown ont également été ajoutées. Par exemple, la propriété [TableContentAlignment](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_tablecontentalignment/) pour contrôler l'alignement du contenu dans les tableaux, ou [ImageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/iimagesavingcallback/) et [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolder/) pour contrôler la façon dont les images sont enregistrées lors de la conversion d'un document au format Markdown.

## Fonctionnalités Markdown prises en charge

Aspose.Words prend actuellement en charge les fonctionnalités Markdown suivantes, qui suivent principalement la spécification `CommonMark` de l'API Aspose.Words et sont représentées sous forme de styles appropriés ou de formatage direct:

* Les titres sont des paragraphes avec des styles Titre 1 – Titre 6
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

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.cpp" >}}

Le résultat de cet exemple de code est illustré ci-dessous.

![markdown-example-aspose-words-cpp](markdown-example.png)

## Conseils Utiles

Il existe plusieurs nuances et cas intéressants, après avoir appris que vous pouvez travailler avec des fichiers Markdown de manière plus flexible et pratique. Par exemple, il y a la possibilité d'utiliser:

* SetextHeading qui vous permet de créer des en-têtes multilignes dans Markdown, tandis que les en-têtes normaux dans Markdown ne peuvent être que sur une seule ligne. SetextHeading est basé sur un style "Rubrique N", et son niveau ne peut être que 1 ou 2. Si N dans "Rubrique N" est supérieur ou égal à 2, alors le SetextHeading correspondant est basé sur "Rubrique 2", sinon sur "Rubrique 1".
* Différents marqueurs pour le premier niveau de listes à puces ("-", "+" ou "*", le marqueur par défaut est "-".) et différents types de numérotation pour les listes ordonnées ("." ou ")", le marqueur par défaut est ".").
