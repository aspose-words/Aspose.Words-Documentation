---
title: Présentation du générateur de documents dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Présentation du générateur de documents
linktitle: Présentation du générateur de documents
type: docs
description: "DocumentBuilder vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à ceux existants à l'aide de Python. DocumentBuilder fournit des méthodes pour insérer du texte, des cases à cocher, des tableaux, des images et d'autres éléments de contenu dans Python."
weight: 30
url: /fr/python-net/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) est une classe puissante qui s'associe à [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) et vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à un document existant.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) fournit des méthodes pour insérer du texte, des cases à cocher, des objets ole, des paragraphes, des listes, des tableaux, des images et d'autres éléments de contenu. Il vous permet de spécifier les polices, le formatage des paragraphes ou des sections et d'effectuer d'autres opérations.

## Générateur de documents ou Aspose.Words DOM

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) complète les classes et méthodes disponibles dans Aspose.Words Document Object Model (DOM) pour simplifier les tâches de création de documents les plus courantes. Autrement dit, vous pouvez créer et modifier le contenu des documents à la fois via Aspose.Words DOM, ce qui nécessite une bonne compréhension de la structure arborescente, et en utilisant DocumentBuilder. Le `DocumentBuilder` est une "façade" pour la structure complexe **Document** qui vous permet d'insérer rapidement et facilement du contenu et du formatage.

Les opérations possibles avec [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sont également possibles en utilisant directement les classes du Aspose.Words DOM. Cependant, l’utilisation directe des classes DOM Aspose.Words nécessite généralement plus de lignes de code que l’utilisation de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

## Navigation dans les documents

La navigation dans le document est basée sur le concept d'un curseur virtuel, avec lequel vous pouvez vous déplacer vers un autre emplacement du document à l'aide de diverses méthodes **DocumentBuilder.move_to_XXX** telles que [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) et [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). Ce curseur virtuel indique où le texte sera inséré lors de l'appel des méthodes [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/), [writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/), [insert_break](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_break/) et autres. Consultez l'article suivant "Navigation avec le curseur" pour en savoir plus sur le curseur virtuel.

L'exemple de code suivant montre comment accéder à un signet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmarkEnd.py" >}}

## Création et modification de documents

Aspose.Words API fournit plusieurs classes responsables du formatage de divers éléments d'un document. Chacune des classes encapsule les propriétés de mise en forme liées à un élément de document spécifique, tel que le texte, le paragraphe, la section et autres. Par exemple, la classe [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) représente les propriétés de formatage des caractères, la classe [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) représente les propriétés de formatage des paragraphes, etc. Les objets de ces classes sont renvoyés par les propriétés [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) correspondantes, qui portent les mêmes noms que les classes. Par conséquent, vous pouvez y accéder et définir le formatage souhaité lors de la création du document.

Vous pouvez également insérer du texte, une case à cocher, un objet OLE, des images, des signets, des champs de formulaire et d'autres éléments de document à la position du curseur à l'aide de la méthode `Write` ou de l'une des méthodes **DocumentBuilder.insert_XXX**, telles que [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), [insert_html](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/) et des méthodes similaires.

Voyons comment créer un document simple à l'aide du [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

### Créer un document à l'aide de DocumentBuilder

Pour commencer, vous devez créer un [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) et l'associer à un objet [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Vous créez une nouvelle instance de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) en appelant son constructeur et en la transmettant à un objet [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) pour l'attacher au constructeur.

Pour insérer un texte, transmettez la chaîne de texte que vous devez insérer dans le document à la méthode [write](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/write/).

L'exemple de code suivant montre comment créer un document simple à l'aide d'un générateur de documents.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Spécifier le formatage du document

La propriété [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) définit le formatage du texte. Cet objet contient différents attributs de police (nom de police, taille de police, couleur, etc.). Certains attributs de police importants sont également représentés par les propriétés [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) pour vous permettre d'y accéder directement. Il s'agit des propriétés booléennes [Font.bold](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/bold/), [Font.italic](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/italic/) et [Font.underline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/underline/).

L'exemple de code suivant montre comment insérer un texte formaté à l'aide de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

{{% alert color="primary" %}}

- [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) spécifie le formatage des caractères qui sera appliqué à tout le texte inséré à partir de la position actuelle dans le document.
- [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) spécifie le formatage du paragraphe actuel et de tous les paragraphes à insérer.
- [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) spécifie les propriétés de page et de section pour la section actuelle et la section entière qui sera insérée.
- [cell_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) et [row_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) spécifient les propriétés de formatage qui seront appliquées aux cellules et aux lignes du tableau à partir de la position actuelle dans le document.

Dans cette situation, "actuel" désigne la position, le paragraphe, la section, la cellule ou la ligne dans laquelle se trouve le curseur.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que les propriétés [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/), [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/) et [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) sont mises à jour chaque fois que vous accédez à un emplacement différent dans le document pour refléter les propriétés de formatage de cet emplacement.

{{% /alert %}}
