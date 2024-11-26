---
title: Aperçu du Tableau
second_title: Aspose.Words pour C++
articleTitle: Aperçu du Tableau
linktitle: Aperçu du Tableau
description: "Travaillez avec des tableaux et leurs composants tels que des cellules, des lignes, des colonnes dans Aspose.Words pour C++. Comment travailler avec des tables en C++."
type: docs
weight: 10
url: /fr/cpp/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words est une bibliothèque de classes conçue pour le traitement côté serveur de documents dans divers formats - PDF, HTML, différents formats Microsoft Word et autres - et prend en charge les tableaux des manières suivantes:

* les tableaux d'un document sont conservés pendant l'ouverture / l'enregistrement et les conversions
* il est possible de modifier le tableau, le contenu et sa mise en forme, puis d'exporter les modifications dans un fichier dans un format prenant en charge les tableaux

Dans cet article, nous en apprendrons plus sur la structure des tableaux, les cellules, les lignes et les colonnes prises en charge par Aspose.Words, et les détails de l'utilisation de ces tableaux.

## Structure du Tableau

Comme déjà mentionné, le tableau se compose d'éléments tels que **Cell**, **Row** et **Column**. Ce sont des concepts communs à tous les tableaux en général, quel que soit le format du document.

Voici un exemple courant de tableau trouvé dans un document Microsoft Word:

![tables-overview-aspose-words-cpp-1](tables-overview-1.png)

### Nœuds de Table

Une table de n'importe quel document chargé dans Aspose.Words est importée en tant que **Table node**. La table peut être trouvée en tant qu'enfant de:

- texte principal
- une histoire en ligne telle qu'un commentaire ou une note de bas de page
- cellules lorsqu'une table est imbriquée dans une autre table

{{% alert color="primary" %}}

Notez que les tables peuvent être imbriquées à l'intérieur d'autres tables à n'importe quelle profondeur.

{{% /alert %}}

### Contenu du Tableau

Le nœud de table ne contient aucun contenu réel – il s'agit plutôt d'un conteneur pour d'autres nœuds de ce type qui composent le contenu:

- **Table** contient de nombreux nœuds **Row**. Le tableau fournit tous les éléments de nœud habituels, vous permettant de déplacer, modifier et supprimer librement le tableau dans le document.
- **Row** représente une seule ligne de table et contient de nombreux nœuds **Cell**. De plus, le **Row** fournit des éléments qui définissent la façon dont la ligne est affichée, comme la hauteur et l'alignement.
- **Cell** est ce qui contient le vrai contenu visible dans la table et est composé d'un **Paragraph** et d'autres nœuds de niveau bloc. De plus, les cellules peuvent contenir des tableaux imbriqués.

![tables-overview-aspose-words-cpp-2](tables-overview-2.png)

{{% alert color="primary" %}}

Vous pouvez vérifier la structure des nœuds de table dans un document en utilisant le **DocumentExplorer**.

{{% /alert %}}

### Paragraphe vide après le Tableau

L'image ci-dessus montre que le document contient un tableau de plusieurs lignes, qui à son tour se compose de deux cellules. Chacune des deux cellules comprend un paragraphe, qui est le conteneur du texte formaté de la cellule.

Il convient également de noter que la séparation de deux tableaux consécutifs dans un document nécessite au moins un paragraphe vide après le tableau. Sans un tel paragraphe, les tableaux consécutifs seraient réunis en un seul. Ce comportement est identique dans Microsoft Word et Aspose.Words.

Dans Aspose.Words, toutes les classes et propriétés liées aux tables sont contenues dans l'espace de noms [Aspose.Words.Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/).

## Voir Aussi

* [Aspose.Words Modèle d'objet de document (DOM)](/words/cpp/aspose-words-document-object-model/)
* [Niveaux logiques des nœuds dans un document](/words/cpp/logical-levels-of-nodes-in-a-document/)
