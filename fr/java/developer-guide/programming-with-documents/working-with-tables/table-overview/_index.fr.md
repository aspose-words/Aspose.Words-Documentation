---
title: Tableau général
second_title: Aspose.Words pour Java
articleTitle: Tableau général
linktitle: Tableau général
description: "Travailler avec des tables et leurs composants tels que les cellules, les lignes, les colonnes dans Aspose.Words pour Java. Comment travailler avec les tables dans Java."
type: docs
weight: 10
url: /fr/java/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words est une bibliothèque de classe conçue pour le traitement de documents côté serveur dans différents formats – PDF, HTML, différents Microsoft Word formats et autres – et prend en charge les tableaux de la manière suivante:

* les tableaux d'un document sont conservés pendant l'ouverture/sauvetage et les conversions
* il est possible de modifier la table, le contenu et son formatage, puis d'exporter les modifications vers un fichier dans un format qui supporte les tables

Dans cet article, nous allons en savoir plus sur la structure de la table, les cellules, les lignes et les colonnes supportées par Aspose.Words, et les détails de travail avec ces tableaux.

## Structure du tableau

Comme mentionné précédemment, le tableau comprend des éléments tels que: **Cell**, **Row** et **Column**. Ce sont des concepts communs à tous les tableaux en général, quel que soit le format du document.

C'est un exemple commun d'une table trouvée dans un Microsoft Word document:

![tables-overview-aspose-words-java-1](/words/java/table-overview/tables-overview-1.png)

### Nœuds du tableau

Un tableau de tout document chargé dans Aspose.Words est importé comme **Noeud de tableau**. Le tableau peut être trouvé comme un enfant de:

- texte principal
- une histoire en ligne comme un commentaire ou une note de bas de page
- cellules lorsqu'une table est imbriquée dans une autre table

{{% alert color="primary" %}}

Notez que les tables peuvent être imbriquées dans d'autres tables à n'importe quelle profondeur.

{{% /alert %}}

### Table des matières

Le noeud de table ne contient pas de contenu réel – au lieu de cela, c'est un conteneur pour d'autres nœuds qui composent le contenu:

- Oui. **Table** contient beaucoup **Row** les noeuds. Le tableau fournit tous les éléments habituels du nœud, vous permettant de déplacer, modifier et supprimer librement le tableau dans le document.
- Oui. **Row** représente une seule ligne de table et contient beaucoup **Cell** les noeuds. En outre, **Row** fournit des éléments qui définissent comment la ligne est affichée, comme la hauteur et l'alignement.
- Oui. **Cell** est ce qui contient le true contenu visible dans le tableau et constitué d'un **Paragraph** et d'autres nœuds de niveau de bloc. De plus, les cellules peuvent contenir des tables imbriquées.

![tables-overview-aspose-words-java-2](/words/java/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Vous pouvez vérifier la structure des nœuds de table dans un document en utilisant **DocumentExplorer**.

{{% /alert %}}

### Paragraphe vide après tableau

L'image ci-dessus montre que le document contient une table de plusieurs lignes, qui à son tour se compose de deux cellules. Chacune des deux cellules comprend un paragraphe, qui est le conteneur pour le texte formaté de la cellule.

Il convient également de noter que la séparation de deux tableaux consécutifs dans un document nécessite au moins un paragraphe vide après le tableau. Sans ce paragraphe, des tableaux consécutifs seraient réunis en un seul. Ce comportement est identique dans les deux Microsoft Word et Aspose.Words.

Aspose.Words a un certain nombre de classes liées aux tableaux – [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/), [Rows](https://reference.aspose.com/words/java/com.aspose.words/row/), [Cells](https://reference.aspose.com/words/java/com.aspose.words/cell/), et d'autres.

## Voir aussi

* [Aspose.Words Document Object Model (DOM)](/words/fr/java/aspose-words-document-object-model/)
* [Niveau logique des nœuds dans un document](/words/fr/java/logical-levels-of-nodes-in-a-document/)
