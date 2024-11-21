---
title: Comment créer une table dans Java
second_title: Aspose.Words pour Java
articleTitle: Créer une table
linktitle: Créer une table
description: "Différentes façons de créer des tables dans votre document en utilisant Java."
type: docs
weight: 20
url: /fr/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words permet aux utilisateurs de créer des tables dans un document à partir de zéro et fournit plusieurs méthodes différentes pour le faire. Cet article présente des détails sur la façon d'ajouter des tableaux formatés à votre document en utilisant chaque méthode, ainsi qu'une comparaison de chaque méthode à la fin de l'article.

## Styles de table par défaut

La table nouvellement créée donne des valeurs par défaut similaires à celles utilisées dans Microsoft Word:

| Biens du tableau | Par défaut Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| Couleur de la bordure |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Une table peut être en ligne si elle est bien positionnée, ou flottante si elle peut être positionnée n'importe où sur la page. Par défaut, Aspose.Words crée toujours des tables en ligne.

{{% /alert %}}

## Créer une table avec DocumentBuilder

En Aspose.Words, les utilisateurs peuvent créer une table dans un document [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). L'algorithme de base pour créer une table est le suivant:

1. Démarrer la table avec [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Ajouter une cellule à la table en utilisant [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – cela démarre automatiquement une nouvelle ligne
3. En option, utilisez le [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) propriété pour spécifier le formatage des cellules
4. Insérer le contenu cellulaire en utilisant le **DocumentBuilder** méthodes telles que [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), et autres
5. Répéter les étapes 2-4 jusqu'à ce que la ligne soit terminée
6. Appeler [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) pour terminer la ligne actuelle
7. En option, utilisez le [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) propriété pour spécifier le formatage de la ligne
8. Répéter les étapes 2-7 jusqu'à ce que le tableau soit terminé
9. Appeler [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) pour terminer la construction de la table

{{% alert color="primary" %}}

Détails importants:

- Oui. [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) peut également être appelé à l'intérieur d'une cellule, auquel cas il commence la création d'une table imbriquée dans la cellule.
- Après avoir appelé [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), une nouvelle cellule est créée, et tout contenu que vous ajoutez en utilisant d'autres méthodes de la [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) la classe sera ajoutée à la cellule actuelle. Pour créer une nouvelle cellule sur la même ligne, appelez **InsertCell** Encore.
- Si **InsertCell** est appelé immédiatement après [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) et la fin d'une ligne, la table continuera sur une nouvelle ligne.
- Les [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) méthode pour terminer la table doit être appelé seulement une fois après avoir appelé **EndRow**. Appel **EndTable** déplace le curseur de la cellule actuelle vers la position immédiatement après la table.

{{% /alert %}}

Le processus de création d'une table peut être clairement vu dans l'image suivante:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

L'exemple de code suivant montre comment créer une table simple en utilisant **DocumentBuilder** avec formatage par défaut:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

L'exemple de code suivant montre comment créer une table formatée en utilisant DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

L'exemple de code suivant montre comment insérer une table imbriquée en utilisant DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Créer une table via DOM (Document Object Model)

Vous pouvez insérer des tables directement dans le DOM en ajoutant un nouveau [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) noeud à une position précise.

Veuillez noter que immédiatement après la création du nœud de table, la table elle-même sera complètement vide, c'est-à-dire qu'elle ne contient pas encore de lignes et de cellules. Pour insérer des lignes et des cellules dans une table, ajouter le [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) noeuds d'enfant à la DOM.

{{% alert color="primary" %}}

Cette méthode de création d'une table utilise les mêmes valeurs par défaut que lors de l'utilisation de **DocumentBuilder**.

{{% /alert %}}

L'exemple de code suivant montre comment construire une nouvelle table à partir de zéro en ajoutant les nœuds d'enfant appropriés à l'arborescence du document:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Créer une table à partir de HTML

Aspose.Words prend en charge l'insertion de contenu dans un document à partir d'une source HTML [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) méthode. L'entrée peut être une page HTML complète ou simplement un extrait partiel.

Utilisation de ceci **InsertHtml** méthode, les utilisateurs peuvent insérer des tables dans le document par l'intermédiaire des balises de table comme `<table>`, `<tr>`, `<td>`.

L'exemple de code suivant montre comment insérer un tableau dans un document à partir d'une chaîne contenant des balises HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Insérer une copie d'un tableau existant

Il y a souvent des moments où vous devez créer une table basée sur une table déjà existante dans un document. La façon la plus simple de reproduire une table tout en conservant tout formatage est de cloner le nœud de table en utilisant le [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) méthode.

La même technique peut être utilisée pour ajouter des copies d'une ligne ou d'une cellule existante à une table.

L'exemple de code suivant montre comment reproduire une table en utilisant des constructeurs de nœuds:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'exemple de code suivant montre comment cloner la dernière ligne d'une table et l'ajouter à la table:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Si vous cherchez à créer des tableaux dans un document qui grandissent dynamiquement avec chaque enregistrement à partir de votre source de données, la méthode ci-dessus n'est pas conseillée. Au lieu de cela, la sortie souhaitée est plus facile en utilisant Mail merge avec les régions. Vous pouvez en apprendre davantage sur cette technique dans le [Mail Merge avec les régions](/words/java/types-of-mail-merge-operations/) Chapitre.

## Comparer les façons de créer une table

Aspose.Words fournit plusieurs méthodes pour créer de nouveaux tableaux dans un document. Chaque méthode présente ses propres avantages et inconvénients, de sorte que le choix de celle-ci dépend souvent de la situation spécifique.

Examinons de plus près ces façons de créer des tables et comparons leurs avantages et leurs inconvénients:

|  Méthode | Avantages |  Désavantages |
|  :-  |  :-  |  :-  |
| Voie `DocumentBuilder` | Méthode standard d'insertion des tableaux et autres documents | Parfois difficile de créer de nombreuses variétés de tables en même temps avec la même instance constructeur |
| Voie DOM |  S'adapte mieux avec le code environnant qui crée et insère des nœuds directement dans le DOM sans utiliser **DocumentBuilder** | La table est créée "vide": avant d'effectuer la plupart des opérations, vous devez appeler [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) pour créer des nœuds d'enfants manquants |
| À partir de HTML | Peut créer une nouvelle table à partir de source HTML en utilisant des balises comme `<table>`, `<tr>`, `<td>` | Pas tous possible Microsoft Word les formats de table peuvent être appliqués à HTML |
| Cloner une table existante | Vous pouvez créer une copie d'une table existante tout en conservant le formatage de toutes les lignes et cellules | Les nœuds enfant appropriés doivent être enlevés avant que la table ne soit prête à être utilisée |
