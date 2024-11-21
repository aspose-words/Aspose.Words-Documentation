---
title: Navigation avec curseur en C++
second_title: Aspose.Words pour C++
articleTitle: Navigation avec Curseur
linktitle: Navigation avec Curseur
description: "Naviguez entre les différents nœuds d'un document, tels qu'un paragraphe, un signet ou un caractère spécifique à l'aide de C++."
type: docs
weight: 10
url: /fr/cpp/navigation-with-cursor/
timestamp: 2024-01-27-14-07-04
---

Lorsque vous travaillez avec un document, même s'il est court ou long, vous devrez naviguer dans votre document. La navigation avec un curseur virtuel représente la possibilité de naviguer entre différents nœuds d'un document.

Dans un document court, se déplacer dans un document est simple car vous pouvez déplacer le point d'insertion même en utilisant les touches fléchées du clavier ou en cliquant sur la souris pour localiser le point d'insertion où vous le souhaitez. Mais une fois que vous avez un document volumineux contenant de nombreuses pages, ces techniques de base seront insuffisantes.

Cet article explique comment se déplacer dans un document et naviguer avec un curseur virtuel vers différentes parties de celui-ci.

## Détection De La Position Actuelle Du Curseur

Avant de commencer le processus de navigation dans votre document, vous devrez obtenir le nœud actuellement sélectionné. Vous pouvez obtenir la position exacte du curseur sur un nœud sélectionné en utilisant la propriété [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). De plus, au lieu d'obtenir le nœud actuel, vous pouvez obtenir le paragraphe actuellement sélectionné ou la section actuellement sélectionnée en utilisant les propriétés [CurrentParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentparagraph/) et [CurrentSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentsection/).

Toutes les opérations d'insertion que vous effectuez à l'aide du [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) seront insérées avant le [CurrentNode](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_currentnode/). Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, le **CurrentNode** renvoie nullptr.

## Navigation dans les méthodes d'un document

Lorsque vous modifiez du texte, il est important de savoir comment naviguer dans votre document et où se déplacer exactement dans celui-ci. Aspose.Words vous permet de vous déplacer dans un document et de naviguer vers ses différentes sections et parties – ceci est similaire à la fonctionnalité du volet de navigation dans Microsoft Word pour accéder à une page ou à un en-tête dans un document Word sans faire défiler.

La méthode principale est de pouvoir déplacer la position du curseur vers un nœud spécifique de votre document, vous pouvez y parvenir en utilisant la méthode [MoveTo](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/moveto/).

L'exemple de code suivant montre comment déplacer le **DocumentBuilder** vers différents nœuds d'un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToNode.cpp" >}}

Mais en plus de la méthode de base **MoveTo**, il y en a des plus spécifiques.

### Accéder au début ou à la fin d'un document

Vous pouvez aller au début ou à la fin de votre document en utilisant les méthodes [MoveToDocumentStart](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentstart/) et [MoveToDocumentEnd](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetodocumentend/).

L'exemple de code suivant montre comment déplacer la position du curseur au début ou à la fin d'un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToDocumentStartEnd.cpp" >}}

### Naviguer Avec Des Signets

Vous pouvez marquer un endroit que vous souhaitez trouver et vous y déplacer à nouveau facilement. Vous pouvez insérer autant de signets que vous le souhaitez dans votre document, puis les parcourir en identifiant les signets avec des noms uniques. Vous pouvez accéder à un signet en utilisant la méthode [MoveToBookmark](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetobookmark/).

Les exemples de code suivants montrent comment déplacer la position du curseur vers un signet:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToBookmark.cpp" >}}

### Accédez aux cellules du tableau

Vous pouvez accéder à une cellule de tableau à l'aide de la méthode [MoveToCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetocell/). Cette méthode vous permettra de naviguer avec votre curseur dans n'importe quelle cellule d'un tableau spécifique. De plus, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou caractère spécifié dans une cellule de la méthode **MoveToCell**.

L'exemple de code suivant montre comment déplacer la position d'un curseur vers une cellule de tableau spécifiée:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToTableCell.cpp" >}}

### Naviguer vers un champ

Vous pouvez accéder à un champ spécifique de votre document en utilisant la méthode [MoveToField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetofield/). De plus, vous pouvez accéder à un champ de fusion spécifique en utilisant la méthode [MoveToMergeField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetomergefield/).

L'exemple de code suivant montre comment déplacer le curseur du générateur de documents vers un champ spécifique:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToMergeField.cpp" >}}

### Accédez à un en-tête ou un pied de page

Vous pouvez passer au début d'un en-tête ou d'un pied de page en utilisant la méthode [MoveToHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoheaderfooter/).

L'exemple de code suivant montre comment déplacer le curseur du générateur de documents vers un en-tête ou un pied de page de document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderHeadersAndFooters.cpp" >}}

### Accédez à une section ou un paragraphe

Vous pouvez passer à une section ou un paragraphe spécifique en utilisant les méthodes [MoveToParagraph](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetoparagraph/) ou [MoveToSection](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/movetosection/). De plus, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou un caractère spécifié dans un paragraphe dans la méthode **MoveToParagraph**.

L'exemple de code suivant montre comment passer à une section spécifique et à un paragraphe spécifique dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderMovingCursor-DocumentBuilderMoveToSectionParagraph.cpp" >}}
