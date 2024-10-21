---
title: Modifier le style de tableau dans les documents Word
second_title: Aspose.Words pour C++
articleTitle: Appliquer un Style de Tableau
linktitle: Appliquer un Style de Tableau
description: "Formatage de table avancé C++. Créez un style de tableau en utilisant C++. Appliquez le style de tableau C++."
type: docs
weight: 80
url: /fr/cpp/working-with-tablestyle/
---

Un style de tableau définit un ensemble de formatage qui peut être facilement appliqué à un tableau. La mise en forme telle que les bordures, l'ombrage, l'alignement et la police peut être définie dans un style de tableau et appliquée à de nombreux tableaux pour une apparence cohérente.

Aspose.Words prend en charge l'application d'un style de table à une table et la lecture des propriétés de n'importe quel style de table. Les styles de tableau sont conservés pendant le chargement et l'enregistrement de la manière suivante:

- Les styles de tableau aux formats DOCX et WordML sont conservés lors du chargement et de l'enregistrement dans ces formats
- Les styles de tableau sont conservés lors du chargement et de l'enregistrement au format DOC (mais pas dans un autre format)
- Lors de l'exportation vers d'autres formats, du rendu ou de l'impression, les styles de tableau sont développés pour une mise en forme directe dans le tableau, de sorte que toute la mise en forme est préservée

## Créer un Style de Tableau

L'utilisateur peut créer un nouveau style et l'ajouter à la collection de styles. La méthode [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) est utilisée pour créer un nouveau style de tableau.

L'exemple de code suivant montre comment créer un nouveau style de table défini par l'utilisateur:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Copier un Style de Tableau Existant

Si nécessaire, vous pouvez copier un style de tableau qui existe déjà dans un certain document dans votre collection de styles à l'aide de la méthode `AddCopy`.

Il est important de savoir qu'avec cette copie, les styles liés sont également copiés.

L'exemple de code suivant montre comment importer un style d'un document vers un autre document:

EXEMPLE

## Appliquer un Style de Tableau Existant

Aspose.Words fournit un [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) hérité de la classe [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** permet à l'utilisateur d'appliquer différentes options de style telles que l'ombrage, le remplissage, l'indentation, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) et [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), etc.

De plus, Aspose.Words fournit la classe [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) et quelques propriétés de la classe `Table` pour spécifier le style de table avec lequel nous allons travailler: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), et [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words fournit également la classe [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) qui représente une mise en forme spéciale appliquée à une zone d'un tableau avec un style de tableau attribué, et la classe [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) qui représente une collection d'objets **ConditionalStyle**. Cette collection contient un ensemble permanent d'éléments représentant un élément pour chaque valeur du type d'énumération [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). L'énumération **ConditionalStyleType** définit toutes les zones de tableau possibles pour lesquelles une mise en forme conditionnelle peut être définie dans un style de tableau.

Dans ce cas, la mise en forme conditionnelle peut être définie pour toutes les zones de table possibles définies sous le type d'énumération ConditionalStyleType.

L'exemple de code suivant montre comment définir une mise en forme conditionnelle pour la ligne d'en-tête du tableau:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Vous pouvez également choisir les parties du tableau auxquelles appliquer des styles, telles que la première colonne, la dernière colonne et les lignes en bandes. Ils sont répertoriés dans l'énumération [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) et sont appliqués via la propriété [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). L'énumération **TableStyleOptions** permet une combinaison binaire de ces caractéristiques.

L'exemple de code suivant montre comment créer une nouvelle table avec un style de table appliqué:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Les images ci-dessous montrent une représentation des **Table Styles** dans Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Prenez la mise en forme du Style de Tableau et appliquez-la en tant que mise en forme directe

Aspose.Words fournit également la méthode [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) pour prendre la mise en forme trouvée sur un style de tableau et la développer sur les lignes et les cellules du tableau en tant que mise en forme directe. Essayez de combiner la mise en forme avec le style de tableau et le style de cellule.

{{% alert color="primary" %}}

Cette méthode ne remplacera aucune autre mise en forme déjà appliquée au tableau via un format de ligne ou de cellule.

{{% /alert %}}

L'exemple de code suivant montre comment étendre la mise en forme des styles aux lignes et cellules du tableau en tant que mise en forme directe:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}