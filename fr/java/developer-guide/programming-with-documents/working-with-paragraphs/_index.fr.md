---
title: Travailler avec des paragraphes dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des paragraphes
linktitle: Travailler avec des paragraphes
description: "Pratiques de manipulation des nœuds de paragraphe utilisant Java."
type: docs
weight: 210
url: /fr/java/working-with-paragraphs/
timestamp: 2024-01-27-14-07-04
---

Un paragraphe est un ensemble de caractères combinés en un bloc logique et se terminant par un caractère spécial-a *paragraph break*. Dans Aspose.Words, un paragraphe est représenté par la classe [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/).

## Insérer un paragraphe

Pour insérer un nouveau paragraphe dans le document, en fait, vous devez y insérer un caractère de saut de paragraphe. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) insère non seulement une chaîne de texte dans le document, mais ajoute également un saut de paragraphe.

La mise en forme de la police actuelle est également spécifiée par la propriété [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) et la mise en forme du paragraphe actuel est déterminée par la propriété [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Dans la section suivante, nous aborderons plus en détail la mise en forme des paragraphes.

L'exemple de code suivant montre comment insérer un paragraphe dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Format du Paragraphe

La mise en forme actuelle du paragraphe est représentée par l'objet [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) renvoyé par la propriété [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat). Cet objet encapsule diverses propriétés de formatage de paragraphe disponibles dans Microsoft Word. Vous pouvez facilement réinitialiser la mise en forme d'un paragraphe à sa valeur par défaut – style normal, aligné à gauche, pas d'indentation, pas d'espacement, pas de bordures, pas d'ombrage-en appelant [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

L'exemple de code suivant montre comment définir la mise en forme des paragraphes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Appliquer un Style de Paragraphe

Certains objets de mise en forme comme la police ou ParagraphFormat prennent en charge les styles. Un seul style intégré ou défini par l'utilisateur est représenté par un objet [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) qui contient les propriétés de style correspondantes telles que le nom, le style de base, la police et la mise en forme du paragraphe du style, etc.

De plus, un objet **Style** fournit la propriété [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) qui renvoie un identifiant de style indépendant des paramètres régionaux représenté par une valeur d'énumération **StyleIdentifier**. Le fait est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. À l'aide d'un identifiant de style, vous pouvez trouver le style correct quelle que soit la langue du document. Les valeurs d'énumération correspondent aux styles intégrés Microsoft Word tels que *Normal*, *Heading 1*, *Heading 2*, etc. Tous les styles définis par l'utilisateur se voient attribuer le **StyleIdentifier.User value**.

L'exemple de code suivant montre comment appliquer un style de paragraphe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Insérer un Séparateur de Style pour Mettre Différents Styles de Paragraphe

Le séparateur de style peut être ajouté à la fin d'un paragraphe à l'aide du raccourci clavier Ctrl + Alt + Entrée dans MS Mot. Cette fonctionnalité permet d'utiliser deux styles de paragraphe différents dans un paragraphe imprimé logique. Si vous souhaitez qu'un texte du début d'un en-tête particulier apparaisse dans une Table des matières mais que vous ne souhaitez pas que l'en-tête entier apparaisse dans la Table des matières, vous pouvez utiliser cette fonctionnalité.

L'exemple de code suivant montre comment insérer un séparateur de style pour s'adapter à différents styles de paragraphe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Appliquer des bordures et des ombrages à un Paragraphe

Les bordures dans Aspose.Words sont représentées par la classe [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) – il s'agit d'une collection d'objets [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) auxquels on accède par index ou par type de bordure. Le type `Border` est représenté par l'énumération [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/). Certaines valeurs de l'énumération sont applicables à plusieurs ou à un seul élément de document. Par exemple, **BorderType.Bottom** s'applique à une cellule de paragraphe ou de tableau tandis que **BorderType.DiagonalDown** spécifie la bordure diagonale dans une cellule de tableau uniquement.

La collection de bordures et chaque bordure distincte ont des attributs similaires tels que la couleur, le style de ligne, la largeur de ligne, la distance par rapport au texte et l'ombre facultative. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordures en combinant les valeurs des propriétés. De plus, les objets **BorderCollection** et **Border** vous permettent de réinitialiser ces valeurs par défaut en appelant la méthode [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting).

{{% alert color="primary" %}}

Notez que lorsque les propriétés de bordure sont réinitialisées aux valeurs par défaut, la bordure est invisible.

{{% /alert %}}

Aspose.Words a également la classe [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) contient des attributs d'ombrage pour les éléments du document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs appliquées à l'arrière-plan et au premier plan de l'élément.

La texture d'ombrage est définie avec la valeur d'énumération [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) qui permet l'application de divers motifs à l'objet **Shading**. Par exemple, pour définir une couleur d'arrière-plan pour un élément de document, utilisez la valeur `TextureIndex.TextureSolid` et définissez la couleur d'ombrage de premier plan appropriée. L'exemple de code ci - dessous montre comment appliquer des bordures et des ombrages à un paragraphe.

L'exemple de code suivant montre comment appliquer des bordures et des ombrages à un paragraphe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
