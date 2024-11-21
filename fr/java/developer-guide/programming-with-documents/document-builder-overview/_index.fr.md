---
title: Constructeur de documents Aperçu général Java
second_title: Aspose.Words pour Java
articleTitle: Aperçu du constructeur de documents
linktitle: Aperçu du constructeur de documents
type: docs
description: "DocumentBuilder vous permet de construire des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à ceux existants. DocumentBuilder fournit des méthodes pour insérer du texte, des cases à cocher, des tableaux, des images et d'autres éléments de contenu dans Java."
weight: 30
url: /fr/java/document-builder-overview/
timestamp: 2024-01-27-14-07-04
---

[DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) est une classe puissante qui associe avec [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et vous permet de construire des documents dynamiques à partir de zéro ou d'ajouter de nouveaux éléments à un document existant.

**DocumentBuilder** fournit des méthodes pour insérer du texte, des cases à cocher, des objets ole, des paragraphes, des listes, des tableaux, des images et d'autres éléments de contenu. Il vous permet de spécifier des polices, des paragraphes ou des sections de formatage, et d'effectuer d'autres opérations.

## Constructeur de documents Aspose.Words DOM

**DocumentBuilder** complète les classes et méthodes disponibles Aspose.Words Document Object Model (DOM) simplifier les tâches de construction de documents les plus courantes. C'est-à-dire que vous pouvez créer et modifier le contenu des documents à la fois à travers le Aspose.Words DOM, qui nécessite une bonne compréhension de la structure de l'arbre, et en utilisant le DocumentBuilder. Les `DocumentBuilder` est une "façade" pour le complexe **Document** structure qui vous permet d'insérer rapidement et facilement le contenu et le formatage.

Opérations possibles avec **DocumentBuilder** sont également possibles lors de l'utilisation des classes Aspose.Words DOM directement. Cependant, Aspose.Words DOM les classes nécessitent généralement plus de lignes de code que l'utilisation **DocumentBuilder**.

## Navigation des documents

La navigation de document est basée sur le concept d'un curseur virtuel, avec lequel vous pouvez passer à un autre emplacement dans le document en utilisant divers **DocumentBuilder.MoveToXXX** méthodes telles que [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) et [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean). Ce curseur virtuel indique où le texte sera inséré lors de l'appel aux méthodes [Write](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#write-java.lang.String), [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertBreak](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertBreak-int), et d'autres. Voir l'article suivant "Navigation avec le curseur" pour en savoir plus sur le curseur virtuel.

L'exemple de code suivant montre comment naviguer vers un signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmarkEnd-DocumentBuilderMoveToBookmarkEnd.java" >}}

## Construction et modification de documents

Aspose.Words API fournit plusieurs classes qui sont chargées de formater divers éléments d'un document. Chacune des classes encapsule les propriétés de formatage liées à un élément de document spécifique, comme le texte, le paragraphe, la section et d'autres. Par exemple, [Font](https://reference.aspose.com/words/java/com.aspose.words/font/) classe représente les propriétés de formatage de caractères, la [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) classe représente les propriétés de formatage des paragraphes, et ainsi de suite. Les objets de ces classes sont retournés par les **DocumentBuilder** propriétés, qui ont les mêmes noms que les classes. Par conséquent, vous pouvez y accéder et définir le formatage souhaité pendant la construction du document.

Vous pouvez également insérer du texte, une case à cocher, un objet ole, des images, des signets, des champs de formulaire et d'autres éléments de document à la position du curseur en utilisant le `Write` méthode ou l'une des **DocumentBuilder.InsertXXX** méthodes, telles que [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean), [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String), et des méthodes similaires.

Voyons comment créer un document simple en utilisant le **DocumentBuilder**.

### Créer un document en utilisant DocumentBuilder

Pour commencer, vous devez créer un **DocumentBuilder** et l'associer à un **Document** objet. Vous créez une nouvelle instance de **DocumentBuilder** en appelant son constructeur et en le faisant passer à **Document** objet de fixation au constructeur.

Pour insérer un texte, passez la chaîne de texte que vous devez insérer dans le document **Write** méthode.

L'exemple de code suivant montre comment créer un document simple en utilisant un constructeur de documents.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-quickstart-HelloWorld-CreateNewDocument.java" >}}

### Spécifier le formatage du document

Les [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) propriété définit le formatage de texte. Cet objet contient différents attributs de police (nom, taille de police, couleur, etc.). Certains attributs de police importants sont également représentés par **DocumentBuilder** propriétés pour vous permettre d'y accéder directement. Ce sont les [Font.Bold](https://reference.aspose.com/words/java/com.aspose.words/font/#getBold), [Font.Italic](https://reference.aspose.com/words/java/com.aspose.words/font/#getItalic), et [Font.Underline](https://reference.aspose.com/words/java/com.aspose.words/font/#getUnderline) propriétés booléennes.

L'exemple de code suivant montre comment insérer un texte formaté en utilisant **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}

{{% alert color="primary" %}}

- Oui. [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) précise le formatage des caractères qui sera appliqué à tout le texte inséré depuis la position actuelle dans le document à partir.
- Oui. [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) précise le formatage des paragraphes actuels et de tous les paragraphes à insérer.
- Oui. [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) spécifie les propriétés de la page et de la section pour la section actuelle et toute la section qui sera insérée.
- Oui. [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) et [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) spécifier les propriétés de formatage qui seront appliquées aux cellules et lignes de table à partir de la position actuelle dans le document.

Dans cette situation, "courant" signifie la position, le paragraphe, la section, la cellule ou la ligne dans laquelle se trouve le curseur.

{{% /alert %}}

{{% alert color="primary" %}}

Noter que **Font**, **ParagraphFormat**, et **PageSetup** les propriétés sont mises à jour chaque fois que vous naviguez vers un autre emplacement dans le document pour refléter les propriétés de formatage de cet emplacement.

{{% /alert %}}
