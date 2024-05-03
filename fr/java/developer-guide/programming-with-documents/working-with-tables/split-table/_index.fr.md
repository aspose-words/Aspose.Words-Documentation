---
title: Tableau en Java
second_title: Aspose.Words pour Java
articleTitle: Tableau de répartition
linktitle: Tableau de répartition
description: "Tableau divisé en Java. Comment diviser une table en deux tables séparées Java."
type: docs
weight: 100
url: /fr/java/split-table/
---

Un tableau, représenté dans Aspose.Words Document Object Model, est composé de rangées et de cellules indépendantes, ce qui facilite la division d'une table.

Pour manipuler une table pour la diviser en deux tables, il suffit de déplacer certaines lignes de la table d'origine vers la nouvelle. Pour ce faire, nous devons choisir la ligne par laquelle nous voulons diviser la table.

Nous pouvons créer deux tableaux à partir du tableau original en suivant ces étapes simples:

1. Créer un clone de la table sans clonage des enfants pour garder les lignes déplacées et les insérer après la table originale
2. À partir de la ligne spécifiée, déplacer toutes les lignes suivantes vers cette deuxième table

L'exemple de code suivant montre comment diviser une table en deux tables sur une ligne spécifique:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
