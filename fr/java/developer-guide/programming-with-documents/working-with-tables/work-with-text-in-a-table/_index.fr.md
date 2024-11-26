---
title: Travailler avec du texte dans un tableau
second_title: Aspose.Words pour Java
articleTitle: Travailler avec du texte dans un tableau
linktitle: Travailler avec du texte dans un tableau
description: "Remplacer le texte d'un tableau dans Java. Extrayez du texte brut d'un tableau ou d'une cellule à l'aide de Java."
type: docs
weight: 60
url: /fr/java/extract-text-from-and-replace-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Comme mentionné dans les articles précédents, un tableau contient généralement du texte brut, bien que d'autres contenus tels que des images ou même d'autres tableaux puissent être placés dans des cellules de tableau.

L'ajout de texte ou d'un autre contenu au tableau est effectué à l'aide des méthodes appropriées de la classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) et est décrit dans l'article **"Create a Table"**. Dans cet article, nous allons parler de la façon de travailler avec du texte dans un tableau déjà existant.

## Remplacer du texte dans un tableau

La table, comme tout autre nœud de Aspose.Words, a accès à l'objet [Range](https://reference.aspose.com/words/java/com.aspose.words/range/). À l'aide de l'objet plage de tableaux, vous pouvez remplacer du texte dans un tableau.

La possibilité d'utiliser des caractères spéciaux lors du remplacement est actuellement prise en charge, il est donc possible de remplacer du texte existant par du texte à plusieurs paragraphes. Pour ce faire, vous devez utiliser les métacaractères spéciaux décrits dans la méthode [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) correspondante.

{{% alert color="primary" %}}

En règle générale, le remplacement du texte doit être effectué au niveau de la cellule (par cellule) ou au niveau du paragraphe.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer toutes les instances d'une chaîne de texte dans les cellules d'un tableau entier:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extraire du texte brut d'un tableau

À l'aide de l'objet **Range**, vous pouvez également appeler des méthodes sur l'ensemble de la plage de tables et extraire la table en texte brut. Pour ce faire, utilisez la propriété [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text).

L'exemple de code suivant montre comment imprimer la plage de texte d'une table:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

La même technique est utilisée pour extraire le contenu des cellules individuelles du tableau uniquement.

L'exemple de code suivant montre comment imprimer une plage de texte d'éléments de ligne et de tableau:

{{% /alert %}}

L'exemple de code suivant montre comment imprimer la plage de texte des éléments de ligne et de tableau.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Utilisation d'un Texte de Tableau alternatif

Les tableaux Microsoft Word ont un `table title` et `table description` qui fournissent une représentation textuelle alternative des informations contenues dans le tableau.

Dans Aspose.Words, vous pouvez également ajouter un titre et une description de tableau à l'aide des propriétés [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) et [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription). Ces propriétés sont significatives pour DOCX documents conformes aux ISO/IEC 29500. Lors de l'enregistrement dans des formats antérieurs à ISO/IEC 29500, ces propriétés sont ignorées.

L'exemple de code suivant montre comment définir les propriétés de titre et de description d'une table:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}
