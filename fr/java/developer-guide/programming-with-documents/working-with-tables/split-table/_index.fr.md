---
title: Diviser la table en Java
second_title: Aspose.Words pour Java
articleTitle: Diviser la Table
linktitle: Diviser la Table
description: "Diviser la table en Java. Comment diviser une table en deux tables distinctes Java."
type: docs
weight: 100
url: /fr/java/split-table/
timestamp: 2024-01-27-14-07-04
---

Un tableau, représenté dans le modèle d'objet de document Aspose.Words, est composé de lignes et de cellules indépendantes, ce qui facilite la division d'un tableau.

Pour manipuler une table pour la diviser en deux tables, il suffit de déplacer certaines des lignes de la table d'origine vers la nouvelle. Pour ce faire, nous devons choisir la ligne par laquelle nous voulons diviser la table.

Nous pouvons créer deux tables à partir de la table d'origine en suivant ces étapes simples:

1. Créez un clone de la table sans cloner les enfants pour conserver les lignes déplacées et les insérer après la table d'origine
2. En commençant par la ligne spécifiée, déplacez toutes les lignes suivantes vers cette deuxième table

L'exemple de code suivant montre comment diviser une table en deux tables sur une ligne spécifique:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
