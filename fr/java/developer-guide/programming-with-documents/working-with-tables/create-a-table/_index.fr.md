---
title: Comment créer une table dans Java
second_title: Aspose.Words pour Java
articleTitle: Créer un Tableau
linktitle: Créer un Tableau
description: "Différentes façons de créer des tableaux dans votre document en utilisant Java."
type: docs
weight: 20
url: /fr/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words permet aux utilisateurs de créer des tableaux dans un document à partir de zéro et fournit plusieurs méthodes différentes pour le faire. Cet article présente des détails sur la façon d'ajouter des tableaux formatés à votre document en utilisant chaque méthode, ainsi qu'une comparaison de chaque méthode à la fin de l'article.

## Styles de Tableau par Défaut

La table nouvellement créée reçoit des valeurs par défaut similaires à celles utilisées dans Microsoft Word:

| Propriété de Table | Par défaut dans Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Couleur de la Bordure | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Un tableau peut être en ligne s'il est bien positionné, ou flottant s'il peut être positionné n'importe où sur la page. Par défaut, Aspose.Words crée toujours des tables en ligne.

{{% /alert %}}

## Créer une table avec DocumentBuilder

Dans Aspose.Words, les utilisateurs peuvent créer un tableau dans un document à l'aide de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). L'algorithme de base pour créer une table est le suivant:

1. Commencez la table avec [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Ajoutez une cellule au tableau en utilisant [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – cela démarre automatiquement une nouvelle ligne
3. Vous pouvez éventuellement utiliser la propriété [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) pour spécifier le formatage des cellules
4. Insérez le contenu de la cellule à l'aide des méthodes **DocumentBuilder** appropriées telles que [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte) et autres
5. Répétez les étapes 2 à 4 jusqu'à ce que la rangée soit terminée
6. Appelez [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) pour terminer la ligne en cours
7. Vous pouvez éventuellement utiliser la propriété [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) pour spécifier le formatage des lignes
8. Répétez les étapes 2 à 7 jusqu'à ce que le tableau soit terminé
9. Appelez [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) pour terminer la construction de la table

{{% alert color="primary" %}}

Détails importants:

- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) peut également être appelé à l'intérieur d'une cellule, auquel cas il démarre la création d'une table imbriquée dans la cellule.
- Après avoir appelé [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), une nouvelle cellule est créée et tout contenu que vous ajoutez à l'aide d'autres méthodes de la classe [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sera ajouté à la cellule actuelle. Pour créer une nouvelle cellule sur la même ligne, appelez à nouveau **InsertCell**.
- Si **InsertCell** est appelé immédiatement après [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) et la fin d'une ligne, la table continuera sur une nouvelle ligne.
- La méthode [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) pour terminer la table ne doit être appelée qu'une seule fois après avoir appelé **EndRow**. L'appel de **EndTable** déplace le curseur de la cellule actuelle vers la position immédiatement après le tableau.

{{% /alert %}}

Le processus de création d'une table peut être clairement vu dans l'image suivante:

![creating-table-process](/words/java/create-a-table/creating-table-process.jpg)

L'exemple de code suivant montre comment créer une table simple en utilisant **DocumentBuilder** avec une mise en forme par défaut:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

L'exemple de code suivant montre comment créer un tableau formaté à l'aide de DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

L'exemple de code suivant montre comment insérer une table imbriquée à l'aide de DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Créer une table via DOM (Modèle d'objet de document)

Vous pouvez insérer des tables directement dans le DOM en ajoutant un nouveau nœud [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) à une position spécifique.

Veuillez noter qu'immédiatement après la création du nœud de table, la table elle-même sera complètement vide, c'est-à-dire qu'elle ne contient pas encore de lignes et de cellules. Pour insérer des lignes et des cellules dans un tableau, ajoutez les nœuds enfants [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) appropriés au DOM.

{{% alert color="primary" %}}

Cette méthode de création d'une table utilise les mêmes valeurs par défaut que lors de l'utilisation de **DocumentBuilder**.

{{% /alert %}}

L'exemple de code suivant montre comment créer une nouvelle table à partir de zéro en ajoutant les nœuds enfants appropriés à l'arborescence du document:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Créer une table à partir de HTML

Aspose.Words prend en charge l'insertion de contenu dans un document à partir d'une source HTML à l'aide de la méthode [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String). L'entrée peut être une page HTML complète ou juste un extrait partiel.

En utilisant cette méthode **InsertHtml**, les utilisateurs peuvent insérer des tableaux dans le document via des balises de tableau telles que `<table>`, `<tr>`, `<td>`.

L'exemple de code suivant montre comment insérer un tableau dans un document à partir d'une chaîne contenant des balises HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Insérer une copie d'une Table existante

Il arrive souvent que vous deviez créer un tableau basé sur un tableau déjà existant dans un document. Le moyen le plus simple de dupliquer une table tout en conservant toute la mise en forme consiste à cloner le nœud de la table à l'aide de la méthode [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean).

La même technique peut être utilisée pour ajouter des copies d'une ligne ou d'une cellule existante à un tableau.

L'exemple de code suivant montre comment dupliquer une table à l'aide de constructeurs de nœuds:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'exemple de code suivant montre comment cloner la dernière ligne d'une table et l'ajouter à la table:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier d'exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Si vous envisagez de créer des tableaux dans un document qui augmentent dynamiquement avec chaque enregistrement de votre source de données, la méthode ci-dessus n'est pas conseillée. Au lieu de cela, la sortie souhaitée est plus facilement obtenue en utilisant Mail merge avec des régions. Vous pouvez en apprendre plus sur cette technique dans le [Mail Merge avec des régions](/words/java/types-of-mail-merge-operations/) section.

## Comparer les façons de Créer un Tableau

Aspose.Words fournit plusieurs méthodes pour créer de nouvelles tables dans un document. Chaque méthode a ses propres avantages et inconvénients, de sorte que le choix de celle à utiliser dépend souvent de la situation spécifique.

Examinons de plus près ces façons de créer des tableaux et comparons leurs avantages et leurs inconvénients:

| Méthode | Avantages | Inconvénients |
| :- | :- | :- |
| Par `DocumentBuilder` | La méthode standard pour insérer des tableaux et d'autres contenus de documents | Parfois difficile de créer plusieurs variétés de tables en même temps avec la même instance de constructeur |
| Par DOM | S'intègre mieux avec le code environnant qui crée et insère des nœuds directement dans le DOM sans utiliser de **DocumentBuilder** | La table est créée "vide": avant d'effectuer la plupart des opérations, vous devez appeler [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) pour créer les nœuds enfants manquants |
| À partir de HTML | Peut créer une nouvelle table à partir de la source HTML en utilisant des balises comme `<table>`, `<tr>`, `<td>` | Tous les formats de tableau Microsoft Word possibles ne peuvent pas être appliqués à HTML |
| Clonage d'une table existante | Vous pouvez créer une copie d'un tableau existant tout en conservant toutes les mises en forme des lignes et des cellules | Les nœuds enfants appropriés doivent être supprimés avant que la table ne soit prête à être utilisée |
