---
title: Présentation du générateur de documents en C++
second_title: Aspose.Words pour C++
articleTitle: Présentation du Générateur de Documents
linktitle: Présentation du Générateur de Documents
type: docs
description: "DocumentBuilder vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à ceux existants en utilisant C++. DocumentBuilder fournit des méthodes pour insérer du texte, des cases à cocher, des tableaux, des images et d'autres éléments de contenu en C++."
weight: 30
url: /fr/cpp/document-builder-overview/
---

[DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) est une classe puissante qui s'associe à [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) et vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à un document existant.

**DocumentBuilder**

## Générateur de documents ou Aspose.Words DOM

**DocumentBuilder**

Les opérations possibles avec **DocumentBuilder** sont également possibles lors de l'utilisation directe des classes du DOM Aspose.Words. Cependant, l'utilisation directe des classes DOM Aspose.Words nécessite généralement plus de lignes de code que l'utilisation de **DocumentBuilder**.

## Navigation dans les Documents

La navigation dans le document est basée sur le concept d'un curseur virtuel, avec lequel vous pouvez vous déplacer vers un autre emplacement du document en utilisant diverses méthodes **DocumentBuilder.MoveToXXX** telles que [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) et [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). Ce curseur virtuel indique où le texte sera inséré lors de l'appel des méthodes [Write](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/write/), [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertBreak](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertbreak/), et d'autres.

L'exemple de code suivant montre comment accéder à un signet:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmarkEnd.cpp" >}}

## Création et Modification de Documents

Aspose.Words API fournit plusieurs classes qui sont responsables de la mise en forme de divers éléments d'un document. Chacune des classes encapsule les propriétés de mise en forme liées à un élément de document spécifique, tel que du texte, un paragraphe, une section, etc. Par exemple, la classe [Font](https://reference.aspose.com/words/cpp/aspose.words/font/) représente les propriétés de formatage des caractères, la classe [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) représente les propriétés de formatage des paragraphes, et ainsi de suite. Les objets de ces classes sont renvoyés par les propriétés **DocumentBuilder** correspondantes, qui ont les mêmes noms que les classes. Par conséquent, vous pouvez y accéder et définir le formatage souhaité lors de la construction du document.

Vous pouvez également insérer du texte, une case à cocher, un objet ole, des images, des signets, des champs de formulaire et d'autres éléments de document à la position du curseur à l'aide de la méthode `Write` ou de l'une des méthodes **DocumentBuilder.InsertXXX**, telles que [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/), [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/) et méthodes similaires.

Voyons comment créer un document simple en utilisant le **DocumentBuilder**.

### Créer un document en utilisant DocumentBuilder

Pour commencer, vous devez créer un **DocumentBuilder** et l'associer à un objet **Document**. Vous créez une nouvelle instance de **DocumentBuilder** en appelant son constructeur et la transmettez à un objet **Document** pour l'attacher au constructeur.

Pour insérer un texte, transmettez la chaîne de texte que vous devez insérer dans le document à la méthode **Write**.

L'exemple de code suivant montre comment créer un document simple à l'aide d'un générateur de documents.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Quick-Start-HelloWorld-HelloWorld.cpp" >}}

### Spécifier Le Formatage Du Document

La propriété [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) définit la mise en forme du texte. Cet objet contient différents attributs de police (nom de la police, taille de la police, couleur, etc.). Certains attributs de police importants sont également représentés par des propriétés **DocumentBuilder** pour vous permettre d'y accéder directement. Ce sont les propriétés booléennes [Font.Bold](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_bold/), [Font.Italic](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_italic/) et [Font.Underline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_underline/).

L'exemple de code suivant montre comment insérer un texte formaté à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) spécifie la mise en forme des caractères qui sera appliquée à tout le texte inséré à partir de la position actuelle dans le document.
- [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/) spécifie la mise en forme du paragraphe pour le paragraphe actuel et tous les paragraphes à insérer.
- [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/) spécifie les propriétés de la page et de la section pour la section actuelle et la section entière qui sera insérée.
- [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) et [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) spécifient les propriétés de mise en forme qui seront appliquées aux cellules et lignes du tableau à partir de la position actuelle dans le document.

Dans cette situation, "actuel" désigne la position, le paragraphe, la section, la cellule ou la ligne dans laquelle se trouve le curseur.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que les propriétés **Font**, **ParagraphFormat** et **PageSetup** sont mises à jour chaque fois que vous accédez à un emplacement différent dans le document pour refléter les propriétés de mise en forme de cet emplacement.

{{% /alert %}}
