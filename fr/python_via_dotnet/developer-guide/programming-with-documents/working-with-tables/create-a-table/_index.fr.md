---
title: Introduction et création de tableaux
second_title: Aspose.Words pour Python via .NET
articleTitle: Introduction et création de tableaux
linktitle: Introduction et création de tableaux
description: "Créez et gérez des tableaux dans un document à l'aide de Python."
type: docs
weight: 10
url: /fr/python-net/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words permet aux utilisateurs de créer des tableaux dans un document à partir de zéro et propose plusieurs méthodes différentes pour ce faire. Cet article présente des détails sur la façon d'ajouter des tableaux formatés à votre document à l'aide de chaque méthode, ainsi qu'une comparaison de chaque méthode à la fin de l'article.

## Styles de tableau par défaut

Le tableau nouvellement créé reçoit des valeurs par défaut similaires à celles utilisées dans Microsoft Word:

| Propriété du tableau | Par défaut dans Aspose.Words |
|  :-  |  :-  |
| `Border Style` |  `Single`  |
| `Border Width` | `1/2 pt` |
| `Border Color` |  `Black`  |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` |  `True`  |
{{% alert color="primary" %}}

Un tableau peut être en ligne s'il est bien positionné, ou flottant s'il peut être positionné n'importe où sur la page. Par défaut, Aspose.Words crée toujours des tableaux en ligne.

{{% /alert %}}

## Créer un tableau avec DocumentBuilder

Dans Aspose.Words, les utilisateurs peuvent créer un tableau dans un document à l'aide du [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/). L'algorithme de base pour créer un tableau est le suivant:

1. Démarrez le tableau avec [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/)
2. Ajoutez une cellule au tableau à l'aide de [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/) – cela démarre automatiquement une nouvelle ligne
3. Vous pouvez éventuellement utiliser la propriété [CellFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/cell_format/) pour spécifier le formatage des cellules
4. Insérez le contenu de la cellule à l'aide des méthodes **DocumentBuilder** appropriées telles que [Writeln](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/writeln/#str), [InsertImage](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/#str) et autres
5. Répétez les étapes 2 à 4 jusqu'à ce que la rangée soit terminée
6. Appelez [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) pour terminer la ligne actuelle
7. Vous pouvez éventuellement utiliser la propriété [RowFormat](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/row_format/) pour spécifier le formatage des lignes
8. Répétez les étapes 2 à 7 jusqu'à ce que le tableau soit terminé
9. Appelez [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) pour terminer la création de la table

{{% alert color="primary" %}}

Détails importants:

- [StartTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_table/) peut également être appelé à l'intérieur d'une cellule, auquel cas il lance la création d'un tableau imbriqué au sein de la cellule.
- Après avoir appelé [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/), une nouvelle cellule est créée et tout contenu que vous ajoutez en utilisant d'autres méthodes de la classe [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sera ajouté à la cellule actuelle. Pour créer une nouvelle cellule sur la même ligne, appelez à nouveau **InsertCell**.
- Si **InsertCell** est appelé immédiatement après [EndRow](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_row/) et la fin d'une ligne, le tableau continuera sur une nouvelle ligne.
- La méthode [EndTable](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_table/) pour terminer la table ne doit être appelée qu'une seule fois après l'appel de **EndRow**. L'appel de **EndTable** déplace le curseur de la cellule actuelle vers la position immédiatement après le tableau.

{{% /alert %}}

Le processus de création d'un tableau est clairement visible dans l'image suivante:

<img src="/words/python-net/create-a-table/creating-table-process.jpg" alt="processus de création de table" style="zoom:50%;" />

L'exemple de code suivant montre comment créer un tableau simple à l'aide de **DocumentBuilder** avec le formatage par défaut:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "create-simple-table.py" >}}

L'exemple de code suivant montre comment créer un tableau formaté à l'aide de DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "formatted-table.py" >}}

L'exemple de code suivant montre comment insérer une table imbriquée à l'aide de DocumentBuilder:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "nested-table.py" >}}

## Créer un tableau via DOM (Document Object Model)

Vous pouvez insérer des tableaux directement dans le DOM en ajoutant un nouveau nœud [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) à une position spécifique.

Veuillez noter qu'immédiatement après la création du nœud de table, la table elle-même sera complètement vide, c'est-à-dire qu'elle ne contient pas encore de lignes ni de cellules. Pour insérer des lignes et des cellules dans un tableau, ajoutez les nœuds enfants [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) et [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) appropriés au DOM.

{{% alert color="primary" %}}

Cette méthode de création d'un tableau utilise les mêmes valeurs par défaut que lors de l'utilisation du **DocumentBuilder**.

{{% /alert %}}

L'exemple de code suivant montre comment créer une nouvelle table à partir de zéro en ajoutant les nœuds enfants appropriés à l'arborescence du document:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-directly.py" >}}

##Create un tableau à partir de HTML

Aspose.Words prend en charge l'insertion de contenu dans un document à partir d'une source HTML à l'aide de la méthode [InsertHtml](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_html/). L'entrée peut être une page HTML complète ou simplement un extrait partiel.

En utilisant la méthode **InsertHtml**, les utilisateurs peuvent insérer des tableaux dans le document via des balises de tableau telles que `<table>`, `<tr>`, `<td>`.

L'exemple de code suivant montre comment insérer un tableau dans un document à partir d'une chaîne contenant des balises HTML:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "insert-table-from-html.py" >}}

## Insérer une copie d'une table existante

Il arrive souvent que vous deviez créer un tableau basé sur un tableau déjà existant dans un document. Le moyen le plus simple de dupliquer un tableau tout en conservant toute la mise en forme consiste à cloner le nœud Table à l'aide de la méthode [Clone](https://reference.aspose.com/words/python-net/aspose.words/node/clone/).

La même technique peut être utilisée pour ajouter des copies d'une ligne ou d'une cellule existante à un tableau.

L'exemple de code suivant montre comment dupliquer une table à l'aide de constructeurs de nœuds:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-complete-table.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

L'exemple de code suivant montre comment cloner la dernière ligne d'une table et l'ajouter à la table:

{{< gist "aspose-words-gists" "daa15d229a9e8b9015aa87ff6893f387" "clone-last-row.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Si vous envisagez de créer des tableaux dans un document qui grandissent dynamiquement avec chaque enregistrement de votre source de données, la méthode ci-dessus n'est pas conseillée. Au lieu de cela, le résultat souhaité est plus facilement obtenu en utilisant Mail merge avec des régions.

## Comparez les façons de créer un tableau

Aspose.Words propose plusieurs méthodes pour créer de nouveaux tableaux dans un document. Chaque méthode a ses propres avantages et inconvénients, de sorte que le choix de celle à utiliser dépend souvent de la situation spécifique.

Examinons de plus près ces façons de créer des tableaux et comparons leurs avantages et leurs inconvénients:

|  Méthode | Avantages |  Désavantages |
|  :-  |  :-  |  :-  |
| Via DocumentBuilder | La méthode standard pour insérer des tableaux et autres contenus de documents | Parfois difficile de créer plusieurs variétés de tables en même temps avec la même instance de constructeur |
| Via DOM |  S'intègre mieux au code environnant qui crée et insère des nœuds directement dans le DOM sans utiliser de **DocumentBuilder** | La table est créée "vide": avant d'effectuer la plupart des opérations, vous devez appeler [EnsureMinimum](https://reference.aspose.com/words/python-net/aspose.words.tables/table/ensure_minimum/) pour créer les éventuels nœuds enfants manquants |
| À partir du HTML | Peut créer un nouveau tableau à partir d'une source HTML en utilisant des balises telles que `<table>`, `<tr>`, `<td>` | Tous les formats de tableaux Microsoft Word possibles ne peuvent pas être appliqués au HTML |
| Cloner une table existante | Vous pouvez créer une copie d'un tableau existant tout en conservant la mise en forme des lignes et des cellules | Les nœuds enfants appropriés doivent être supprimés avant que la table soit prête à être utilisée |
