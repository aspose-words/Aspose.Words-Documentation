---
title: Aperçu du tableau
second_title: Aspose.Words pour Python
articleTitle: Aperçu du tableau
linktitle: Aperçu du tableau
description: "Travaillez avec des tableaux et leurs composants tels que des cellules, des lignes et des colonnes dans Aspose.Words pour Python. Comment travailler avec des tableaux dans Python."
type: docs
weight: 10
url: /fr/python-net/table-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words est une bibliothèque de classes conçue pour le traitement côté serveur de documents dans différents formats – PDF, HTML, différents formats Microsoft Word et autres – et prend en charge les tableaux des manières suivantes:

* les tableaux d'un document sont conservés lors de l'ouverture/sauvegarde et des conversions
* il est possible de modifier le tableau, le contenu et son formatage, puis d'exporter les modifications vers un fichier dans un format prenant en charge les tableaux

Dans cet article, nous en apprendrons davantage sur la structure des tableaux, les cellules, les lignes et les colonnes prises en charge par Aspose.Words, ainsi que sur les détails de l'utilisation de ces tableaux.

## Structure du tableau

Comme déjà mentionné, le tableau se compose d'éléments tels que **Cell**, **Row** et **Column**. Ce sont des concepts communs à tous les tableaux en général, quel que soit le format du document.

Voici un exemple courant de tableau trouvé dans un document Microsoft Word:

![tables-overview-aspose-words-python-1](/words/python-net/table-overview/tables-overview-1.png)

### Nœuds de table

Un tableau de n'importe quel document chargé dans Aspose.Words est importé au format **Nœud de table**. La table peut être trouvée en tant qu'enfant de:

- texte principal
- une histoire en ligne telle qu'un commentaire ou une note de bas de page
- les cellules lorsqu'un tableau est imbriqué dans un autre tableau

{{% alert color="primary" %}}

Notez que les tableaux peuvent être imbriqués dans d’autres tableaux à n’importe quelle profondeur.

{{% /alert %}}

### Contenu du tableau

Le nœud de table ne contient aucun contenu réel. Il s'agit plutôt d'un conteneur pour d'autres nœuds de ce type qui composent le contenu:

- **Table** contient de nombreux nœuds **Row**. Le tableau fournit tous les éléments de nœud habituels, vous permettant de déplacer, modifier et supprimer librement le tableau dans le document.
- **Row** représente une seule ligne de tableau et contient de nombreux nœuds **Cell**. De plus, le **Row** fournit des éléments qui définissent la manière dont la ligne est affichée, comme la hauteur et l'alignement.
- **Cell** est ce qui contient le contenu true visible dans le tableau et est composé d'un **Paragraph** et d'autres nœuds au niveau du bloc. De plus, les cellules peuvent contenir des tableaux imbriqués.

![tables-overview-aspose-words-python-2](/words/python-net/table-overview/tables-overview-2.png)

{{% alert color="primary" %}}

Vous pouvez vérifier la structure des nœuds de table dans un document à l'aide du **DocumentExplorer**.

{{% /alert %}}

### Paragraphe vide après le tableau

L'image ci-dessus montre que le document contient un tableau de plusieurs lignes, lui-même composé de deux cellules. Chacune des deux cellules comprend un paragraphe, qui est le conteneur du texte formaté de la cellule.

Il convient également de noter que la séparation de deux tableaux consécutifs dans un document nécessite au moins un paragraphe vide après le tableau. Sans un tel paragraphe, les tableaux consécutifs seraient réunis en un seul. Ce comportement est identique dans Microsoft Word et Aspose.Words.

Dans Aspose.Words, toutes les classes et propriétés liées aux tables sont contenues dans le module [Aspose.Words.Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/).

## Voir également

* [Aspose.Words Document Object Model (DOM)](/words/fr/python-net/aspose-words-document-object-model/)
* [Niveaux logiques des nœuds dans un document](/words/fr/python-net/logical-levels-of-nodes-in-a-document/)
