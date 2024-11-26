---
title: Aperçu du générateur de documents dans Java
second_title: Aspose.Words pour Java
articleTitle: Présentation du Générateur de Documents
linktitle: Présentation du Générateur de Documents
type: docs
description: "DocumentBuilder vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à des documents existants. DocumentBuilder fournit des méthodes pour insérer du texte, checkbox es, des tableaux, des images et d'autres éléments de contenu dans Java."
weight: 30
url: /fr/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) est une classe puissante qui s'associe à [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et vous permet de créer des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à un document existant.

**DocumentBuilder**

## Générateur de documents ou Aspose.Words DOM

**DocumentBuilder**

Les opérations possibles avec **DocumentBuilder** sont également possibles lors de l'utilisation directe des classes du Aspose.Words DOM. Cependant, l'utilisation directe de classes Aspose.Words DOM nécessite généralement plus de lignes de code que l'utilisation de **DocumentBuilder**.

## Navigation dans les Documents

La navigation dans le document est basée sur le concept d'un curseur virtuel, avec lequel vous pouvez vous déplacer vers un autre emplacement du document à l'aide de diverses méthodes **DocumentBuilder.MoveToXXX** telles que [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) et [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Ce curseur virtuel indique où le texte sera inséré lors de l'appel des méthodes [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), et d'autres. Voir l'article suivant "Navigation avec curseur" pour en savoir plus sur le curseur virtuel.

L'exemple de code suivant montre comment accéder à un signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Création et Modification de Documents

Aspose.Words API fournit plusieurs classes qui sont responsables de la mise en forme de divers éléments d'un document. Chacune des classes encapsule les propriétés de mise en forme liées à un élément de document spécifique, tel que du texte, un paragraphe, une section, etc. Par exemple, la classe [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) représente les propriétés de formatage des caractères, la classe [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) représente les propriétés de formatage des paragraphes, et ainsi de suite. Les objets de ces classes sont renvoyés par les propriétés **DocumentBuilder** correspondantes, qui ont les mêmes noms que les classes. Par conséquent, vous pouvez y accéder et définir le formatage souhaité lors de la construction du document.

Vous pouvez également insérer du texte, checkbox, un objet ole, des images, des signets, des champs de formulaire et d'autres éléments de document à la position du curseur à l'aide de la méthode `Write` ou de l'une des méthodes **DocumentBuilder.InsertXXX**, telles que [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) et méthodes similaires.

Voyons comment créer un document simple en utilisant le **DocumentBuilder**.

### Créer un document en utilisant DocumentBuilder

Pour commencer, vous devez créer un **DocumentBuilder** et l'associer à un objet **Document**. Vous créez une nouvelle instance de **DocumentBuilder** en appelant son constructeur et la transmettez à un objet **Document** pour l'attacher au constructeur.

Pour insérer un texte, transmettez la chaîne de texte que vous devez insérer dans le document à la méthode **Write**.

L'exemple de code suivant montre comment créer un document simple à l'aide d'un générateur de documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Spécifier Le Formatage Du Document

La propriété [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) définit la mise en forme du texte. Cet objet contient différents attributs de police (nom de la police, taille de la police, couleur, etc.). Certains attributs de police importants sont également représentés par des propriétés **DocumentBuilder** pour vous permettre d'y accéder directement. Ce sont les propriétés booléennes [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic) et [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline).

L'exemple de code suivant montre comment insérer un texte formaté à l'aide de **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) spécifie la mise en forme des caractères qui sera appliquée à tout le texte inséré à partir de la position actuelle dans le document.
- [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) spécifie la mise en forme du paragraphe pour le paragraphe actuel et tous les paragraphes à insérer.
- [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) spécifie les propriétés de la page et de la section pour la section actuelle et la section entière qui sera insérée.
- [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) et [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) spécifient les propriétés de mise en forme qui seront appliquées aux cellules et lignes du tableau à partir de la position actuelle dans le document.

Dans cette situation, "actuel" désigne la position, le paragraphe, la section, la cellule ou la ligne dans laquelle se trouve le curseur.

{{% /alert %}}

{{% alert color="primary" %}}

Notez que les propriétés **Font**, **ParagraphFormat** et **PageSetup** sont mises à jour chaque fois que vous accédez à un emplacement différent dans le document pour refléter les propriétés de mise en forme de cet emplacement.

{{% /alert %}}
