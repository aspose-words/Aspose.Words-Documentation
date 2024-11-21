---
title: Travailler avec du texte dans un tableau
second_title: Aspose.Words pour .NET
articleTitle: Travailler avec du texte dans un tableau
linktitle: Travailler avec du texte dans un tableau
description: "Remplacez le texte dans un tableau dans C#. Extrayez le texte brut d'un tableau ou d'une cellule à l'aide de C#."
type: docs
weight: 60
url: /fr/net/work-with-text-in-a-table/
timestamp: 2024-01-27-14-07-04
---

Comme mentionné dans les articles précédents, un tableau contient généralement du texte brut, bien que d'autres contenus tels que des images ou même d'autres tableaux puissent être placés dans les cellules du tableau.

L'ajout de texte ou d'un autre contenu au tableau s'effectue à l'aide des méthodes appropriées de la classe [DocumentBuilder](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/) et est décrit dans l'article **"Créer un tableau"**. Dans cet article, nous expliquerons comment travailler avec du texte dans un tableau déjà existant.

## Remplacer du texte dans un tableau

La table, comme tout autre nœud dans Aspose.Words, a accès à l'objet [Range](https://reference.aspose.com/words/fr/net/aspose.words/range/). À l’aide de l’objet plage de tableau, vous pouvez remplacer du texte dans un tableau.

La possibilité d'utiliser des caractères spéciaux lors du remplacement est actuellement prise en charge, il est donc possible de remplacer le texte existant par du texte multi-paragraphes. Pour ce faire, vous devez utiliser les métacaractères spéciaux décrits dans la méthode [Replace](https://reference.aspose.com/words/fr/net/aspose.words/range/replace/) correspondante.

{{% alert color="primary" %}}

En règle générale, le remplacement du texte doit être effectué au niveau de la cellule (par cellule) ou au niveau du paragraphe.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer toutes les instances d'une chaîne de texte dans les cellules d'un tableau entier:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "replace-text.cs" >}}

## Extraire le texte brut d'un tableau ou d'une cellule

À l'aide de l'objet **Range**, vous pouvez également appeler des méthodes sur toute la plage du tableau et extraire le tableau sous forme de texte brut. Pour ce faire, utilisez la propriété [Text](https://reference.aspose.com/words/fr/net/aspose.words/range/text/)

L'exemple de code suivant montre comment imprimer la plage de texte d'un tableau:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "extract-text.cs" >}}

La même technique est utilisée pour extraire le contenu des cellules individuelles du tableau uniquement.

L'exemple de code suivant montre comment imprimer une plage de texte d'éléments de ligne et de tableau:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "print-text-range-row-and-table.cs" >}}

## Utilisation d'un texte de tableau alternatif

Les tableaux Microsoft Word ont un `table title` et un `table description` qui fournissent une représentation textuelle alternative des informations contenues dans le tableau.

Dans Aspose.Words, vous pouvez également ajouter un titre et une description de tableau à l'aide des propriétés [Title](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/title/) et [Description](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/description/). Ces propriétés sont significatives pour les documents DOCX conformes à ISO/IEC 29500. Lors de l'enregistrement dans des formats antérieurs à ISO/IEC 29500, ces propriétés sont ignorées.

L'exemple de code suivant montre comment définir les propriétés de titre et de description d'une table:

{{< gist "aspose-words-gists" "458eb4fd5bd1de8b06fab4d1ef1acdc6" "table-title-and-description.cs" >}}
