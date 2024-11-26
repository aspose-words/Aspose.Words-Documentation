---
title: Présentation du générateur de documents dans C#
second_title: Aspose.Words pour .NET
articleTitle: Présentation du générateur de documents
linktitle: Présentation du générateur de documents
type: docs
description: "DocumentBuilder vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à ceux existants à l'aide de C#. DocumentBuilder fournit des méthodes pour insérer du texte, des cases à cocher, des tableaux, des images et d'autres éléments de contenu dans .NET."
weight: 30
url: /fr/net/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) est une classe puissante qui s'associe à [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/) et vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à un document existant.

**DocumentBuilder** fournit des méthodes pour insérer du texte, des cases à cocher, des objets ole, des paragraphes, des listes, des tableaux, des images et d'autres éléments de contenu. Il vous permet de spécifier les polices, le formatage des paragraphes ou des sections et d'effectuer d'autres opérations.

## Générateur de documents ou Aspose.Words DOM

**DocumentBuilder** complète les classes et méthodes disponibles dans Aspose.Words Document Object Model (DOM) pour simplifier les tâches de création de documents les plus courantes. Autrement dit, vous pouvez créer et modifier le contenu des documents à la fois via Aspose.Words DOM, ce qui nécessite une bonne compréhension de la structure arborescente, et en utilisant DocumentBuilder. Le `DocumentBuilder` est une "façade" pour la structure complexe **Document** qui vous permet d'insérer rapidement et facilement du contenu et du formatage.

Les opérations possibles avec **DocumentBuilder** sont également possibles en utilisant directement les classes du Aspose.Words DOM. Cependant, l’utilisation directe des classes DOM Aspose.Words nécessite généralement plus de lignes de code que l’utilisation de **DocumentBuilder**.

## Navigation dans les documents

La navigation dans le document est basée sur le concept d'un curseur virtuel, avec lequel vous pouvez vous déplacer vers un autre emplacement du document à l'aide de diverses méthodes **DocumentBuilder.MoveToXXX** telles que [MoveToDocumentStart](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/movetodocumentstart/) et [MoveToField](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/movetofield/). Ce curseur virtuel indique où le texte sera inséré lors de l'appel des méthodes [Write](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/write/ln/index), [InsertBreak](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertbreak/) et autres. Consultez l'article suivant "Navigation avec le curseur" pour en savoir plus sur le curseur virtuel.

L'exemple de code suivant montre comment accéder à un signet:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cs" >}}

## Création et modification de documents

Aspose.Words API fournit plusieurs classes responsables du formatage de divers éléments d'un document. Chacune des classes encapsule les propriétés de mise en forme liées à un élément de document spécifique, tel que le texte, le paragraphe, la section et autres. Par exemple, la classe [Font](https://reference.aspose.com/words/fr/net/aspose.words/font/) représente les propriétés de formatage des caractères, la classe [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/) représente les propriétés de formatage des paragraphes, etc. Les objets de ces classes sont renvoyés par les propriétés **DocumentBuilder** correspondantes, qui portent les mêmes noms que les classes. Par conséquent, vous pouvez y accéder et définir le formatage souhaité lors de la création du document.

Vous pouvez également insérer du texte, une case à cocher, un objet OLE, des images, des signets, des champs de formulaire et d'autres éléments de document à la position du curseur à l'aide de la méthode `Write` ou de l'une des méthodes **DocumentBuilder.InsertXXX**, telles que [InsertField](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertfield/#insertfield/), [InsertHtml](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/inserthtml/#inserthtml/) et des méthodes similaires.

Voyons comment créer un document simple à l'aide du **DocumentBuilder**.

### Créer un document à l'aide de DocumentBuilder

Pour commencer, vous devez créer un **DocumentBuilder** et l'associer à un objet **Document**. Vous créez une nouvelle instance de **DocumentBuilder** en appelant son constructeur et en la transmettant à un objet **Document** pour l'attacher au constructeur.

Pour insérer un texte, transmettez la chaîne de texte que vous devez insérer dans le document à la méthode **Write**.

L'exemple de code suivant montre comment créer un document simple à l'aide d'un générateur de documents.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Quick-Start-HelloWorld-HelloWorld.cs" >}}

### Spécifier le formatage du document

La propriété [Font](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/font/) définit le formatage du texte. Cet objet contient différents attributs de police (nom de police, taille de police, couleur, etc.). Certains attributs de police importants sont également représentés par les propriétés **DocumentBuilder** pour vous permettre d'y accéder directement. Il s'agit des propriétés booléennes [Font.Bold](https://reference.aspose.com/words/fr/net/aspose.words/font/bold/), [Font.Italic](https://reference.aspose.com/words/fr/net/aspose.words/font/italic/) et [Font.Underline](https://reference.aspose.com/words/fr/net/aspose.words/font/underline/).

L'exemple de code suivant montre comment insérer un texte formaté à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/font/) spécifie le formatage des caractères qui sera appliqué à tout le texte inséré à partir de la position actuelle dans le document.
- [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/) spécifie le formatage du paragraphe actuel et de tous les paragraphes à insérer.
- [PageSetup](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/) spécifie les propriétés de page et de section pour la section actuelle et la section entière qui sera insérée.
- [CellFormat](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/cellformat/) et [RowFormat](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/rowformat/) spécifient les propriétés de formatage qui seront appliquées aux cellules et aux lignes du tableau à partir de la position actuelle dans le document.

Dans cette situation, "actuel" désigne la position, le paragraphe, la section, la cellule ou la ligne dans laquelle se trouve le curseur.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que les propriétés **Font**, **ParagraphFormat** et **PageSetup** sont mises à jour chaque fois que vous accédez à un emplacement différent dans le document pour refléter les propriétés de formatage de cet emplacement.

{{% /alert %}}
