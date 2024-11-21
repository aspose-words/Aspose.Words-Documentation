---
title: Travailler avec les colonnes et les lignes dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec des colonnes et des lignes
linktitle: Travailler avec des colonnes et des lignes
description: "Travailler avec des parties d'une table – lignes, colonnes et cellules en utilisant Java. Indiquer la ligne d'en-tête Java."
type: docs
weight: 30
url: /fr/java/working-with-columns-and-rows/
timestamp: 2024-01-27-14-07-04
---

Pour plus de contrôle sur le fonctionnement des tables, apprenez à manipuler les colonnes et les lignes.

## Trouver l'index des éléments de tableau

Les colonnes, lignes et cellules sont gérées en accédant au nœud de document sélectionné par son index. Trouver l'index de n'importe quel noeud implique de rassembler tous les nœuds enfants du type d'élément à partir du noeud parent, puis d'utiliser le [IndexOf](https://reference.aspose.com/words/java/com.aspose.words/nodecollection/#indexOf-com.aspose.words.Node) méthode pour trouver l'index du noeud désiré dans la collection.

### Trouvez l'index d'un tableau dans un document

Parfois, vous pouvez avoir besoin de modifier un tableau particulier dans un document. Pour ce faire, vous pouvez vous référer à une table par son index.

L'exemple de code suivant montre comment récupérer l'index d'un tableau dans un document:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-table-index.java" >}}

### Trouver l'index d'une ligne dans un tableau

De même, vous devrez peut-être apporter des modifications à une ligne spécifique d'une table sélectionnée. Pour ce faire, vous pouvez également vous référer à une ligne par son index.

L'exemple de code suivant montre comment récupérer l'index d'une ligne dans un tableau:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-row-index.java" >}}

### Trouver l'index d'une cellule dans une rangée

Enfin, vous pouvez avoir besoin d'apporter des modifications à une cellule spécifique, et vous pouvez le faire par index cellulaire aussi bien.

L'exemple de code suivant montre comment récupérer l'index d'une cellule dans une rangée:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "retrieve-cell-index.java" >}}

## Travailler avec des colonnes

Dans Aspose.Words Document Object Model (DOM), les [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) le noeud se compose de [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) noeuds et puis [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) les noeuds. Ainsi, `Document` Modèle d'objet Aspose.Words, comme dans les documents Word, il n'y a pas de concept de colonne.

Par conception, les lignes de table dans Microsoft Word et Aspose.Words sont totalement indépendants, et les propriétés et les opérations de base ne sont contenues que dans les lignes et les cellules de la table. Cela donne aux tableaux la possibilité d'avoir quelques attributs intéressants:

- Chaque rangée de table peut avoir un nombre complètement différent de cellules
- verticalement, les cellules de chaque rangée peuvent avoir différentes largeurs
- Oui. Il est possible de joindre des tables avec différents formats de lignes et le nombre de cellules

![work-with-columns-aspose-words-java](/words/java/working-with-columns-and-rows/working-with-columns-and-rows-1.png)

Toutes les opérations effectuées sur les colonnes sont en fait des "raccourcis" qui effectuent l'opération en changeant collectivement les cellules de rangée de telle sorte qu'il semble qu'elles soient appliquées aux colonnes. C'est-à-dire que vous pouvez effectuer des opérations sur des colonnes en itérant simplement sur le même index de la ligne de table.

L'exemple de code suivant simplifie ces opérations en prouvant une classe de façade qui recueille les cellules qui constituent une "colonne" d'une table:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "column-class.java" >}}

L'exemple de code suivant montre comment insérer une colonne vide dans un tableau:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "insert-blank-column.java" >}}

L'exemple de code suivant montre comment supprimer une colonne d'un tableau dans un document:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "remove-column.java" >}}

## Spécifier les lignes comme lignes d'en-tête

Vous pouvez choisir de répéter la première ligne de la table comme en-tête uniquement sur la première page ou sur chaque page si la table est divisée en plusieurs. En Aspose.Words, vous pouvez répéter la ligne d'en-tête sur chaque page en utilisant [HeadingFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getHeadingFormat) propriété.

Vous pouvez également marquer plusieurs lignes d'en-tête si ces lignes sont situées l'une après l'autre au début de la table. Pour ce faire, vous devez **HeadingFormat** propriétés à ces lignes.

{{% alert color="primary" %}}

Notez que les rangées d'en-tête ne fonctionnent pas dans les tables imbriquées. Autrement dit, si vous avez une table à l'intérieur d'une autre table, ce paramètre n'aura aucun effet. C'est une limitation de Microsoft Word qui ne le permet pas, pas Aspose.Words.

{{% /alert %}}

L'exemple de code suivant montre comment construire une table qui inclut les rangées d'en-têtes qui se répètent sur les pages suivantes:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "repeat-rows-on-subsequent-pages.java" >}}

## Maintenez les tables et les rangées de casser les pages {#keep-tables-and-rows-from-breaking-across-pages}

Il y a des moments où le contenu d'une table ne devrait pas être divisé entre les pages. Par exemple, si un titre est au-dessus d'une table, le titre et la table doivent toujours être conservés ensemble sur la même page pour préserver l'apparence appropriée.

Deux techniques distinctes sont utiles pour réaliser cette fonctionnalité:

- Oui. `Allow row break across pages`, qui est appliqué aux lignes de tableau
- Oui. `Keep with next`, qui est appliqué aux paragraphes des cellules de tableau

Par défaut, les propriétés ci-dessus sont désactivées.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-1.png" alt="keep-tables-and-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

### Garder une ligne de la rupture entre les pages {#keep-a-row-from-breaking-across-pages}

Cela implique de limiter le contenu à l'intérieur des cellules d'une ligne d'être divisé sur une page. En Microsoft Word, Ceci peut se trouver sous Propriétés de la table comme l'option -Autoriser la ligne pour casser les pages. En Aspose.Words ce qui se trouve sous le [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) objet d'une [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) comme propriété [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getAllowBreakAcrossPages).

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-2.png" alt="keep-rows-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

L'exemple de code suivant montre comment désactiver la rupture des lignes entre les pages pour chaque ligne d'une table:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "row-format-disable-break-across-pages.java" >}}

### Garder une table à l'écart des pages {#keep-a-table-from-breaking-across-pages}

Pour empêcher la table de diviser les pages, nous devons spécifier que nous voulons que le contenu contenu de la table reste ensemble.

Pour ce faire, Aspose.Words utilise une méthode qui permet aux utilisateurs de sélectionner une table et d'activer [KeepWithNext](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getKeepWithNext) paramètre à true pour chaque paragraphe dans les cellules du tableau. L'exception est le dernier paragraphe du tableau, qui devrait être défini comme suit: false.

<img src="/words/java/working-with-columns-and-rows/keeping-tables-and-rows-from-breaking-across-pages-3.png" alt="keep-tables-from-breaking-across-pages-aspose-words-java" style="width:500px"/>

L'exemple de code suivant montre comment définir une table pour rester ensemble sur la même page:

{{< gist "aspose-words-gists" "14f5cea1b896ffd04f143627939e0878" "keep-table-together.java" >}}
