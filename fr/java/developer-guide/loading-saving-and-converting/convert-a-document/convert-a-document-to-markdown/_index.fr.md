---
title: Convertir un document en Markdown en Java
second_title: Aspose.Words pour Java
articleTitle: Convertir un document en Markdown
linktitle: Convertir un document en Markdown
type: docs
description: "Convertir un document dans n'importe quel format de charge pris en charge en Markdown et vice versa en utilisant Java."
keywords: how to convert a document to markdown Java, save as MD, DOCX to MD
weight: 33
url: /fr/java/convert-a-document-to-markdown/
---

Markdown est un format populaire utilisé pour baliser le texte et il se convertit en HTML, PDF, DOCX, ou d'autres formats. De nombreux développeurs choisissent ce format pour écrire de la documentation, préparer des articles pour publication sur des blogs, décrire des projets, etc.

Markdown est si populaire car il est facile de travailler avec ce format, ainsi qu'il peut être tout simplement converti à d'autres formats. Pour cette raison, Aspose.Words offre la possibilité de convertir un document en [tout format de charge pris en charge](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) à Markdown et vice versa – Aspose.Words prend également en charge les plus populaires [Enregistrer les formats](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

Maintenant la fonctionnalité pour travailler avec le Markdown Le format est activement développé pour vous offrir plus de possibilités de travail pratique et confortable avec des documents.

## Convertir un document en Markdown

Pour convertir un document en <span notrans="<span notrans=" Markdown"=""></span>""> vous avez juste besoin de charger un document dans n'importe quel format pris en charge ou de créer un nouveau programme. Ensuite, vous devez enregistrer le document à Markdown modèle.

L'exemple de code suivant montre comment convertir DOCX en Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SaveAsMD.java" >}}


## Spécifier les options de sauvegarde lors de la conversion en Markdown

Aspose.Words offre la possibilité d'utiliser [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) classez pour travailler avec des options avancées lors de l'enregistrement d'un document à Markdown modèle. En plus d'autres propriétés qui héritent ou surchargent, un certain nombre de propriétés spécifiques pour Markdown Le format a également été ajouté. Par exemple, [TableContentAlignment](https://reference.aspose.com/words/java/com.aspose.words/tablecontentalignment/) propriété pour contrôler l'alignement du contenu dans les tableaux, ou [ImageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImageSavingCallback) et [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolder) pour contrôler comment les images sont sauvegardées lors de la conversion d'un document en Markdown modèle.

## Appui Markdown Caractéristiques

Aspose.Words soutient actuellement ce qui suit: Markdown caractéristiques, qui suivent principalement le `CommonMark` spécification dans le Aspose.Words API et sont représentés comme styles appropriés ou formatage direct:

* Les rubriques sont des paragraphes avec la rubrique 1 – Styles de la rubrique 6
* Blockquotes sont des paragraphes avec le nom de style
* Codedented sont des paragraphes avec "Codedented" dans le nom de style
* Classé Code sont des paragraphes avec "FencedCode" dans le nom de style
* InlineCode est lancé avec "InlineCode" dans le `Font` nom du style
* Les règles horizontales sont des paragraphes avec `HorizontalRule` forme
* L'accent est mis sur l'or
* Insistance en italique
* StrikeGrough formating
* Les listes sont numérotées ou pointillées
* Les tableaux sont représentés avec `Table` classe
* Les liens sont représentés par `FieldHyperlink` classe

L'exemple suivant montre comment créer un document avec certains styles et le sauvegarder à Markdown:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToMarkdown-SupportedMarkdownFeatures.java" >}}

Le résultat de cet exemple de code est montré ci-dessous.

![markdown-example-aspose-words-java](/words/java/convert-a-document-to-markdown/markdown-example.png)

## Conseils utiles

Il y a plusieurs nuances et cas intéressants, ayant appris avec qui vous pouvez travailler Markdown fichiers plus flexible et pratique. Par exemple, il y a la capacité d'utiliser:

* SetextHeating qui vous permet de créer des rubriques multi-lignes dans <span notrans="<span notrans=" Markdown"=""></span>""> tandis que les rubriques Markdown ne peut être qu'une seule ligne. SetextHeating est basé sur un style "Heading N", et son niveau ne peut être que 1 ou 2. Si N dans "Heading N" est supérieur ou égal à 2, alors le Setext Heading correspondant est basé sur "Heading 2", sinon sur "Heading 1".
* Différents marqueurs pour le premier niveau de listes par puce ("-", "+" ou "*", le marqueur par défaut est ".") et différents types de numérotation pour les listes ordonnées ("." ou ")", le marqueur par défaut est ".").
