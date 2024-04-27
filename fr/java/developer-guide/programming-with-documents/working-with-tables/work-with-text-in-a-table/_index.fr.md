---
title: Travailler avec le texte dans un tableau
second_title: Aspose.Words pour Java
articleTitle: Travailler avec le texte dans un tableau
linktitle: Travailler avec le texte dans un tableau
description: "Remplacer le texte dans un tableau Java. Extraire du texte clair de la table ou de la cellule en utilisant Java."
type: docs
weight: 60
url: /fr/java/extract-text-from-and-replace-text-in-a-table/
---

Comme indiqué dans les articles précédents, une table contient généralement du texte clair, bien que d'autres contenus tels que des images ou même d'autres tables puissent être placés dans des cellules de table.

L'ajout de texte ou d'autres contenus au tableau est effectué selon les méthodes appropriées de la [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) et est décrite dans la **"Créer une table"** article. Dans cet article, nous parlerons de la façon de travailler avec le texte dans un tableau déjà existant.

## Remplacer le texte dans un tableau

La table, comme tout autre nœud Aspose.Words, a accès aux [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) objet. En utilisant l'objet range table, vous pouvez remplacer le texte dans une table.

La possibilité d'utiliser des caractères spéciaux lors du remplacement est actuellement supportée, de sorte qu'il est possible de remplacer le texte existant par un texte multi-paragraphes. Pour ce faire, vous devez utiliser les métacaractères spéciaux décrits dans le [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) méthode.

{{% alert color="primary" %}}

En règle générale, le remplacement du texte doit se faire au niveau des cellules (par cellule) ou au niveau des paragraphes.

{{% /alert %}}

L'exemple de code suivant montre comment remplacer toutes les instances d'une chaîne de texte dans les cellules d'une table entière:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "replace-text.java" >}}

## Extrait du texte simple d'un tableau

Utilisation **Range** objet, vous pouvez également appeler des méthodes sur toute la plage de la table et extraire la table en texte simple. Pour ce faire, utilisez la [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#Text) propriété

L'exemple de code suivant montre comment imprimer la plage de texte d'un tableau:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "extract-text.java" >}}

{{% alert color="primary" %}}

La même technique est utilisée pour extraire le contenu des cellules de table individuelles seulement.

L'exemple de code suivant montre comment imprimer une gamme de texte d'éléments de ligne et de tableau:

{{% /alert %}}

L'exemple de code suivant montre comment imprimer la plage de texte des éléments de ligne et de table.

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "print-text-range-row-and-table.java" >}}

## Travail avec un autre texte de tableau

Microsoft Word les tableaux ont une `table title` et `table description` qui fournissent une représentation textuelle alternative des informations contenues dans le tableau.

En Aspose.Words, vous pouvez également ajouter un titre de table et une description en utilisant le [Title](https://reference.aspose.com/words/java/com.aspose.words/table/#getTitle) et [Description](https://reference.aspose.com/words/java/com.aspose.words/table/#getDescription) propriétés. Ces propriétés sont significatives pour les documents DOCX conformes à la ISO/CEI 29500. Lors de l'enregistrement dans des formats plus tôt que ISO/IEC 29500, ces propriétés sont ignorées.

L'exemple de code suivant montre comment définir le titre et les propriétés de description d'un tableau:

{{< gist "aspose-words-gists" "7855fd2588b90f4640bf0540285b5277" "table-title-and-description.java" >}}