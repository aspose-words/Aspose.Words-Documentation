---
title: Fusionner les cellules du tableau
second_title: Aspose.Words pour Python via .NET
articleTitle: Fusionner les cellules du tableau
linktitle: Fusionner les cellules du tableau
description: "Comment fusionner les cellules d'un tableau dans Python. Vérifiez si les cellules d'un tableau sont fusionnées à l'aide de Python."
type: docs
weight: 40
url: /fr/python-net/working-with-merged-cells/
---

Parfois, certaines lignes d'un tableau nécessitent un en-tête ou de gros blocs de texte occupant toute la largeur du tableau. Pour une conception correcte du tableau, l'utilisateur peut fusionner plusieurs cellules du tableau en une seule. Aspose.Words prend en charge les cellules fusionnées lorsque vous travaillez avec tous les formats d'entrée, y compris l'importation de contenu HTML.

## Comment fusionner des cellules de tableau

Dans Aspose.Words, les cellules fusionnées sont représentées par les propriétés suivantes de la classe [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) qui décrit si la cellule fait partie d'une fusion horizontale de cellules
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) qui décrit si la cellule fait partie d'une fusion verticale de cellules

Les valeurs de ces propriétés déterminent le comportement de fusion des cellules:

- La première cellule d'une séquence de cellules fusionnées aura [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Toutes les cellules fusionnées ultérieurement auront [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Une cellule qui n'est pas fusionnée aura [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Parfois, lors du chargement de cellules de document existantes dans un tableau, elles apparaîtront fusionnées. Cependant, il peut en réalité s'agir d'une seule longue cellule – parfois, Microsoft Word exporte les cellules fusionnées de cette façon. Cela peut prêter à confusion lorsque l'on tente de travailler avec des cellules individuelles, mais il ne semble pas y avoir de schéma particulier quant au moment où cela se produit.

{{% /alert %}}

## Vérifiez si la cellule est fusionnée

Pour vérifier si une cellule fait partie d'une séquence de cellules fusionnées, on vérifie simplement les propriétés **HorizontalMerge** et **VerticalMerge**.

L'exemple de code suivant montre comment imprimer le type de fusion de cellules horizontale et verticale:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Fusionner les cellules du tableau lors de l'utilisation de DocumentBuilder

Pour fusionner des cellules dans un tableau créé avec [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), vous devez définir le type de fusion approprié pour chaque cellule où la fusion est attendue – d'abord **CellMerge.First** puis **CellMerge.Previous**.

N'oubliez pas non plus d'effacer le paramètre de fusion pour les cellules pour lesquelles aucune fusion n'est requise – cela peut être fait en définissant la première cellule non fusionnée sur **CellMerge.None**. Si cela n'est pas fait, toutes les cellules du tableau seront fusionnées.

L'exemple de code suivant montre comment créer un tableau avec deux lignes dans lequel les cellules de la première ligne sont fusionnées horizontalement:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

L'exemple de code suivant montre comment créer un tableau à deux colonnes dans lequel les cellules de la première colonne sont fusionnées verticalement:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Fusionner les cellules du tableau dans d'autres cas

Dans d'autres situations où le **DocumentBuilder** n'est pas utilisé, comme dans un tableau existant, la fusion de cellules de la manière précédente peut ne pas être aussi simple. Au lieu de cela, nous pouvons regrouper les opérations de base impliquées dans l’application des propriétés de fusion aux cellules dans une méthode qui rend la tâche beaucoup plus facile. Cette méthode est similaire à la méthode d'automatisation Fusion, qui est appelée pour fusionner une plage de cellules dans un tableau.

Le code ci-dessous fusionnera les cellules du tableau dans la plage spécifiée, en commençant à la cellule donnée et en terminant à la cellule de fin. Dans ce cas, la plage peut s'étendre sur plusieurs lignes ou colonnes:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

L'exemple de code suivant montre comment fusionner une plage de cellules entre deux cellules spécifiées:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Selon la version du Framework que vous utilisez, vous souhaiterez peut-être affiner cette méthode en la transformant en méthode d'extension. Dans ce cas, vous pouvez appeler cette méthode directement sur une cellule pour fusionner une plage de cellules, comme `cell1.Merge(cell2)`.

## Convertir en cellules fusionnées horizontalement

Parfois, il n'est pas possible de détecter quelles cellules sont fusionnées car certaines versions plus récentes de Microsoft Word n'utilisent plus les indicateurs de fusion lorsque les cellules sont fusionnées horizontalement. Mais pour les situations où les cellules sont fusionnées horizontalement en fonction de leur largeur à l'aide d'indicateurs de fusion, Aspose.Words fournit la méthode `ConvertToHorizontallyMergedCells` pour convertir les cellules. Cette méthode transforme simplement le tableau et ajoute de nouvelles cellules si nécessaire.

L'exemple de code suivant montre la méthode ci-dessus en fonctionnement:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
