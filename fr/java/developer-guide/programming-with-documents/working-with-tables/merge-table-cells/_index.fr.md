---
title: Fusionner les cellules de table dans Java
second_title: Aspose.Words pour Java
articleTitle: Fusionner les cellules de table
linktitle: Fusionner les cellules de table
description: "Comment fusionner des cellules de table dans Java. Vérifier si les cellules d'une table sont fusionnées en utilisant Java."
type: docs
weight: 40
url: /fr/java/working-with-merged-cells/
---

Parfois, certaines lignes d'une table nécessitent un titre ou de grands blocs de texte qui prennent toute la largeur de la table. Pour une bonne conception de la table, l'utilisateur peut fusionner plusieurs cellules de table en une seule. Aspose.Words prend en charge les cellules fusionnées lorsque vous travaillez avec tous les formats d'entrée, y compris l'importation de contenu HTML.

## Comment fusionner les cellules de table

En Aspose.Words, les cellules fusionnées sont représentées par les propriétés suivantes [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) classe:

- Oui. [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) qui décrit si la cellule fait partie d'une fusion horizontale de cellules
- Oui. [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) qui décrit si la cellule fait partie d'une fusion verticale de cellules

Les valeurs de ces propriétés déterminent le comportement de fusion des cellules:

- Oui. La première cellule dans une séquence de cellules fusionnées aura [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
- Oui. Toute cellule fusionnée ultérieurement aura [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)
- Une cellule non fusionnée aura [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](/words/java/working-with-merged-cells/working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Parfois, lors du chargement des cellules de documents existantes dans une table, elles apparaissent fusionnées. Cependant, il peut en fait être une cellule longue – parfois Microsoft Word exporte ainsi des cellules fusionnées. Cela peut prêter à confusion lorsqu'on tente de travailler avec des cellules individuelles, mais il ne semble pas y avoir de modèle particulier quant au moment où cela se produit.

{{% /alert %}}

## Vérifier si une cellule est fusionnée

Pour vérifier si une cellule fait partie d'une séquence de cellules fusionnées, nous vérifions simplement **HorizontalMerge** et **VerticalMerge** propriétés.

L'exemple de code suivant montre comment imprimer le type de fusion de cellules horizontales et verticales:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Fusionner les cellules de table lors de l'utilisation de DocumentBuilder

Pour fusionner des cellules dans une table créée avec le [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), vous devez définir le type de fusion approprié pour chaque cellule où la fusion est attendue – d'abord **CellMerge.First** et puis **CellMerge.Previous**.

En outre, vous devez vous rappeler d'effacer le paramètre de fusion pour les cellules où aucune fusion n'est nécessaire – cela peut être fait en configurant la première cellule non fusion à **CellMerge.None**. Si cela n'est pas fait, toutes les cellules du tableau seront fusionnées.

L'exemple de code suivant montre comment créer une table avec deux lignes où les cellules de la première ligne sont fusionnées horizontalement:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

L'exemple de code suivant montre comment créer une table à deux colonnes où les cellules de la première colonne sont fusionnées verticalement:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Fusionner les cellules de table dans d'autres cas

Dans d'autres situations où **DocumentBuilder** n'est pas utilisé, comme dans une table existante, fusionner des cellules de la manière précédente peut ne pas être aussi facile. Au lieu de cela, nous pouvons envelopper les opérations de base impliquées dans l'application des propriétés de fusion aux cellules dans une méthode qui rend la tâche beaucoup plus facile. Cette méthode est similaire à la méthode d'automatisation de fusion, qui est appelée à fusionner une gamme de cellules dans une table.

Le code ci-dessous fusionnera les cellules de la table dans la plage spécifiée, commençant par la cellule donnée et se terminant par la cellule finale. Dans ce cas, la plage peut couvrir plusieurs lignes ou colonnes:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

L'exemple de code suivant montre comment fusionner une gamme de cellules entre deux cellules spécifiées:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Cellules fusionnées verticales et horizontales en HTML

Comme nous l'avons dit dans les articles précédents, Microsoft Word est un ensemble de lignes indépendantes. Chaque rangée comporte un ensemble de cellules indépendantes des cellules des autres rangées. Ainsi, Microsoft Word table il n'y a pas d'objet tel qu'une colonne de la liste, et la première colonne est quelque chose comme la série des 1er cellules de chaque ligne de la table. Cela permet aux utilisateurs d'avoir une table dans laquelle, par exemple, la 1ère rangée se compose de deux cellules – 2cm et 1cm, et la 2ème rangée se compose de deux cellules différentes – 1cm et 2cm de large. Et Aspose.Words soutient ce concept de tableaux.

Une table en HTML a une structure essentiellement différente: chaque ligne a le même nombre de cellules et (il est important pour la tâche) chaque cellule a la largeur de la colonne correspondante, la même pour toutes les cellules dans une colonne. Donc si **HorizontalMerge** et **VerticalMerge** retourner une valeur incorrecte, utilisez l'exemple de code suivant:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Convertir horizontalement Cellules fusionnées

Parfois, il n'est pas possible de détecter quelles cellules sont fusionnées parce que certaines versions plus récentes de Microsoft Word ne plus utiliser les drapeaux de fusion lorsque les cellules sont fusionnées horizontalement. Mais pour les situations où les cellules sont fusionnées horizontalement dans une cellule par leur largeur en utilisant des drapeaux de fusion, Aspose.Words fournit les `ConvertToHorizontallyMergedCells` méthode pour convertir les cellules. Cette méthode transforme simplement la table et ajoute de nouvelles cellules au besoin.

L'exemple de code suivant montre la méthode ci-dessus en fonctionnement:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
