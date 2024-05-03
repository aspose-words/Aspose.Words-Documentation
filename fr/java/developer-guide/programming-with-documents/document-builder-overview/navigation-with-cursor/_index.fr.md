---
title: Navigation avec Curseur en Java
second_title: Aspose.Words pour Java
articleTitle: Navigation avec le curseur
linktitle: Navigation avec le curseur
description: "Naviguez entre différents nœuds dans un document, comme un paragraphe, un signet ou un caractère spécifique en utilisant Java."
type: docs
weight: 5
url: /fr/java/navigation-with-cursor/
---

Tout en travaillant avec un document, même s'il est court ou long, vous devrez naviguer dans votre document. La navigation avec un curseur virtuel représente la capacité de naviguer entre différents nœuds dans un document.

Dans un document court, se déplacer dans un document est simple car vous pouvez déplacer le point d'insertion même en utilisant les touches fléchées du clavier ou en cliquant sur la souris pour localiser le point d'insertion où vous voulez. Mais une fois que vous aurez un grand document qui a beaucoup de pages, ces techniques de base seront insuffisantes.

Cet article explique comment se déplacer dans un document et naviguer avec un curseur virtuel vers différentes parties de celui-ci.

## Détecter la position du curseur actuel

Avant de commencer le processus de navigation dans votre document, vous devrez obtenir le nœud qui est actuellement sélectionné. Vous pouvez obtenir la position exacte du curseur sur un noeud sélectionné en utilisant le [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) propriété. En outre, au lieu d'obtenir le noeud actuel, vous pouvez obtenir le paragraphe actuellement sélectionné ou la section actuellement sélectionnée en utilisant le [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) et [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) propriétés.

Toutes les opérations d'insertion que vous effectuez en utilisant la [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sera inséré avant le [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode). Lorsque le paragraphe actuel est vide ou que le curseur est positionné juste avant la fin du paragraphe, **CurrentNode** retourne nul.

## Navigation des méthodes dans un document

Lorsque vous modifiez du texte, il est important de savoir comment naviguer dans votre document et où se déplacer exactement. Aspose.Words vous permet de vous déplacer dans un document et de naviguer dans ses différentes sections et parties – c'est similaire à la fonctionnalité du panneau de navigation dans Microsoft Word pour aller sur une page ou dans un document Word sans défiler.

La méthode principale est de pouvoir déplacer la position du curseur vers un noeud spécifique dans votre document, vous pouvez y parvenir en utilisant le [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) méthode.

L'exemple de code suivant montre comment déplacer le **DocumentBuilder** à différents nœuds dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Mais en plus de la base **MoveTo** méthode, il ya des plus spécifiques.

### Naviguez vers le début ou la fin d'un document

Vous pouvez aller au début ou à la fin de votre document en utilisant [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) et [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) méthodes.

L'exemple de code suivant montre comment déplacer la position du curseur au début ou à la fin d'un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Naviguez avec les signets

Vous pouvez marquer un endroit que vous voulez trouver et déplacer à nouveau facilement. Vous pouvez insérer autant de signets dans votre document que vous le souhaitez, puis naviguer à travers eux en identifiant les signets avec des noms uniques. Vous pouvez passer à un signet en utilisant le [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) méthode.

Les exemples de code suivants montrent comment déplacer une position du curseur vers un signet:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Naviguez vers les cellules de table

Vous pouvez passer à une cellule de table en utilisant la [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) méthode. Cette méthode vous permettra de naviguer dans n'importe quelle cellule d'une table spécifique. En outre, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou caractère spécifié dans une cellule dans la **MoveToCell** méthode.

L'exemple de code suivant montre comment déplacer une position du curseur vers une cellule de table spécifiée:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Naviguez vers un champ

Vous pouvez passer à un champ spécifique de votre document en utilisant le [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) méthode. En outre, vous pouvez passer à un champ de fusion spécifique en utilisant le [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) méthode.

L'exemple de code suivant montre comment déplacer le curseur du constructeur de document vers un champ spécifique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Naviguez vers un en-tête ou un pied de page

Vous pouvez passer au début d'un en-tête ou d'un pied de page en utilisant le [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) méthode

L'exemple de code suivant montre comment déplacer le curseur du constructeur de document vers un en-tête ou un pied de page de document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Naviguez vers une section ou un paragraphe

Vous pouvez passer à une section ou un paragraphe spécifique en utilisant le [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) ou [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) méthodes. En outre, vous pouvez spécifier un index pour déplacer le curseur vers n'importe quelle position ou un caractère spécifié dans un paragraphe dans le **MoveToParagraph** méthode.

L'exemple de code suivant montre comment passer à une section spécifique et à un paragraphe spécifique dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
