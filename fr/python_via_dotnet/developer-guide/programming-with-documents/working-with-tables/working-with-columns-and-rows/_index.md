---
title: Travailler avec des colonnes et des lignes
second_title: Aspose.Words pour Python via .NET
articleTitle: Travailler avec des colonnes et des lignes
linktitle: Travailler avec des colonnes et des lignes
description: "Travailler avec des parties d'un tableau - lignes, colonnes et cellules à l'aide de Python. Spécifiez la ligne d'en-tête Python."
type: docs
weight: 30
url: /fr/python-net/working-with-columns-and-rows/
---

Pour mieux contrôler le fonctionnement des tableaux, découvrez comment manipuler les colonnes et les lignes.

## Recherche de l'index des éléments de table

Les colonnes, lignes et cellules sont gérées en accédant au nœud du document sélectionné par son index. Trouver l'index de n'importe quel nœud implique de rassembler tous les nœuds enfants du type d'élément à partir du nœud parent, puis d'utiliser la méthode [IndexOf](https://reference.aspose.com/words/python-net/aspose.words/nodecollection/index_of/) pour trouver l'index du nœud souhaité dans la collection.

### Trouver l'index d'une table dans un document

Parfois, vous devrez peut-être apporter des modifications à un tableau particulier d'un document. Pour ce faire, vous pouvez faire référence à une table par son index.

L'exemple de code suivant montre comment récupérer l'index d'une table dans un document:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-table-index.py" >}}

### Trouver l'index d'une ligne dans un tableau

De même, vous devrez peut-être apporter des modifications à une ligne spécifique d'un tableau sélectionné. Pour ce faire, vous pouvez également faire référence à une ligne par son index.

L'exemple de code suivant montre comment récupérer l'index d'une ligne dans une table:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-row-index.py" >}}

### Trouver l'index d'une cellule dans une ligne

Enfin, vous devrez peut-être apporter des modifications à une cellule spécifique, et vous pouvez également le faire par index de cellule.

L'exemple de code suivant montre comment récupérer l'index d'une cellule dans une ligne:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "retrieve-cell-index.py" >}}

## Travailler avec des colonnes

Dans le Aspose.Words Document Object Model (DOM), le nœud [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) est constitué de nœuds [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) puis de nœuds [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/). Ainsi, dans le modèle objet `Document` de Aspose.Words, comme dans les documents Word, il n'y a pas de notion de colonne.

De par leur conception, les lignes du tableau dans Microsoft Word et Aspose.Words sont complètement indépendantes et les propriétés et opérations de base sont contenues uniquement dans les lignes et les cellules du tableau. Cela donne aux tables la possibilité d'avoir des attributs intéressants:

- Chaque ligne du tableau peut avoir un nombre de cellules complètement différent
- Verticalement, les cellules de chaque rangée peuvent avoir des largeurs différentes
- Il est possible de joindre des tableaux avec différents formats de lignes et nombres de cellules

Toutes les opérations effectuées sur les colonnes sont en fait des "raccourcis" qui effectuent l'opération en modifiant collectivement les cellules des lignes de telle manière qu'elles semblent être appliquées aux colonnes. Autrement dit, vous pouvez effectuer des opérations sur les colonnes en parcourant simplement le même index de cellule de ligne de tableau.

L'exemple de code suivant simplifie ces opérations en prouvant une classe de façade qui collecte les cellules qui composent une "colonne" d'un tableau:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "column-class.py" >}}

L'exemple de code suivant montre comment insérer une colonne vide dans une table:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "insert-blank-column.py" >}}

L'exemple de code suivant montre comment supprimer une colonne d'une table dans un document:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "remove-column.py" >}}

## Spécifier les lignes comme lignes d'en-tête

Vous pouvez choisir de répéter la première ligne du tableau comme ligne d'en-tête uniquement sur la première page ou sur chaque page si le tableau est divisé en plusieurs. Dans Aspose.Words, vous pouvez répéter la ligne d'en-tête sur chaque page à l'aide de la propriété [HeadingFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/heading_format/).

Vous pouvez également marquer plusieurs lignes d'en-tête si ces lignes se trouvent les unes après les autres au début du tableau. Pour ce faire, vous devez appliquer les propriétés **HeadingFormat** à ces lignes.

{{% alert color="primary" %}}

Notez que les lignes d'en-tête ne fonctionnent pas dans les tableaux imbriqués. Autrement dit, si vous avez une table à l’intérieur d’une autre table, ce paramètre n’aura aucun effet. C'est une limitation de Microsoft Word qui ne permet pas cela, pas de Aspose.Words.

{{% /alert %}}

L'exemple de code suivant montre comment créer un tableau comprenant des lignes d'en-tête qui se répètent sur les pages suivantes:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "repeat-rows-on-subsequent-pages.py" >}}

## Empêchez les tableaux et les lignes de se diviser sur plusieurs pages

Il arrive parfois que le contenu d’un tableau ne doive pas être réparti sur plusieurs pages. Par exemple, si un titre se trouve au-dessus d'un tableau, le titre et le tableau doivent toujours être conservés ensemble sur la même page pour préserver leur apparence.

Il existe deux techniques distinctes utiles pour obtenir cette fonctionnalité:

- `Allow row break across pages`, qui est appliqué aux lignes du tableau
- `Keep with next`, qui s'applique aux paragraphes des cellules du tableau

Par défaut, les propriétés ci-dessus sont désactivées.

### Empêcher une ligne de se diviser sur plusieurs pages

Cela implique d'empêcher la répartition du contenu à l'intérieur des cellules d'une ligne sur une page. Dans Microsoft Word, cela se trouve sous Propriétés du tableau sous l'option "Autoriser la séparation des lignes sur plusieurs pages". En Aspose.Words, cela se trouve sous l'objet [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) d'un [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) en tant que propriété [RowFormat.AllowBreakAcrossPages](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/allow_break_across_pages/).

L'exemple de code suivant montre comment désactiver la séparation des lignes sur plusieurs pages pour chaque ligne d'un tableau:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "row-format-disable-break-across-pages.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}

### Empêcher un tableau de se diviser en plusieurs pages

Pour empêcher le tableau de se diviser en plusieurs pages, nous devons spécifier que nous souhaitons que le contenu contenu dans le tableau reste ensemble.

Pour ce faire, Aspose.Words utilise une méthode qui permet aux utilisateurs de sélectionner un tableau et d'activer le paramètre [KeepWithNext](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/keep_with_next/) en true pour chaque paragraphe dans les cellules du tableau. L'exception est le dernier paragraphe du tableau, qui doit être défini sur false.

L'exemple de code suivant montre comment définir une table pour qu'elle reste ensemble sur la même page:

{{< gist "aspose-words-gists" "212655df045ed6557d6a9b8ea875d8e9" "keep-table-together.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20spanning%20two%20pages.docx).

{{% /alert %}}