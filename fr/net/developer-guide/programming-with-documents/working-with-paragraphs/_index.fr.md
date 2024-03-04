---
title: Travailler avec des paragraphes dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des paragraphes
linktitle: Travailler avec des paragraphes
description: "Insérez un paragraphe dans un document C#. Définissez les styles de paragraphe dans C#. Travaillez avec le séparateur de style de paragraphe C#. Manipulez le nœud de paragraphe à l’aide de C#."
type: docs
weight: 210
url: /fr/net/working-with-paragraphs/
---

Un paragraphe est un ensemble de caractères combinés en un bloc logique et se terminant par un caractère spécial – un *saut de paragraphe*. Dans Aspose.Words, un paragraphe est représenté par la classe [Paragraph](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/).

## Insérer un paragraphe

Pour insérer un nouveau paragraphe dans le document, en effet, vous devez y insérer un caractère de saut de paragraphe. [DocumentBuilder.Writeln](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/writeln/) insère non seulement une chaîne de texte dans le document, mais ajoute également un saut de paragraphe.

Le formatage actuel de la police est également spécifié par la propriété [Font](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/font/) et le formatage actuel du paragraphe est déterminé par la propriété [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/paragraphformat/). Dans la section suivante, nous entrerons plus en détail sur le formatage des paragraphes.

L'exemple de code suivant montre comment insérer un paragraphe dans un document:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cs" >}}

## Formater le paragraphe

La mise en forme actuelle du paragraphe est représentée par l'objet [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/) renvoyé par la propriété [ParagraphFormat](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/paragraphformat/). Cet objet encapsule diverses propriétés de formatage de paragraphe disponibles en Microsoft Word. Vous pouvez facilement réinitialiser la mise en forme d'un paragraphe à sa valeur par défaut – style normal, aligné à gauche, sans indentation, sans espacement, sans bordures, sans ombrage – en appelant [ClearFormatting](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/clearformatting/).

L'exemple de code suivant montre comment définir la mise en forme des paragraphes:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cs" >}}

## Appliquer le style de paragraphe

Certains objets de mise en forme, tels que **Font** ou **ParagraphFormat**, prennent en charge les styles. Un style intégré ou défini par l'utilisateur est représenté par un objet [Style](https://reference.aspose.com/words/fr/net/aspose.words/style/), qui contient les propriétés de style appropriées telles que le nom, le style de base, la police, le formatage du paragraphe de style, etc.

De plus, l'objet **Style** expose la propriété [StyleIdentifier](https://reference.aspose.com/words/fr/net/aspose.words/style/styleidentifier/), qui renvoie l'identifiant de style indépendant des paramètres régionaux représenté par la valeur d'énumération [StyleIdentifier](https://reference.aspose.com/words/fr/net/aspose.words/styleidentifier/). Le fait est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. Grâce à l'identifiant de style, vous pouvez trouver le style correct quelle que soit la langue du document. Les valeurs d'énumération correspondent aux styles Microsoft Word intégrés tels que *Normal*, *Heading 1*, *Heading 2*, etc. Tous les styles définis par l'utilisateur sont définis sur la valeur d'énumération **StyleIdentifier.User**.

L'exemple de code suivant montre comment appliquer un style de paragraphe:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cs" >}}

### Insérer un séparateur de style pour mettre différents styles de paragraphe

Un séparateur de style peut être ajouté à la fin d'un paragraphe à l'aide du raccourci clavier Ctrl+Alt+Entrée dans Microsoft Word. Cette fonctionnalité vous permet d'utiliser deux styles de paragraphe différents dans le même paragraphe imprimé logique. Si vous souhaitez qu'un texte du début d'un titre particulier apparaisse dans la table des matières, mais que vous ne souhaitez pas que le titre entier apparaisse dans la table des matières, vous pouvez utiliser cette fonction.

L'exemple de code suivant montre comment insérer un séparateur de style pour s'adapter à différents styles de paragraphe:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cs" >}}

### Identifier le séparateur de style de paragraphe

Aspose.Words expose la propriété publique [BreakIsStyleSeparator](https://reference.aspose.com/words/fr/net/aspose.words/paragraph/breakisstyleseparator/) sur la classe `Paragraph` pour identifier un paragraphe avec un séparateur de style, comme indiqué dans l'exemple ci-dessous:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cs" >}}

## Appliquer des bordures et un ombrage à un paragraphe

Les bordures dans Aspose.Words sont représentées par la classe [BorderCollection](https://reference.aspose.com/words/fr/net/aspose.words/bordercollection/) – il s'agit d'une collection d'objets [Border](https://reference.aspose.com/words/fr/net/aspose.words/border/) accessibles par index ou par type de bordure. Le type de bordure est à son tour représenté par l'énumération [BorderType](https://reference.aspose.com/words/fr/net/aspose.words/bordertype/). Certaines valeurs d'énumération s'appliquent à plusieurs ou à un seul élément de document. Par exemple, **BorderType.Bottom** s'applique à un paragraphe ou à une cellule de tableau, tandis que **BorderType.DiagonalDown** spécifie une bordure diagonale dans une cellule de tableau uniquement.

La collection de bordures et chaque bordure distincte ont des attributs similaires tels que la couleur, le style de ligne, la largeur de ligne, la distance par rapport au texte et l'ombre facultative. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordures en combinant les valeurs des propriétés. De plus, les objets **BorderCollection** et **Border** permettent de réinitialiser ces valeurs à leurs valeurs par défaut en appelant la méthode [ClearFormatting](https://reference.aspose.com/words/fr/net/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Notez que lorsque les propriétés de bordure sont réinitialisées à leurs valeurs par défaut, la bordure devient invisible.

{{% /alert %}}

Aspose.Words possède également la classe [Shading](https://reference.aspose.com/words/fr/net/aspose.words/shading/) qui contient des attributs d'ombrage pour les éléments du document. Vous pouvez définir la texture d'ombrage et les couleurs souhaitées qui sont appliquées à l'arrière-plan et au premier plan d'un élément à l'aide de la valeur d'énumération [TextureIndex](https://reference.aspose.com/words/fr/net/aspose.words/textureindex/). **TextureIndex** vous permet également d'appliquer différents modèles à l'objet **Shading**. Par exemple, pour définir la couleur d'arrière-plan d'un élément de document, utilisez la valeur **TextureIndex.TextureSolid** et définissez la couleur d'ombrage du premier plan selon vos besoins.

L'exemple de code suivant montre comment appliquer des bordures et un ombrage à un paragraphe:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cs" >}}

## Compter les lignes de paragraphe

Si vous souhaitez compter le nombre de lignes dans un paragraphe pour n'importe quel document Word, l'exemple de code suivant peut être utilisé:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CountLinesInParagraphs-CountLinesInParagraph.cs" >}}