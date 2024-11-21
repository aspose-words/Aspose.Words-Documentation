---
title: Travailler avec les styles de table dans Java
second_title: Aspose.Words pour Java
articleTitle: Appliquer le style de table
linktitle: Appliquer le style de table
description: "Formatage avancé de la table Java. Créer un style de table en utilisant Java. Introduction au formatage avancé de table, styles de table en utilisant Java."
type: docs
weight: 80
url: /fr/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Un style de table définit un ensemble de formatage qui peut être facilement appliqué à une table. Le formatage tel que les bordures, l'ombrage, l'alignement et la police peut être défini dans un style de table et appliqué à de nombreuses tables pour une apparence cohérente.

Aspose.Words prend en charge l'application d'un style de table à une table et aussi la lecture des propriétés de n'importe quel style de table. Les styles de table sont conservés pendant le chargement et l'économie de la manière suivante:

- Les styles de table en formats DOCX et WordML sont conservés lors du chargement et de l'enregistrement dans ces formats
- Les styles de table sont conservés lors du chargement et de l'enregistrement au format DOC (mais pas dans un autre format)
- Oui. Lorsque vous exportez vers d'autres formats, formats de rendu ou d'impression, les styles de table sont élargis au formatage direct dans la table, de sorte que tout formatage est préservé

## Créer un style de table

L'utilisateur peut créer un nouveau style et l'ajouter à la collection de style. Les [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) méthode est utilisée pour créer un nouveau style de table.

L'exemple de code suivant montre comment créer un nouveau style de table défini par l'utilisateur:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Copier un style de table existant

Si nécessaire, vous pouvez copier un style de table qui existe déjà dans un certain document dans votre collection de style en utilisant le `AddCopy` méthode.

Il est important de savoir qu'avec cette copie, les styles liés sont également copiés.

L'exemple de code suivant montre comment importer un style d'un document vers un autre document:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Appliquer un style de table existant

Aspose.Words fournit une [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) hérités du [Style](https://reference.aspose.com/words/java/com.aspose.words/style/) En cours. **TableStyle** facilite l'utilisateur à appliquer différentes options de style comme l'ombrage, le rembourrage, l'indentation, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) et [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), etc.

En outre, Aspose.Words fournit les [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) classe et quelques propriétés de la `Table` classe pour spécifier avec quel style de table nous allons travailler: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName), et [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words fournit également [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) classe qui représente le formatage spécial appliqué à une zone d'une table avec un style de table assigné, et la [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) qui représente une collection de **ConditionalStyle** objets. Cette collection contient un ensemble permanent d'articles représentant un article pour chaque valeur de [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/) type de dénombrement. Les **ConditionalStyleType** Le dénombrement définit toutes les zones de table possibles auxquelles le formatage conditionnel peut être défini dans un style de table.

Dans ce cas, le formatage conditionnel peut être défini pour toutes les zones de table possibles définies dans le type de dénombrement ConditionalStyleType.

L'exemple de code suivant montre comment définir le formatage conditionnel pour la ligne d'en-tête du tableau:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Vous pouvez également choisir les parties de table pour appliquer des styles, comme la première colonne, la dernière colonne, les lignes baguées. Ils sont énumérés dans la [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) le dénombrement et sont appliqués par [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions) propriété. Les **TableStyleOptions** Le dénombrement permet une combinaison bitwise de ces caractéristiques.

L'exemple de code suivant montre comment créer une nouvelle table avec un style de table appliqué:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Les images ci-dessous montrent une représentation de la **Table Styles** en Microsoft Word et leurs propriétés correspondantes dans Aspose.Words.

![table-style-aspose-words-java](/words/java/working-with-tablestyle/working-with-table-styles-1.png)

## Prendre le formatage à partir du style de table et l'appliquer comme formatage direct

Aspose.Words fournit également [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) méthode pour prendre formatage trouvé sur un style de table et l'étendre sur les lignes et les cellules de la table comme formatage direct. Essayez de combiner le formatage avec le style de table et de cellule.

{{% alert color="primary" %}}

Cette méthode ne remplacera aucun autre formatage déjà appliqué à la table par un format de ligne ou de cellule.

{{% /alert %}}

L'exemple de code suivant montre comment étendre le formatage à partir de styles sur les lignes de table et les cellules comme formatage direct:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
