---
title: Travailler avec des paragraphes dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des paragraphes
linktitle: Travailler avec des paragraphes
description: "Insérez un paragraphe et spécifiez sa mise en forme dans un document à l'aide de Python."
type: docs
weight: 210
url: /fr/python-net/working-with-paragraphs/
---

Un paragraphe est un ensemble de caractères combinés en un bloc logique et se terminant par un caractère spécial – un *saut de paragraphe*. Dans Aspose.Words, un paragraphe est représenté par la classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).

## Insérer un paragraphe

Pour insérer un nouveau paragraphe dans le document, en effet, vous devez y insérer un caractère de saut de paragraphe. [DocumentBuilder.writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/) insère également une chaîne de texte dans le document, mais en plus, il ajoute un saut de paragraphe.

Le formatage actuel de la police est également spécifié par la propriété [font](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/font/) et le formatage actuel du paragraphe est déterminé par la propriété [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/).

L'exemple de code suivant montre comment insérer un paragraphe dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertParagraph.py" >}}

## Formater le paragraphe

Le formatage actuel du paragraphe est représenté par un objet [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/) renvoyé par la propriété [paragraph_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/paragraph_format/). Cet objet encapsule diverses propriétés de formatage de paragraphe disponibles en Microsoft Word. Vous pouvez facilement réinitialiser le formatage du paragraphe par défaut sur le style Normal, aligné à gauche, sans indentation, sans espacement, sans bordures et sans ombrage en appelant [clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/clear_formatting/).

L'exemple de code suivant montre comment définir la mise en forme des paragraphes:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ParagraphFormatting.py" >}}

## Appliquer un style de paragraphe

Certains objets de formatage comme les styles de support [Font](https://reference.aspose.com/words/python-net/aspose.words/font/) ou [ParagraphFormat](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/). Un style unique intégré ou défini par l'utilisateur est représenté par un objet [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) qui contient les propriétés de style correspondantes telles que le nom, le style de base, la mise en forme de la police et du paragraphe du style, etc.

De plus, un objet [Style](https://reference.aspose.com/words/python-net/aspose.words/style/) fournit la propriété [Style.style_identifier](https://reference.aspose.com/words/python-net/aspose.words/style/style_identifier/) qui renvoie un identifiant de style indépendant des paramètres régionaux représenté par une valeur d'énumération [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/). Le fait est que les noms des styles intégrés dans Microsoft Word sont localisés pour différentes langues. À l'aide d'un identifiant de style, vous pouvez trouver le style correct quelle que soit la langue du document. Les valeurs d'énumération correspondent aux styles intégrés Microsoft Word tels que Normal, Heading 1, Heading 2 etc. Tous les styles définis par l'utilisateur se voient attribuer la valeur [StyleIdentifier.USER](https://reference.aspose.com/words/python-net/aspose.words/styleidentifier/#user)

L'exemple de code suivant montre comment appliquer un style de paragraphe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyParagraphStyle.py" >}}

## Insérer un séparateur de style pour mettre différents styles de paragraphe

Un séparateur de style peut être ajouté à la fin d'un paragraphe à l'aide du raccourci clavier Ctrl + Alt + Entrée dans MS Word. Cette fonctionnalité permet d'utiliser deux styles de paragraphe différents dans un seul paragraphe imprimé logique. Si vous souhaitez qu'un texte du début d'un titre particulier apparaisse dans une table des matières mais que vous ne souhaitez pas que l'intégralité du titre soit affichée dans la table des matières, vous pouvez utiliser cette fonctionnalité

L'exemple de code suivant montre comment insérer un séparateur de style pour s'adapter à différents styles de paragraphe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_styles_and_themes-InsertStyleSeparator.py" >}}

## Identifier le séparateur de style de paragraphe

Aspose.Words fournit une propriété publique [break_is_style_separator](https://reference.aspose.com/words/python-net/aspose.words/paragraph/break_is_style_separator/) dans une classe [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) permettant d'identifier le paragraphe séparateur de style comme le montre l'exemple ci-dessous:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-GetParagraphStyleSeparator.py" >}}

## Appliquer des bordures et un ombrage à un paragraphe

Les frontières sont représentées par le [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/). Il s'agit d'une collection d'objets [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) accessibles par index ou par type de bordure. Le type de bordure est représenté par l'énumération [BorderType](https://reference.aspose.com/words/python-net/aspose.words/bordertype/). Certaines valeurs de l'énumération sont applicables à plusieurs ou à un seul élément du document. Par exemple, [BorderType.BOTTOM](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#bottom) s'applique à un paragraphe ou à une cellule de tableau tandis que [BorderType.DIAGONALDOWN](https://reference.aspose.com/words/python-net/aspose.words/bordertype/#diagonaldown) spécifie la bordure diagonale dans une cellule de tableau uniquement.

La collection de bordures et chaque bordure distincte ont des attributs similaires tels que la couleur, le style de ligne, la largeur de ligne, la distance par rapport au texte et l'ombre facultative. Ils sont représentés par des propriétés du même nom. Vous pouvez obtenir différents types de bordures en combinant les valeurs des propriétés. De plus, les objets [BorderCollection](https://reference.aspose.com/words/python-net/aspose.words/bordercollection/) et [Border](https://reference.aspose.com/words/python-net/aspose.words/border/) vous permettent de réinitialiser ces valeurs par défaut en appelant la méthode [Border.clear_formatting](https://reference.aspose.com/words/python-net/aspose.words/border/clear_formatting/).

{{% alert color="primary" %}}

Notez que lorsque les propriétés de bordure sont réinitialisées à leurs valeurs par défaut, la bordure devient invisible.

{{% /alert %}}

Aspose.Words possède également la classe [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/) qui contient des attributs d'ombrage pour les éléments du document. Vous pouvez définir la texture d'ombrage souhaitée et les couleurs appliquées à l'arrière-plan et au premier plan de l'élément.

La texture d'ombrage est définie avec une valeur d'énumération [TextureIndex](https://reference.aspose.com/words/python-net/aspose.words/textureindex/) qui permet l'application de divers modèles à l'objet [Shading](https://reference.aspose.com/words/python-net/aspose.words/shading/). Par exemple, pour définir une couleur d'arrière-plan pour un élément de document, utilisez la valeur [TextureIndex.TEXTURE_SOLID](https://reference.aspose.com/words/python-net/aspose.words/textureindex/#texture_solid) et définissez la couleur d'ombrage de premier plan de manière appropriée. L'exemple ci-dessous montre comment appliquer des bordures et un ombrage à un paragraphe.

L'exemple de code suivant montre comment appliquer des bordures et un ombrage à un paragraphe:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-ApplyBordersAndShadingToParagraph.py" >}}
