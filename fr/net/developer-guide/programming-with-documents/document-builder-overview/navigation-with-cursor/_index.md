---
title: Navigation avec le curseur dans C#
second_title: Aspose.Words pour .NET
articleTitle: Navigation avec le curseur
linktitle: Navigation avec le curseur
description: "Naviguez entre différents nœuds au sein d'un document, tels qu'un paragraphe, un signet ou un caractère spécifique à l'aide de C#."
type: docs
weight: 10
url: /fr/net/navigation-with-cursor/
---

Lorsque vous travaillez avec un document, même s'il est court ou long, vous devrez naviguer dans votre document. La navigation avec un curseur virtuel représente la possibilité de naviguer entre différents nœuds d'un document.

Dans un document court, se déplacer dans un document est simple puisque vous pouvez déplacer le point d'insertion même en utilisant les touches fléchées du clavier ou en cliquant sur la souris pour localiser le point d'insertion où vous le souhaitez. Mais une fois que vous disposez d’un document volumineux comportant de nombreuses pages, ces techniques de base seront insuffisantes.

Cet article explique comment se déplacer dans un document et naviguer avec un curseur virtuel vers différentes parties de celui-ci.

## Détection de la position actuelle du curseur

Avant de commencer le processus de navigation dans votre document, vous devrez obtenir le nœud actuellement sélectionné. Vous pouvez obtenir la position exacte du curseur sur un nœud sélectionné en utilisant la propriété [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). De plus, au lieu d'obtenir le nœud actuel, vous pouvez obtenir le paragraphe ou la section actuellement sélectionné en utilisant les propriétés [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) et [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/).

Toutes les opérations d'insertion que vous effectuez à l'aide du [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) seront insérées avant le [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/). Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, le **CurrentNode** renvoie null.

## Navigation dans les méthodes dans un document

Lorsque vous modifiez du texte, il est important de savoir comment naviguer dans votre document et où vous déplacer exactement. Aspose.Words vous permet de vous déplacer dans un document et de naviguer vers ses différentes sections et parties – ceci est similaire à la fonctionnalité du volet de navigation dans Microsoft Word pour accéder à une page ou à un titre dans un document Word sans faire défiler.

La méthode principale est de pouvoir déplacer la position du curseur vers un nœud spécifique de votre document, vous pouvez y parvenir en utilisant la méthode [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/).

L'exemple de code suivant montre comment déplacer le **DocumentBuilder** vers différents nœuds dans un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Mais outre la méthode de base **MoveTo**, il en existe des plus spécifiques.

### Accédez au début ou à la fin d'un document

Vous pouvez aller au début ou à la fin de votre document en utilisant les méthodes [MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) et [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/).

L'exemple de code suivant montre comment déplacer la position du curseur au début ou à la fin d'un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Naviguer avec les signets

Vous pouvez marquer un endroit que vous souhaitez trouver et vous y déplacer facilement. Vous pouvez insérer autant de signets que vous le souhaitez dans votre document, puis les parcourir en identifiant les signets avec des noms uniques. Vous pouvez accéder à un signet en utilisant la méthode [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/).

Les exemples de code suivants montrent comment déplacer la position du curseur vers un signet:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Accédez aux cellules du tableau

Vous pouvez accéder à une cellule du tableau en utilisant la méthode [MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/). Cette méthode vous permettra de naviguer avec votre curseur dans n'importe quelle cellule d'un tableau spécifique. De plus, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou caractère spécifié dans une cellule de la méthode **MoveToCell**.

L'exemple de code suivant montre comment déplacer la position d'un curseur vers une cellule de tableau spécifiée:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Accédez à un champ

Vous pouvez accéder à un champ spécifique de votre document en utilisant la méthode [MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/). De plus, vous pouvez accéder à un champ de fusion spécifique en utilisant la méthode [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/).

L'exemple de code suivant montre comment déplacer le curseur du générateur de documents vers un champ spécifique:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Accédez à un en-tête ou un pied de page

Vous pouvez vous déplacer au début d'un en-tête ou d'un pied de page en utilisant la méthode [MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/)

L'exemple de code suivant montre comment déplacer le curseur du générateur de documents vers un en-tête ou un pied de page de document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Accédez à une section ou un paragraphe

Vous pouvez accéder à une section ou à un paragraphe spécifique en utilisant les méthodes [MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) ou [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/). De plus, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou vers un caractère spécifié dans un paragraphe au sein de la méthode **MoveToParagraph**.

L'exemple de code suivant montre comment accéder à une section spécifique et à un paragraphe spécifique dans un document:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
