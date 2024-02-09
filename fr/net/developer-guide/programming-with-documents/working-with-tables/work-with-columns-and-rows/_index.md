---
title: Travailler avec des colonnes et des lignes dans C#
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec des colonnes et des lignes
linktitle: Travailler avec des colonnes et des lignes
description: "Travailler avec des parties d'un tableau - lignes, colonnes et cellules à l'aide de C#. Spécifiez la ligne d'en-tête C#."
type: docs
weight: 30
url: /fr/net/working-with-columns-and-rows/
---

Pour mieux contrôler le fonctionnement des tableaux, découvrez comment manipuler les colonnes et les lignes.

## Trouver l'index des éléments de table {#find-the-index-of-table-elements}

Les colonnes, lignes et cellules sont gérées en accédant au nœud du document sélectionné par son index. Trouver l'index de n'importe quel nœud implique de rassembler tous les nœuds enfants du type d'élément à partir du nœud parent, puis d'utiliser la méthode [IndexOf](https://reference.aspose.com/words/net/aspose.words/nodecollection/indexof/) pour trouver l'index du nœud souhaité dans la collection.

### Rechercher l'index d'une table dans un document {#find-the-index-of-table-in-a-document}

Parfois, vous devrez peut-être apporter des modifications à un tableau particulier d'un document. Pour ce faire, vous pouvez faire référence à une table par son index.

L'exemple de code suivant montre comment récupérer l'index d'une table dans un document:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-table-index.cs" >}}

### Trouver l'index d'une ligne dans une table {#find-the-index-of-a-row-in-a-table}

De même, vous devrez peut-être apporter des modifications à une ligne spécifique d'un tableau sélectionné. Pour ce faire, vous pouvez également faire référence à une ligne par son index.

L'exemple de code suivant montre comment récupérer l'index d'une ligne dans une table:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-row-index.cs" >}}

### Trouver l'index d'une cellule dans une ligne {#find-the-index-of-a-cell-in-a-row}

Enfin, vous devrez peut-être apporter des modifications à une cellule spécifique, et vous pouvez également le faire par index de cellule.

L'exemple de code suivant montre comment récupérer l'index d'une cellule dans une ligne:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "retrieve-cell-index.cs" >}}

## Travailler avec des colonnes {#work-with-columns}

Dans le Aspose.Words Document Object Model (DOM), le nœud [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) est constitué de nœuds [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) puis de nœuds [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/). Ainsi, dans le modèle objet `Document` de Aspose.Words, comme dans les documents Word, il n'y a pas de notion de colonne.

De par leur conception, les lignes du tableau dans Microsoft Word et Aspose.Words sont complètement indépendantes et les propriétés et opérations de base sont contenues uniquement dans les lignes et les cellules du tableau. Cela donne aux tables la possibilité d'avoir des attributs intéressants:

- Chaque ligne du tableau peut avoir un nombre de cellules complètement différent
- Verticalement, les cellules de chaque rangée peuvent avoir des largeurs différentes
- Il est possible de joindre des tableaux avec différents formats de lignes et nombres de cellules

Toutes les opérations effectuées sur les colonnes sont en fait des "raccourcis" qui effectuent l'opération en modifiant collectivement les cellules des lignes de telle manière qu'elles semblent être appliquées aux colonnes. Autrement dit, vous pouvez effectuer des opérations sur les colonnes en parcourant simplement le même index de cellule de ligne de tableau.

L'exemple de code suivant simplifie ces opérations en prouvant une classe de façade qui collecte les cellules qui composent une "colonne" d'un tableau:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "column-class.cs" >}}

L'exemple de code suivant montre comment insérer une colonne vide dans une table:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "insert-blank-column.cs" >}}

L'exemple de code suivant montre comment supprimer une colonne d'une table dans un document:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "remove-column.cs" >}}

## Spécifier les lignes comme lignes d'en-tête

Vous pouvez choisir de répéter la première ligne du tableau comme ligne d'en-tête uniquement sur la première page ou sur chaque page si le tableau est divisé en plusieurs. Dans Aspose.Words, vous pouvez répéter la ligne d'en-tête sur chaque page à l'aide de la propriété [HeadingFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/headingformat/).

Vous pouvez également marquer plusieurs lignes d'en-tête si ces lignes se trouvent les unes après les autres au début du tableau. Pour ce faire, vous devez appliquer les propriétés **HeadingFormat** à ces lignes.

{{% alert color="primary" %}}

Notez que les lignes d'en-tête ne fonctionnent pas dans les tableaux imbriqués. Autrement dit, si vous avez une table à l’intérieur d’une autre table, ce paramètre n’aura aucun effet. C'est une limitation de Microsoft Word qui ne permet pas cela, pas de Aspose.Words.

{{% /alert %}}

L'exemple de code suivant montre comment créer un tableau comprenant des lignes d'en-tête qui se répètent sur les pages suivantes:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "repeat-rows-on-subsequent-pages.cs" >}}

## Empêcher les tableaux et les lignes de se diviser entre les pages {#keep-tables-and-rows-from-breaking-across-pages}

Il arrive parfois que le contenu d’un tableau ne doive pas être réparti sur plusieurs pages. Par exemple, si un titre se trouve au-dessus d'un tableau, le titre et le tableau doivent toujours être conservés ensemble sur la même page pour préserver leur apparence.

Il existe deux techniques distinctes utiles pour obtenir cette fonctionnalité:

- `Allow row break across pages`, qui est appliqué aux lignes du tableau
- `Keep with next`, qui s'applique aux paragraphes des cellules du tableau

Par défaut, les propriétés ci-dessus sont désactivées.

### Empêcher une ligne de se diviser entre les pages {#keep-a-row-from-breaking-across-pages}

Cela implique d'empêcher la répartition du contenu à l'intérieur des cellules d'une ligne sur une page. Dans Microsoft Word, cela se trouve sous Propriétés du tableau sous l'option "Autoriser la séparation des lignes sur plusieurs pages". En Aspose.Words, cela se trouve sous l'objet [RowFormat](https://reference.aspose.com/words/net/aspose.words.tables/rowformat/) d'un [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) en tant que propriété [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/net/aspose.words.tables/row/format/properties/allowbreakacrosspages).

L'exemple de code suivant montre comment désactiver la séparation des lignes sur plusieurs pages pour chaque ligne d'un tableau:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "row-format-disable-break-across-pages.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Empêcher un tableau de se diviser en plusieurs pages {#keep-a-table-from-breaking-across-pages}

Pour empêcher le tableau de se diviser en plusieurs pages, nous devons spécifier que nous souhaitons que le contenu contenu dans le tableau reste ensemble.

Pour ce faire, Aspose.Words utilise une méthode qui permet aux utilisateurs de sélectionner un tableau et d'activer le paramètre [KeepWithNext](https://reference.aspose.com/words/net/aspose.words/paragraphformat/keepwithnext/) en true pour chaque paragraphe dans les cellules du tableau. L'exception est le dernier paragraphe du tableau, qui doit être défini sur false.

L'exemple de code suivant montre comment définir une table pour qu'elle reste ensemble sur la même page:

{{< gist "aspose-words-gists" "7e7e54ead8b97457543ea46fc6bae045" "keep-table-together.cs" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}