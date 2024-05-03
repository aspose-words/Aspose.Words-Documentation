---
title: Travail avec les paragraphes Java
second_title: Aspose.Words pour Java
articleTitle: Travail avec les paragraphes
linktitle: Travail avec les paragraphes
description: "Pratiques de manipulation des nœuds Java."
type: docs
weight: 210
url: /fr/java/working-with-paragraphs/
---

Un paragraphe est un ensemble de caractères combinés dans un bloc logique et se terminant par un caractère spécial – une pause *paragraphe*. En Aspose.Words, un paragraphe est représenté par [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) En cours.

## Insérer un paragraphe

Pour insérer un nouveau paragraphe dans le document, en fait, vous devez y insérer un caractère de rupture de paragraphe. [DocumentBuilder.Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln) insère non seulement une chaîne de texte dans le document, mais ajoute également une pause de paragraphe.

Le formatage actuel de la police est également spécifié par le [Font](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getFont) la propriété, et le formatage actuel du paragraphe est déterminé par le [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) propriété. Dans la prochaine section, nous aborderons plus en détail le formatage des paragraphes.

L'exemple de code suivant montre comment insérer un paragraphe dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderInsertParagraph.java" >}}


## Format du paragraphe

Le formatage actuel des paragraphes est représenté par [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/) objet retourné par le [ParagraphFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getParagraphFormat) propriété. Cet objet encapsule diverses propriétés de formatage de paragraphe disponibles dans Microsoft Word. Vous pouvez facilement réinitialiser le formatage d'un paragraphe à sa valeur par défaut – Style normal, aligné à gauche, sans indentation, sans espacement, sans bordures, sans ombre – en appelant [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#clearFormatting).

L'exemple de code suivant montre comment définir le formatage des paragraphes:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderSetParagraphFormatting.java" >}}

## Appliquer le style de paragraphe

Certains objets de formatage comme les styles de support Font ou ParagraphFormat. Un style intégré ou défini par l'utilisateur est représenté par un [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) objet qui contient les propriétés de style correspondantes comme nom, style de base, police et formatage de paragraphe du style, et ainsi de suite.

En outre, **Style** objet fournit la [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/style/#getStyleIdentifier) propriété qui retourne un identifiant de style indépendant local représenté par un **StyleIdentifier** valeur de dénombrement. Le point est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. En utilisant un identifiant de style, vous pouvez trouver le style correct quel que soit le langage du document. Les valeurs de dénombrement correspondent à la Microsoft Word styles intégrés tels que *Normal*, * cap 1*, * cap 2*, etc. Tous les styles définis par l'utilisateur sont assignés **StyleIdentificateur. Valeur utilisateur**.

L'exemple de code suivant montre comment appliquer un style de paragraphe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyParagraphStyle.java" >}}

## Insérer le séparateur de style pour mettre différents styles de paragraphe

Le séparateur de style peut être ajouté à la fin d'un paragraphe en utilisant le raccourci clavier Ctrl + Alt + Entrée dans MS Word. Cette fonctionnalité permet deux styles de paragraphe différents utilisés dans un paragraphe imprimé logique. Si vous voulez que le texte du début d'un titre apparaisse dans une table des matières, mais que vous ne voulez pas que le titre entier figure dans la table des matières, vous pouvez utiliser cette fonctionnalité.

L'exemple de code suivant montre comment insérer un séparateur de style pour tenir compte de différents styles de paragraphe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-ParagraphInsertStyleSeparator.java" >}}


## Appliquer les frontières et l'ombre à un paragraphe

Les frontières Aspose.Words sont représentés par les [BorderCollection](https://reference.aspose.com/words/java/com.aspose.words/bordercollection/) classe – c'est une collection de [Border](https://reference.aspose.com/words/java/com.aspose.words/border/) objets accessibles par index ou par type de bordure. Les `Border` type est représenté par le [BorderType](https://reference.aspose.com/words/java/com.aspose.words/bordertype/) Énumération. Certaines valeurs du dénombrement s'appliquent à plusieurs ou à un seul élément de document. Par exemple, **BorderType.Bottom** est applicable à un paragraphe ou à une cellule de tableau pendant **BorderType.DiagonalDown** spécifie la bordure diagonale dans une cellule de table seulement.

La collection de bordures et chaque bordure séparée ont des attributs similaires comme la couleur, le style de ligne, la largeur de ligne, la distance du texte et l'ombre optionnelle. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordure en combinant les valeurs de propriété. En outre, les deux **BorderCollection** et **Border** objets vous permettent de réinitialiser ces valeurs par défaut en appelant le [ClearFormatting](https://reference.aspose.com/words/java/com.aspose.words/border/#clearFormatting) méthode.

{{% alert color="primary" %}}

Notez que lorsque les propriétés de la bordure sont réinitialisées aux valeurs par défaut, la bordure est invisible.

{{% /alert %}}

Aspose.Words a également [Shading](https://reference.aspose.com/words/java/com.aspose.words/shading/) classe contient des attributs d'ombrage pour les éléments de document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs qui sont appliquées au fond et au premier plan de l'élément.

La texture d'ombrage est définie avec la [TextureIndex](https://reference.aspose.com/words/java/com.aspose.words/textureindex/) valeur de dénombrement qui permet l'application de différents modèles à la **Shading** objet. Par exemple, pour définir une couleur de fond pour un élément de document, utilisez le `TextureIndex.TextureSolid` valeur et définir la couleur d'ombrage avant plan selon le cas. L'exemple de code ci-dessous montre comment appliquer les bordures et l'ombrage à un paragraphe.

L'exemple de code suivant montre comment appliquer les frontières et l'ombrage à un paragraphe:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithParagraphs-DocumentBuilderApplyBordersAndShadingToParagraph.java" >}}
