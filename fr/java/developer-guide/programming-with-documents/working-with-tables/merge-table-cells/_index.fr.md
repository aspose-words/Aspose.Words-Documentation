---
title: Fusionner les cellules du tableau dans Java
second_title: Aspose.Words pour Java
articleTitle: Fusionner Les Cellules Du Tableau
linktitle: Fusionner Les Cellules Du Tableau
description: "Comment fusionner des cellules de tableau dans Java. Vérifiez si les cellules d'un tableau sont fusionnées à l'aide de Java."
type: docs
weight: 40
url: /fr/java/working-with-merged-cells/
timestamp: 2024-01-27-14-07-04
---

Parfois, certaines lignes d'un tableau nécessitent un en-tête ou de gros blocs de texte qui occupent toute la largeur du tableau. Pour une conception correcte du tableau, l'utilisateur peut fusionner plusieurs cellules du tableau en une seule. Aspose.Words prend en charge les cellules fusionnées lorsque vous travaillez avec tous les formats d'entrée, y compris l'importation de contenu HTML.

## Comment Fusionner des Cellules de Tableau

Dans Aspose.Words, les cellules fusionnées sont représentées par les propriétés suivantes de la classe [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) qui décrit si la cellule fait partie d'une fusion horizontale de cellules
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) qui décrit si la cellule fait partie d'une fusion verticale de cellules

Les valeurs de ces propriétés déterminent le comportement de fusion des cellules:

- La première cellule d'une séquence de cellules fusionnées aura [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Toutes les cellules fusionnées ultérieurement auront [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Une cellule qui n'est pas fusionnée aura [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Parfois, lors du chargement de cellules de document existantes dans un tableau, elles apparaîtront fusionnées. Cependant, il peut en fait s'agir d'une longue cellule – parfois Microsoft Word exporte des cellules fusionnées de cette façon. Cela peut être déroutant lorsque vous essayez de travailler avec des cellules individuelles, mais il ne semble pas y avoir de modèle particulier quant au moment où cela se produit.

{{% /alert %}}

## Vérifier si une cellule est fusionnée

Pour vérifier si une cellule fait partie d'une séquence de cellules fusionnées, nous vérifions simplement les propriétés **HorizontalMerge** et **VerticalMerge**.

L'exemple de code suivant montre comment imprimer le type de fusion de cellule horizontale et verticale:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Fusionner Les Cellules Du Tableau Lors De L'Utilisation De DocumentBuilder

Pour fusionner des cellules dans un tableau créé avec le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), vous devez définir le type de fusion approprié pour chaque cellule où la fusion est attendue-d'abord **CellMerge.First** puis **CellMerge.Previous**.

De plus, vous devez vous rappeler d'effacer le paramètre de fusion pour les cellules où aucune fusion n'est requise – cela peut être fait en définissant la première cellule non fusionnée sur **CellMerge.None**. Si cela n'est pas fait, toutes les cellules du tableau seront fusionnées.

L'exemple de code suivant montre comment créer un tableau avec deux lignes où les cellules de la première ligne sont fusionnées horizontalement:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

L'exemple de code suivant montre comment créer un tableau à deux colonnes dans lequel les cellules de la première colonne sont fusionnées verticalement:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Fusionner des Cellules de Tableau dans D'Autres Cas

Dans d'autres situations où le **DocumentBuilder** n'est pas utilisé, comme dans un tableau existant, la fusion des cellules de la manière précédente peut ne pas être aussi simple. Au lieu de cela, nous pouvons envelopper les opérations de base impliquées dans l'application des propriétés de fusion aux cellules dans une méthode qui rend la tâche beaucoup plus facile. Cette méthode est similaire à la méthode d'automatisation de fusion, qui est appelée pour fusionner une plage de cellules dans un tableau.

Le code ci-dessous fusionnera les cellules du tableau dans la plage spécifiée, en commençant par la cellule donnée et en se terminant par la cellule de fin. Dans ce cas, la plage peut s'étendre sur plusieurs lignes ou colonnes:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

L'exemple de code suivant montre comment fusionner une plage de cellules entre deux cellules spécifiées:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Cellules fusionnées verticales et horizontales dans le tableau HTML

Comme nous l'avons dit dans les articles précédents, une table dans Microsoft Word est un ensemble de lignes indépendantes. Chaque ligne comporte un ensemble de cellules indépendantes des cellules des autres lignes. Ainsi, dans le tableau Microsoft Word, il n'y a pas d'objet tel qu'une "colonne", et "1ère colonne" est quelque chose comme "l'ensemble des 1ères cellules de chaque ligne du tableau". Cela permet aux utilisateurs d'avoir un tableau dans lequel, par exemple, la 1ère rangée se compose de deux cellules – 2cm et 1cm, et la 2ème rangée se compose de deux cellules différentes – 1cm et 2cm de large. Et Aspose.Words supporte ce concept de tables.

Un tableau dans HTML a une structure essentiellement différente: chaque ligne a le même nombre de cellules et (c'est important pour la tâche) chaque cellule a la largeur de la colonne correspondante, la même pour toutes les cellules d'une colonne. Donc, si **HorizontalMerge** et **VerticalMerge** renvoient une valeur incorrecte, utilisez l'exemple de code suivant:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Convertir en cellules fusionnées horizontalement

Parfois, il n'est pas possible de détecter quelles cellules sont fusionnées car certaines versions plus récentes de Microsoft Word n'utilisent plus les indicateurs de fusion lorsque les cellules sont fusionnées horizontalement. Mais pour les situations où les cellules sont fusionnées horizontalement en une cellule par leur largeur à l'aide des indicateurs de fusion, Aspose.Words fournit la méthode `ConvertToHorizontallyMergedCells` pour convertir les cellules. Cette méthode transforme simplement le tableau et ajoute de nouvelles cellules au besoin.

L'exemple de code suivant montre la méthode ci-dessus en fonctionnement:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
