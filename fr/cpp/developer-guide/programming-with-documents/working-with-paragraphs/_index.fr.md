---
title: Travailler avec des paragraphes en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des paragraphes
linktitle: Travailler avec des paragraphes
description: "Pratiques de manipulation des nœuds de paragraphe en utilisant C++."
type: docs
weight: 210
url: /fr/cpp/working-with-paragraphs/
---

Un paragraphe est un ensemble de caractères combinés en un bloc logique et se terminant par un caractère spécial-a *paragraph break*. Dans Aspose.Words, un paragraphe est représenté par la classe [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/).

## Insérer un Paragraphe

Pour insérer un nouveau paragraphe dans le document, en fait, vous devez y insérer un caractère de saut de paragraphe. [DocumentBuilder.Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/) insère non seulement une chaîne de texte dans le document, mais ajoute également un saut de paragraphe.

La mise en forme de la police actuelle est également spécifiée par la propriété [Font](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_font/) et la mise en forme du paragraphe actuel est déterminée par la propriété [ParagraphFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_paragraphformat/). Dans la section suivante, nous aborderons plus en détail la mise en forme des paragraphes.

L'exemple de code suivant montre comment insérer un paragraphe dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertParagraph-DocumentBuilderInsertParagraph.cpp" >}}

## Format du Paragraphe

La mise en forme actuelle du paragraphe est représentée par un objet **ParagraphFormat** renvoyé par la propriété **ParagraphFormat**. Cet objet encapsule diverses propriétés de mise en forme de paragraphe disponibles dans Microsoft Word. Vous pouvez facilement réinitialiser la mise en forme du paragraphe par défaut au style normal, aligné à gauche sans indentation, sans espacement, sans bordures et sans ombrage en appelant [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/clearformatting/).

L'exemple de code suivant montre comment définir la mise en forme des paragraphes:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetParagraphFormatting.cpp" >}}

## Appliquer un Style de Paragraphe

Certains objets de mise en forme comme la police ou ParagraphFormat prennent en charge les styles. Un seul style intégré ou défini par l'utilisateur est représenté par un objet `Style` qui contient les propriétés de style correspondantes telles que le nom, le style de base, la police et la mise en forme du paragraphe du style, etc.

De plus, un objet **Style** fournit la propriété [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words/style/get_styleidentifier/) qui renvoie un identifiant de style indépendant des paramètres régionaux représenté par la valeur d'énumération **StyleIdentifier**. Le fait est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. À l'aide d'un identifiant de style, vous pouvez trouver le style correct quelle que soit la langue du document. Les valeurs d'énumération correspondent aux styles intégrés de Microsoft Word tels que *Normal*, *Heading 1*, *Heading 2* etc. Tous les styles définis par l'utilisateur se voient attribuer la valeur **StyleIdentifier.User**.

L'exemple de code suivant montre comment appliquer un style de paragraphe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyParagraphStyle.cpp" >}}

## Insérer un Séparateur de Style pour Mettre Différents Styles de Paragraphe

Le séparateur de style peut être ajouté à la fin d'un paragraphe à l'aide du raccourci clavier Ctrl + Alt + Entrée dans MS Word. Cette fonctionnalité permet d'utiliser deux styles de paragraphe différents dans un paragraphe imprimé logique. Si vous souhaitez qu'un texte du début d'un en-tête particulier apparaisse dans une Table des matières mais que vous ne souhaitez pas que l'en-tête entier apparaisse dans la Table des matières, vous pouvez utiliser cette fonctionnalité.

L'exemple de code suivant montre comment insérer un séparateur de style pour s'adapter à différents styles de paragraphe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Styles-InsertStyleSeparator-ParagraphInsertStyleSeparator.cpp" >}}

## Identifier le Séparateur de Style de Paragraphe

` ` Aspose.Words fournit une propriété publique [BreakIsStyleSeparator](https://reference.aspose.com/words/cpp/aspose.words/paragraph/get_breakisstyleseparator/) dans une classe `Paragraph` permet d'identifier le paragraphe Séparateur de style comme indiqué dans l'exemple ci-dessous:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-ParagraphStyleSeparator-ParagraphStyleSeparator.cpp" >}}

## Appliquer des bordures et des ombrages à un Paragraphe

Les bordures dans Aspose.Words sont représentées par la classe [BorderCollection](https://reference.aspose.com/words/cpp/aspose.words/bordercollection/) – il s'agit d'une collection d'objets [Border](https://reference.aspose.com/words/cpp/aspose.words/border/) auxquels on accède par index ou par type de bordure. Le type de bordure est représenté par l'énumération `BorderType`. Certaines valeurs de l'énumération sont applicables à plusieurs ou à un seul élément de document. Par exemple, **BorderType.Bottom** s'applique à une cellule de paragraphe ou de tableau tandis que **BorderType.DiagonalDown** spécifie la bordure diagonale dans une cellule de tableau uniquement.

La collection de bordures et chaque bordure distincte ont des attributs similaires tels que la couleur, le style de ligne, la largeur de ligne, la distance par rapport au texte et l'ombre facultative. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordures en combinant les valeurs des propriétés. De plus, les objets **BorderCollection** et **Border** vous permettent de réinitialiser ces valeurs par défaut en appelant la méthode [ClearFormatting](https://reference.aspose.com/words/cpp/aspose.words/border/clearformatting/).

{{% alert color="primary" %}}

Notez que lorsque les propriétés de la bordure sont réinitialisées à leurs valeurs par défaut, la bordure devient invisible.

{{% /alert %}}

Aspose.Words a également la classe [Shading](https://reference.aspose.com/words/cpp/aspose.words/shading/) contient des attributs d'ombrage pour les éléments du document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs appliquées à l'arrière-plan et au premier plan de l'élément.

La texture d'ombrage est définie avec une valeur d'énumération [TextureIndex](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) qui permet l'application de divers motifs à l'objet **Shading**. Par exemple, pour définir une couleur d'arrière-plan pour un élément de document, utilisez la valeur [TextureIndex.TextureSolid](https://reference.aspose.com/words/cpp/aspose.words/textureindex/) et définissez la couleur d'ombrage de premier plan appropriée.

L'exemple de code suivant montre comment appliquer des bordures et des ombrages à un paragraphe:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderApplyBordersAndShadingToParagraph.cpp" >}}
