---
title: Diviser la table dans Python
second_title: Aspose.Words pour Python
articleTitle: Tableau divisé
linktitle: Tableau divisé
description: "Diviser la table dans Python. Comment diviser une table en deux tables Python distinctes."
type: docs
weight: 100
url: /fr/python-net/split-table/
---

Un tableau, représenté dans le Aspose.Words Document Object Model, est composé de lignes et de cellules indépendantes, ce qui facilite la division d'un tableau.

Pour manipuler un tableau afin de le diviser en deux tableaux, il suffit de déplacer certaines lignes du tableau d'origine vers le nouveau. Pour ce faire, nous devons choisir la ligne selon laquelle nous voulons diviser le tableau.

Nous pouvons créer deux tables à partir de la table d'origine en suivant ces étapes simples:

1. Créez un clone de la table sans cloner les enfants pour conserver les lignes déplacées et insérez-les après la table d'origine
2. En commençant à la ligne spécifiée, déplacez toutes les lignes suivantes vers cette deuxième table

L'exemple de code suivant montre comment diviser une table en deux tables sur une ligne spécifique:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
