---
title: Travailler avec du texte dans un tableau
second_title: Aspose.Words pour C++
articleTitle: Travailler avec du texte dans un tableau
linktitle: Travailler avec du texte dans un tableau
description: "Remplacer du texte dans un tableau en C++. Extraire du texte brut d'un tableau ou d'une cellule à l'aide de C++."
type: docs
weight: 60
url: /fr/cpp/work-with-text-in-a-table/
---

Comme mentionné dans les articles précédents, un tableau contient généralement du texte brut, bien que d'autres contenus tels que des images ou même d'autres tableaux puissent être placés dans des cellules de tableau.

L'ajout de texte ou d'un autre contenu au tableau est effectué à l'aide des méthodes appropriées de la classe [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) et est décrit dans l'article **"Créer un tableau"**. Dans cet article, nous allons parler de la façon de travailler avec du texte dans un tableau déjà existant.

## Remplacer du texte dans un tableau

La table, comme tout autre nœud de Aspose.Words, a accès à l'objet [Range](https://reference.aspose.com/words/cpp/aspose.words/range/). À l'aide de l'objet plage de tableaux, vous pouvez remplacer du texte dans un tableau.

La possibilité d'utiliser des caractères spéciaux lors du remplacement est actuellement prise en charge, il est donc possible de remplacer du texte existant par du texte à plusieurs paragraphes. Pour ce faire, vous devez utiliser les métacaractères spéciaux décrits dans la méthode [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) correspondante.

{{% alert color="primary" %}}

En règle générale, le remplacement du texte doit être effectué au niveau de la cellule (par cellule) ou au niveau du paragraphe.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer toutes les instances d'une chaîne de texte dans les cellules d'un tableau entier:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "replace-text.h" >}}

## Extraire du texte brut d'un Tableau ou d'une cellule

En utilisant l'objet **Range**, vous pouvez également appeler des méthodes sur toute la plage de la table et extraire la table en texte brut. Pour ce faire, utilisez la propriété [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/).

L'exemple de code suivant montre comment imprimer la plage de texte d'une table:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "extract-text.h" >}}

La même technique est utilisée pour extraire le contenu des cellules individuelles du tableau uniquement.

L'exemple de code suivant montre comment imprimer une plage de texte d'éléments de ligne et de tableau:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "print-text-range-row-and-table.h" >}}

## Utilisation d'un Texte de Tableau alternatif

Les tableaux Microsoft Word ont un `table title` et `table description` qui fournissent une représentation textuelle alternative des informations contenues dans le tableau.

Dans Aspose.Words, vous pouvez également ajouter un titre et une description de tableau à l'aide des propriétés [Title](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_title/) et [Description](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_description/). Ces propriétés sont significatives pour DOCX documents conformes à la ISO / CEI 29500. Lors de l'enregistrement dans des formats antérieurs à ISO/CEI 29500, ces propriétés sont ignorées.

L'exemple de code suivant montre comment définir les propriétés de titre et de description d'une table:

{{< gist "aspose-words-gists" "0c6e4ebd55874aa8634f1d74d5ef492f" "table-title-and-description.h" >}}