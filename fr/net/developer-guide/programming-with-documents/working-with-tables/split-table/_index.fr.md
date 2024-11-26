---
title: Diviser la table dans C#
second_title: Aspose.Words pour .NET
articleTitle: Tableau divisé
linktitle: Tableau divisé
description: "Diviser la table dans C#. Comment diviser une table en deux tables C# distinctes."
type: docs
weight: 100
url: /fr/net/split-table/
timestamp: 2024-01-27-14-07-04
---

Un tableau, représenté dans le Aspose.Words Document Object Model, est composé de lignes et de cellules indépendantes, ce qui facilite la division d'un tableau.

Pour manipuler un tableau afin de le diviser en deux tableaux, il suffit de déplacer certaines lignes du tableau d'origine vers le nouveau. Pour ce faire, nous devons choisir la ligne selon laquelle nous voulons diviser le tableau.

Nous pouvons créer deux tables à partir de la table d'origine en suivant ces étapes simples:

1. Créez un clone de la table sans cloner les enfants pour conserver les lignes déplacées et insérez-les après la table d'origine
2. En commençant à la ligne spécifiée, déplacez toutes les lignes suivantes vers cette deuxième table

L'exemple de code suivant montre comment diviser une table en deux tables sur une ligne spécifique:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
