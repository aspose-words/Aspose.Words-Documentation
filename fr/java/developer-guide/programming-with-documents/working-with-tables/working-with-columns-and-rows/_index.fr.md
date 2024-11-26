---
title: Travailler avec des colonnes et des lignes dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des Colonnes et des Lignes
linktitle: Travailler avec des Colonnes et des Lignes
description: "Utilisation de parties d'un tableau – lignes, colonnes et cellules à l'aide de Java. Spécifiez la ligne d'en-tête Java."
type: docs
weight: 30
url: /fr/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Pour mieux contrôler le fonctionnement des tableaux, apprenez à manipuler les colonnes et les lignes.

## Trouver l'index des éléments de la Table

Les colonnes, les lignes et les cellules sont gérées en accédant au nœud de document sélectionné par son index. Trouver l'index de n'importe quel nœud implique de rassembler tous les nœuds enfants du type d'élément à partir du nœud parent, puis d'utiliser la méthode [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) pour trouver l'index du nœud souhaité dans la collection.

### Trouver l'index d'une Table dans un Document

Parfois, vous devrez peut-être apporter des modifications à une table particulière d'un document. Pour ce faire, vous pouvez vous référer à une table par son index.

L'exemple de code suivant montre comment récupérer l'index d'une table dans un document:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Trouver l'index d'une ligne dans un tableau

De même, vous devrez peut-être apporter des modifications à une ligne spécifique d'un tableau sélectionné. Pour ce faire, vous pouvez également vous référer à une ligne par son index.

L'exemple de code suivant montre comment récupérer l'index d'une ligne dans une table:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Trouver l'index d'une cellule dans une rangée

Enfin, vous devrez peut-être apporter des modifications à une cellule spécifique, et vous pouvez également le faire par index de cellule.

L'exemple de code suivant montre comment récupérer l'index d'une cellule d'une ligne:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Travailler avec des colonnes

Dans le modèle d'objet de document Aspose.Words (DOM), le nœud [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) se compose de nœuds [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) puis de nœuds [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/). Ainsi, dans le modèle objet `Document` de Aspose.Words, comme dans les documents Word, il n'y a pas de concept de colonne.

De par leur conception, les lignes du tableau dans Microsoft Word et Aspose.Words sont complètement indépendantes, et les propriétés et opérations de base ne sont contenues que dans les lignes et les cellules du tableau. Cela donne aux tableaux la possibilité d'avoir des attributs intéressants:

- Chaque ligne du tableau peut avoir un nombre de cellules complètement différent
- Verticalement, les cellules de chaque rangée peuvent avoir des largeurs différentes
- Il est possible de joindre des tableaux avec différents formats de lignes et nombre de cellules

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Toutes les opérations effectuées sur les colonnes sont en fait des "raccourcis" qui effectuent l'opération en modifiant collectivement les cellules de ligne de telle sorte qu'il semble qu'elles soient appliquées aux colonnes. Autrement dit, vous pouvez effectuer des opérations sur les colonnes en itérant simplement sur le même index de cellule de ligne de tableau.

L'exemple de code suivant simplifie de telles opérations en prouvant une classe de façade qui collecte les cellules qui composent une "colonne" d'une table:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

L'exemple de code suivant montre comment insérer une colonne vide dans un tableau:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

L'exemple de code suivant montre comment supprimer une colonne d'un tableau dans un document:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Spécifier des lignes comme Lignes d'en-tête

Vous pouvez choisir de répéter la première ligne du tableau en tant que ligne d'en-tête uniquement sur la première page ou sur chaque page si le tableau est divisé en plusieurs. Dans Aspose.Words, vous pouvez répéter la ligne d'en-tête sur chaque page à l'aide de la propriété [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat).

Vous pouvez également marquer plusieurs lignes d'en-tête si ces lignes sont situées l'une après l'autre au début du tableau. Pour ce faire, vous devez appliquer les propriétés **HeadingFormat** à ces lignes.

{{% alert color="primary" %}}

Notez que les lignes d'en-tête ne fonctionnent pas dans les tables imbriquées. Autrement dit, si vous avez une table à l'intérieur d'une autre table, ce paramètre n'aura aucun effet. C'est une limitation de Microsoft Word qui ne le permet pas, pas Aspose.Words.

{{% /alert %}}

L'exemple de code suivant montre comment créer un tableau qui inclut des lignes d'en-tête qui se répètent sur les pages suivantes:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Empêchez les Tableaux et les Lignes de Se Briser Sur les Pages {#keep-tables-and-rows-from-breaking-across-pages}

Il y a des moments où le contenu d'un tableau ne doit pas être réparti sur plusieurs pages. Par exemple, si un titre est au-dessus d'un tableau, le titre et le tableau doivent toujours être conservés ensemble sur la même page pour préserver l'apparence appropriée.

Il existe deux techniques distinctes qui sont utiles pour atteindre cette fonctionnalité:

- `Allow row break across pages`, qui est appliqué aux lignes du tableau
- `Keep with next`, qui est appliqué aux paragraphes dans les cellules du tableau

Par défaut, les propriétés ci-dessus sont désactivées.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Empêche une Ligne de Traverser les Pages {#keep-a-row-from-breaking-across-pages}

Cela implique de restreindre le contenu à l'intérieur des cellules d'une ligne d'être divisé sur une page. Dans Microsoft Word, cela se trouve sous les propriétés du tableau sous l'option "Autoriser la ligne à traverser les pages". Dans Aspose.Words, cela se trouve sous l'objet [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) d'un [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) en tant que propriété [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

L'exemple de code suivant montre comment désactiver la séparation des lignes entre les pages pour chaque ligne d'un tableau:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Empêcher une Table de Se Briser Sur les Pages {#keep-a-table-from-breaking-across-pages}

Pour empêcher le tableau de se diviser entre les pages, nous devons spécifier que nous voulons que le contenu contenu dans le tableau reste uni.

Pour ce faire, Aspose.Words utilise une méthode qui permet aux utilisateurs de sélectionner un tableau et d'activer le paramètre [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) sur true pour chaque paragraphe dans les cellules du tableau. L'exception est le dernier paragraphe du tableau, qui doit être défini sur false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

L'exemple de code suivant montre comment définir une table pour qu'elle reste ensemble sur la même page:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
