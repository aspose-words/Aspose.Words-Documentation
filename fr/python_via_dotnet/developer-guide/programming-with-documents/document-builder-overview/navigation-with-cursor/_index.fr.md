---
title: Navigation avec le curseur dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Navigation avec le curseur
linktitle: Navigation avec le curseur
description: "Naviguez entre différents nœuds au sein d'un document tel qu'un paragraphe, un signet ou un caractère spécifique à l'aide de Python."
type: docs
weight: 10
url: /fr/python-net/navigation-with-cursor/
---

Lorsque vous travaillez avec un document, même s'il est court ou long, vous devrez naviguer dans votre document. La navigation avec un curseur virtuel représente la possibilité de naviguer entre différents nœuds d'un document.

Dans un document court, se déplacer dans un document est simple puisque vous pouvez déplacer le point d'insertion même en utilisant les touches fléchées du clavier ou en cliquant sur la souris pour localiser le point d'insertion où vous le souhaitez. Mais une fois que vous disposez d’un document volumineux comportant de nombreuses pages, ces techniques de base seront insuffisantes.

Cet article explique comment se déplacer dans un document et naviguer avec un curseur virtuel vers différentes parties de celui-ci.

## Détection de la position actuelle du curseur

Avant de commencer le processus de navigation dans votre document, vous devrez obtenir le nœud actuellement sélectionné. Vous pouvez obtenir la position exacte du curseur sur un nœud sélectionné en utilisant la propriété [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). De plus, au lieu d'obtenir le nœud actuel, vous pouvez obtenir le paragraphe ou la section actuellement sélectionné en utilisant les propriétés [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) et [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/).

Toutes les opérations d'insertion que vous effectuez à l'aide du [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) seront insérées avant le [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/). Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, le [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) renvoie Aucun.

## Navigation dans les méthodes dans un document

Lorsque vous modifiez du texte, il est important de savoir comment naviguer dans votre document et où vous déplacer exactement. Aspose.Words vous permet de vous déplacer dans un document et de naviguer vers ses différentes sections et parties – ceci est similaire à la fonctionnalité du volet de navigation dans Microsoft Word pour accéder à une page ou à un titre dans un document Word sans faire défiler.

La méthode principale est de pouvoir déplacer la position du curseur vers un nœud spécifique de votre document, vous pouvez y parvenir en utilisant la méthode [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/).

L'exemple de code suivant montre comment déplacer le [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) vers différents nœuds dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Mais outre la méthode de base [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/), il en existe des plus spécifiques.

### Accédez au début ou à la fin d'un document

Vous pouvez aller au début ou à la fin de votre document en utilisant les méthodes [move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) et [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/).

L'exemple de code suivant montre comment déplacer la position du curseur au début ou à la fin d'un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Naviguer avec les signets

Vous pouvez marquer un endroit que vous souhaitez trouver et vous y déplacer facilement. Vous pouvez insérer autant de signets que vous le souhaitez dans votre document, puis les parcourir en identifiant les signets avec des noms uniques. Vous pouvez accéder à un signet en utilisant la méthode [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/).

Les exemples de code suivants montrent comment déplacer la position du curseur vers un signet:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Accédez aux cellules du tableau

Vous pouvez accéder à une cellule du tableau en utilisant la méthode [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/). Cette méthode vous permettra de naviguer avec votre curseur dans n'importe quelle cellule d'un tableau spécifique. De plus, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou caractère spécifié dans une cellule dans la méthode [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/).

L'exemple de code suivant montre comment déplacer la position d'un curseur vers une cellule de tableau spécifiée:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Accédez à un champ

Vous pouvez accéder à un champ spécifique de votre document en utilisant la méthode [move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/). De plus, vous pouvez accéder à un champ de fusion spécifique en utilisant la méthode [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/).

L'exemple de code suivant montre comment déplacer le curseur du générateur de documents vers un champ spécifique:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Accédez à un en-tête ou un pied de page

Vous pouvez vous déplacer au début d'un en-tête ou d'un pied de page en utilisant la méthode [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/)

L'exemple de code suivant montre comment déplacer le curseur du générateur de documents vers un en-tête ou un pied de page de document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Accédez à une section ou un paragraphe

Vous pouvez accéder à une section ou à un paragraphe spécifique en utilisant les méthodes [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) ou [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/). De plus, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou un caractère spécifié dans un paragraphe au sein de la méthode [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/).

L'exemple de code suivant montre comment accéder à une section spécifique et à un paragraphe spécifique dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}