---
title: Fusionner des cellules de tableau en C++
second_title: Aspose.Words pour C++
articleTitle: Fusionner Les Cellules Du Tableau
linktitle: Fusionner Les Cellules Du Tableau
description: "Comment fusionner des cellules de tableau en C++. Vérifiez si les cellules d'un tableau sont fusionnées à l'aide de C++."
type: docs
weight: 40
url: /fr/cpp/merge-table-cells/
---

Parfois, certaines lignes d'un tableau nécessitent un en-tête ou de gros blocs de texte qui occupent toute la largeur du tableau. Pour une conception correcte du tableau, l'utilisateur peut fusionner plusieurs cellules du tableau en une seule. Aspose.Words prend en charge les cellules fusionnées lorsque vous travaillez avec tous les formats d'entrée, y compris l'importation de contenu HTML.

## Comment Fusionner des Cellules de Tableau

Dans Aspose.Words, les cellules fusionnées sont représentées par les propriétés suivantes de la classe [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) qui décrit si la cellule fait partie d'une fusion horizontale de cellules
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) qui décrit si la cellule fait partie d'une fusion verticale de cellules

Les valeurs de ces propriétés déterminent le comportement de fusion des cellules:

- La première cellule d'une séquence de cellules fusionnées aura [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Toutes les cellules fusionnées ultérieurement auront [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Une cellule qui n'est pas fusionnée aura [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Parfois, lors du chargement de cellules de document existantes dans un tableau, elles apparaîtront fusionnées. Cependant, il peut en fait s'agir d'une longue cellule – parfois Microsoft Word exporte des cellules fusionnées de cette façon. Cela peut être déroutant lorsque vous essayez de travailler avec des cellules individuelles, mais il ne semble pas y avoir de modèle particulier quant au moment où cela se produit.

{{% /alert %}}

## Vérifier si la cellule est fusionnée

Pour vérifier si une cellule fait partie d'une séquence de cellules fusionnées, nous vérifions simplement les propriétés **HorizontalMerge** et **VerticalMerge**.

L'exemple de code suivant montre comment imprimer le type de fusion de cellule horizontale et verticale:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Cellules fusionnées dans un tableau {#merge-cells-in-a-table}

Pour fusionner des cellules dans un tableau créé avec le [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), vous devez définir le type de fusion approprié pour chaque cellule où la fusion est attendue-d'abord **CellMerge.First** puis **CellMerge.Previous**.

De plus, vous devez vous rappeler d'effacer le paramètre de fusion pour les cellules où aucune fusion n'est requise – cela peut être fait en définissant la première cellule non fusionnée sur **CellMerge.None**. Si cela n'est pas fait, toutes les cellules du tableau seront fusionnées.

L'exemple de code suivant montre comment créer un tableau avec deux lignes où les cellules de la première ligne sont fusionnées horizontalement:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

L'exemple de code suivant montre comment créer un tableau à deux colonnes dans lequel les cellules de la première colonne sont fusionnées verticalement:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Fusionner des Cellules de Tableau dans D'Autres Cas

Dans d'autres situations où le **DocumentBuilder** n'est pas utilisé, comme dans un tableau existant, la fusion des cellules de la manière précédente peut ne pas être aussi simple. Au lieu de cela, nous pouvons envelopper les opérations de base impliquées dans l'application des propriétés de fusion aux cellules dans une méthode qui rend la tâche beaucoup plus facile. Cette méthode est similaire à la méthode d'automatisation de fusion, qui est appelée pour fusionner une plage de cellules dans un tableau.

Le code ci-dessous fusionnera les cellules du tableau dans la plage spécifiée, en commençant par la cellule donnée et en se terminant par la cellule de fin. Dans ce cas, la plage peut s'étendre sur plusieurs lignes ou colonnes:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

L'exemple de code suivant montre comment fusionner une plage de cellules entre deux cellules spécifiées:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Selon la version du Framework que vous utilisez, vous souhaiterez peut-être affiner cette méthode en la transformant en une méthode d'extension. Dans ce cas, vous pouvez appeler cette méthode directement sur une cellule pour fusionner une plage de cellules, telle que `cell1.Merge(cell2)`.

## Cellules fusionnées verticales et horizontales dans un tableau {#vertical-and-Horizontal-merged-cells-in-the-table}

Comme nous l'avons dit dans les articles précédents, un tableau dans Microsoft Word est un ensemble de lignes indépendantes. Chaque ligne comporte un ensemble de cellules indépendantes des cellules des autres lignes. Ainsi, dans le tableau Microsoft Word, il n'y a pas d'objet tel qu'une "colonne", et "1st colonne" est quelque chose comme "l'ensemble des 1st cellules de chaque ligne du tableau". Cela permet aux utilisateurs d'avoir un tableau dans lequel, par exemple, la 1ème ligne se compose de deux cellules – 2cm et 1cm, et la 2ème ligne se compose de deux cellules différentes – 1cm et 2cm de large. Et Aspose.Words supporte ce concept de tables.

Un tableau en HTML a une structure essentiellement différente: chaque ligne a le même nombre de cellules et (c'est important pour la tâche) chaque cellule a la largeur de la colonne correspondante, la même pour toutes les cellules d'une colonne. Donc, si **HorizontalMerge** et **VerticalMerge** renvoient une valeur incorrecte, utilisez l'exemple de code suivant:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Convertir en cellules fusionnées horizontalement {#convert-to-horizontally-merged-cells}

Parfois, il n'est pas possible de détecter quelles cellules sont fusionnées car certaines versions plus récentes de Microsoft Word n'utilisent plus les indicateurs de fusion lorsque les cellules sont fusionnées horizontalement. Mais pour les situations où les cellules sont fusionnées horizontalement en une cellule par leur largeur à l'aide des indicateurs de fusion, Aspose.Words fournit la méthode `ConvertToHorizontallyMergedCells` pour convertir les cellules. Cette méthode transforme simplement le tableau et ajoute de nouvelles cellules au besoin.

L'exemple de code suivant montre la méthode ci-dessus en fonctionnement:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}